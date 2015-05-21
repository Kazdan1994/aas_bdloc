<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response; 

use AppBundle\Entity\Categorie;
use AppBundle\Entity\Commande;
use AppBundle\Entity\User;
use AppBundle\Entity\Book;

class CommandeController extends Controller
{
     /**
     * @Route("/ajoutPanier/{id}", name="ajoutPanier")
     */
    public function ajoutPanier($id)
    {



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

        
        //on récupère le livre pour l'ajouter à la commande
        $book= $bookRepo->find($id);
        $com->addBook($book);

        $com->setStatut("en_cours");

        //idem pour le user
        
        $com->setUser($user);
              



        //ajout commande BDD
        $manager->persist($com);
        $manager->flush();
        return new Response("Commande bien ajoutée");       
    }
}
