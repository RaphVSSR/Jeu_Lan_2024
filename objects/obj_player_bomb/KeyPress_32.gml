// Détecte si l'objet suiveur existe
if (instance_exists(obj_player_bomb)) {
    // Configure le lancement de l'objet suiveur
    with (obj_player_bomb) {
        lance = true;               // Active le lancement
        angle_lancer = point_direction(x, y, obj_player_1.x, obj_player_1.y); // Angle vers le joueur

        // Crée un timer pour faire exploser et détruire l'objet après 5 secondes (300 steps)
        alarm[0] = 100;
    }
}
