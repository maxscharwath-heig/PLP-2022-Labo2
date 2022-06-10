{
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser where
import Lexer
}

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
   -- end         { TEnd       }
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

Exprs: { [] }
 | Expr Exprs {$1:$2}

Expr : 
      let varDec '=' Expr in Expr { Let $2 $4 $6 }
      | Expr '+' Expr             { Bin '+' $1 $3 }
      | Expr '-' Expr             { Bin '-' $1 $3 }
      | Expr '*' Expr             { Bin '*' $1 $3 }
      | Expr '/' Expr             { Bin '/' $1 $3 }
      | Expr '%' Expr             { Bin '%' $1 $3 }
      | Expr '<' Expr             { Bin '<' $1 $3 }
      | Expr '>' Expr             { Bin '>' $1 $3 }
      | Expr "==" Expr            { Bin "==" $1 $3 }
      | Expr "!=" Expr            { Bin "!=" $1 $3 }
      | Expr "<=" Expr            { Bin "<=" $1 $3 }
      | Expr ">=" Expr            { Bin ">=" $1 $3 }
      | Expr "&&" Expr            { Bin "&&" $1 $3 }
      | Expr "||" Expr            { Bin "||" $1 $3 }
      | '!' Expr                  { '!' $2 }
      | identifier                { Var $1 }
      | varDec                    { Var $1 }
      | funDec Exprs              { FunDec $1 $2 }
      -- | '(' '-' Expr ')'          { '-' $3 }
      | '(' Expr ')'              { $2 }
      | let Expr in Expr          { $2 $4 }
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
   | Bin String Expr Expr
   | Unary Char Expr
   | Case Expr Expr
   | In Expr
   | Let Expr Expr
   deriving (Show, Eq)
}
