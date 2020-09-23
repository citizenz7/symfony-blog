<?php

namespace App\Form;

use App\Entity\Article;
use App\Entity\Category;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\Image;

class ArticleType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            // attention : category est une relation !
            ->add('category', EntityType::class, [
                'class' => Category::class,
                'choice_label' => 'title',
            ])
            ->add('content')
            ->add('img', FileType::class, [
                'mapped' => false, // Tell that there is no Entity to link
                'required' => true,
                'constraints' => [
                    new Image([
                        'maxSize' => '5M',
                        'mimeTypes' => [ // We want to let upload only jpeg/jpg, png, webp
                            'image/jpeg', 
                            'image/png', 
                            'image/webp'
                          ],
                          'mimeTypesMessage' => "Le fichier envoyé n'est pas valide.",
                    ])
                ]
            ])
            //->add('createdAt')
            ->add('prix')
            ->add('status')
            ->add('reference')
            ->add('adresse_fournisseur')
            ->add('date_achat')
            ->add('date_reservation')
            ->add('date_fingarantie')
            ->add('photo_ticket')
            ->add('manuel_utilisation')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
