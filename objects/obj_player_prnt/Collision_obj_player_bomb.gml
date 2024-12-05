if !objectGrabed && other.use {		
	

	other.use = false;
	grabObject(other); 	
	
}else if objectGrabed && other.use{
	
	instance_destroy(objectGrabed);
	objectGrabed = other;
}