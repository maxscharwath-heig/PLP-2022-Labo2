{
{-
   PLP - Devoir 2

   2.3 Analyse lexicale

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Lexer (lexer, Name, Token(..)) where
}

%wrapper "basic"
$digit = 0-9
$alpha = [A-Za-z]
$alphaNum = [A-Za-z0-9]

tokens :-
   $white+                                   ;
   $digit+                                   { \s -> TInt (read s)     }
   ("==" | "!=" | ">=" | "<=" | "&&" | "||") { \s -> TBinOp (take 2 s) }
   [\=\+\*\%\!\-]                            { \s -> TUnOp (head s)    }
   true                                      { \s -> TBool True        }
   false                                     { \s -> TBool False       }
   "#l"                                      { \s -> TLet              }
   "#v"                                      { \s -> TVarDec           }
   "#f"                                      { \s -> TFunDec           }
   "#>"                                      { \s -> TIn               }
   "#case"                                   { \s -> TCase             }
   "#o"                                      { \s -> TOf               }
   "("                                       { \s -> TLParen           }
   ")"                                       { \s -> TRParen           }
   ","                                       { \s -> TComma            }
   "#"                                       { \s -> TEnd              }
   $alphaNum+                                { \s -> TIdentifier s     }

{
type Name = String

data Token = TInt Int
            | TBool Bool
            | TIdentifier Name
            | TVarDec
            | TFunDec
            | TLParen
            | TRParen
            | TLet
            | TIn
            | TCase
            | TOf
            | TComma
            | TEnd
            | TUnOp Char
            | TBinOp String deriving (Show, Eq)

lexer = alexScanTokens
}