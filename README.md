# Installation & environnement de développement

## Présentation

Ce document décrit la mise en place de l'environnement de développement du projet **ClubMayenneBadminton**.

L'application est développée en **PHP natif** avec une base de données **MySQL**.
Elle utilise une séparation entre l'interface publique, l'espace d'administration et une API PHP permettant les échanges avec la base de données.

---

# Prérequis

L'environnement local nécessite :

* PHP
* MySQL
* Apache
* WAMP (recommandé pour le développement local)

La configuration actuelle utilise :

* PHP avec PDO pour l'accès aux données
* MySQL pour le stockage
* JavaScript Fetch pour les appels API

---

# Installation locale

Cloner ou placer le projet dans le dossier web de votre environnement Apache :

```text
C:\wamp64\www\
```

Exemple :

```text
C:\wamp64\www\BadmintonAMB
```

---

# Configuration de la base de données

La base utilisée par l'application :

```text
club_badminton
```

Les scripts SQL nécessaires sont disponibles dans :

```text
database/
├── structure.sql
└── exemple.sql
```

## structure.sql

Contient la définition complète de la base :

* création des tables
* clés primaires
* relations entre entités

Tables principales :

| Table        | Rôle                                |
| ------------ | ----------------------------------- |
| utilisateur  | Gestion des comptes administrateurs |
| contenu_page | Stockage des contenus du CMS        |
| actualite    | Gestion des publications            |

---

## exemple.sql

Contient des données de démonstration permettant de tester l'application localement.

---

# Configuration PHP

La connexion à la base de données est centralisée dans :

```text
api/db-connect.php
```

Les paramètres de connexion doivent correspondre à votre environnement :

```php
$host = "localhost";
$dbname = "club_badminton";
$username = "root";
$password = "";
```

---

# Structure du projet

```text
BadmintonAMB
│
├── admin
│   └── Interface d'administration du CMS
│
├── api
│   ├── Connexion base de données
│   ├── Chargement configuration
│   └── Gestion des échanges serveur
│
├── database
│   └── Scripts SQL
│
├── public
│   └── Partie publique du site
│
└── technique
    └── Tests et documentation interne
```

---

# Lancement

Démarrer les services Apache et MySQL depuis WAMP.

Accès public :

```text
http://localhost/BadmintonAMB/public/
```

Accès administration :

```text
http://localhost/BadmintonAMB/admin/
```

---

# Vérifications

Un fichier de test est disponible :

```text
technique/testConnexionBDD.php
```

Il permet de valider :

* la connexion PDO
* l'accès aux tables
* l'exécution des requêtes SQL

---

# Développement

Le projet suit une séparation logique :

```
Interface
    ↓
API PHP
    ↓
Base de données
```

Cette organisation permet de faire évoluer le CMS indépendamment de la partie visible du site.

---

# Déploiement

L'environnement local sert de plateforme de développement et de validation.

La configuration de production devra adapter :

* les paramètres de connexion
* les variables d'environnement
* la configuration serveur
* les droits d'accès
