<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;



class PanierController extends Controller
{
     /**
     * @Route("/panier", name="panier")
     */
    public function panierAction()
    {
        return $this->render('default/panier.html.twig');
    }

    public function panier(Request $request)
    {
        
    }
}

        
