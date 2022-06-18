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
import GHC.Integer (Integer)

data Value = VBool Bool | VInt Int
   deriving (Show)


-- instance Num Value where
--    (VInt x) + (VInt y) = VInt (x + y)
--    (VInt x) * (VInt y) = VInt (x * y)
--    (VInt x) - (VInt y) = VInt (x - y)
   


type Name = String
type Env = [(Name, Value)]

-- Prend un Expr en retourne le résultat de l'évaluation

value :: Name -> Env -> Value
value v [] = error ("#ier " ++ v ++ " undefined variable")
value v ((var,val):env)
      | v == var = val
      | otherwise = value v env


eval :: Expr -> Env -> Value
eval (EInt x) _ = VInt x
eval (EBool x) _ = VBool x
eval (ENegate x) _
   | x == EBool False = VBool True
   | otherwise = VBool False

eval (EArithmeticOp c x y) env =
   case (c, eval x env, eval y env) of
      ("+", VInt x, VInt y) -> VInt (x + y)
      ("-", VInt x, VInt y) -> VInt (x - y)
      ("*", VInt x, VInt y) -> VInt (x * y)
      ("/", VInt x, VInt y) -> VInt (x `div` y)
      ("%", VInt x, VInt y) -> VInt (x `mod` y)

eval (EComparisonOp c x y) env =
   case (c, eval x env, eval y env) of
      ("<", VInt x, VInt y) -> VBool (x < y)
      (">", VInt x, VInt y) -> VBool (x > y)
      ("<=", VInt x, VInt y) -> VBool (x <= y)
      (">=", VInt x, VInt y) -> VBool (x >= y)
      ("==", VInt x, VInt y) -> VBool (x == y)
      ("!=", VInt x, VInt y) -> VBool (x /= y)
      ("==", VBool x, VBool y) -> VBool (x == y)
      ("!=", VBool x, VBool y) -> VBool (x /= y)


eval (ERelationalOp c x y) env =
   case (c, eval x env, eval y env) of
      ("&&", VBool x, VBool y) -> VBool (x && y)
      ("||", VBool x, VBool y) -> VBool (x || y)

eval (EVar v) env = value v env

eval (ELet v x y) env = eval y ((v, eval x env):env)

