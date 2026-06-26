<?php

// Chargement du script qui charge les variables d'environnement depuis le fichier .env
require_once 'load-env.php';

// Récupération des variables d'environnement pour la connexion à la base de données
$host = $_SERVER['DB_HOST'];
$user = $_SERVER['DB_USER'];
$pass = $_SERVER['DB_PASS'];
$db = $_SERVER['DB_NAME'];

try {
    $options = [
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES => false,
    ];

    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4", $user, $pass, $options);

} catch (Exception $e) {
    // En développement, on peut afficher l'erreur pour le débogage
    // En production, il est préférable de ne pas afficher les détails de l'erreur
    die('Erreur de connexion à la base de données : ' . $e->getMessage());
}
?>