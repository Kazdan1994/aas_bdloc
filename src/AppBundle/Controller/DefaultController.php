<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="home")
     */
    public function indexAction()
    {
        if($this->getUser()){
            return $this->redirectToRoute("liste_bd");
        }else{
            return $this->redirectToRoute("login");
        }
        
    }
}
