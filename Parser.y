{
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser (Expr(..), parser) where
import Lexer
}

-- TODO: Let in avec plusieurs déclarations

%name parser
%tokentype { Token }
%error { parseError }

%token
   int         { TInt $$ }
   bool        { TBool $$ }
   identifier  { TIdentifier $$ }
   varDecSym      { TVarDec }
   funDecSym      { TFunDec }
   "("         { TSym '('   }
   ")"         { TSym ')'   }
   "="         { TSym '='   }
   "<"         { TSym '<'   }
   ">"         { TSym '>'   }
   "+"         { TSym '+'   }
   "-"         { TSym '-'   }
   "*"         { TSym '*'   }
   "/"         { TSym '/'   }
   "%"         { TSym '%'   }
   "!"         { TSym '!'   }
   let         { TLet       }
   in          { TIn        }
   case        { TCase      }
   of          { TOf        }
   ","         { TSym ','   }
   end         { TEnd       }
   "=="        { TDSym "==" }
   "!="        { TDSym "!=" }
   "<="        { TDSym "<=" }
   ">="        { TDSym ">=" }
   "&&"        { TDSym "&&" }
   "||"        { TDSym "||" }


-- priorité des opérateurs ?

%right in
%left '+' '-'
%left '*' '/'

%%

-- Exprs: { [] }
--  | Expr Exprs {$1:$2}

-- Exprs :
--    Expr                   { [$1] }
--    | Expr Exprs           { $1: $2 }

Expr :
      let identifier "=" Expr in Expr            { ELet $2 $4 $6 }
      | Expr "+" Expr             { EArithmeticOp "+" $1 $3 }
      | Expr "-" Expr             { EArithmeticOp "-" $1 $3 }
      | Expr "*" Expr             { EArithmeticOp "*" $1 $3 }
      | Expr "/" Expr             { EArithmeticOp "/" $1 $3 }
      | Expr "%" Expr             { EArithmeticOp "%" $1 $3 }
      | Expr "<" Expr             { EArithmeticOp "<" $1 $3 }
      | Expr ">" Expr             { EArithmeticOp ">" $1 $3 }
      | Expr "==" Expr            { EComparisonOp "==" $1 $3 }
      | Expr "!=" Expr            { EComparisonOp "!=" $1 $3 }
      | Expr "<=" Expr            { EComparisonOp "<=" $1 $3 }
      | Expr ">=" Expr            { EComparisonOp ">=" $1 $3 }
      | Expr "&&" Expr            { ERelationalOp "&&" $1 $3 }
      | Expr "||" Expr            { ERelationalOp "||" $1 $3 }
      | "(" Expr "," Expr ")"     { ETuple $2 $4 }
      | "!" Expr                  { ENegate $2 }
      | "(" "-" Expr ")"          { ENegate $3 }
      | identifier                { EVar $1 }
      | identifier "(" Expr ")"  { EFunCall $1 $3 }
      | varDecSym identifier "=" Expr { EVarDec $2 $4 }
      | funDecSym identifier identifier "=" Expr { EFunDec $2 $3 $5 }
      | "(" Expr ")"              { $2 }
      | int                       { EInt $1 }
      | bool                      { EBool $1 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

type Op = String

data Expr =
   EFunDec Name Name Expr
   | EFunCall Name Expr
   | EInt Int
   | EBool Bool
   | EArithmeticOp Op Expr Expr
   | EComparisonOp Op Expr Expr
   | ERelationalOp Op Expr Expr
   | EVar Name
   | EVarDec Name Expr
   | ENegate Expr
   | Case Expr Expr
   | EIn Expr
   | ELet Name Expr Expr
   | ETuple Expr Expr
   deriving (Show, Eq)
}
