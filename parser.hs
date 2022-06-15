{-# OPTIONS_GHC -w #-}
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser (Expr(..)) where
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
happyExpList = Happy_Data_Array.listArray (0,140) ([624,24,0,4,4,0,8128,126,0,0,0,0,0,2496,98,624,24,0,0,32576,49656,24585,28672,6146,39936,1536,9984,384,2496,96,624,24,156,6,32807,49153,24585,28672,6146,39936,1536,9984,384,2496,96,624,24,0,8,32807,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,768,0,192,0,0,0,0,62464,8071,0,0,0,0,3840,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","int","bool","identifier","varDec","funDec","'('","')'","'='","'<'","'>'","'+'","'-'","'*'","'/'","'%'","'!'","let","in","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st Prelude.* 30
        bit_end = (st Prelude.+ 1) Prelude.* 30
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..29]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_4
action_0 (6) = happyShift action_5
action_0 (7) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (20) = happyShift action_8
action_0 (21) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_25
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (13) = happyShift action_12
action_3 (14) = happyShift action_13
action_3 (15) = happyShift action_14
action_3 (16) = happyShift action_15
action_3 (17) = happyShift action_16
action_3 (18) = happyShift action_17
action_3 (19) = happyShift action_18
action_3 (24) = happyShift action_19
action_3 (25) = happyShift action_20
action_3 (26) = happyShift action_21
action_3 (27) = happyShift action_22
action_3 (28) = happyShift action_23
action_3 (29) = happyShift action_24
action_3 (30) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_19

action_5 _ = happyReduce_20

action_6 _ = happyReduce_17

action_7 (5) = happyShift action_4
action_7 (6) = happyShift action_5
action_7 (7) = happyShift action_6
action_7 (10) = happyShift action_7
action_7 (16) = happyShift action_11
action_7 (20) = happyShift action_8
action_7 (21) = happyShift action_2
action_7 (4) = happyGoto action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (5) = happyShift action_4
action_8 (6) = happyShift action_5
action_8 (7) = happyShift action_6
action_8 (10) = happyShift action_7
action_8 (20) = happyShift action_8
action_8 (21) = happyShift action_2
action_8 (4) = happyGoto action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (13) = happyShift action_12
action_9 (14) = happyShift action_13
action_9 (15) = happyShift action_14
action_9 (16) = happyShift action_15
action_9 (17) = happyShift action_16
action_9 (18) = happyShift action_17
action_9 (19) = happyShift action_18
action_9 (24) = happyShift action_19
action_9 (25) = happyShift action_20
action_9 (26) = happyShift action_21
action_9 (27) = happyShift action_22
action_9 (28) = happyShift action_23
action_9 (29) = happyShift action_24
action_9 _ = happyReduce_15

action_10 (11) = happyShift action_41
action_10 (13) = happyShift action_12
action_10 (14) = happyShift action_13
action_10 (15) = happyShift action_14
action_10 (16) = happyShift action_15
action_10 (17) = happyShift action_16
action_10 (18) = happyShift action_17
action_10 (19) = happyShift action_18
action_10 (24) = happyShift action_19
action_10 (25) = happyShift action_20
action_10 (26) = happyShift action_21
action_10 (27) = happyShift action_22
action_10 (28) = happyShift action_23
action_10 (29) = happyShift action_24
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_4
action_11 (6) = happyShift action_5
action_11 (7) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (20) = happyShift action_8
action_11 (21) = happyShift action_2
action_11 (4) = happyGoto action_40
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_4
action_12 (6) = happyShift action_5
action_12 (7) = happyShift action_6
action_12 (10) = happyShift action_7
action_12 (20) = happyShift action_8
action_12 (21) = happyShift action_2
action_12 (4) = happyGoto action_39
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_4
action_13 (6) = happyShift action_5
action_13 (7) = happyShift action_6
action_13 (10) = happyShift action_7
action_13 (20) = happyShift action_8
action_13 (21) = happyShift action_2
action_13 (4) = happyGoto action_38
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_4
action_14 (6) = happyShift action_5
action_14 (7) = happyShift action_6
action_14 (10) = happyShift action_7
action_14 (20) = happyShift action_8
action_14 (21) = happyShift action_2
action_14 (4) = happyGoto action_37
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_4
action_15 (6) = happyShift action_5
action_15 (7) = happyShift action_6
action_15 (10) = happyShift action_7
action_15 (20) = happyShift action_8
action_15 (21) = happyShift action_2
action_15 (4) = happyGoto action_36
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_4
action_16 (6) = happyShift action_5
action_16 (7) = happyShift action_6
action_16 (10) = happyShift action_7
action_16 (20) = happyShift action_8
action_16 (21) = happyShift action_2
action_16 (4) = happyGoto action_35
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_4
action_17 (6) = happyShift action_5
action_17 (7) = happyShift action_6
action_17 (10) = happyShift action_7
action_17 (20) = happyShift action_8
action_17 (21) = happyShift action_2
action_17 (4) = happyGoto action_34
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_4
action_18 (6) = happyShift action_5
action_18 (7) = happyShift action_6
action_18 (10) = happyShift action_7
action_18 (20) = happyShift action_8
action_18 (21) = happyShift action_2
action_18 (4) = happyGoto action_33
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_4
action_19 (6) = happyShift action_5
action_19 (7) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (20) = happyShift action_8
action_19 (21) = happyShift action_2
action_19 (4) = happyGoto action_32
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_4
action_20 (6) = happyShift action_5
action_20 (7) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (20) = happyShift action_8
action_20 (21) = happyShift action_2
action_20 (4) = happyGoto action_31
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_4
action_21 (6) = happyShift action_5
action_21 (7) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (20) = happyShift action_8
action_21 (21) = happyShift action_2
action_21 (4) = happyGoto action_30
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_4
action_22 (6) = happyShift action_5
action_22 (7) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (20) = happyShift action_8
action_22 (21) = happyShift action_2
action_22 (4) = happyGoto action_29
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_4
action_23 (6) = happyShift action_5
action_23 (7) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (20) = happyShift action_8
action_23 (21) = happyShift action_2
action_23 (4) = happyGoto action_28
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_4
action_24 (6) = happyShift action_5
action_24 (7) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (20) = happyShift action_8
action_24 (21) = happyShift action_2
action_24 (4) = happyGoto action_27
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (22) = happyShift action_26
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_4
action_26 (6) = happyShift action_5
action_26 (7) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (20) = happyShift action_8
action_26 (21) = happyShift action_2
action_26 (4) = happyGoto action_43
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (13) = happyShift action_12
action_27 (14) = happyShift action_13
action_27 (15) = happyShift action_14
action_27 (16) = happyShift action_15
action_27 (17) = happyShift action_16
action_27 (18) = happyShift action_17
action_27 (19) = happyShift action_18
action_27 (24) = happyShift action_19
action_27 (25) = happyShift action_20
action_27 (26) = happyShift action_21
action_27 (27) = happyShift action_22
action_27 (28) = happyShift action_23
action_27 (29) = happyShift action_24
action_27 _ = happyReduce_14

action_28 (13) = happyShift action_12
action_28 (14) = happyShift action_13
action_28 (15) = happyShift action_14
action_28 (16) = happyShift action_15
action_28 (17) = happyShift action_16
action_28 (18) = happyShift action_17
action_28 (19) = happyShift action_18
action_28 (24) = happyShift action_19
action_28 (25) = happyShift action_20
action_28 (26) = happyShift action_21
action_28 (27) = happyShift action_22
action_28 (28) = happyShift action_23
action_28 (29) = happyShift action_24
action_28 _ = happyReduce_13

action_29 (13) = happyShift action_12
action_29 (14) = happyShift action_13
action_29 (15) = happyShift action_14
action_29 (16) = happyShift action_15
action_29 (17) = happyShift action_16
action_29 (18) = happyShift action_17
action_29 (19) = happyShift action_18
action_29 (24) = happyShift action_19
action_29 (25) = happyShift action_20
action_29 (26) = happyShift action_21
action_29 (27) = happyShift action_22
action_29 (28) = happyShift action_23
action_29 (29) = happyShift action_24
action_29 _ = happyReduce_12

action_30 (13) = happyShift action_12
action_30 (14) = happyShift action_13
action_30 (15) = happyShift action_14
action_30 (16) = happyShift action_15
action_30 (17) = happyShift action_16
action_30 (18) = happyShift action_17
action_30 (19) = happyShift action_18
action_30 (24) = happyShift action_19
action_30 (25) = happyShift action_20
action_30 (26) = happyShift action_21
action_30 (27) = happyShift action_22
action_30 (28) = happyShift action_23
action_30 (29) = happyShift action_24
action_30 _ = happyReduce_11

action_31 (13) = happyShift action_12
action_31 (14) = happyShift action_13
action_31 (15) = happyShift action_14
action_31 (16) = happyShift action_15
action_31 (17) = happyShift action_16
action_31 (18) = happyShift action_17
action_31 (19) = happyShift action_18
action_31 (24) = happyShift action_19
action_31 (25) = happyShift action_20
action_31 (26) = happyShift action_21
action_31 (27) = happyShift action_22
action_31 (28) = happyShift action_23
action_31 (29) = happyShift action_24
action_31 _ = happyReduce_10

action_32 (13) = happyShift action_12
action_32 (14) = happyShift action_13
action_32 (15) = happyShift action_14
action_32 (16) = happyShift action_15
action_32 (17) = happyShift action_16
action_32 (18) = happyShift action_17
action_32 (19) = happyShift action_18
action_32 (24) = happyShift action_19
action_32 (25) = happyShift action_20
action_32 (26) = happyShift action_21
action_32 (27) = happyShift action_22
action_32 (28) = happyShift action_23
action_32 (29) = happyShift action_24
action_32 _ = happyReduce_9

action_33 (13) = happyShift action_12
action_33 (14) = happyShift action_13
action_33 (15) = happyShift action_14
action_33 (16) = happyShift action_15
action_33 (17) = happyShift action_16
action_33 (18) = happyShift action_17
action_33 (19) = happyShift action_18
action_33 (24) = happyShift action_19
action_33 (25) = happyShift action_20
action_33 (26) = happyShift action_21
action_33 (27) = happyShift action_22
action_33 (28) = happyShift action_23
action_33 (29) = happyShift action_24
action_33 _ = happyReduce_6

action_34 (13) = happyShift action_12
action_34 (14) = happyShift action_13
action_34 (19) = happyShift action_18
action_34 (24) = happyShift action_19
action_34 (25) = happyShift action_20
action_34 (26) = happyShift action_21
action_34 (27) = happyShift action_22
action_34 (28) = happyShift action_23
action_34 (29) = happyShift action_24
action_34 _ = happyReduce_5

action_35 (13) = happyShift action_12
action_35 (14) = happyShift action_13
action_35 (19) = happyShift action_18
action_35 (24) = happyShift action_19
action_35 (25) = happyShift action_20
action_35 (26) = happyShift action_21
action_35 (27) = happyShift action_22
action_35 (28) = happyShift action_23
action_35 (29) = happyShift action_24
action_35 _ = happyReduce_4

action_36 (13) = happyShift action_12
action_36 (14) = happyShift action_13
action_36 (17) = happyShift action_16
action_36 (18) = happyShift action_17
action_36 (19) = happyShift action_18
action_36 (24) = happyShift action_19
action_36 (25) = happyShift action_20
action_36 (26) = happyShift action_21
action_36 (27) = happyShift action_22
action_36 (28) = happyShift action_23
action_36 (29) = happyShift action_24
action_36 _ = happyReduce_3

action_37 (13) = happyShift action_12
action_37 (14) = happyShift action_13
action_37 (17) = happyShift action_16
action_37 (18) = happyShift action_17
action_37 (19) = happyShift action_18
action_37 (24) = happyShift action_19
action_37 (25) = happyShift action_20
action_37 (26) = happyShift action_21
action_37 (27) = happyShift action_22
action_37 (28) = happyShift action_23
action_37 (29) = happyShift action_24
action_37 _ = happyReduce_2

action_38 (13) = happyShift action_12
action_38 (14) = happyShift action_13
action_38 (15) = happyShift action_14
action_38 (16) = happyShift action_15
action_38 (17) = happyShift action_16
action_38 (18) = happyShift action_17
action_38 (19) = happyShift action_18
action_38 (24) = happyShift action_19
action_38 (25) = happyShift action_20
action_38 (26) = happyShift action_21
action_38 (27) = happyShift action_22
action_38 (28) = happyShift action_23
action_38 (29) = happyShift action_24
action_38 _ = happyReduce_8

action_39 (13) = happyShift action_12
action_39 (14) = happyShift action_13
action_39 (15) = happyShift action_14
action_39 (16) = happyShift action_15
action_39 (17) = happyShift action_16
action_39 (18) = happyShift action_17
action_39 (19) = happyShift action_18
action_39 (24) = happyShift action_19
action_39 (25) = happyShift action_20
action_39 (26) = happyShift action_21
action_39 (27) = happyShift action_22
action_39 (28) = happyShift action_23
action_39 (29) = happyShift action_24
action_39 _ = happyReduce_7

action_40 (11) = happyShift action_42
action_40 (13) = happyShift action_12
action_40 (14) = happyShift action_13
action_40 (15) = happyShift action_14
action_40 (16) = happyShift action_15
action_40 (17) = happyShift action_16
action_40 (18) = happyShift action_17
action_40 (19) = happyShift action_18
action_40 (24) = happyShift action_19
action_40 (25) = happyShift action_20
action_40 (26) = happyShift action_21
action_40 (27) = happyShift action_22
action_40 (28) = happyShift action_23
action_40 (29) = happyShift action_24
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 _ = happyReduce_16

action_43 (13) = happyShift action_12
action_43 (14) = happyShift action_13
action_43 (15) = happyShift action_14
action_43 (16) = happyShift action_15
action_43 (17) = happyShift action_16
action_43 (18) = happyShift action_17
action_43 (19) = happyShift action_18
action_43 (24) = happyShift action_19
action_43 (25) = happyShift action_20
action_43 (26) = happyShift action_21
action_43 (27) = happyShift action_22
action_43 (28) = happyShift action_23
action_43 (29) = happyShift action_24
action_43 _ = happyReduce_1

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '+' happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '-' happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '*' happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '/' happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '%' happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '<' happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ArithmeticOp '>' happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ComparisonOp "==" happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ComparisonOp "!=" happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ComparisonOp "<=" happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ComparisonOp ">=" happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (RelationalOp "&&" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (RelationalOp "||" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Negate happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Negate happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (Int happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (Bool happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 5;
	TBool happy_dollar_dollar -> cont 6;
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
	TEnd -> cont 23;
	TDSym "==" -> cont 24;
	TDSym "!=" -> cont 25;
	TDSym "<=" -> cont 26;
	TDSym ">=" -> cont 27;
	TDSym "&&" -> cont 28;
	TDSym "||" -> cont 29;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 30 tk tks = happyError' (tks, explist)
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
