{-
Écrivez un module Haskell, eval.hs, qui expose une fonction permettant d’évaluer des termes
de votre langage fonctionnel. Cette fonction doit partir du principe que tout terme devant être
évalué est correctement typé à ce stade. Elle devra toutefois veiller à ce que les symboles évalués
soient bien définis. Les seules erreurs susceptibles de se produire lors d’une évaluation sont donc
des erreurs d’exécution dues à des erreurs de programmation de l’utilisateur. À vous d’identifier
lesquelles et d’adopter un comportement approprié lorsque cela est amené à se produire.
-}

module Eval (eval) where

import Semantics
import Parser (Expr(..))

-- Prend un Expr en retourne le résultat de l'évaluation

eval (Int x) _ = x
-- eval (Bool x) _ = x
eval (ArithmeticOp c x y) env 
   | c == '+' = (eval x env) + (eval y env)
   | c == '-' = (eval x env) - (eval y env)
   | c == '*' = (eval x env) * (eval y env)
   | c == '/' = div (eval x env) (eval y env)