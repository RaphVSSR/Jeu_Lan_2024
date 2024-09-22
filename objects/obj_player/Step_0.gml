
if alarm[0] == -1 && requestUpdatingSent == false{
	
	requestUpdatingSent = true;
	
	alarm[0] = fps * .33; //On update la position de l'affichage des autres players touts les tiers de secondes
	
}