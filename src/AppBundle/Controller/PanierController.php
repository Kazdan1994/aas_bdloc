<?php
namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response; 

use AppBundle\Entity\Categorie;
use AppBundle\Entity\Commande;
use AppBundle\Entity\User;
use AppBundle\Entity\Book;
use AppBundle\Entity\PickUpSpot;

class PanierController extends Controller
{
     /**
     * @Route("/panier", name="panier")
     */
    public function panierAction()
    {
        $manager = $this->container->get('doctrine')->getManager();

        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        
        $user = $this->getUser();
        $com = $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));

        if(isset($com))
        {
            $books = $com->getBooks();
        
            $params = array(
                'books' => $books,
            );
        }
        else
        {
            $params=array(
                 'books'=>"",
                );
        }

        return $this->render('default/panier.html.twig', $params);
    }


    /**
    *@Route("/supprPanier/{id}", name="supprPanier")
    */
    public function supprPanier($id)
    {
        $manager = $this->container->get('doctrine')->getManager();

        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        $bookRepo = $this->container->get('doctrine')->getRepository("AppBundle:Book");

        $user = $this->getUser();

        $com = $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));

        $book= $bookRepo->find($id); // on récupère le livre qui est dans la commande
        
        //supprimer livre commande
        if($com->hasbook($book)) 
        {
            $com->removeBook($book);
            
            //incrémenter stock +1
            $stock = $book->getStock();
            $book->setStock($stock+1);
            $manager->persist($book);
            $manager->persist($com);
            $manager->flush();
        }
        else
        {
            var_dump("une erreur est survenue; il semblerait que le livre que vous souhaitez supprimer n'est pas dans votre panier");
        }

        return new Response($book->getStock());
        //supprimer livre Panier -> ajax ?
    }



///////////CHOIX DU PICKUPSPOT/////////////

    /**
    *@Route("/pickupspot", name="pickup")
    */
    public function pickup()
    {
        //creation Repo
        $manager = $this->container->get('doctrine')->getManager();

        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        $pickupRepo = $this->container->get('doctrine')->getRepository("AppBundle:PickUpSpot");

        //chargement de la liste des pickupspots
        $pickupspots = $pickupRepo->findAll();
        
        $params = array(
                'pickupspots' => $pickupspots,
            ); 

        return $this->render('default/pickupspot.html.twig', $params);
    }








/////////VALIDATION COMMANDE///////////////

    /**
    *@Route("/validerCommande", name="validerCommande")
    */
    public function valider()
    {
        $manager = $this->container->get('doctrine')->getManager();
        $commandeRepo = $this->container->get("doctrine")->getRepository("AppBundle:Commande");
        
        //récupèration user
        $user = $this->getUser();
        //on cherche la commande en cours dans la base de donéne
        $com = $commandeRepo->findOneBy(array("user"=>$user , "statut"=>"en_cours"));
        
        //on l'hydrate avec la date
        $date = new Date('d,m,y');

        //on l'hydrate avec le pickUpSpot choisi


        //mise à jour du statut
        $com->setStatut("validée"); 

        //mise à jour base de donnée
        $manager->persist($com);
        $manager->flush();

    }


}

        
