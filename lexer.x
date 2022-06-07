{
module Lexer (lexer, Name, Token(..)) where
}

%wrapper "basic"
$digit = 0-9
$alpha = [A-Za-z]
$alphaNum = [A-Za-z0-9]

tokens :-
   $white+    ;
   $digit+    { \s -> TInt (read s) }
   --["==", "!=", ">=", "<=", "&&", "||"] { \s -> TBinOp (head s)}
   [\=\+\*\%\!\-]   { \s -> TOp (head s) }
   true     { \s -> TBool True }
   false    { \s -> TBool False }
   "#l"       { \s -> TLet }
   "#>"       { \s -> TIn }
   "#case"    { \s -> TCase }
   "#o"      { \s -> TOf }
   "("        { \s -> TLParen }
   ")"        { \s -> TRParen }
   ","        { \s -> TComma }
   "#"        { \s -> TEnd}
   $alphaNum+    { \s -> TIdentifier s }

{
type Name = String

data Token = TInt Int
            | TBool Bool
            | TIdentifier Name
            | TLParen
            | TRParen
            | TLet
            | TIn
            | TCase
            | TOf
            | TComma
            | TEnd
            | TOp Char deriving (Show, Eq)

lexer = alexScanTokens
}