# Ruby-basics
Projet validant du jeudi de la première semaine de The Hacking Project : suite de programme sur les boucles.

Ce casse tête vous est offert par :
- Cédric Robert @Cedric Robert
- Tahina Metz @Anne-Tahina Metz

Alors pour la petite explication : 

00_hello
	Juste un petit programme sympa qui dit Bonjour aux gens... 
	Dans la première methode, nous avons exécuté les consignes 2.1.2. 

	2.1.3 on a rajouté un gets.chomp qui récolte le nom de l'utilisateur et qui lui renvois "Bonjour, utilisateur".

	La dernière methode "perform" combine les deux précédente et complète donc la section 2.1.3. C'est-à-dire qu'elle demande son prénom à l'utilisateur et lui renvois un bonjour.


01_pyramide
	On a repris notre exo du préparcours et on a joué sur le nombre d'espaces pour que la pyramide soit belle et pointue.

	Pour la WTF, on est parti de la full_pyramid et on a construit la pyramide inversée à partir de là. 


02_password
	C'etait assez intuitif.. On s'est bien gavé sur la secret zone. <3 <3 
	


03_stairway 
Alors, pour celui-ci, on a un peu plus galéré à comprendre ce que le rendu devait donner. Je m'explique... Est-ce que une fois lancé le jeu devait tourner automatiquement (c'est à dire que l'ordi lance le dé sans demander son avis à l'utilisateur ?) ou est ce que le jeu devait tourner manuellement (c'est à dire que l'utilisater doit effectuer une action pour relancer le dé ?). Du coup dans le doute, on a fait les deux. 
Lorsque le "game" est lancé comme "(true)" ou sans paramètres, il sera en manuel. Et lorsque le "game" est lancé comme "(false)" il se lancera en automatique.
La je ne parles pas des statistiques. A ne pas confondre. 

Pour les statistiques justement, l'ordi lance un nombre aléatoire (entre 100 et 255) de parties FORCEMENT en automatique cette fois. Il va enregistrer le nombre de parties ainsi que le nombre de lancés necessaires pour gagner et faire la moyenne de tout ça ; et affichera à l'écran que cette moyenne. 

A chaque partie simulées, on concervait le nombre de tours effectués et on l'additionnait à chaque fois. 


