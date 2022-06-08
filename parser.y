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
   int         { TInt }
   bool        { TBool }
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
   case        { TCase      }
   of          { TOf        }
   ','         { TSym ','   }
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

Expr : 
      Expr '+' Expr              { Bin '+' $1 $3 }
      | Expr '-' Expr              { Bin '-' $1 $3 }
      | Expr '*' Expr              { Bin '*' $1 $3 }
      | Expr '/' Expr              { Bin '/' $1 $3 }
      | Expr '%' Expr              { Bin '%' $1 $3 }
      | identifier               { Var $1 }
      | varDec                   { Var $1 }
      | funDec                   { Var $1 }
      | '(' Expr ')'             { $2 }
      | let Expr in Expr         { $2 $4 }
      | int                      { Cst $1 }
      | bool                     { Cst $1 }
      -- | case Expr of Expr end
      -- | Expr  Expr


{
   -- parseError :: [Token] -> a
   -- parseError _ = error "Parse error"

data Expr = VarDec String | FunDec String
}
