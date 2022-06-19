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

%name parser
%tokentype { Token }
%error { parseError }

%token
   int         { TInt $$        }
   bool        { TBool $$       }
   identifier  { TIdentifier $$ }
   varDecSym   { TVarDec        }
   funDecSym   { TFunDec        }
   "("         { TSym '('       }
   ")"         { TSym ')'       }
   "<"         { TSym '<'       }
   ">"         { TSym '>'       }
   "+"         { TSym '+'       }
   "-"         { TSym '-'       }
   "*"         { TSym '*'       }
   "/"         { TSym '/'       }
   "%"         { TSym '%'       }
   "!"         { TSym '!'       }
   let         { TLet           }
   in          { TIn            }
   case        { TCase          }
   of          { TOf            }
   ","         { TSym ','       }
   end         { TEnd           }
   "=="        { TDSym "=="     }
   "!="        { TDSym "!="     }
   "<="        { TDSym "<="     }
   ">="        { TDSym ">="     }
   "&&"        { TDSym "&&"     }
   "||"        { TDSym "||"     }


%right let in case of end
%left "<" ">" "<=" ">=" "==" "!=" "&&" "||"
%left "+" "-"
%left "*" "/"
%right "!"

%%

Expr :  Expr "+" Expr             { EArithmeticOp "+" $1 $3  }
      | Expr "-" Expr             { EArithmeticOp "-" $1 $3  }
      | Expr "*" Expr             { EArithmeticOp "*" $1 $3  }
      | Expr "/" Expr             { EArithmeticOp "/" $1 $3  }
      | Expr "%" Expr             { EArithmeticOp "%" $1 $3  }
      | Expr "<" Expr             { EComparisonOp "<" $1 $3  }
      | Expr ">" Expr             { EComparisonOp ">" $1 $3  }
      | Expr "==" Expr            { EComparisonOp "==" $1 $3 }
      | Expr "!=" Expr            { EComparisonOp "!=" $1 $3 }
      | Expr "<=" Expr            { EComparisonOp "<=" $1 $3 }
      | Expr ">=" Expr            { EComparisonOp ">=" $1 $3 }
      | Expr "&&" Expr            { ERelationalOp "&&" $1 $3 }
      | Expr "||" Expr            { ERelationalOp "||" $1 $3 }
      | "(" Expr ")"              { $2 }
      | "(" Exprs ")"             { ETuple $2  }
      | "!" Expr                  { ENegate $2 }
      | identifier                { EVar $1    }
      | identifier "(" Exprs ")"  { EFunCall $1 $3 }
      | funDecSym identifier identifiers in Expr end { EFunDec $2 $3 $5 }
      | varDec                    { $1 }
      | int                       { EInt $1 }
      | bool                      { EBool $1 }
      | case Expr caseOfs in Expr end end { ECase $2 $3 $5 }
      | let MultiExprs in Expr end { ELet $2 $4 }

Exprs :
   Expr                       { [$1] }
   | Expr "," Exprs           { $1:$3 }

MultiExprs :
   Expr                       { [$1] }
   | Expr MultiExprs          { $1:$2 }

identifiers :
      identifier                   { [$1] }
      | identifier "," identifiers { $1:$3 }

caseOf :
      of Expr in Expr end    { ECaseOf $2 $4 }

caseOfs :
      caseOf              { [$1] }
      | caseOf caseOfs    { $1:$2 }

varDec :
   varDecSym identifier in Expr { EVarDec $2 $4 }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

type Op = String

data Expr =
   EFunDec Name [Name] Expr
   | EFunCall Name [Expr]
   | EInt Int
   | EBool Bool
   | EArithmeticOp Op Expr Expr
   | EComparisonOp Op Expr Expr
   | ERelationalOp Op Expr Expr
   | EVar Name
   | EVarDec Name Expr
   | ENegate Expr
   | ECase Expr [Expr] Expr
   | ECaseOf Expr Expr
   | ELet [Expr] Expr
   | ETuple [Expr]
   deriving (Show, Eq)
}
