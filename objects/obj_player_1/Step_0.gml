
// Mettre à jour l'angle de vue vers la position de la souris (facultatif, selon ton jeu)
//angle_vue = point_direction(x, y, mouse_x, mouse_y);




playerCollisionsInit();

//On fait la somme des angles pour les déplacements
if localPlayer {
	
	if keyboard_check(vk_up) && keyboard_check(vk_left){

		image_angle = 90 + 45;
	
	}else if keyboard_check(vk_up) && keyboard_check(vk_right){
	
		image_angle = 90 - 45;
	
	}else if keyboard_check(vk_down) && keyboard_check(vk_right){
	
		image_angle = 270 + 45;	
	
	}else if keyboard_check(vk_down) && keyboard_check(vk_left){
	
		image_angle = 270 - 45;	
	
	}
	
	//On a attrapé l'objet et il n'est pas en cours d'utilisation
	if objectGrabed && objectGrabed.use == false{
	
		grabObject(objectGrabed);
	
	}
}