<?php

namespace AppBundle\Controller;


use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Util\SecureRandom;
use AppBundle\Form\UserType;
use AppBundle\Entity\User;

use Symfony\Component\Security\Core\Authentication\Token\UsernamePasswordToken;
use Symfony\Component\Security\Http\Event\InteractiveLoginEvent;
use Symfony\Component\Security\Core\Exception\UsernameNotFoundException;

/**
 * @Route("")
 */
class UserController extends Controller {

    /**
     * @Route("/login", name="login")
     */
    public function loginAction(Request $request) {
        $authenticationUtils = $this->get('security.authentication_utils');

// get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

// last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render(
                        'default/login.html.twig', array(
// last username entered by the user
                    'last_username' => $lastUsername,
                    'error' => $error,
                        )
        );
    }

    /**
     * @Route("/utilisateur/enregistrement", name="register_user")
     */
    public function registerUserAction(Request $request) {
        $user = new User();

        $registerForm = $this->createForm(new UserType(), $user);

        $registerForm->handleRequest($request);
        if ($registerForm->isValid()) {
            $user->setRoles(array("ROLE_USER"));
            $generator = new SecureRandom();
            $salt = bin2hex($generator->nextBytes(30));
            $token = bin2hex($generator->nextBytes(30));
            $user->setSalt($salt);
            $user->setToken($token);
            $user->setDateInscription(new \DateTime());

            $encoder = $this->get('security.password_encoder');
            $encoderPassword = $encoder->encodePassword(
                    $user, $user->getPassword()
            );

            $user->setPassword($encoderPassword);

            $em = $this->get('doctrine')->getManager();
            $em->persist($user);
            $em->flush();

            /* Code pour logger l'utilisateur lorsqu'il s'enregistre */
            $token = new UsernamePasswordToken($user, null, "main", $user->getRoles());
            $this->get("security.token_storage")->setToken($token); //now the user is logged in
            //now dispatch the login event
            $request = $this->get("request");
            $event = new InteractiveLoginEvent($request, $token);
            $this->get("event_dispatcher")->dispatch("security.interactive_login", $event);


            return $this->redirectToRoute('liste_bd');
        }

        $params = array(
            'registerForm' => $registerForm->createView()
        );
        
        return $this->render("default/register_user.html.twig", $params);
    }

    /**
     * @Route("/login_check", name="login_check")
     */
    public function loginCheckAction() {
        
    }
    

    /**
     * @Route("/logout", name="logout")
     */
    public function logoutAction() {
        
    }

    /**
     * @Route("/utilisateur/compte", name="compte_user")
     */
    public function compteUser () {
        return $this->render("default/compte_user.html.twig");
    }
}
