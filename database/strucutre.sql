CREATE DATABASE IF NOT EXISTS club_badminton CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE club_badminton;

-- 1. Table Utilisateur
CREATE TABLE utilisateur (
    id_utilisateur INT AUTO_INCREMENT,
    identifiant VARCHAR(50) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL, -- Stockera le mot de passe haché (password_hash en PHP)
    email VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (id_utilisateur)
) ENGINE=InnoDB;

-- 2. Table Contenu_Page
CREATE TABLE contenu_page (
    id_contenu INT AUTO_INCREMENT,
    cle_page VARCHAR(50) NOT NULL,    -- ex: 'accueil', 'contact'
    section VARCHAR(50) NOT NULL,     -- ex: 'presentation', 'tarifs'
    titre VARCHAR(150),
    texte TEXT,
    date_modification DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id_contenu)
) ENGINE=InnoDB;

-- 3. Table Actualite
CREATE TABLE actualite (
    id_actualite INT AUTO_INCREMENT,
    titre VARCHAR(150) NOT NULL,
    chapeau VARCHAR(255),             -- Court résumé de l'article
    corps TEXT NOT NULL,              -- Contenu complet
    image_url VARCHAR(255),           -- Chemin de la photo
    date_publication DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_utilisateur INT NOT NULL,
    PRIMARY KEY (id_actualite),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id_utilisateur) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;