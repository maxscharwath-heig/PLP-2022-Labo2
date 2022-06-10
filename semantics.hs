{-
Écrivez un module Haskell, semantics.hs, qui expose une fonction permettant de calculer
le type d’un terme de votre langage fonctionnel, autrement dit, le type d’une définition ainsi que
d’une expression. De plus, votre fonction devra effectuer toutes les vérifications de type nécessaires à l’exactitude sémantique d’un terme. Les règles de typage que vous devrez implémenter
pour la vérification des types sont laissées à votre bon jugement.
-}

module Semantics where
 
import Parser


-- | Variable

lookupVar x [] = error $ "[#ier Semantics] Error: variable " ++ x ++ " not found"
lookupVar x (n, t) : env
    | x == n = t
    | otherwise = lookupVar x env

typeof (EVar x) env = lookupVar x env


-- | Literal

typeof (EInt n) env = TInt

typeof (EBool b) env = TBool

-- | Arithmetical expressions

typeof (EArith _ e1 e2) env =
    case (typeof x env, typeof y env) of
        (TInt, TInt) -> TInt
        _ -> error "[#ier Semantics] Error: arithmetic operation."


-- | Relational expressions

typeof (ERel op e1 e2) env =
    case (typeof x env, typeof y env) of
        (TInt, TInt) | op `elem` [Ge, Le, Gt, Lt] -> TBool
        (t1, t2) | t1 == t2 && op `elem` [Eq, Ne] -> TBool
        _ -> error "[#ier Semantics] Error: relational operation."

-- | Let expressions

typeof (ELet x y z) env = typeof z env'
    where env'
        t = typeof y env
        env' = (x, t) : env

-- | Function application