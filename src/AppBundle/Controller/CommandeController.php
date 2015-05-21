<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response; 

<<<<<<< HEAD
use AppBundle\Entity\Categorie;
use AppBundle\Entity\Commande;
use AppBundle\Entity\User;
use AppBundle\Entity\Book;

=======
>>>>>>> origin/master
class CommandeController extends Controller
{
     /**
     * @Route("/ajoutPanier/{id}", name="ajoutPanier")
     */
    public function ajoutPanier($id)
    {
<<<<<<< HEAD



        $manager = $this->container->get('doctrine')->getManager();

        $bookRepo = $this->container->get('doctrine')->getRepository("AppBundle:Book");
        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");

        $user = $this->getUser();

        //si on a déjà une commande en cours 
       if($commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours")))
       {
            $com= $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));
            //si on trouve un objet dans la base, symfony va l'updater au lieu de créer une nouvelle ligne
       }
       else
       {
            // création commande
            $com = new Commande();
       }

=======
        // création commande+ son statut
        $com = new Commande();
        $user = new User();
        $user->setId($id);
        
        //$com->
>>>>>>> origin/master
        
        // creation du livre à ajouter avec la commande

        //attention à bien faire la jointure avec la page commande book


<<<<<<< HEAD
        $com->setStatut("en_cours");

        //idem pour le user
        
        $com->setUser($user);
              



        //ajout commande BDD
        $manager->persist($com);
        $manager->flush();
        return new Response("Commande bien ajoutée");       
=======
        //ajout commande BDD
        return ;
>>>>>>> origin/master
    }
}
