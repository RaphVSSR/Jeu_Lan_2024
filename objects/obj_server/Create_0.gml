
//bindIP("10.21.94.239");

// Création de notre liaison entre le client et le serveur
global.client = network_create_socket(network_socket_udp);
ip = "127.0.0.1";

//Un buffer est un moyen de stockage de la donnée avant d'être envoyée
playerBuffer = buffer_create(50, buffer_fixed, 50) //On veut envoyer toute la donnée en 1 seul packet c'est pour ça qu'il est fixe

//On créer des types de messages pour donner déjà l'info au serveur -> de quel type de message on parle
//La clé "type" est un outil de développement qui aide à gérer et à comprendre les données chargées, mais elle n'a pas de rôle fonctionnel dans le processus de chargement lui-même.
enum msgType{ //Par défaut les indexes de position d'un "enum" sont de 0 à n => on va reprendre les mêmes dans le serveur
	CREATE_HOST,
	JOIN_HOST,
	STOP_HOST
}