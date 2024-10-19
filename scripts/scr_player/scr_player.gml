// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerCollisionsInit(){

	//Collision avec le bord de map
	//Axe des X
	if (x + previewCollision) >= room_width || (x - previewCollision) <= 0 {
	
		if x + previewCollision >= room_width {
		
			x = (x - (x - room_width)) - sprite_width;
			
		}
	
		if (x - previewCollision) <= 0 {
		
			x = (x + (-x)) + sprite_width;
			
		}
	
	}

	//Axe des Y
	if (y + previewCollision) >= room_height || (y - previewCollision) <= 0 {
	
		if y + previewCollision >= room_height {
		
			y = (y - (y - room_height)) - sprite_width;
		
		}
	
		if (y - previewCollision) <= 0 {
		
			y = (y + (-y)) + sprite_width;
		
		}
	
	}

}

function grabObject(target){

	target.depth = -10;

	target.x = x + lengthdir_x(30, image_angle);
	target.y = y + lengthdir_y(30, image_angle);

	target.image_angle = image_angle;
	
	objectGrabed = target;
}