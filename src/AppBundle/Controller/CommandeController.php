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

        if(!$com->hasbook($book)) 
        {
            $com->addBook($book);


            //mise à jour du stock dans la base de donnée
            $stock = $book->getStock();
            $book->setStock($stock-1);
            $manager->persist($book);

        }
        else
        {
            var_dump("Vous ne pouvez ajouter 2x le même livre dans votre commande");

        }

        $com->setStatut("en_cours");

        //idem pour le user
        
        $com->setUser($user);
              



        //ajout commande BDD
        $manager->persist($com);
        $manager->flush();
        return new Response($book->getstock());       
    }
}
