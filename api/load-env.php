<?php 

function loadEnv($path) {
    if (!file_exists($path)) {
        throw new Exception("Le fichier .env n'existe pas à l'emplacement spécifié : $path");
    }

    $lines = file($path, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    foreach ($lines as $line) {
        // Ignore les lignes vides et les commentaires
        if (strpos(trim($line), '#') === 0) {
            continue;
        }

        // Ignore les lignes sans '='
        if (strpos($line, '=') === false) {
            continue;
        }

        // Sépare la clé et la valeur
        list($key, $value) = explode('=', $line, 2);
        $key = trim($key);
        $value = trim($value);

        // Crée la variable d'environnement en PHP
        if (!array_key_exists($key, $_SERVER) && !array_key_exists($key, $_ENV)) {
            putenv(sprintf('%s=%s', $key, $value));
            $_ENV[$key] = $value;
            $_SERVER[$key] = $value;
        }
    }
}

loadEnv(dirname(__DIR__) . '/.env');