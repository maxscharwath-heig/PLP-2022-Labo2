{
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser (Expr(..)) where
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
   varDec      { TVarDec }
   funDec      { TFunDec }
   '('         { TSym '('   }
   ')'         { TSym ')'   }
   '='         { TSym '='   }
   '<'         { TSym '<'   }
   '>'         { TSym '>'   }
   '+'         { TSym '+'   }
   '-'         { TSym '-'   }
   '*'         { TSym '*'   }
   '/'         { TSym '/'   }
   '%'         { TSym '%'   }
   '!'         { TSym '!'   }
   let         { TLet       }
   in          { TIn        }
   -- case        { TCase      }
   -- of          { TOf        }
   -- ','         { TSym ','   }
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

Expr : 
      let identifier in Expr      { ELet $2 $4 }
      | Expr '+' Expr             { EArithmeticOp '+' $1 $3 }
      | Expr '-' Expr             { EArithmeticOp '-' $1 $3 }
      | Expr '*' Expr             { EArithmeticOp '*' $1 $3 }
      | Expr '/' Expr             { EArithmeticOp '/' $1 $3 }
      | Expr '%' Expr             { EArithmeticOp '%' $1 $3 }
      | Expr '<' Expr             { EArithmeticOp '<' $1 $3 }
      | Expr '>' Expr             { EArithmeticOp '>' $1 $3 }
      | Expr "==" Expr            { EComparisonOp "==" $1 $3 }
      | Expr "!=" Expr            { EComparisonOp "!=" $1 $3 }
      | Expr "<=" Expr            { EComparisonOp "<=" $1 $3 }
      | Expr ">=" Expr            { EComparisonOp ">=" $1 $3 }
      | Expr "&&" Expr            { ERelationalOp "&&" $1 $3 }
      | Expr "||" Expr            { ERelationalOp "||" $1 $3 }
      | '!' Expr                  { ENegate $2 }
      | '(' '-' Expr ')'          { ENegate $3 }
      | identifier                { EVar $1 }
      -- | funDec identifier Exprs   { FunDec $1 $2 }
      | '(' Expr ')'              { $2 }
      | int                       { EInt $1 }
      | bool                      { EBool $1 }
      --| case Expr of Expr end
      -- | Expr  Expr

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = EVarDec String 
   | EFunDec Name [Expr]
   | EInt Int
   | EBool Bool
   | EArithmeticOp Char Expr Expr
   | EComparisonOp String Expr Expr
   | ERelationalOp String Expr Expr
   | EVar Name
   | ENegate Expr
   -- | Case Expr Expr
   | EIn Expr
   | ELet Name Expr Expr
   deriving (Show, Eq)
}
