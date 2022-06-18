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
happyExpList = Happy_Data_Array.listArray (0,128) ([560,24,0,16,560,24,61440,32263,0,0,0,0,33328,24,560,24,0,0,62464,32263,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,560,24,61440,32295,560,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,62464,32263,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","int","bool","identifier","varDec","funDec","\"(\"","\")\"","\"=\"","\"<\"","\">\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"!\"","let","in","case","of","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st Prelude.* 32
        bit_end = (st Prelude.+ 1) Prelude.* 32
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..31]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (5) = happyShift action_4
action_0 (6) = happyShift action_5
action_0 (10) = happyShift action_6
action_0 (20) = happyShift action_7
action_0 (21) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (5) = happyShift action_4
action_2 (6) = happyShift action_5
action_2 (10) = happyShift action_6
action_2 (20) = happyShift action_7
action_2 (21) = happyShift action_2
action_2 (4) = happyGoto action_24
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (13) = happyShift action_11
action_3 (14) = happyShift action_12
action_3 (15) = happyShift action_13
action_3 (16) = happyShift action_14
action_3 (17) = happyShift action_15
action_3 (18) = happyShift action_16
action_3 (19) = happyShift action_17
action_3 (26) = happyShift action_18
action_3 (27) = happyShift action_19
action_3 (28) = happyShift action_20
action_3 (29) = happyShift action_21
action_3 (30) = happyShift action_22
action_3 (31) = happyShift action_23
action_3 (32) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_18

action_5 _ = happyReduce_19

action_6 (5) = happyShift action_4
action_6 (6) = happyShift action_5
action_6 (10) = happyShift action_6
action_6 (16) = happyShift action_10
action_6 (20) = happyShift action_7
action_6 (21) = happyShift action_2
action_6 (4) = happyGoto action_9
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (5) = happyShift action_4
action_7 (6) = happyShift action_5
action_7 (10) = happyShift action_6
action_7 (20) = happyShift action_7
action_7 (21) = happyShift action_2
action_7 (4) = happyGoto action_8
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (13) = happyShift action_11
action_8 (14) = happyShift action_12
action_8 (15) = happyShift action_13
action_8 (16) = happyShift action_14
action_8 (17) = happyShift action_15
action_8 (18) = happyShift action_16
action_8 (19) = happyShift action_17
action_8 (26) = happyShift action_18
action_8 (27) = happyShift action_19
action_8 (28) = happyShift action_20
action_8 (29) = happyShift action_21
action_8 (30) = happyShift action_22
action_8 (31) = happyShift action_23
action_8 _ = happyReduce_15

action_9 (11) = happyShift action_40
action_9 (13) = happyShift action_11
action_9 (14) = happyShift action_12
action_9 (15) = happyShift action_13
action_9 (16) = happyShift action_14
action_9 (17) = happyShift action_15
action_9 (18) = happyShift action_16
action_9 (19) = happyShift action_17
action_9 (26) = happyShift action_18
action_9 (27) = happyShift action_19
action_9 (28) = happyShift action_20
action_9 (29) = happyShift action_21
action_9 (30) = happyShift action_22
action_9 (31) = happyShift action_23
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_4
action_10 (6) = happyShift action_5
action_10 (10) = happyShift action_6
action_10 (20) = happyShift action_7
action_10 (21) = happyShift action_2
action_10 (4) = happyGoto action_39
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (5) = happyShift action_4
action_11 (6) = happyShift action_5
action_11 (10) = happyShift action_6
action_11 (20) = happyShift action_7
action_11 (21) = happyShift action_2
action_11 (4) = happyGoto action_38
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (5) = happyShift action_4
action_12 (6) = happyShift action_5
action_12 (10) = happyShift action_6
action_12 (20) = happyShift action_7
action_12 (21) = happyShift action_2
action_12 (4) = happyGoto action_37
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_4
action_13 (6) = happyShift action_5
action_13 (10) = happyShift action_6
action_13 (20) = happyShift action_7
action_13 (21) = happyShift action_2
action_13 (4) = happyGoto action_36
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (5) = happyShift action_4
action_14 (6) = happyShift action_5
action_14 (10) = happyShift action_6
action_14 (20) = happyShift action_7
action_14 (21) = happyShift action_2
action_14 (4) = happyGoto action_35
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (5) = happyShift action_4
action_15 (6) = happyShift action_5
action_15 (10) = happyShift action_6
action_15 (20) = happyShift action_7
action_15 (21) = happyShift action_2
action_15 (4) = happyGoto action_34
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_4
action_16 (6) = happyShift action_5
action_16 (10) = happyShift action_6
action_16 (20) = happyShift action_7
action_16 (21) = happyShift action_2
action_16 (4) = happyGoto action_33
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_4
action_17 (6) = happyShift action_5
action_17 (10) = happyShift action_6
action_17 (20) = happyShift action_7
action_17 (21) = happyShift action_2
action_17 (4) = happyGoto action_32
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_4
action_18 (6) = happyShift action_5
action_18 (10) = happyShift action_6
action_18 (20) = happyShift action_7
action_18 (21) = happyShift action_2
action_18 (4) = happyGoto action_31
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_4
action_19 (6) = happyShift action_5
action_19 (10) = happyShift action_6
action_19 (20) = happyShift action_7
action_19 (21) = happyShift action_2
action_19 (4) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_4
action_20 (6) = happyShift action_5
action_20 (10) = happyShift action_6
action_20 (20) = happyShift action_7
action_20 (21) = happyShift action_2
action_20 (4) = happyGoto action_29
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_4
action_21 (6) = happyShift action_5
action_21 (10) = happyShift action_6
action_21 (20) = happyShift action_7
action_21 (21) = happyShift action_2
action_21 (4) = happyGoto action_28
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_4
action_22 (6) = happyShift action_5
action_22 (10) = happyShift action_6
action_22 (20) = happyShift action_7
action_22 (21) = happyShift action_2
action_22 (4) = happyGoto action_27
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_4
action_23 (6) = happyShift action_5
action_23 (10) = happyShift action_6
action_23 (20) = happyShift action_7
action_23 (21) = happyShift action_2
action_23 (4) = happyGoto action_26
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (13) = happyShift action_11
action_24 (14) = happyShift action_12
action_24 (15) = happyShift action_13
action_24 (16) = happyShift action_14
action_24 (17) = happyShift action_15
action_24 (18) = happyShift action_16
action_24 (19) = happyShift action_17
action_24 (22) = happyShift action_25
action_24 (26) = happyShift action_18
action_24 (27) = happyShift action_19
action_24 (28) = happyShift action_20
action_24 (29) = happyShift action_21
action_24 (30) = happyShift action_22
action_24 (31) = happyShift action_23
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_4
action_25 (6) = happyShift action_5
action_25 (10) = happyShift action_6
action_25 (20) = happyShift action_7
action_25 (21) = happyShift action_2
action_25 (4) = happyGoto action_42
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (13) = happyShift action_11
action_26 (14) = happyShift action_12
action_26 (15) = happyShift action_13
action_26 (16) = happyShift action_14
action_26 (17) = happyShift action_15
action_26 (18) = happyShift action_16
action_26 (19) = happyShift action_17
action_26 (26) = happyShift action_18
action_26 (27) = happyShift action_19
action_26 (28) = happyShift action_20
action_26 (29) = happyShift action_21
action_26 (30) = happyShift action_22
action_26 (31) = happyShift action_23
action_26 _ = happyReduce_14

action_27 (13) = happyShift action_11
action_27 (14) = happyShift action_12
action_27 (15) = happyShift action_13
action_27 (16) = happyShift action_14
action_27 (17) = happyShift action_15
action_27 (18) = happyShift action_16
action_27 (19) = happyShift action_17
action_27 (26) = happyShift action_18
action_27 (27) = happyShift action_19
action_27 (28) = happyShift action_20
action_27 (29) = happyShift action_21
action_27 (30) = happyShift action_22
action_27 (31) = happyShift action_23
action_27 _ = happyReduce_13

action_28 (13) = happyShift action_11
action_28 (14) = happyShift action_12
action_28 (15) = happyShift action_13
action_28 (16) = happyShift action_14
action_28 (17) = happyShift action_15
action_28 (18) = happyShift action_16
action_28 (19) = happyShift action_17
action_28 (26) = happyShift action_18
action_28 (27) = happyShift action_19
action_28 (28) = happyShift action_20
action_28 (29) = happyShift action_21
action_28 (30) = happyShift action_22
action_28 (31) = happyShift action_23
action_28 _ = happyReduce_12

action_29 (13) = happyShift action_11
action_29 (14) = happyShift action_12
action_29 (15) = happyShift action_13
action_29 (16) = happyShift action_14
action_29 (17) = happyShift action_15
action_29 (18) = happyShift action_16
action_29 (19) = happyShift action_17
action_29 (26) = happyShift action_18
action_29 (27) = happyShift action_19
action_29 (28) = happyShift action_20
action_29 (29) = happyShift action_21
action_29 (30) = happyShift action_22
action_29 (31) = happyShift action_23
action_29 _ = happyReduce_11

action_30 (13) = happyShift action_11
action_30 (14) = happyShift action_12
action_30 (15) = happyShift action_13
action_30 (16) = happyShift action_14
action_30 (17) = happyShift action_15
action_30 (18) = happyShift action_16
action_30 (19) = happyShift action_17
action_30 (26) = happyShift action_18
action_30 (27) = happyShift action_19
action_30 (28) = happyShift action_20
action_30 (29) = happyShift action_21
action_30 (30) = happyShift action_22
action_30 (31) = happyShift action_23
action_30 _ = happyReduce_10

action_31 (13) = happyShift action_11
action_31 (14) = happyShift action_12
action_31 (15) = happyShift action_13
action_31 (16) = happyShift action_14
action_31 (17) = happyShift action_15
action_31 (18) = happyShift action_16
action_31 (19) = happyShift action_17
action_31 (26) = happyShift action_18
action_31 (27) = happyShift action_19
action_31 (28) = happyShift action_20
action_31 (29) = happyShift action_21
action_31 (30) = happyShift action_22
action_31 (31) = happyShift action_23
action_31 _ = happyReduce_9

action_32 (13) = happyShift action_11
action_32 (14) = happyShift action_12
action_32 (15) = happyShift action_13
action_32 (16) = happyShift action_14
action_32 (17) = happyShift action_15
action_32 (18) = happyShift action_16
action_32 (19) = happyShift action_17
action_32 (26) = happyShift action_18
action_32 (27) = happyShift action_19
action_32 (28) = happyShift action_20
action_32 (29) = happyShift action_21
action_32 (30) = happyShift action_22
action_32 (31) = happyShift action_23
action_32 _ = happyReduce_6

action_33 (13) = happyShift action_11
action_33 (14) = happyShift action_12
action_33 (15) = happyShift action_13
action_33 (16) = happyShift action_14
action_33 (17) = happyShift action_15
action_33 (18) = happyShift action_16
action_33 (19) = happyShift action_17
action_33 (26) = happyShift action_18
action_33 (27) = happyShift action_19
action_33 (28) = happyShift action_20
action_33 (29) = happyShift action_21
action_33 (30) = happyShift action_22
action_33 (31) = happyShift action_23
action_33 _ = happyReduce_5

action_34 (13) = happyShift action_11
action_34 (14) = happyShift action_12
action_34 (15) = happyShift action_13
action_34 (16) = happyShift action_14
action_34 (17) = happyShift action_15
action_34 (18) = happyShift action_16
action_34 (19) = happyShift action_17
action_34 (26) = happyShift action_18
action_34 (27) = happyShift action_19
action_34 (28) = happyShift action_20
action_34 (29) = happyShift action_21
action_34 (30) = happyShift action_22
action_34 (31) = happyShift action_23
action_34 _ = happyReduce_4

action_35 (13) = happyShift action_11
action_35 (14) = happyShift action_12
action_35 (15) = happyShift action_13
action_35 (16) = happyShift action_14
action_35 (17) = happyShift action_15
action_35 (18) = happyShift action_16
action_35 (19) = happyShift action_17
action_35 (26) = happyShift action_18
action_35 (27) = happyShift action_19
action_35 (28) = happyShift action_20
action_35 (29) = happyShift action_21
action_35 (30) = happyShift action_22
action_35 (31) = happyShift action_23
action_35 _ = happyReduce_3

action_36 (13) = happyShift action_11
action_36 (14) = happyShift action_12
action_36 (15) = happyShift action_13
action_36 (16) = happyShift action_14
action_36 (17) = happyShift action_15
action_36 (18) = happyShift action_16
action_36 (19) = happyShift action_17
action_36 (26) = happyShift action_18
action_36 (27) = happyShift action_19
action_36 (28) = happyShift action_20
action_36 (29) = happyShift action_21
action_36 (30) = happyShift action_22
action_36 (31) = happyShift action_23
action_36 _ = happyReduce_2

action_37 (13) = happyShift action_11
action_37 (14) = happyShift action_12
action_37 (15) = happyShift action_13
action_37 (16) = happyShift action_14
action_37 (17) = happyShift action_15
action_37 (18) = happyShift action_16
action_37 (19) = happyShift action_17
action_37 (26) = happyShift action_18
action_37 (27) = happyShift action_19
action_37 (28) = happyShift action_20
action_37 (29) = happyShift action_21
action_37 (30) = happyShift action_22
action_37 (31) = happyShift action_23
action_37 _ = happyReduce_8

action_38 (13) = happyShift action_11
action_38 (14) = happyShift action_12
action_38 (15) = happyShift action_13
action_38 (16) = happyShift action_14
action_38 (17) = happyShift action_15
action_38 (18) = happyShift action_16
action_38 (19) = happyShift action_17
action_38 (26) = happyShift action_18
action_38 (27) = happyShift action_19
action_38 (28) = happyShift action_20
action_38 (29) = happyShift action_21
action_38 (30) = happyShift action_22
action_38 (31) = happyShift action_23
action_38 _ = happyReduce_7

action_39 (11) = happyShift action_41
action_39 (13) = happyShift action_11
action_39 (14) = happyShift action_12
action_39 (15) = happyShift action_13
action_39 (16) = happyShift action_14
action_39 (17) = happyShift action_15
action_39 (18) = happyShift action_16
action_39 (19) = happyShift action_17
action_39 (26) = happyShift action_18
action_39 (27) = happyShift action_19
action_39 (28) = happyShift action_20
action_39 (29) = happyShift action_21
action_39 (30) = happyShift action_22
action_39 (31) = happyShift action_23
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_17

action_41 _ = happyReduce_16

action_42 (13) = happyShift action_11
action_42 (14) = happyShift action_12
action_42 (15) = happyShift action_13
action_42 (16) = happyShift action_14
action_42 (17) = happyShift action_15
action_42 (18) = happyShift action_16
action_42 (19) = happyShift action_17
action_42 (26) = happyShift action_18
action_42 (27) = happyShift action_19
action_42 (28) = happyShift action_20
action_42 (29) = happyShift action_21
action_42 (30) = happyShift action_22
action_42 (31) = happyShift action_23
action_42 _ = happyReduce_1

happyReduce_1 = happyReduce 4 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ELet happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "+" happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "-" happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "*" happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "/" happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "%" happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "<" happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp ">" happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "==" happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "!=" happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "<=" happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp ">=" happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ERelationalOp "&&" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ERelationalOp "||" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  4 happyReduction_15
happyReduction_15 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ENegate happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 4 4 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ENegate happy_var_3
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  4 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (EInt happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  4 happyReduction_19
happyReduction_19 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (EBool happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 32 32 notHappyAtAll (HappyState action) sts stk []

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
	TCase -> cont 23;
	TOf -> cont 24;
	TEnd -> cont 25;
	TDSym "==" -> cont 26;
	TDSym "!=" -> cont 27;
	TDSym "<=" -> cont 28;
	TDSym ">=" -> cont 29;
	TDSym "&&" -> cont 30;
	TDSym "||" -> cont 31;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 32 tk tks = happyError' (tks, explist)
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

data Expr = EVarDec String 
   | EFunDec Name [Expr]
   | EInt Int
   | EBool Bool
   | EArithmeticOp String Expr Expr
   | EComparisonOp String Expr Expr
   | ERelationalOp String Expr Expr
   | EVar Name
   | ENegate Expr
   | Case Expr Expr
   | EIn Expr
   | ELet Expr Expr
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
