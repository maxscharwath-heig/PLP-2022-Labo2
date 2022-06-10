{-
Écrivez un programme Haskell, repl.hs, qui implémente une boucle de lecture-évaluationimpression (REPL). Cette boucle doit permettre d’interpréter votre langage de programmation
fonctionnelle. Pour ce faire, vous devez combiner les différentes fonctions d’analyse implémentées précédemment. Une entrée utilisateur donnée doit valider toutes les phases d’analyse avant
de pouvoir évaluer le terme qui en découle. Votre boucle de lecture-évaluation-impression doit
maintenir un environnement global, mis à jour lors de chaque nouvelle définition à la manière
de l’interpréteur Haskell :
P r el u d e > x = 5
P r el u d e > x
P r el u d e > f y = y + 1
P r el u d e > f x
Votre programme doit également implémenter un interpréteur de commandes qui s’exécute
à chaque tour de boucle, pour autant que l’utilisateur souhaite poursuivre l’interprétation, et qui
supporte les commandes suivantes
:{ activer l’édition multi-ligne ( :} pour la désactiver)
:r réinitialiser l’état de l’interpréteur
:t <expr> afficher le type d’une expression
:e afficher l’environnement
:h afficher l’aide
:q quitter le programme
Votre interpréteur de commande devra reporter de manière conviviale à l’utilisateur toutes
les erreurs que vous seriez amenés à générer dans les différents composants de votre interpréteur.
-}

module Main where