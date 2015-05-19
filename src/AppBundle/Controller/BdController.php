<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class BdController extends Controller
{
     /**
     * @Route("/liste_bd", name="liste_bd")
     */
    public function listBdAction()
    {
        return $this->render('default/liste_BD.html.twig');
    }
}
