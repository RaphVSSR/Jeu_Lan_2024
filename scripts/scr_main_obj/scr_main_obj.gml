// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mainObjectCollisionsInit(){

	//Collision avec le bord de map
	//Axe des X
	if (x + previewCollision) >= room_width || (x - previewCollision) <= 0 {
	
		if x + previewCollision >= room_width {
		
			x = (x - (x - room_width)) - sprite_width;
		
			use = false;
		
		}
	
		if (x - previewCollision) <= 0 {
		
			x = (x + (-x)) + sprite_width;
		
			use = false;

		}
	
	}

	//Axe des Y
	if (y + previewCollision) >= room_height || (y - previewCollision) <= 0 {
	
		if y + previewCollision >= room_height {
		
			y = (y - (y - room_height)) - sprite_width;
		
			use = false;

		
		}
	
		if (y - previewCollision) <= 0 {
		
			y = (y + (-y)) + sprite_width;
		
			use = false;

		
		}
	
	}
}