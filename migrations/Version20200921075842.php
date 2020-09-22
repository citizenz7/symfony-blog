<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200921075842 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE article ADD prix VARCHAR(255) NOT NULL, ADD status VARCHAR(255) NOT NULL, ADD reference VARCHAR(255) NOT NULL, ADD adresse_fournisseur VARCHAR(255) NOT NULL, ADD date_achat DATETIME DEFAULT NULL, ADD date_reservation DATETIME DEFAULT NULL, ADD date_fingarantie DATETIME NOT NULL, ADD photo_ticket VARCHAR(255) DEFAULT NULL, ADD manuel_utilisation LONGTEXT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE article DROP prix, DROP status, DROP reference, DROP adresse_fournisseur, DROP date_achat, DROP date_reservation, DROP date_fingarantie, DROP photo_ticket, DROP manuel_utilisation');
    }
}
