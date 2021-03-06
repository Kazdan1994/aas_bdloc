<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use AppBundle\Entity\Book;

/**
 * Commande
 *
 * @ORM\Table()
 * @ORM\Entity(repositoryClass="AppBundle\Entity\CommandeRepository")
 */
class Commande {

    /**
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Book", cascade={"persist"})
     */
    private $books;

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
     * @ORM\Column(name="statut", type="string")
     */
    private $statut;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateCommande", type="datetime", nullable=true)
     */
    private $dateCommande;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User", inversedBy="commandes")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    protected $user;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\PickUpSpot", inversedBy="commandes")
     * @ORM\JoinColumn(name="pickUpSpot_id", referencedColumnName="id", nullable=true)
     */
    protected $pickUpSpot;

    /**
     * Get id
     *
     * @return integer 
     */
    public function getId() {
        return $this->id;
    }

    /**
     * Set montant
     *
     * @param float $montant
     * @return Commande
     */
    public function setMontant($montant) {
        $this->montant = $montant;

        return $this;
    }

    /**
     * Get montant
     *
     * @return float 
     */
    public function getMontant() {
        return $this->montant;
    }

    /**
     * Set dateCommande
     *
     * @param \DateTime $dateCommande
     * @return Commande
     */
    public function setDateCommande($dateCommande) {
        $this->dateCommande = $dateCommande;

        return $this;
    }

    /**
     * Get dateCommande
     *
     * @return \DateTime 
     */
    public function getDateCommande() {
        return $this->dateCommande;
    }

    /**
     * Set user
     *
     * @param \AppBundle\Entity\User $user
     * @return Commande
     */
    public function setUser(\AppBundle\Entity\User $user = null) {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \AppBundle\Entity\User 
     */
    public function getUser() {
        return $this->user;
    }

    /**
     * Set pickUpSpot
     *
     * @param \AppBundle\Entity\PickUpSpot $pickUpSpot
     * @return Commande
     */
    public function setPickUpSpot(\AppBundle\Entity\PickUpSpot $pickUpSpot = null) {
        $this->pickUpSpot = $pickUpSpot;

        return $this;
    }

    /**
     * Get pickUpSpot
     *
     * @return \AppBundle\Entity\PickUpSpot 
     */
    public function getPickUpSpot() {
        return $this->pickUpSpot;
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
     * @return Commande
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

    /**
     * Set statut
     *
     * @param string $statut
     * @return Commande
     */
    public function setStatut($statut)
    {
        $this->statut = $statut;

        return $this;
    }

    /**
     * Get statut
     *
     * @return string 
     */
    public function getStatut()
    {
        return $this->statut;
    }

//fonction permettant de checker si le book cliqué est déjà présent dans une commande 
    public function hasbook(Book $book)
    {
        foreach($this->books as $bd)// pour chaque book dans la commande
        {
            if($bd->getId() == $book->getId()) //on compare leurs id
            {
                return true; // on renvoie true car on a trouvé le livre
            }           
        }
        return false; // renvoie false s'il n'a pas trouvé la ligne
    }
}
