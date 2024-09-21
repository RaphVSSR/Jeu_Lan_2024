
if global.serverIp != "Ip du serveur" && global.serverIp != "" {

	if global.hostSelected != undefined && !clicked{
	
		txtTyped = "Pseudo en jeu";
	
	}else if global.hostSelected == undefined && !clicked{
	
		txtTyped = "Nom de la future session";
	}


	if string_length(txtTyped) > limitChar{
		txtTyped = string_copy(txtTyped, 1, limitChar);
	}
}