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

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,159) ([2016,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,504,12,126,32771,49183,0,53216,31,4,0,0,40960,32319,0,0,0,0,126,32771,49183,57344,12295,63488,3073,32256,768,8064,192,2016,48,504,12,126,32771,49183,57344,12295,63488,3073,32256,768,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,3073,32256,768,32768,63,57344,8143,504,12,65024,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exprs","Expr","int","bool","identifier","varDec","funDec","'('","')'","'='","'<'","'>'","'+'","'-'","'*'","'/'","'%'","'!'","let","in","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st Prelude.* 30
        bit_end = (st Prelude.+ 1) Prelude.* 30
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..29]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (6) = happyShift action_4
action_0 (7) = happyShift action_5
action_0 (8) = happyShift action_6
action_0 (9) = happyShift action_7
action_0 (10) = happyShift action_8
action_0 (11) = happyShift action_9
action_0 (21) = happyShift action_10
action_0 (22) = happyShift action_11
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 _ = happyReduce_1

action_1 _ = happyFail (happyExpListPerState 1)

action_2 (30) = happyAccept
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_5
action_3 (8) = happyShift action_6
action_3 (9) = happyShift action_7
action_3 (10) = happyShift action_8
action_3 (11) = happyShift action_9
action_3 (14) = happyShift action_18
action_3 (15) = happyShift action_19
action_3 (16) = happyShift action_20
action_3 (17) = happyShift action_21
action_3 (18) = happyShift action_22
action_3 (19) = happyShift action_23
action_3 (20) = happyShift action_24
action_3 (21) = happyShift action_10
action_3 (22) = happyShift action_11
action_3 (24) = happyShift action_25
action_3 (25) = happyShift action_26
action_3 (26) = happyShift action_27
action_3 (27) = happyShift action_28
action_3 (28) = happyShift action_29
action_3 (29) = happyShift action_30
action_3 (4) = happyGoto action_17
action_3 (5) = happyGoto action_3
action_3 _ = happyReduce_1

action_4 _ = happyReduce_23

action_5 _ = happyReduce_24

action_6 _ = happyReduce_18

action_7 _ = happyReduce_19

action_8 (6) = happyShift action_4
action_8 (7) = happyShift action_5
action_8 (8) = happyShift action_6
action_8 (9) = happyShift action_7
action_8 (10) = happyShift action_8
action_8 (11) = happyShift action_9
action_8 (21) = happyShift action_10
action_8 (22) = happyShift action_11
action_8 (4) = happyGoto action_16
action_8 (5) = happyGoto action_3
action_8 _ = happyReduce_1

action_9 (6) = happyShift action_4
action_9 (7) = happyShift action_5
action_9 (8) = happyShift action_6
action_9 (9) = happyShift action_7
action_9 (10) = happyShift action_8
action_9 (11) = happyShift action_9
action_9 (21) = happyShift action_10
action_9 (22) = happyShift action_11
action_9 (5) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (6) = happyShift action_4
action_10 (7) = happyShift action_5
action_10 (8) = happyShift action_6
action_10 (9) = happyShift action_7
action_10 (10) = happyShift action_8
action_10 (11) = happyShift action_9
action_10 (21) = happyShift action_10
action_10 (22) = happyShift action_11
action_10 (5) = happyGoto action_14
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_4
action_11 (7) = happyShift action_5
action_11 (8) = happyShift action_6
action_11 (9) = happyShift action_13
action_11 (10) = happyShift action_8
action_11 (11) = happyShift action_9
action_11 (21) = happyShift action_10
action_11 (22) = happyShift action_11
action_11 (5) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_18
action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (17) = happyShift action_21
action_12 (18) = happyShift action_22
action_12 (19) = happyShift action_23
action_12 (20) = happyShift action_24
action_12 (23) = happyShift action_46
action_12 (24) = happyShift action_25
action_12 (25) = happyShift action_26
action_12 (26) = happyShift action_27
action_12 (27) = happyShift action_28
action_12 (28) = happyShift action_29
action_12 (29) = happyShift action_30
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_45
action_13 _ = happyReduce_19

action_14 (24) = happyShift action_25
action_14 (25) = happyShift action_26
action_14 (26) = happyShift action_27
action_14 (27) = happyShift action_28
action_14 (28) = happyShift action_29
action_14 (29) = happyShift action_30
action_14 _ = happyReduce_17

action_15 (12) = happyShift action_44
action_15 (14) = happyShift action_18
action_15 (15) = happyShift action_19
action_15 (16) = happyShift action_20
action_15 (17) = happyShift action_21
action_15 (18) = happyShift action_22
action_15 (19) = happyShift action_23
action_15 (20) = happyShift action_24
action_15 (24) = happyShift action_25
action_15 (25) = happyShift action_26
action_15 (26) = happyShift action_27
action_15 (27) = happyShift action_28
action_15 (28) = happyShift action_29
action_15 (29) = happyShift action_30
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_20

action_17 _ = happyReduce_2

action_18 (6) = happyShift action_4
action_18 (7) = happyShift action_5
action_18 (8) = happyShift action_6
action_18 (9) = happyShift action_7
action_18 (10) = happyShift action_8
action_18 (11) = happyShift action_9
action_18 (21) = happyShift action_10
action_18 (22) = happyShift action_11
action_18 (5) = happyGoto action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_5
action_19 (8) = happyShift action_6
action_19 (9) = happyShift action_7
action_19 (10) = happyShift action_8
action_19 (11) = happyShift action_9
action_19 (21) = happyShift action_10
action_19 (22) = happyShift action_11
action_19 (5) = happyGoto action_42
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_4
action_20 (7) = happyShift action_5
action_20 (8) = happyShift action_6
action_20 (9) = happyShift action_7
action_20 (10) = happyShift action_8
action_20 (11) = happyShift action_9
action_20 (21) = happyShift action_10
action_20 (22) = happyShift action_11
action_20 (5) = happyGoto action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (7) = happyShift action_5
action_21 (8) = happyShift action_6
action_21 (9) = happyShift action_7
action_21 (10) = happyShift action_8
action_21 (11) = happyShift action_9
action_21 (21) = happyShift action_10
action_21 (22) = happyShift action_11
action_21 (5) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (7) = happyShift action_5
action_22 (8) = happyShift action_6
action_22 (9) = happyShift action_7
action_22 (10) = happyShift action_8
action_22 (11) = happyShift action_9
action_22 (21) = happyShift action_10
action_22 (22) = happyShift action_11
action_22 (5) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (7) = happyShift action_5
action_23 (8) = happyShift action_6
action_23 (9) = happyShift action_7
action_23 (10) = happyShift action_8
action_23 (11) = happyShift action_9
action_23 (21) = happyShift action_10
action_23 (22) = happyShift action_11
action_23 (5) = happyGoto action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (7) = happyShift action_5
action_24 (8) = happyShift action_6
action_24 (9) = happyShift action_7
action_24 (10) = happyShift action_8
action_24 (11) = happyShift action_9
action_24 (21) = happyShift action_10
action_24 (22) = happyShift action_11
action_24 (5) = happyGoto action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (7) = happyShift action_5
action_25 (8) = happyShift action_6
action_25 (9) = happyShift action_7
action_25 (10) = happyShift action_8
action_25 (11) = happyShift action_9
action_25 (21) = happyShift action_10
action_25 (22) = happyShift action_11
action_25 (5) = happyGoto action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (7) = happyShift action_5
action_26 (8) = happyShift action_6
action_26 (9) = happyShift action_7
action_26 (10) = happyShift action_8
action_26 (11) = happyShift action_9
action_26 (21) = happyShift action_10
action_26 (22) = happyShift action_11
action_26 (5) = happyGoto action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (7) = happyShift action_5
action_27 (8) = happyShift action_6
action_27 (9) = happyShift action_7
action_27 (10) = happyShift action_8
action_27 (11) = happyShift action_9
action_27 (21) = happyShift action_10
action_27 (22) = happyShift action_11
action_27 (5) = happyGoto action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (7) = happyShift action_5
action_28 (8) = happyShift action_6
action_28 (9) = happyShift action_7
action_28 (10) = happyShift action_8
action_28 (11) = happyShift action_9
action_28 (21) = happyShift action_10
action_28 (22) = happyShift action_11
action_28 (5) = happyGoto action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (7) = happyShift action_5
action_29 (8) = happyShift action_6
action_29 (9) = happyShift action_7
action_29 (10) = happyShift action_8
action_29 (11) = happyShift action_9
action_29 (21) = happyShift action_10
action_29 (22) = happyShift action_11
action_29 (5) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (7) = happyShift action_5
action_30 (8) = happyShift action_6
action_30 (9) = happyShift action_7
action_30 (10) = happyShift action_8
action_30 (11) = happyShift action_9
action_30 (21) = happyShift action_10
action_30 (22) = happyShift action_11
action_30 (5) = happyGoto action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_18
action_31 (15) = happyShift action_19
action_31 (16) = happyShift action_20
action_31 (17) = happyShift action_21
action_31 (18) = happyShift action_22
action_31 (19) = happyShift action_23
action_31 (20) = happyShift action_24
action_31 (24) = happyShift action_25
action_31 (25) = happyShift action_26
action_31 (26) = happyShift action_27
action_31 (27) = happyShift action_28
action_31 (28) = happyShift action_29
action_31 (29) = happyShift action_30
action_31 _ = happyReduce_16

action_32 (14) = happyShift action_18
action_32 (15) = happyShift action_19
action_32 (16) = happyShift action_20
action_32 (17) = happyShift action_21
action_32 (18) = happyShift action_22
action_32 (19) = happyShift action_23
action_32 (20) = happyShift action_24
action_32 (24) = happyShift action_25
action_32 (25) = happyShift action_26
action_32 (26) = happyShift action_27
action_32 (27) = happyShift action_28
action_32 (28) = happyShift action_29
action_32 (29) = happyShift action_30
action_32 _ = happyReduce_15

action_33 (14) = happyShift action_18
action_33 (15) = happyShift action_19
action_33 (16) = happyShift action_20
action_33 (17) = happyShift action_21
action_33 (18) = happyShift action_22
action_33 (19) = happyShift action_23
action_33 (20) = happyShift action_24
action_33 (24) = happyShift action_25
action_33 (25) = happyShift action_26
action_33 (26) = happyShift action_27
action_33 (27) = happyShift action_28
action_33 (28) = happyShift action_29
action_33 (29) = happyShift action_30
action_33 _ = happyReduce_14

action_34 (14) = happyShift action_18
action_34 (15) = happyShift action_19
action_34 (16) = happyShift action_20
action_34 (17) = happyShift action_21
action_34 (18) = happyShift action_22
action_34 (19) = happyShift action_23
action_34 (20) = happyShift action_24
action_34 (24) = happyShift action_25
action_34 (25) = happyShift action_26
action_34 (26) = happyShift action_27
action_34 (27) = happyShift action_28
action_34 (28) = happyShift action_29
action_34 (29) = happyShift action_30
action_34 _ = happyReduce_13

action_35 (14) = happyShift action_18
action_35 (15) = happyShift action_19
action_35 (16) = happyShift action_20
action_35 (17) = happyShift action_21
action_35 (18) = happyShift action_22
action_35 (19) = happyShift action_23
action_35 (20) = happyShift action_24
action_35 (24) = happyShift action_25
action_35 (25) = happyShift action_26
action_35 (26) = happyShift action_27
action_35 (27) = happyShift action_28
action_35 (28) = happyShift action_29
action_35 (29) = happyShift action_30
action_35 _ = happyReduce_12

action_36 (14) = happyShift action_18
action_36 (15) = happyShift action_19
action_36 (16) = happyShift action_20
action_36 (17) = happyShift action_21
action_36 (18) = happyShift action_22
action_36 (19) = happyShift action_23
action_36 (20) = happyShift action_24
action_36 (24) = happyShift action_25
action_36 (25) = happyShift action_26
action_36 (26) = happyShift action_27
action_36 (27) = happyShift action_28
action_36 (28) = happyShift action_29
action_36 (29) = happyShift action_30
action_36 _ = happyReduce_11

action_37 (24) = happyShift action_25
action_37 (25) = happyShift action_26
action_37 (26) = happyShift action_27
action_37 (27) = happyShift action_28
action_37 (28) = happyShift action_29
action_37 (29) = happyShift action_30
action_37 _ = happyReduce_8

action_38 (24) = happyShift action_25
action_38 (25) = happyShift action_26
action_38 (26) = happyShift action_27
action_38 (27) = happyShift action_28
action_38 (28) = happyShift action_29
action_38 (29) = happyShift action_30
action_38 _ = happyReduce_7

action_39 (24) = happyShift action_25
action_39 (25) = happyShift action_26
action_39 (26) = happyShift action_27
action_39 (27) = happyShift action_28
action_39 (28) = happyShift action_29
action_39 (29) = happyShift action_30
action_39 _ = happyReduce_6

action_40 (24) = happyShift action_25
action_40 (25) = happyShift action_26
action_40 (26) = happyShift action_27
action_40 (27) = happyShift action_28
action_40 (28) = happyShift action_29
action_40 (29) = happyShift action_30
action_40 _ = happyReduce_5

action_41 (24) = happyShift action_25
action_41 (25) = happyShift action_26
action_41 (26) = happyShift action_27
action_41 (27) = happyShift action_28
action_41 (28) = happyShift action_29
action_41 (29) = happyShift action_30
action_41 _ = happyReduce_4

action_42 (24) = happyShift action_25
action_42 (25) = happyShift action_26
action_42 (26) = happyShift action_27
action_42 (27) = happyShift action_28
action_42 (28) = happyShift action_29
action_42 (29) = happyShift action_30
action_42 _ = happyReduce_10

action_43 (24) = happyShift action_25
action_43 (25) = happyShift action_26
action_43 (26) = happyShift action_27
action_43 (27) = happyShift action_28
action_43 (28) = happyShift action_29
action_43 (29) = happyShift action_30
action_43 _ = happyReduce_9

action_44 _ = happyReduce_21

action_45 (6) = happyShift action_4
action_45 (7) = happyShift action_5
action_45 (8) = happyShift action_6
action_45 (9) = happyShift action_7
action_45 (10) = happyShift action_8
action_45 (11) = happyShift action_9
action_45 (21) = happyShift action_10
action_45 (22) = happyShift action_11
action_45 (5) = happyGoto action_48
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_5
action_46 (8) = happyShift action_6
action_46 (9) = happyShift action_7
action_46 (10) = happyShift action_8
action_46 (11) = happyShift action_9
action_46 (21) = happyShift action_10
action_46 (22) = happyShift action_11
action_46 (5) = happyGoto action_47
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (14) = happyShift action_18
action_47 (15) = happyShift action_19
action_47 (16) = happyShift action_20
action_47 (17) = happyShift action_21
action_47 (18) = happyShift action_22
action_47 (19) = happyShift action_23
action_47 (20) = happyShift action_24
action_47 (24) = happyShift action_25
action_47 (25) = happyShift action_26
action_47 (26) = happyShift action_27
action_47 (27) = happyShift action_28
action_47 (28) = happyShift action_29
action_47 (29) = happyShift action_30
action_47 _ = happyReduce_22

action_48 (14) = happyShift action_18
action_48 (15) = happyShift action_19
action_48 (16) = happyShift action_20
action_48 (17) = happyShift action_21
action_48 (18) = happyShift action_22
action_48 (19) = happyShift action_23
action_48 (20) = happyShift action_24
action_48 (23) = happyShift action_49
action_48 (24) = happyShift action_25
action_48 (25) = happyShift action_26
action_48 (26) = happyShift action_27
action_48 (27) = happyShift action_28
action_48 (28) = happyShift action_29
action_48 (29) = happyShift action_30
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_4
action_49 (7) = happyShift action_5
action_49 (8) = happyShift action_6
action_49 (9) = happyShift action_7
action_49 (10) = happyShift action_8
action_49 (11) = happyShift action_9
action_49 (21) = happyShift action_10
action_49 (22) = happyShift action_11
action_49 (5) = happyGoto action_50
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (14) = happyShift action_18
action_50 (15) = happyShift action_19
action_50 (16) = happyShift action_20
action_50 (17) = happyShift action_21
action_50 (18) = happyShift action_22
action_50 (19) = happyShift action_23
action_50 (20) = happyShift action_24
action_50 (24) = happyShift action_25
action_50 (25) = happyShift action_26
action_50 (26) = happyShift action_27
action_50 (27) = happyShift action_28
action_50 (28) = happyShift action_29
action_50 (29) = happyShift action_30
action_50 _ = happyReduce_3

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1:happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn5  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_3  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '+' happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '-' happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  5 happyReduction_6
happyReduction_6 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '*' happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  5 happyReduction_7
happyReduction_7 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '/' happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  5 happyReduction_8
happyReduction_8 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '%' happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  5 happyReduction_9
happyReduction_9 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '<' happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  5 happyReduction_10
happyReduction_10 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin '>' happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  5 happyReduction_11
happyReduction_11 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin "==" happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  5 happyReduction_12
happyReduction_12 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin "!=" happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  5 happyReduction_13
happyReduction_13 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin "<=" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  5 happyReduction_14
happyReduction_14 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin ">=" happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  5 happyReduction_15
happyReduction_15 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin "&&" happy_var_1 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  5 happyReduction_16
happyReduction_16 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (Bin "||" happy_var_1 happy_var_3
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  5 happyReduction_17
happyReduction_17 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 ('!' happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  5 happyReduction_18
happyReduction_18 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  5 happyReduction_19
happyReduction_19 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn5
		 (Var happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  5 happyReduction_20
happyReduction_20 (HappyAbsSyn4  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn5
		 (FunDec happy_var_1 happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  5 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 5 happyReduction_22
happyReduction_22 ((HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn5
		 (Int happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn5
		 (Bool happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 30 30 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 6;
	TBool happy_dollar_dollar -> cont 7;
	TIdentifier happy_dollar_dollar -> cont 8;
	TVarDec -> cont 9;
	TFunDec -> cont 10;
	TSym '(' -> cont 11;
	TSym ')' -> cont 12;
	TSym '=' -> cont 13;
	TSym '<' -> cont 14;
	TSym '>' -> cont 15;
	TSym '+' -> cont 16;
	TSym '-' -> cont 17;
	TSym '*' -> cont 18;
	TSym '/' -> cont 19;
	TSym '%' -> cont 20;
	TSym '!' -> cont 21;
	TLet -> cont 22;
	TIn -> cont 23;
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
   | Bin String Expr Expr
   | Unary Char Expr
   | Case Expr Expr
   | In Expr
   | Let Expr Expr
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
