
//On créer des types de messages pour donner déjà l'info au serveur -> de quel type de message on parle
//La clé "type" est un outil de développement qui aide à gérer et à comprendre les données chargées, mais elle n'a pas de rôle fonctionnel dans le processus de chargement lui-même.
enum msgType{ //Par défaut les indexes de position d'un "enum" sont de 0 à n => on va reprendre les mêmes dans le serveur
	CREATE_HOST,
	JOIN_HOST,
	STOP_HOST,
	UPDATE_PLAYER_STAT,
	GET_HOSTS
}

//On vérifie si les variables globales existent déjà si on doit encore instancier l'objet.
globalVariablesInit();

if room == rm_lobby {
	
	if global.hostsDisplayed == false {
		
		global.hostsPendingDisplaying = true;
		
	}
}

noHosts = false;