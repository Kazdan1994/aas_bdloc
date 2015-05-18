<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Util\SecureRandom;
use AppBundle\Form\UserType;
use AppBundle\Entity\User;

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
//                    'last_username' => $lastUsername,
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
            $user->setRoles(array("ROLE_ADMIN"));
            $generator = new SecureRandom();
            $salt = bin2hex($generator->nextBytes(30));
            $token = bin2hex($generator->nextBytes(30));
            $user->setSlat($salt);
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

}
