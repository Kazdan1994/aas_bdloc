<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Serie
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\SerieRepository")
 */
class Serie
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="titre", type="string", length=255)
     */
    private $titre;


    /**
     *
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\Book", mappedBy="serie")
     */
    private $books;
    

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set id
     *
     * @param integer $id
     * @return Id
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }


    /**
     * Set titre
     *
     * @param string $titre
     * @return serie
     */
    public function setTitre($titre)
    {
        $this->titre = $titre;

        return $this;
    }

    /**
     * Get titre
     *
     * @return string 
     */
    public function getTitre()
    {
        return $this->titre;
    }

    /**
     * Set comment
     *
     * @param string $comment
     * @return serie
     */
    public function setComment($comment)
    {
        $this->comment = $comment;

        return $this;
    }

    /**
     * Get comment
     *
     * @return string 
     */
    public function getComment()
    {
        return $this->comment;
    }
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->books = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add books
     *
     * @param \AppBundle\Entity\Book $books
     * @return Serie
     */
    public function addBook(\AppBundle\Entity\Book $books)
    {
        $this->books[] = $books;

        return $this;
    }

    /**
     * Remove books
     *
     * @param \AppBundle\Entity\Book $books
     */
    public function removeBook(\AppBundle\Entity\Book $books)
    {
        $this->books->removeElement($books);
    }

    /**
     * Get books
     *
     * @return \Doctrine\Common\Collections\Collection 
     */
    public function getBooks()
    {
        return $this->books;
    }

    protected function getSimpleStyle($style)
    {

        $default = "Divers";

        $mappings = array(

            "Science-fiction" => array(
                "Science-fiction",
                "Heroic Fantasy",
                "Sf/fantastique/anticipation",
                "Science fiction",
                "Anticipation",
                "Fantastique"
            ),
            "Aventure" => array(
                "Aventure",
                "Aventures",
                "Aventure fantastique"
            ),
            "Polar/Thriller" => array(
                "Polar/Thriller",
                "Polar",
                "Polar/Thriler",
                "Policier",
                "Thriller"
            ),
            "Historique" => array(
                "Historique",
                "Histoire",
                "Histoire - Fiction",
                "Aventure historique",
                "Histoire/fiction historique"
            ),
            "Jeunesse" => array(
                "Jeunesse"
            ),
            "Humour" => array(
                "Humoristique",
                "Western humoristique",
                "Humour"
            ),
            "Manga" => array(
                "Manga",
                "Manga - Seinen"
            ),
            "Biographie" => array(
                "Biographie",
                "Autobiographie",
                "Tranche de vie"
            ),
            "Indépendant" => array(
                "Independant"
            ),
            "Érotique" => array(
                "Erotique"
            ),
            "Comics" => array(
                "Super héros",
                "Comics"
            ),
            "Divers" => array(
                "Roman graphique",
                "Animalier",
                "Adaptation",
                "Divers",
                "Chronique urbaine",
                "Chronique",
                "Société/quotidien",
                "Drame",
                "NULL",
                NULL,
                false
            ),
        );

        //looks for bad name, and returns good one
        foreach($mappings as $goodName => $badNames){
            if (in_array($style, $badNames)){
                return $goodName;
            }
        }

        return $default;
    }
}
}
