{-
   PLP - Devoir 2

   2.7 REPL

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Main where

import System.IO

import Lexer
import Parser
import Eval
import Semantics
import Distribution.Simple.GHC (GhcEnvironmentFileEntry)
import Distribution.Compat.CharParsing (CharParsing(text))

--main loop
main :: IO ()
main = do
    putStrLn "Welcome to the #ier REPL"
    putStrLn "by Nicolas Crausaz and Maxime Scharwath"
    putStrLn "Type :h for help"
    loop []

    --loop
loop env = do
    putStr "#ier> "
    hFlush stdout
    line <- getLine
    --parse line
    let (cmd, expr) = parseLine line

    if null line then loop env else do

    case cmd of
        ":q" -> return ()
        ":r" -> do
            putStrLn "Resetting environment"
            loop []
        ":h" -> do
            putStrLn ":q to quit"
            putStrLn ":r to reset"
            putStrLn ":t <expr> to show type"
            putStrLn ":e to show environment"
            putStrLn ":{ to enable multi-line editing"
            putStrLn ":} to disable multi-line editing and evaluate"
            putStrLn ":h to show this help"
            loop env
        ":t" -> do
            putStrLn $ "Type of " ++ expr ++ " is " ++ show (typeof (parser $ lexer expr) [])
            loop env
        ":e" -> do
            putStrLn $ "Environment is " ++ show env
            loop env
        ":{" -> do
            putStrLn "Entering multi-line mode, :} to exit"
            multiline env []
        _ -> do

            let (res, env') = eval (parser $ lexer line) env
            hFlush stdout
            printValue res
            loop env'

-- parse string by splitting on spaces
parseLine :: String -> (String, String)
parseLine line = (arg1, arg2)
    where
        args = words line
        arg1 = head args
        arg2 = unwords $ tail args

multiline env lines = do
    hFlush stdout
    line <- getLine
    let (cmd, expr) = parseLine line
    case cmd of
        ":}" -> do
            putStrLn "Executing..."
            let text = unlines lines
            putStrLn text
            let (res, env') =  eval (parser $ lexer text) env
            print (show res)
            loop env'
        _ -> do
            multiline env (lines ++ [line])


printValue (VInt i) = print $ show i
printValue (VBool b) = print $ show b