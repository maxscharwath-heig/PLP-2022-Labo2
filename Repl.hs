{-
   PLP - Devoir 2

   2.7 REPL

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Main where

import System.IO ( hFlush, stdout )
import Control.Exception ( catch, ErrorCall )

import Lexer ( lexer )
import Parser ( Expr, parser )
import Eval ( Env, Value, convertEnv, eval )
import Semantics ( typeof )

main :: IO ()
main = do
    putStrLn "\n ██╗ ██╗ ██╗███████╗██████╗\n\
            \████████╗██║██╔════╝██╔══██╗\n\
            \╚██╔═██╔╝██║█████╗  ██████╔╝\n\
            \████████╗██║██╔══╝  ██╔══██╗\n\
            \╚██╔═██╔╝██║███████╗██║  ██║\n\
            \ ╚═╝ ╚═╝ ╚═╝╚══════╝╚═╝  ╚═╝ v1.0-alpha"
    putStrLn "by Nicolas Crausaz and Maxime Scharwath"
    putStrLn "Type :h for help"
    loop []

loop :: Env -> IO ()
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
                let env' = convertEnv env
                putStrLn $ "Type of " ++ expr ++ " is " ++ show (typeof (parser $ lexer expr) env')
                loop env
            ":e" -> do
                putStrLn $ "Environment is " ++ show env
                loop env
            ":{" -> do
                putStrLn "Entering multi-line mode, :} to exit"
                multiline env []
            _ -> do
                let (res, env') = evalAndSemantic (parser $ lexer line) env
                hFlush stdout
                safePrint res
                loop env'

parseLine :: String -> (String, String)
parseLine line = (arg1, arg2)
    where
        args = words line
        arg1 = head args
        arg2 = unwords $ tail args

multiline :: Env -> [String] -> IO ()
multiline env lines = do
    hFlush stdout
    line <- getLine
    let (cmd, expr) = parseLine line
    case cmd of
        ":}" -> do
            putStrLn "Executing..."
            let text = unlines lines
            putStrLn text
            let (res, env') = evalAndSemantic (parser $ lexer text) env
            safePrint res
            loop env'
        _ -> do
            multiline env (lines ++ [line])


evalAndSemantic :: Expr -> Env -> (Value, Env)
evalAndSemantic expr env =
    let
        t = typeof expr (convertEnv env)
        e = eval expr env
    in
        e
        
safePrint :: Value -> IO ()
safePrint xs = catch (print xs) handler
    where
        handler :: ErrorCall -> IO ()
        handler e = print (show e)
