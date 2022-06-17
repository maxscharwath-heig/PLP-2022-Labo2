{-
Écrivez un module Haskell, eval.hs, qui expose une fonction permettant d’évaluer des termes
de votre langage fonctionnel. Cette fonction doit partir du principe que tout terme devant être
évalué est correctement typé à ce stade. Elle devra toutefois veiller à ce que les symboles évalués
soient bien définis. Les seules erreurs susceptibles de se produire lors d’une évaluation sont donc
des erreurs d’exécution dues à des erreurs de programmation de l’utilisateur. À vous d’identifier
lesquelles et d’adopter un comportement approprié lorsque cela est amené à se produire.
-}

module Eval (eval) where

import Parser (Expr(..))

data Value = VBool Bool | VInt Int


type Name = String
type Env = [(Name, Int)]

-- Prend un Expr en retourne le résultat de l'évaluation

-- value :: a -> Env -> Value
-- value v [] = error ("#ier " ++ v ++ " undefined variable")
-- value v ((var,val):env)
--       | v == var = val
--       | otherwise = value v env


eval :: Expr -> Env -> Value
eval (EInt x) _ = VInt x
eval (EBool x) _ = VBool x
-- eval (EArithmeticOp c x y) env 
--    | c == '+' = VInt ((eval x env) + (eval y env))
--    | c == '-' = VInt ((eval x env) - (eval y env))
--    | c == '*' = VInt ((eval x env) * (eval y env))
--    -- | c == '/' = VInt (div (eval x env) (eval y env))

-- eval (ERelationalOp c x y) env 
--    | c == "<" = VBool ((eval x env) < (eval y env))
--    | c == ">" = VBool ((eval x env) > (eval y env))
--    | c == "<=" = VBool ((eval x env) <= (eval y env))
--    | c == ">=" = VBool ((eval x env) >= (eval y env))
--    | c == "==" = VBool((eval x env) == (eval y env))
--    | c == "!=" = VBool((eval x env) /= (eval y env))

--eval (EVar v) env = value v env

