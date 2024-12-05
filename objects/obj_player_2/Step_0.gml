
// Mettre à jour l'angle de vue vers la position de la souris (facultatif, selon ton jeu)
//angle_vue = point_direction(x, y, mouse_x, mouse_y);




playerCollisionsInit();  

//On fait la somme des angles pour les déplacements
if localPlayer {
	
	if keyboard_check(ord("Z")) && keyboard_check(ord("Q")){

		image_angle = 90 + 45;
	
	}else if keyboard_check(ord("Z")) && keyboard_check(ord("D")){
	
		image_angle = 90 - 45;
	
	}else if keyboard_check(ord("S")) && keyboard_check(ord("D")){
	
		image_angle = 270 + 45;	
	
	}else if keyboard_check(ord("S")) && keyboard_check(ord("Q")){
	
		image_angle = 270 - 45;	
	
	}
	
	//On a attrapé l'objet et il n'est pas en cours d'utilisation
	if objectGrabed && objectGrabed.use == false{
	
		grabObject(objectGrabed);
	
	}
}