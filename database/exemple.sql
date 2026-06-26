INSERT INTO utilisateur (identifiant, mot_de_passe, email)
VALUES 
('admin', '$2y$10$k6A6h99O8koC/zHYSto2Kur56iMHj0ukz8V/KwqT7qpDR9jjrhC/u', 'admin@clubbadminton.fr');


INSERT INTO contenu_page (cle_page, section, titre, texte) VALUES

('accueil', 'presentation', 'Bienvenue au club de badminton',
'Le club de badminton de la ville accueille les joueurs de tous niveaux, du débutant au compétiteur.'),

('accueil', 'tarifs', 'Nos tarifs',
'Adhésion annuelle : 120€ pour les adultes et 80€ pour les jeunes. Raquettes disponibles en prêt.'),

('contact', 'infos', 'Nous contacter',
'Email : contact@clubbadminton.fr - Téléphone : 06 00 00 00 00 - Gymnase municipal, rue du sport'),

('club', 'historique', 'Notre histoire',
'Créé en 1998, le club a formé de nombreux joueurs évoluant aujourd’hui en compétition régionale.');

INSERT INTO actualite (titre, chapeau, corps, image_url, id_utilisateur) VALUES

('Reprise des entraînements',
'La saison redémarre cette semaine pour tous les groupes.',
'Les entraînements reprennent officiellement au gymnase municipal avec un nouveau planning adapté à tous les niveaux. Pensez à vous inscrire rapidement pour garantir votre place.',
'/images/reprise.jpg',
1),

('Tournoi interne du club',
'Un tournoi amical est organisé ce mois-ci.',
'Le club organise un tournoi interne ouvert à tous les membres. L’objectif est de favoriser la cohésion et de préparer la saison compétitive.',
'/images/tournoi.jpg',
1),

('Nouveaux créneaux horaires',
'Des créneaux supplémentaires sont disponibles.',
'Suite à la demande des adhérents, de nouveaux créneaux ont été ajoutés les mardis et jeudis soir.',
'/images/creneaux.jpg',
1);