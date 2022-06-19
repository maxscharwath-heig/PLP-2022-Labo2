{-
   PLP - Devoir 2

   2.6 Interpréteur

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Eval (eval, convertEnv, Value(..), Env) where

import Parser (Expr(..))
import Semantics (Type(..))

data Value = VBool Bool | VInt Int | VTuple [Value] | VFun Name [Name] Expr | VVoid
   deriving (Eq)

instance Show Value where
   show (VBool b) = show b
   show (VInt i) = show i
   show (VTuple v) = "(" ++ show v ++ ")"
   show _ = ""

type Name = String
type Env = [(Name, Value)]

convertEnv :: Env -> [(Name, Type)]
convertEnv = map (\(n, v) -> (n, convertValue v))

convertValue :: Value -> Type
convertValue (VBool _) = TBool
convertValue (VInt _) = TInt
convertValue (VTuple x) = TTuple (map convertValue x)
convertValue VFun {} = TFun
convertValue VVoid = TVoid

-- | Evaluation de variables
value :: Name -> Env -> Value
value v [] = error ("#ier " ++ v ++ " undefined variable")
value v ((var,val):env)
      | v == var = val
      | otherwise = value v env

-- | Evaluation de littéraux
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

-- | Evaluation de RelationOp
eval (ERelationalOp c x y) env =
   (case (c, fst $ eval x env, fst $ eval y env) of
      ("&&", VBool x, VBool y) -> VBool (x && y)
      ("||", VBool x, VBool y) -> VBool (x || y)
      _ -> error "[#ier Eval] RelationalOp: bad types", env)

-- | Declaration de variable
eval (EVarDec v e) env = (VVoid, (v, fst $ eval e env):env)

-- | Evaluation de variable
eval (EVar v) env = (value v env, env)

-- | Let

eval (ELet x y) env = let
   env' = evalDec x env
   in (fst $ eval y env', env)

-- | Tuple (min 2 elements)
eval (ETuple x) env =
   if length x < 2 then error "[#ier Eval] Tuple: bad types"
   else (VTuple (map (fst . (`eval` env)) x), env)

-- | Negation
eval (ENegate x) env =
   (case fst $ eval x env of
      VInt 0 -> VBool True
      VInt _ -> VBool False
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

-- | Evaluation d'un case
eval (ECase e caseofsExp defaultExp) env =
      let
         v = fst $ eval e env
         caseofs = filter (\(x,_) -> x == v) (map (\(ECaseOf x y) -> (fst $ eval x env, y)) caseofsExp)
      in case caseofs of
         [] -> eval defaultExp env
         (x,y):_ -> eval y env



eval a _ = error ("[#ier Eval] : missing case for " ++ show a)

evalDec :: [Expr] -> Env -> Env
evalDec xs env = foldr (\ x env -> snd $ eval x env) env xs
