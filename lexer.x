{
module Lexer (lexer, Name, Token(..)) where
}

%wrapper "basic"
$digit = 0-9
$alpha = [A-Za-z]
$alphanum = $alpha $digit
$ident = $alphanum [_$alphanum]*

tokens :-
   $white+    ;
   let        { \s -> TLet }
   in         { \s -> TIn }
   $digit+    { \s -> TInt (read s) }
   [\=\+\*]   { \s -> TSym (head s) }
   $alpha+    { \s -> TVar s }

{
type Name = String
data Token = TLet | TIn | TSym Char | TVar Name | TInt Int deriving (Eq,Show)

lexer = alexScanTokens
}