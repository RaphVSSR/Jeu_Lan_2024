// Vérifie si le joueur est dans le rayon de détection

var joueur = instance_nearest(x, y, obj_player_1); // Cherche l'instance de joueur la plus proche
if (distance_to_object(joueur) < obj_player_bomb.rayon_collision) {
    obj_player_bomb.suit_joueur = true;
}

// Si l'objet suit le joueur et n'est pas lancé
if (obj_player_bomb.suit_joueur && !obj_player_bomb.lance) {
    // Suivre le joueur avec un lissage
    x += (joueur.x - x) * 0.05;
    y += (joueur.y - y) * 0.05;
}

// Si l'objet est lancé, se déplacer dans la direction définie par angle_lancer
if (obj_player_bomb.lance) {
    x += lengthdir_x(obj_player_bomb.vitesse, obj_player_bomb.angle_lancer);
    y += lengthdir_y(obj_player_bomb.vitesse, obj_player_bomb.angle_lancer);
	
	direction = obj_player.image_angle
}