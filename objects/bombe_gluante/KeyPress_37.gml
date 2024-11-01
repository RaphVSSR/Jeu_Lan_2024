/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
// Classe de l'objet
class ObjetSuiveur {
    constructor(x, y, rayonCollision) {
        this.x = x; // Position en X de l'objet
        this.y = y; // Position en Y de l'objet
        this.rayonCollision = rayonCollision; // Rayon de la collision
        this.suitJoueur = false; // Indique si l'objet suit le joueur
        this.lance = false; // Indique si l'objet est lancé
        this.vitesse = 2; // Vitesse de l'objet
        this.angle = 0; // Angle de lancement
    }

    // Méthode pour vérifier la collision avec le joueur
    collisionAvecJoueur(joueur) {
        const distance = Math.sqrt((this.x - joueur.x) ** 2 + (this.y - joueur.y) ** 2);
        return distance < this.rayonCollision;
    }

    // Méthode pour mettre à jour la position de l'objet
    update(joueur) {
        if (this.suitJoueur && !this.lance) {
            // Suivre le joueur
            this.x += (joueur.x - this.x) * 0.05; // Ajuster la valeur pour le "follow"
            this.y += (joueur.y - this.y) * 0.05;
        }

        if (this.lance) {
            // Déplacer l'objet dans la direction définie par l'angle
            this.x += Math.cos(this.angle) * this.vitesse;
            this.y += Math.sin(this.angle) * this.vitesse;
        }
    }

    // Méthode pour lancer l'objet
    lancer(angleJoueur) {
        this.angle = angleJoueur;
        this.lance = true;

        // Après 5 secondes, l'objet explose et est détruit
        setTimeout(() => {
            this.exploser();
        }, 5000);
    }

    // Méthode pour simuler l'explosion de l'objet
    exploser() {
        console.log("L'objet a explosé !");
        this.detruire();
    }

    // Méthode pour détruire l'objet
    detruire() {
        // Supprimer l'objet (selon le framework ou moteur de jeu, il faut adapter la méthode de suppression)
        console.log("L'objet a été détruit !");
    }
}

// Classe du joueur pour les tests
class Joueur {
    constructor(x, y, angle) {
        this.x = x;
        this.y = y;
        this.angle = angle; // Direction dans laquelle le joueur regarde
    }
}

// Exemple d'utilisation

// Création du joueur et de l'objet
let joueur = new Joueur(50, 50, 0);
let objet = new ObjetSuiveur(100, 100, 30);

// Boucle de mise à jour
function boucleDeJeu() {
    // Vérifie la collision entre l'objet et le joueur
    if (objet.collisionAvecJoueur(joueur)) {
        objet.suitJoueur = true; // L'objet commence à suivre le joueur
    }

    // Mise à jour de l'objet
    objet.update(joueur);

    // Simulation du lancer de l'objet quand une touche est appuyée
     document.addEventListener("keydown", (e) => {
        if (e.key === " ") { // Espace pour lancer l'objet
            objet.lancer(joueur.angle);
        }
    });

    // Redessiner l'objet (adapter selon le moteur graphique)
    requestAnimationFrame(boucleDeJeu);
}

// Lancer la boucle de jeu
boucleDeJeu();