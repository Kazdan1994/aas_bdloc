<?php

namespace AppBundle\Entity;

use Doctrine\ORM\EntityRepository;
use Proxies\__CG__\AppBundle\Entity\categorie;

/**
 * BookRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class BookRepository extends EntityRepository
{
     public function findPaginated($page)
	{
		// DQL
		/*
		$em = $this->getEntityManager();
		$dql = "SELECT s, a
				FROM AppBundle\Entity\Story s 
				LEFT JOIN s.author a 
				WHERE s.isPublished = 1";
		$query = $em->createQuery($dql);
		*/
		//Doctrine Query Builder
		$qb = $this->createQueryBuilder("b");

         /* FILTRES */
         $qb->select('b')
			->addSelect('s')
			->leftJoin('b.serie', 's')
             ->leftJoin('b.author', 'a')
             ->addSelect('a')
            ->addSelect('c')
            ->leftJoin('s.categorie', 'c');


        /******************* FILTRES PARTIE checkbox ***********************/
        if (!empty($_GET['categories'])) //Si une catégorie est sélectionnée dans le filtre
        {
            $i = 0;
            foreach ($_GET['categories'] as $categories) //On boucle pour ajouter un orWhere qui va varier en fonction des catégories sélectionnées
            {
                $i++;
                $qb->orWhere('c.id = :categorie' . $i) //On cherche la/les catégories
                    ->setParameter('categorie' . $i, $categories);
            }
        }
            /******************* FILTRES PARTIE mots-clés ***********************/
            if (!empty($_GET['input_mots_cles']) ) //Si une catégorie est sélectionnée dans le filtre
            {
                //On passe le résultat du champs de saisie de mots-clés dans l'url
                $book = $_GET['input_mots_cles'];
               // $recherche = $this->fetch();

               // if ($book:book || $book:book)
                   // {
                        //On ajoute les orWhere
                        $qb->orWhere('a.nom = :book')//Si on cherche un nom d'auteur
                        ->orWhere('b.titre = :book')//Si on cherche un titre
                        ->setParameter('book', $book);
                  //  }
                //else
               // {

               // }
            }
            /******************* PARTIE mots-clés ***********************/



		//commun aux deux
		$query = $qb->getQuery();
		$numPerPage = 10;
		$query->setMaxResults($numPerPage);
		$query->setFirstResult( ($page-1) * $numPerPage );
		$result = $query->getResult();
		$paginationResults = array();
		//nombre total possible
		$paginationResults["total"] = $qb->select("COUNT(b)")->getQuery()->getSingleScalarResult();
		$lastPage = ceil($paginationResults["total"] / $numPerPage);
		if ($page > $lastPage){
			return false;
		}
		//les actualités
		$paginationResults["data"] = $result;
		//affichage des infos sur les résultats
		$paginationResults['nowShowingMin'] = ($page-1) * $numPerPage + 1;
		$paginationResults['nowShowingMax'] = $paginationResults['nowShowingMin'] + count($result) - 1;
		//liens numériques
		$numPagesDiff = 2;
		$paginationResults['numLinkMin'] = ($page - $numPagesDiff < 1) ? 1 : $page - $numPagesDiff;
		$paginationResults['numLinkMax'] = ($page + $numPagesDiff >= $lastPage) ? $lastPage : $page + $numPagesDiff;
		//page précédente ?
		$paginationResults["prevPage"] = ($page <= 1) ? false : $page-1;
		$paginationResults["nextPage"] = ($page >= $lastPage) ? false : $page+1;
		
		//dump($paginationResults);
		return $paginationResults;
	}
}
