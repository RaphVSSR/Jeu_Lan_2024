
function sendData(ip, dsMap, buffer){
	
	encodedData = json_encode(dsMap);
	ds_map_destroy(dsMap); //On supprime la structure de donnée décodée pour libérer de l'espace mémoire
	
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_text, encodedData) //Buffer text ne contraint pas de limitte de donnée ni de dernier bit de terminaison 
	network_send_udp_raw(global.client, ip, PORT, buffer, 50)
	
}