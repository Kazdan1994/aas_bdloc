<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class CommandeController extends Controller
{
     /**
     * @Route("/ajoutPanier/{id}", name="ajoutPanier")
     */
    public function ajoutPanier($id)
    {
        // création commande+ son statut
        $com = new Commande();
        $user = new User();
        $user->setId($id);
        
        //$com->
        
        // creation du livre à ajouter avec la commande

        //attention à bien faire la jointure avec la page commande book


        //ajout commande BDD
        return ;
    }
}