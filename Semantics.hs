{-
   PLP - Devoir 2

   2.5 Analyse sémantique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}

module Semantics (typeof, Type(..)) where

import Parser(Expr(..))

type Name = String
type Env = [(Name, Type)]

data Type = TVar | TInt | TBool | TFun | TTuple [Type] | TVoid
  deriving (Show, Eq)


-- | Variables

lookup' :: Name -> Env -> Type
lookup' x [] = error $ "[#ier Semantics] Error: variable " ++ x ++ " not found"
lookup' x ((n, t) : env)
    | x == n = t
    | otherwise = lookup' x env


-- | Literals

typeof :: Expr -> Env -> Type
typeof (EVar x) env = lookup' x env
typeof (EInt n) env = TInt
typeof (EBool b) env = TBool

typeof (EVarDec _ _) env = TVoid

-- | Arithmetical expressions

typeof (EArithmeticOp _ e1 e2) env =
    case (typeof e1 env, typeof e2 env) of
        (TInt, TInt) -> TInt
        _ -> error "[#ier Semantics] Error: arithmetic operation."


-- | Relational expressions

typeof (ERelationalOp op e1 e2) env =
     case (typeof e1 env, typeof e2 env) of
        (TInt, TInt) | op `elem` ["<", ">", "<=", ">="] -> TBool
        (t1, t2) | t1 == t2 && op `elem` ["==", "!="] -> TBool
        _ -> error "[#ier Semantics] Error: relational operation."

-- | Let expressions

typeof (ELet _ e) env = typeof e env

-- | Function

typeof EFunDec {} env = TVoid
typeof (EFunCall x y) env =
    case lookup' x env of
        TFun -> TFun
        _ -> error "[#ier Semantics] Error: function call."


-- | Tuples

typeof (ETuple es) env = TTuple ( map (`typeof` env) es)


-- | Remove to check if we check all the cases
typeof _ _ = error "[#ier Semantics] Error: not all cases checked"