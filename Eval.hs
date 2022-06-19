{-
Écrivez un module Haskell, eval.hs, qui expose une fonction permettant d’évaluer des termes
de votre langage fonctionnel. Cette fonction doit partir du principe que tout terme devant être
évalué est correctement typé à ce stade. Elle devra toutefois veiller à ce que les symboles évalués
soient bien définis. Les seules erreurs susceptibles de se produire lors d’une évaluation sont donc
des erreurs d’exécution dues à des erreurs de programmation de l’utilisateur. À vous d’identifier
lesquelles et d’adopter un comportement approprié lorsque cela est amené à se produire.
-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module Eval (eval) where

import Parser (Expr(..))
import GHC.Integer (Integer)

data Value = VBool Bool | VInt Int | VTuple Value Value
   deriving (Show, Eq)

type Name = String
type Env = [(Name, Value)]

-- Prend un Expr en retourne le résultat de l'évaluation

value :: Name -> Env -> Value
value v [] = error ("#ier " ++ v ++ " undefined variable")
value v ((var,val):env)
      | v == var = val
      | otherwise = value v env


eval :: Expr -> Env -> (Value, Env)
eval (EInt x) env = (VInt x, env)
eval (EBool x) env = (VBool x, env)
eval (ENegate x) env
   | x == EBool False = (VBool True, env)
   | otherwise = (VBool False, env)

eval (EArithmeticOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("+", VInt x, VInt y) -> VInt (x + y)
      ("-", VInt x, VInt y) -> VInt (x - y)
      ("*", VInt x, VInt y) -> VInt (x * y)
      ("/", VInt x, VInt y) -> VInt (x `div` y)
      ("%", VInt x, VInt y) -> VInt (x `mod` y)
      _ -> error "[#ier Eval] ArithmeticOp: bad types", env)

eval (EComparisonOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("<", VInt x, VInt y) -> VBool (x < y)
      (">", VInt x, VInt y) -> VBool (x > y)
      ("<=", VInt x, VInt y) -> VBool (x <= y)
      (">=", VInt x, VInt y) -> VBool (x >= y)
      ("==", VInt x, VInt y) -> VBool (x == y)
      ("!=", VInt x, VInt y) -> VBool (x /= y)
      ("==", VBool x, VBool y) -> VBool (x == y)
      ("!=", VBool x, VBool y) -> VBool (x /= y)
      _ -> error "[#ier Eval] ComparisonOp: bad types", env)


eval (ERelationalOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("&&", VBool x, VBool y) -> VBool (x && y)
      ("||", VBool x, VBool y) -> VBool (x || y)
      _ -> error "[#ier Eval] RelationalOp: bad types", env)

eval (EVarDec v e) env = (fst $ eval e env, (v, fst $ eval e env):env)

eval (EVar v) env = (value v env, env)

eval (ELet v x y) env = (fst $ eval y env, (v, fst $ eval x env):env)

eval (ETuple x y) env = (VTuple (fst $ eval x env) (fst $ eval y env), env)

eval (ENegate x) env =
   (case fst $ eval x env of
      VInt x -> VInt (-x)
      VBool x -> VBool (not x)
      _ -> error "[#ier Eval] Negate: bad types", env)


eval (ECase expression value1 body1 def ) env
   | fst (eval expression env) == fst (eval value1 env) = (fst $ eval body1 env, env)
   | otherwise = eval def env


eval a _ = error ("[#ier Eval] : missing case for " ++ show a)