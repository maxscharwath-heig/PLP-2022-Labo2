{-# OPTIONS_GHC -w #-}
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,74) ([1008,16,2016,32,0,31,0,0,0,0,0,0,0,0,0,0,61440,4099,57344,8199,0,7936,32768,32799,0,63,1,126,2,252,4,504,8,49152,39,34816,15,0,0,8064,128,0,0,0,0,0,0,0,384,0,768,0,1920,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","int","bool","identifier","varDec","funDec","'('","')'","'='","'<'","'>'","'+'","'-'","'*'","'/'","'%'","'!'","let","in","case","of","','","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st Prelude.* 33
        bit_end = (st Prelude.+ 1) Prelude.* 33
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..32]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_3
action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (21) = happyShift action_9
action_0 (4) = happyGoto action_10
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (5) = happyShift action_3
action_1 (6) = happyShift action_4
action_1 (7) = happyShift action_5
action_1 (8) = happyShift action_6
action_1 (9) = happyShift action_7
action_1 (10) = happyShift action_8
action_1 (21) = happyShift action_9
action_1 (4) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (15) = happyShift action_11
action_2 (16) = happyShift action_12
action_2 (17) = happyShift action_13
action_2 (18) = happyShift action_14
action_2 (19) = happyShift action_15
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_11

action_4 _ = happyReduce_12

action_5 _ = happyReduce_6

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 (5) = happyShift action_3
action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (9) = happyShift action_7
action_8 (10) = happyShift action_8
action_8 (21) = happyShift action_9
action_8 (4) = happyGoto action_17
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_3
action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (21) = happyShift action_9
action_9 (4) = happyGoto action_16
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (15) = happyShift action_11
action_10 (16) = happyShift action_12
action_10 (17) = happyShift action_13
action_10 (18) = happyShift action_14
action_10 (19) = happyShift action_15
action_10 (33) = happyAccept
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_3
action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (9) = happyShift action_7
action_11 (10) = happyShift action_8
action_11 (21) = happyShift action_9
action_11 (4) = happyGoto action_24
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_3
action_12 (6) = happyShift action_4
action_12 (7) = happyShift action_5
action_12 (8) = happyShift action_6
action_12 (9) = happyShift action_7
action_12 (10) = happyShift action_8
action_12 (21) = happyShift action_9
action_12 (4) = happyGoto action_23
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_3
action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_5
action_13 (8) = happyShift action_6
action_13 (9) = happyShift action_7
action_13 (10) = happyShift action_8
action_13 (21) = happyShift action_9
action_13 (4) = happyGoto action_22
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_3
action_14 (6) = happyShift action_4
action_14 (7) = happyShift action_5
action_14 (8) = happyShift action_6
action_14 (9) = happyShift action_7
action_14 (10) = happyShift action_8
action_14 (21) = happyShift action_9
action_14 (4) = happyGoto action_21
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_3
action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_5
action_15 (8) = happyShift action_6
action_15 (9) = happyShift action_7
action_15 (10) = happyShift action_8
action_15 (21) = happyShift action_9
action_15 (4) = happyGoto action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (15) = happyShift action_11
action_16 (16) = happyShift action_12
action_16 (17) = happyShift action_13
action_16 (18) = happyShift action_14
action_16 (19) = happyShift action_15
action_16 (22) = happyShift action_19
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_18
action_17 (15) = happyShift action_11
action_17 (16) = happyShift action_12
action_17 (17) = happyShift action_13
action_17 (18) = happyShift action_14
action_17 (19) = happyShift action_15
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_9

action_19 (5) = happyShift action_3
action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (21) = happyShift action_9
action_19 (4) = happyGoto action_25
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (15) = happyShift action_11
action_20 (16) = happyShift action_12
action_20 (17) = happyShift action_13
action_20 (18) = happyShift action_14
action_20 (19) = happyShift action_15
action_20 _ = happyReduce_5

action_21 (19) = happyShift action_15
action_21 _ = happyReduce_4

action_22 (19) = happyShift action_15
action_22 _ = happyReduce_3

action_23 (17) = happyShift action_13
action_23 (18) = happyShift action_14
action_23 (19) = happyShift action_15
action_23 _ = happyReduce_2

action_24 (17) = happyShift action_13
action_24 (18) = happyShift action_14
action_24 (19) = happyShift action_15
action_24 _ = happyReduce_1

action_25 (15) = happyShift action_11
action_25 (16) = happyShift action_12
action_25 (17) = happyShift action_13
action_25 (18) = happyShift action_14
action_25 (19) = happyShift action_15
action_25 _ = happyReduce_10

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '+' happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '-' happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '*' happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '/' happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Bin '%' happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  4 happyReduction_6
happyReduction_6 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  4 happyReduction_7
happyReduction_7 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  4 happyReduction_8
happyReduction_8 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 4 happyReduction_10
happyReduction_10 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_1  4 happyReduction_11
happyReduction_11 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn4
		 (Cst happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  4 happyReduction_12
happyReduction_12 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn4
		 (Cst happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt -> cont 5;
	TBool -> cont 6;
	TIdentifier happy_dollar_dollar -> cont 7;
	TVarDec -> cont 8;
	TFunDec -> cont 9;
	TSym '(' -> cont 10;
	TSym ')' -> cont 11;
	TSym '=' -> cont 12;
	TSym '<' -> cont 13;
	TSym '>' -> cont 14;
	TSym '+' -> cont 15;
	TSym '-' -> cont 16;
	TSym '*' -> cont 17;
	TSym '/' -> cont 18;
	TSym '%' -> cont 19;
	TSym '!' -> cont 20;
	TLet -> cont 21;
	TIn -> cont 22;
	TCase -> cont 23;
	TOf -> cont 24;
	TSym ',' -> cont 25;
	TEnd -> cont 26;
	TDSym "==" -> cont 27;
	TDSym "!=" -> cont 28;
	TDSym "<=" -> cont 29;
	TDSym ">=" -> cont 30;
	TDSym "&&" -> cont 31;
	TDSym "||" -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


-- parseError :: [Token] -> a
   -- parseError _ = error "Parse error"

data Expr = VarDec String | FunDec String
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
