 
playerCollisionsInit();

// Vérifie si le joueur est dans le rayon de détection
var joueur = instance_nearest(x, y, obj_player_1); // Cherche l'instance de joueur la plus proche
if (distance_to_object(joueur) < rayon_collision) {
    suit_joueur = true;
}

// Si l'objet suit le joueur et n'est pas lancé
if (suit_joueur && !lance) {
    // Suivre le joueur avec un lissage
    x += (joueur.x - x) * 0.05;
    y += (joueur.y - y) * 0.05;
}

// Si l'objet est lancé, se déplacer dans la direction définie par angle_lancer
if (lance) {
    x += lengthdir_x(vitesse, angle_lancer);
    y += lengthdir_y(vitesse, angle_lancer);
}

// Si la bombe dépasse les limites de la room
if (playerCollisionsInit()) {
    exploser(); // Appeler la fonction d'explosion
}
