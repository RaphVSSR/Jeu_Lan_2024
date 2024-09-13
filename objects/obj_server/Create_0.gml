
//bindIP("10.21.94.239");

// Création de notre liaison entre le client et le serveur
global.client = network_create_socket(network_socket_udp);
ip = "127.0.0.1";

//Un buffer est un moyen de stockage de la donnée avant d'être envoyée
playerBuffer = buffer_create(50, buffer_fixed, 50) //On veut envoyer toute la donnée en 1 seul packet c'est pour ça qu'il est fixe