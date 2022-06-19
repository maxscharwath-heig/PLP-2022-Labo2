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

data Value = VBool Bool | VInt Int | VTuple [Value] | VFun Name [Name] Expr | VVoid
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

-- | Evaluation de l'arithmetique
eval (EArithmeticOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("+", VInt x, VInt y) -> VInt (x + y)
      ("-", VInt x, VInt y) -> VInt (x - y)
      ("*", VInt x, VInt y) -> VInt (x * y)
      ("/", VInt x, VInt y) -> VInt (x `div` y)
      ("%", VInt x, VInt y) -> VInt (x `mod` y)
      _ -> error "[#ier Eval] ArithmeticOp: bad types", env)

-- | Evaluation de Comparaison
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

-- | Evaulation de RelationOp
eval (ERelationalOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("&&", VBool x, VBool y) -> VBool (x && y)
      ("||", VBool x, VBool y) -> VBool (x || y)
      _ -> error "[#ier Eval] RelationalOp: bad types", env)

-- | Declaration de variable
eval (EVarDec v e) env = (VVoid, (v, fst $ eval e env):env)

-- | Evaluation de varibale
eval (EVar v) env = (value v env, env)

-- | Let
eval (ELet v x y) env = (fst $ eval y env, (v, fst $ eval x env):env)

-- | Tuple (min 2 elements)
eval (ETuple x) env =
   if length x < 2 then error "[#ier Eval] Tuple: bad types"
   else (VTuple (map (fst . (`eval` env)) x), env)

-- | Negation
eval (ENegate x) env =
   (case fst $ eval x env of
      VInt 1 -> VBool False
      VInt 0 -> VBool True
      VBool x -> VBool (not x)
      _ -> error "[#ier Eval] Negate: bad types", env)

-- | Declaration de fonction
eval (EFunDec v p e) env = let
   f = VFun v p e
   in (VVoid, (v,f):env)

-- | Appel de fonction ( avec un environnement amplifié )
eval (EFunCall v x) env =
   (case value v env of
      VFun v p e -> let
         env' = zipWith (\ x y -> (x, fst $ eval y env)) p x
         in fst $ eval e env'
      _ -> error "[#ier Eval] FunCall: bad types", env)

-- | Evaluation d'un case TODO y a qu'un seul cas d'evaluation d'un case
eval (ECase expression value1 body1 def ) env
   | fst (eval expression env) == fst (eval value1 env) = (fst $ eval body1 env, env)
   | otherwise = eval def env


eval a _ = error ("[#ier Eval] : missing case for " ++ show a)