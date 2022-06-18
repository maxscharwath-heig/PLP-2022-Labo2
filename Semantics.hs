{-
Écrivez un module Haskell, semantics.hs, qui expose une fonction permettant de calculer
le type d’un terme de votre langage fonctionnel, autrement dit, le type d’une définition ainsi que
d’une expression. De plus, votre fonction devra effectuer toutes les vérifications de type nécessaires à l’exactitude sémantique d’un terme. Les règles de typage que vous devrez implémenter
pour la vérification des types sont laissées à votre bon jugement.
-}

module Semantics (typeof) where

import Parser(Expr(..))


type Name = String
type Env = [(Name, Type)]

data Type = TVar | TInt | TBool | TFun Type Type | TTuple Type Type
  deriving (Show, Eq)


-- | Variable

lookup' :: Name -> Env -> Type
lookup' x [] = error $ "[#ier Semantics] Error: variable " ++ x ++ " not found"
lookup' x ((n, t) : env)
    | x == n = t
    | otherwise = lookup' x env


typeof :: Expr -> Env -> Type
typeof (EVar x) env = lookup' x env
typeof (EInt n) env = TInt
typeof (EBool b) env = TBool

-- | Literal

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

typeof (ELet x y z) env = typeof z env'
    where
        t = typeof y env
        env' = (x, t) : env


-- | Function


-- | Tuples

typeof (ETuple e1 e2) env = TTuple (typeof e1 env) (typeof e2 env)



-- | Remove to check if we check all the cases
typeof _ _ = error "[#ier Semantics] Error: not all cases checked"