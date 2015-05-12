<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

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
     * @var float
     *
     * @ORM\Column(name="montant", type="float")
     */
    private $montant;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateCommande", type="datetime")
     */
    private $dateCommande;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User", inversedBy="commandes")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     */
    protected $user;

    /**
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\PickUpSpot", inversedBy="commandes")
     * @ORM\JoinColumn(name="pickUpSpot_id", referencedColumnName="id")
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

}
