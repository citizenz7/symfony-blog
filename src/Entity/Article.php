<?php

namespace App\Entity;

use App\Repository\ArticleRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=ArticleRepository::class)
 */
class Article
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(min=3, max=255, minMessage="Le titre est trop court !")
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     * @Assert\Length(min=10, minMessage="Le contenu est trop court !")
     */
    private $content;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $images;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\ManyToOne(targetEntity=Category::class, inversedBy="articles")
     * @ORM\JoinColumn(nullable=false)
     */
    private $category;

    /**
     * @ORM\OneToMany(targetEntity=Comment::class, mappedBy="article", orphanRemoval=true)
     */
    private $comments;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $prix;

    /**
    * @ORM\Column(type="string", length=255)
    */
    private $status;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $reference;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $adresse_fournisseur;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $date_achat;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $date_reservation;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date_fingarantie;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $photo_ticket;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $manuel_utilisation;

    public function __construct()
    {
        $this->comments = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }

    public function getImages(): ?string
    {
        return $this->images;
    }

    public function setImages(string $images): self
    {
        $this->images = $images;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }

    /**
     * @return Collection|Comment[]
     */
    public function getComments(): Collection
    {
        return $this->comments;
    }

    public function addComment(Comment $comment): self
    {
        if (!$this->comments->contains($comment)) {
            $this->comments[] = $comment;
            $comment->setArticle($this);
        }

        return $this;
    }

    public function removeComment(Comment $comment): self
    {
        if ($this->comments->contains($comment)) {
            $this->comments->removeElement($comment);
            // set the owning side to null (unless already changed)
            if ($comment->getArticle() === $this) {
                $comment->setArticle(null);
            }
        }

        return $this;
    }

    public function getPrix(): ?string
    {
        return $this->prix;
    }

    public function setPrix(string $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(string $reference): self
    {
        $this->reference = $reference;

        return $this;
    }

    public function getAdresseFournisseur(): ?string
    {
        return $this->adresse_fournisseur;
    }

    public function setAdresseFournisseur(string $adresse_fournisseur): self
    {
        $this->adresse_fournisseur = $adresse_fournisseur;

        return $this;
    }

    public function getDateAchat(): ?\DateTimeInterface
    {
        return $this->date_achat;
    }

    public function setDateAchat(?\DateTimeInterface $date_achat): self
    {
        $this->date_achat = $date_achat;

        return $this;
    }

    public function getDateReservation(): ?\DateTimeInterface
    {
        return $this->date_reservation;
    }

    public function setDateReservation(?\DateTimeInterface $date_reservation): self
    {
        $this->date_reservation = $date_reservation;

        return $this;
    }

    public function getDateFingarantie(): ?\DateTimeInterface
    {
        return $this->date_fingarantie;
    }

    public function setDateFingarantie(\DateTimeInterface $date_fingarantie): self
    {
        $this->date_fingarantie = $date_fingarantie;

        return $this;
    }

    public function getPhotoTicket(): ?string
    {
        return $this->photo_ticket;
    }

    public function setPhotoTicket(?string $photo_ticket): self
    {
        $this->photo_ticket = $photo_ticket;

        return $this;
    }

    public function getManuelUtilisation(): ?string
    {
        return $this->manuel_utilisation;
    }

    public function setManuelUtilisation(?string $manuel_utilisation): self
    {
        $this->manuel_utilisation = $manuel_utilisation;

        return $this;
    }
}
