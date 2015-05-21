<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class CommandeController extends Controller
{
     /**
     * @Route("/ajoutPanier/{id}", name="ajoutPanier")
     */
    public function ajoutPanier()
    {
        // création commande+ son statut

        //attention à bien faire la jointure avec la page commande book


        //ajout commande BDD
        return ;
    }
}