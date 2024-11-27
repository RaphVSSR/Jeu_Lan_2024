 
playerCollisionsInit();

// Vérifie si le joueur est dans le rayon de détection
var joueur1 = instance_nearest(x, y, obj_player_1); // Cherche l'instance de joueur la plus proche
if (distance_to_object(joueur1) < rayon_collision) {
    suit_joueur1 = true;
}

// Si l'objet suit le joueur et n'est pas lancé
if (suit_joueur1 && !lance) {
    // Suivre le joueur avec un lissage
    x += (joueur1.x - x) * 0.05;
    y += (joueur1.y - y) * 0.05;
}

// Si l'objet est lancé, se déplacer dans la direction définie par angle_lancer
if (lance) {
    x += lengthdir_x(vitesse, angle_lancer);
    y += lengthdir_y(vitesse, angle_lancer);
}









// Vérifie si le joueur est dans le rayon de détection
var joueur2 = instance_nearest(x, y, obj_player_2); // Cherche l'instance de joueur la plus proche
if (distance_to_object(joueur2) < rayon_collision) {
    suit_joueur2 = true;
}

// Si l'objet suit le joueur et n'est pas lancé
if (suit_joueur2 && !lance) {
    // Suivre le joueur avec un lissage
    x += (joueur2.x - x) * 0.05;
    y += (joueur2.y - y) * 0.05;
}

// Si l'objet est lancé, se déplacer dans la direction définie par angle_lancer
if (lance) {
    x += lengthdir_x(vitesse, angle_lancer);
    y += lengthdir_y(vitesse, angle_lancer);
}





// Si la bombe est collée à un joueur
if (joueur_colle != noone) {
    // Colle la bombe à la position du joueur adverse
    x = joueur_colle.x;
    y = joueur_colle.y;
} else if (lance) {
    // Sinon, la bombe suit sa trajectoire normale
    x += lengthdir_x(vitesse, angle_lancer);
    y += lengthdir_y(vitesse, angle_lancer);
}

collisionInit();
