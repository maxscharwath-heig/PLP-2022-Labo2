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

import System.IO

import Lexer
import Parser
import Semantics
import Eval

--main loop
main :: IO ()
main = do
    putStrLn "Welcome to the REPL\n"
    loop

    --loop
loop :: IO ()
loop = do
    putStr "#ier> "
    hFlush stdout
    line <- getLine
    --parse line
    let (cmd, expr) = parseLine line
    case cmd of
        ":q" -> return ()
        ":r" -> do
            putStrLn "Resetting environment"
            loop
        ":h" -> do
            putStrLn ":q to quit, :r to reset, :h to help"
            loop
        ":t" -> do
            putStrLn $ "Type of " ++ expr ++ " is " ++ show (typeof (parser $ lexer expr) [])
            loop
        ":e" -> do
            putStrLn ":e to show environment"
            loop
        ":{" -> do
            putStrLn ":} to disable multi-line mode"
            loop
        ":}" -> do
            putStrLn "End of multi-line mode"
            loop
        _ -> do
            print "Lexing..."
            let env = []
            let res =  eval (parser $ lexer line) env
            hFlush stdout
            print (show res)
            loop

-- parse string by splitting on spaces
parseLine :: String -> (String, String)
parseLine line = (arg1, arg2)
    where
        args = words line
        arg1 = head args
        arg2 = unwords $ tail args
-- repl funcs = 
--     do
--         putStr "#ier>"
--         line <- getLine
--         let tokens = lexer line
--         putStrLn $ show tokens
--         let ast = parser tokens
--         putStrLn $ show ast
--         let (toPrint, funcsIncreased) = readProg ast ([],funcs)
--         putStrLn toPrint
--         repl funcsIncreased