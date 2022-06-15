{-
Écrivez un module Haskell, semantics.hs, qui expose une fonction permettant de calculer
le type d’un terme de votre langage fonctionnel, autrement dit, le type d’une définition ainsi que
d’une expression. De plus, votre fonction devra effectuer toutes les vérifications de type nécessaires à l’exactitude sémantique d’un terme. Les règles de typage que vous devrez implémenter
pour la vérification des types sont laissées à votre bon jugement.
-}

module Semantics (typeof) where 
 
import Parser


type Name = String
type Env = [(Name, Type)]

data Type = TInt | TBool
    deriving (Show, Eq)


-- | Variable

lookup' :: Name -> Env -> Type
lookup' x [] = error $ "[#ier Semantics] Error: variable " ++ x ++ " not found"
lookup' x ((n, t) : env)
    | x == n = t
    | otherwise = lookup' x env


typeof (Var x) env = lookup' x env
typeof (Int n) env = TInt
typeof (Bool b) env = TBool

-- | Literal

-- | Arithmetical expressions

typeof (ArithmeticOp _ e1 e2) env =
    case (typeof e1 env, typeof e2 env) of
        (TInt, TInt) -> TInt
        _ -> error "[#ier Semantics] Error: arithmetic operation."


-- | Relational expressions

-- typeof (RelationalOp op e1 e2) env =
--     case (typeof e1 env, typeof e2 env) of
--         (TInt, TInt) | op `elem` [Ge, Le, Gt, Lt] -> TBool
--         (t1, t2) | t1 == t2 && op `elem` [Eq, Negate] -> TBool
--         _ -> error "[#ier Semantics] Error: relational operation."

-- | Let expressions

-- typeof (ELet x y z) env = typeof z env'
--     where env'
--         t = typeof y env
--         env' = (x, t) : env

-- | Function application