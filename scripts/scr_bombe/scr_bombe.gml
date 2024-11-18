// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function exploser(){
// Explosion de la bombe
show_debug_message("La bombe explose !");

// Si un joueur est collé, applique une poussée
if (joueur_colle != noone) {
    with (joueur_colle) {
        // Applique une poussée au joueur adverse dans la direction de lancement
        x += lengthdir_x(500, other.angle_lancer); // Remplace "10" par la force de poussée
        y += lengthdir_y(500, other.angle_lancer);
    }
}

// Optionnel : Créer une explosion visuelle
effect_create_above(ef_explosion, x, y, 1, c_red);

// Détruire la bombe
instance_destroy();
}

function collisionInit(){
	if (x + previewCollision) >= room_width || (x - previewCollision) <= 0 {
		exploser();
	}
	
	if (y + previewCollision) >= room_height || (y - previewCollision) <= 0 {
		exploser();
	}
}