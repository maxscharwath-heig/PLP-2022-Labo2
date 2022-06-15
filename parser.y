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
      let identifier in Expr      { Let $2 $4 }
      | Expr '+' Expr             { ArithmeticOp '+' $1 $3 }
      | Expr '-' Expr             { ArithmeticOp '-' $1 $3 }
      | Expr '*' Expr             { ArithmeticOp '*' $1 $3 }
      | Expr '/' Expr             { ArithmeticOp '/' $1 $3 }
      | Expr '%' Expr             { ArithmeticOp '%' $1 $3 }
      | Expr '<' Expr             { ArithmeticOp '<' $1 $3 }
      | Expr '>' Expr             { ArithmeticOp '>' $1 $3 }
      | Expr "==" Expr            { ComparisonOp "==" $1 $3 }
      | Expr "!=" Expr            { ComparisonOp "!=" $1 $3 }
      | Expr "<=" Expr            { ComparisonOp "<=" $1 $3 }
      | Expr ">=" Expr            { ComparisonOp ">=" $1 $3 }
      | Expr "&&" Expr            { RelationalOp "&&" $1 $3 }
      | Expr "||" Expr            { RelationalOp "||" $1 $3 }
      | '!' Expr                  { Negate $2 }
      | '(' '-' Expr ')'          { Negate $3 }
      | identifier                { Var $1 }
      -- | funDec identifier Exprs   { FunDec $1 $2 }
      | '(' Expr ')'              { $2 }
      | int                       { Int $1 }
      | bool                      { Bool $1 }
      --| case Expr of Expr end
      -- | Expr  Expr

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Expr = VarDec String 
   | FunDec Name [Expr]
   | Int Int
   | Bool Bool
   | ArithmeticOp Char Expr Expr
   | ComparisonOp String Expr Expr
   | RelationalOp String Expr Expr
   | Var Name
   | Negate Expr
   -- | Case Expr Expr
   | In Expr
   | Let Name Expr
   deriving (Show, Eq)
}
