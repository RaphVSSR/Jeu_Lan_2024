// Vérifie si le joueur est dans le rayon de détection

var joueur2 = instance_nearest(x, y, obj_player_2); // Cherche l'instance de joueur la plus proche
if (distance_to_object(joueur2) < obj_player_bomb.rayon_collision) {
    obj_player_bomb.suit_joueur2 = true;
}

// Si l'objet suit le joueur et n'est pas lancé
if (obj_player_bomb.suit_joueur2 && !obj_player_bomb.lance) {
    // Suivre le joueur avec un lissage
    x += (joueur2.x - x) * 0.05;
    y += (joueur2.y - y) * 0.05;
}

// Si l'objet est lancé, se déplacer dans la direction définie par angle_lancer
if (obj_player_bomb.lance) {
    x += lengthdir_x(obj_player_bomb.vitesse, obj_player_bomb.angle_lancer);
    y += lengthdir_y(obj_player_bomb.vitesse, obj_player_bomb.angle_lancer);
	
	direction = obj_player.image_angle
}

