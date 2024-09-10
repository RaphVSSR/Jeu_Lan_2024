# Bilan de la réu du 06/09/24
## Concept
- Jeu solo/duo/trio
- Arcade (graphismes simple mais efficacent/style de jeu rapide + temps de partie rapide)
- 2D

## Inspi (reprises de certains point clés de nom connus)
- Lethal league: jeu de "combat indirect" à l'aide d'un objet principal (ici une balle de baseball)
- Brawlhalla: jeu de combat type platformer avec des persos à spécificités
- Injustice: pour les maps interactives
- Rainbow Six Siege: pour le ban de personnages en début de partie

## Gameplay
- On commence par l'axer plutôt manettes
- Peut y avoir un temps imparti genre 3min/games si besoin -> majorité du temps de partie: lorsqu'une équipe perd tout ses membres
- Elements de map interactifs (décors opening)
- 3 VS 3
- Persos spécifiques (un ulti/perso uniquement) => 8 persos en tout
- Système de ban de persos en début de game
- 3 hits pour éléminer un adversaire
- système d'attrape: à la fall guys
- ulti (3 hits par team pour débloquer) -> le perso qui le prend (après l'avoir débloqué) peut utiliser son ulti et seulement lui

## Résumé brut du déroulement d'une partie
  Les joueurs sont connectés au serveur et sont assignés dans une équipe (faire un lobby), la partie peut commencer. Dès le début de partie chaque équipe peut bloquer et verrouiller un personnage (à voir si on joue sur la rapidité des joueurs), une fois fait chaque joueur peut choisir son personnage (un personnage choisi est un personnage pris, on ne fait pas de doubles).

  Le match commence -> chaque joueur est apparu dans son équipe qui elle est apparue d'un côté de la map. Les joueurs peuvent essayer de faire des dégâts à l'adversaire avec l'objet principal en jeu. Au bout d'un certain temps, des objets secondaires apparaissent et les stratégies de combos se mettent en place; puis vient le décors qui se voit rajouter des éléments interactifs.

  Au cours de la partie (à choisir le meilleur moment) la possibilité de débloquer son ulti entre en jeu, chaque équipe doit cumuler 3 hits au total (de l'objet qui représente le consomable d'ulti) pour pouvoir se permettre de le récupérer. Une fois débloqué, l'ulti peut être récupérer par un seul personnage par équipe (le premier arrivé) et ça sera uniquement son ulti qui sera actif.

  Lorsque tout les membres d'une équipe sont éliminés, la partie se finie et l'équipe encore en lisse remporte le match.

---

# Bilan de la réu du 08/09/24

- Faire uniquement 1 dossier de présentation du jeu avec 2 aspects: ***full compétitif*** et ***plus détente***
- Garder de côté l'idée de faire un jeu de plateau type Game Party comme Mario Party ou Pumel Party

## A propos du jeu
On reste globalement sur le concept amené jusqu'ici, on à rajouté le fait de donner la possibilité aux spectateurs de lancer les objets secondaire sur la map au lieu qu'ils soient apparu par le jeu.

Globalement la partie se déroulera en relais; sur la map il y aura uniquement un 1v1 et les joueurs actuels pourront uniquement voir ce qui se passe sur la map. Sauf que les spectateurs voient en plus leur coéquipiers.
Une fois que le 1er joueur se prend un hit il devient spectateur et c'est au second de prendre place sur la map et ainsi de suite jusqu'à ce qu'un joueur se prend 3 hit, il est alors éliminé et devient spectateur mais il ne pourra pas interagir avec ce qui se passe sur la map.

---

# Bilan de la réu du 09/09/24

Globalement quelques faces du concept vont changer:

- Les 2 équipes seront: un côté ancienne mascotte et un côté nouvelle mascotte (apparement il y aura changement de mascotte par rapport à l'année dernière)
- On enlève les 8 personnages (trop de travail visuel: animation + création du personnage de manière générale avec toute sa présentation (son univers). A la place on en garde uniquement 2 (1 pour chaque "camp").
- Bien sûr si l'on organise un "choque des années de LAN" il n'y aura pas que les persos, il y aura aussi les DA des différentes LAN qui vont couper la map en 2 (pour vraiment ressentir cet aspect affrontement)
- Dans la même optique, on vire les ulti qui vont avec les personnages et on en fait 2 de manière générale mais ils apparaitront aléatoirement
- Lorsqu'un joueur prend un hit (il perd une vie sur ses 3 valable), les objets sur la map et tout ce qui a été rajouté par les joueurs se fait effacer et donc pour la rotation de joueur: elle se fera de manière aléatoire parmis les 2 spectateurs encore en jeu de l'équipe (afin d'éviter d'avoir toujours les mêmes duels)

## A propos du fonctionnement technique du jeu
- On va centraliser la session streamée sur un serveur host, les joueurs arriveront en tant que "connexion externe" (via un lien par exemple). C'est un fonctionnement qui se rapproche des sessions Trackmania de l'année dernière ou des jeu à gros flux de joueurs.
- Dans l'idée, pendant qu'un match se fait on va offrir la possibilité aux autres équipes de créer des match privés d'entrainement pour éviter qu'ils attendent sans rien faire (dans la réalité ça va demander un bon travail en plus donc à voir si on a le temps)

## Objets et consommables
Pour rappel, les spectateurs ont la possibilité d'aider leur coéquipier qui est en train de jouer en plaçant un objet directement sur la map ou en lui faisant apparaître un "consomable" c'est à dire un objet qui n'est pas plaçable mais qui est utilisable à un instant T, c'est une utilisation éphémère par rapport aux objets plaçable qui eux restent plus longtemps. D'où cet aspect de "consommation" plutôt que d'utilisation.
- Brainsto des objets plaçable par les spectateurs (placement de ces objets assisté d'une grille)
   - Bumper
   - Piques
   - plateforme temporaire et plateforme destructible par rapport au temps passé dessus/le nombre de sauts dessus
   - Ventilateur
   - Laser qui traverse la map horizontalement/verticalement
- Brainsto des consommables (soit apparu grâce au jeu étant soumis à un cooldown/soit apparu grâce aux spectateurs)
   - coup de poing
   - Trou noir
   - Champ répulsif
   - Bombe gluante

