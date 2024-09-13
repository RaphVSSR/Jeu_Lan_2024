
if gamepad_button_check_pressed(0, gp_face1){ //check si le boutton A (xBox à été pressé)
	
	//On créer la structure du packet de données que l'on va envoyer
	var data = ds_map_create();
	
	ds_map_add(data, "testContent", "Ping de test serveur"); //On ajoute nos données sous forme de clé/valeurs
	
	sendData(ip, data, playerBuffer);
}
