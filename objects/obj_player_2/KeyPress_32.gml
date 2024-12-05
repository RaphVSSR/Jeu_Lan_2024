if localPlayer {
	
	if !objectGrabed {
	
		var target = collision_circle(x, y, 30, obj_player_bomb, false, true);

		if target {
	
			grabObject(target);
	
		}
		
	}else if objectGrabed {

		objectGrabed.use = true;
		objectGrabed = noone; //On l'a utilisé donc il n'est plus
	
	}
	
}