# 1. Présentation
- *Nom:* **Mascot Mania Interactive**
- *Type de jeu:* **Jeu de combat arcade en 2D**
- *Plateformes:* **Principalement sur PC et consoles**
- *Nb de joueurs:* **6 (3 par équipes)**
- *Temps de jeu:* **~3 à 5min**
- *Coeur de cible:* **Les étudiants et les jeunes arrivants à l'IUT**
- *Unique selling points:* **Les spectateurs ont un rôle dans le déroulement de la partie, le jeu est dynamique, chaque partie est unique**
- *Temps de développement:* **1 mois et quelques** (minimum)
- *Échéances:* **Le 18 décembre _au plus tard_**
### Logiciels
- GameMaker
- Figjam
- Git/Github
- Clip Studio Paint
- Virtual Studio Code
# 2. Pitch
On vous présente un jeu PVP 2D, mettant en scène l'affrontement entre la mascotte de la LAN de l'année dernière et celle de cette année. En équipe de 3, un joueur par équipe incarnera une mascotte et l'affrontement sera indirect. Les dégâts seront infligés grâce au décor et avec une arme principale non-léthale.

En parallèle, les 2 autres coéquipiers de chaque équipes, en tant que spectateurs, auront une responsabilité déterminante: en plaçant des objets et en lâchant des consommables aux joueurs, ils offrent la possibilité de mettre en place une stratégie sur place (on laissera juste assez de temps au préalable pour savoir comment jouer mais pas assez pour monter des stratégies efficace).
# 3. Références
- [Etudes de l'existant (Figjam)](https://www.figma.com/board/TzOCzQbDci5kVt4ebz25BO/Etude-de-l'existant?node-id=0-1&t=lUCQrGcGdsUSomjn-1) *_Forces et faiblesses_*
# 4. Le jeu concrètement
### 4.1 **Synopsis**
*Résume le jeu, l’histoire et son univers en quelques phrases.*

Témoins direct de l'affrontement entre la LAN 2024 et celle de l'année dernière, notre jeu PVP 2D va redonner vie à Shard! La soif de vengeance l'amène à vouloir éliminer la concurrence.. En équipe de 3 un joueur de chaque équipes incarnera Shard et la nouvelle mascotte s'affrontant indirectement grace au décor et à une "arme" principale non-léthale.

### 4.2 **Intentions**
- 
  - Pour certains, une partie de leurs objectifs; c'est d'affiner leur compétences dans le graphisme.
  - Dans d'autres cas, l'enjeu c'est d'acquérir de nouvelles compétences en programmation (d'autres que celles de la formation) => mot d'ordre: devenir polyvalent.
  - Casser la routine fait partie de la motivation générale pour découvrir de nouvelles manières de travailler. Le soutien avec l'équipe pour découvrir les nouveautés est primordiale pour atteindre ces objectifs.
- Le joueur, en l'occurrence l'étudiant MMI, vient à la LAN pour **s'amuser**, **découvrir** *(que ce soit l'iut pour les nouveaux arrivants comme les styles de jeux proposés)*, **sociabiliser et s'inclure**, **repartir avec un souvenir**, **ne pas se prendre la tête**

### 4.3 **Les 3C**
   - Caméra: Caméra fixe (écran = taille de map)
   - Character: **Il y a 2 personnages principaux: la mascotte de l'année dernière et la potentielle nouvelle mascotte. Toutes 2 seront incarnées par des joueurs**
   - Controller: Le jeu va être basé sur les contrôles de manettes (universelles) mais il peut être adapté pour les claviers/souris

### 4.4 **Core Gameplay**
   - Piliers du jeu: Versus, Objets, Stratégie, Equipes
---
La partie se déroule en 2 équipes de 3, 1 joueur initial et 2 "spectateurs" par équipe. Le joueur doit toucher son adversaire à l'aide d'un objet principal présent en milieu de map, puis par la suite, les "spectateurs" de son équipe vont pouvoir lui donner la possibilité d'utiliser d'autres objets secondaire et/ou consommables pour pouvoir tirer un avantage sur son adversaire. Quelques décors interactifs offriront également la possibilité d'obtenir un avantage.

Une fois son adversaire touché, celui-ci donne sa place à un de ses coéquipiers puis il devient spectateur. Chaque joueur a 3 hits en tant que vie, une fois touché 3 fois, il est définitivement éliminé. Lorsque tout les membres d'une équipe sont éliminés, celle-ci perd la partie.

### 4.5 **Conditions de victoire et de défaite**
   - Pour gagner on doit éliminer tout les membres de l'équipe adverse. A la fin du temps limite, c'est l'équipe avec le plus de membres encore en lisse qui gagne.
   - Si toute l'équipe se fait éliminer, elle a perdu. A la fin du temps limite, c'est l'équipe avec le moins de membres encore en lisse qui perd.
   - Si il y a égalité, alors on entame une mort subite. Bien entendu la partie sera faite pour finir plus vite.
# 5. Look&Feels
- [Mockups](/concept/mockups)
- [Moodboard]()
# Annexes
- ### Nomenclature des fichiers et des dossiers
-
