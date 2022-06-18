{-# OPTIONS_GHC -w #-}
{-
   PLP - Devoir 2

   2.4 Analyse syntaxique

   @author Nicolas Crausaz
   @author Maxime Scharwath
-}
module Parser (Expr(..), parser) where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,182) ([1008,24,0,32,256,0,32768,57407,7,0,0,0,32768,0,8192,0,16384,0,57344,12551,49152,24591,0,0,0,32576,4048,126,3,16,0,1024,0,1008,24,2016,48,4032,96,8064,192,16128,384,32256,768,64512,1536,63488,3073,61440,6147,57344,12295,49152,24591,32768,49183,0,32831,1,126,3,512,0,504,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,65152,8064,252,6,1024,0,62464,64519,0,0,4032,96,40960,57407,7,0,32256,768,0,0,0,0,0,10224,57596,12295,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","int","bool","identifier","varDecSym","funDecSym","\"(\"","\")\"","\"=\"","\"<\"","\">\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"!\"","let","in","case","of","\",\"","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (5) = happyShift action_4
action_0 (6) = happyShift action_5
action_0 (7) = happyShift action_6
action_0 (8) = happyShift action_7
action_0 (9) = happyShift action_8
action_0 (10) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (21) = happyShift action_2
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (21) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (7) = happyShift action_30
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (13) = happyShift action_17
action_3 (14) = happyShift action_18
action_3 (15) = happyShift action_19
action_3 (16) = happyShift action_20
action_3 (17) = happyShift action_21
action_3 (18) = happyShift action_22
action_3 (19) = happyShift action_23
action_3 (27) = happyShift action_24
action_3 (28) = happyShift action_25
action_3 (29) = happyShift action_26
action_3 (30) = happyShift action_27
action_3 (31) = happyShift action_28
action_3 (32) = happyShift action_29
action_3 (33) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_23

action_5 _ = happyReduce_24

action_6 (10) = happyShift action_16
action_6 _ = happyReduce_18

action_7 (7) = happyShift action_15
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (7) = happyShift action_14
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (5) = happyShift action_4
action_9 (6) = happyShift action_5
action_9 (7) = happyShift action_6
action_9 (8) = happyShift action_7
action_9 (9) = happyShift action_8
action_9 (10) = happyShift action_9
action_9 (16) = happyShift action_13
action_9 (20) = happyShift action_10
action_9 (21) = happyShift action_2
action_9 (4) = happyGoto action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (5) = happyShift action_4
action_10 (6) = happyShift action_5
action_10 (7) = happyShift action_6
action_10 (8) = happyShift action_7
action_10 (9) = happyShift action_8
action_10 (10) = happyShift action_9
action_10 (20) = happyShift action_10
action_10 (21) = happyShift action_2
action_10 (4) = happyGoto action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (13) = happyShift action_17
action_11 (14) = happyShift action_18
action_11 (15) = happyShift action_19
action_11 (16) = happyShift action_20
action_11 (17) = happyShift action_21
action_11 (18) = happyShift action_22
action_11 (19) = happyShift action_23
action_11 (27) = happyShift action_24
action_11 (28) = happyShift action_25
action_11 (29) = happyShift action_26
action_11 (30) = happyShift action_27
action_11 (31) = happyShift action_28
action_11 (32) = happyShift action_29
action_11 _ = happyReduce_16

action_12 (11) = happyShift action_49
action_12 (13) = happyShift action_17
action_12 (14) = happyShift action_18
action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (17) = happyShift action_21
action_12 (18) = happyShift action_22
action_12 (19) = happyShift action_23
action_12 (25) = happyShift action_50
action_12 (27) = happyShift action_24
action_12 (28) = happyShift action_25
action_12 (29) = happyShift action_26
action_12 (30) = happyShift action_27
action_12 (31) = happyShift action_28
action_12 (32) = happyShift action_29
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (5) = happyShift action_4
action_13 (6) = happyShift action_5
action_13 (7) = happyShift action_6
action_13 (8) = happyShift action_7
action_13 (9) = happyShift action_8
action_13 (10) = happyShift action_9
action_13 (20) = happyShift action_10
action_13 (21) = happyShift action_2
action_13 (4) = happyGoto action_48
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (7) = happyShift action_47
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_46
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (5) = happyShift action_4
action_16 (6) = happyShift action_5
action_16 (7) = happyShift action_6
action_16 (8) = happyShift action_7
action_16 (9) = happyShift action_8
action_16 (10) = happyShift action_9
action_16 (20) = happyShift action_10
action_16 (21) = happyShift action_2
action_16 (4) = happyGoto action_45
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (5) = happyShift action_4
action_17 (6) = happyShift action_5
action_17 (7) = happyShift action_6
action_17 (8) = happyShift action_7
action_17 (9) = happyShift action_8
action_17 (10) = happyShift action_9
action_17 (20) = happyShift action_10
action_17 (21) = happyShift action_2
action_17 (4) = happyGoto action_44
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (5) = happyShift action_4
action_18 (6) = happyShift action_5
action_18 (7) = happyShift action_6
action_18 (8) = happyShift action_7
action_18 (9) = happyShift action_8
action_18 (10) = happyShift action_9
action_18 (20) = happyShift action_10
action_18 (21) = happyShift action_2
action_18 (4) = happyGoto action_43
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (5) = happyShift action_4
action_19 (6) = happyShift action_5
action_19 (7) = happyShift action_6
action_19 (8) = happyShift action_7
action_19 (9) = happyShift action_8
action_19 (10) = happyShift action_9
action_19 (20) = happyShift action_10
action_19 (21) = happyShift action_2
action_19 (4) = happyGoto action_42
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (5) = happyShift action_4
action_20 (6) = happyShift action_5
action_20 (7) = happyShift action_6
action_20 (8) = happyShift action_7
action_20 (9) = happyShift action_8
action_20 (10) = happyShift action_9
action_20 (20) = happyShift action_10
action_20 (21) = happyShift action_2
action_20 (4) = happyGoto action_41
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (5) = happyShift action_4
action_21 (6) = happyShift action_5
action_21 (7) = happyShift action_6
action_21 (8) = happyShift action_7
action_21 (9) = happyShift action_8
action_21 (10) = happyShift action_9
action_21 (20) = happyShift action_10
action_21 (21) = happyShift action_2
action_21 (4) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (5) = happyShift action_4
action_22 (6) = happyShift action_5
action_22 (7) = happyShift action_6
action_22 (8) = happyShift action_7
action_22 (9) = happyShift action_8
action_22 (10) = happyShift action_9
action_22 (20) = happyShift action_10
action_22 (21) = happyShift action_2
action_22 (4) = happyGoto action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (5) = happyShift action_4
action_23 (6) = happyShift action_5
action_23 (7) = happyShift action_6
action_23 (8) = happyShift action_7
action_23 (9) = happyShift action_8
action_23 (10) = happyShift action_9
action_23 (20) = happyShift action_10
action_23 (21) = happyShift action_2
action_23 (4) = happyGoto action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (5) = happyShift action_4
action_24 (6) = happyShift action_5
action_24 (7) = happyShift action_6
action_24 (8) = happyShift action_7
action_24 (9) = happyShift action_8
action_24 (10) = happyShift action_9
action_24 (20) = happyShift action_10
action_24 (21) = happyShift action_2
action_24 (4) = happyGoto action_37
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (5) = happyShift action_4
action_25 (6) = happyShift action_5
action_25 (7) = happyShift action_6
action_25 (8) = happyShift action_7
action_25 (9) = happyShift action_8
action_25 (10) = happyShift action_9
action_25 (20) = happyShift action_10
action_25 (21) = happyShift action_2
action_25 (4) = happyGoto action_36
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (5) = happyShift action_4
action_26 (6) = happyShift action_5
action_26 (7) = happyShift action_6
action_26 (8) = happyShift action_7
action_26 (9) = happyShift action_8
action_26 (10) = happyShift action_9
action_26 (20) = happyShift action_10
action_26 (21) = happyShift action_2
action_26 (4) = happyGoto action_35
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (5) = happyShift action_4
action_27 (6) = happyShift action_5
action_27 (7) = happyShift action_6
action_27 (8) = happyShift action_7
action_27 (9) = happyShift action_8
action_27 (10) = happyShift action_9
action_27 (20) = happyShift action_10
action_27 (21) = happyShift action_2
action_27 (4) = happyGoto action_34
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (5) = happyShift action_4
action_28 (6) = happyShift action_5
action_28 (7) = happyShift action_6
action_28 (8) = happyShift action_7
action_28 (9) = happyShift action_8
action_28 (10) = happyShift action_9
action_28 (20) = happyShift action_10
action_28 (21) = happyShift action_2
action_28 (4) = happyGoto action_33
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (5) = happyShift action_4
action_29 (6) = happyShift action_5
action_29 (7) = happyShift action_6
action_29 (8) = happyShift action_7
action_29 (9) = happyShift action_8
action_29 (10) = happyShift action_9
action_29 (20) = happyShift action_10
action_29 (21) = happyShift action_2
action_29 (4) = happyGoto action_32
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (12) = happyShift action_31
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (5) = happyShift action_4
action_31 (6) = happyShift action_5
action_31 (7) = happyShift action_6
action_31 (8) = happyShift action_7
action_31 (9) = happyShift action_8
action_31 (10) = happyShift action_9
action_31 (20) = happyShift action_10
action_31 (21) = happyShift action_2
action_31 (4) = happyGoto action_56
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (13) = happyShift action_17
action_32 (14) = happyShift action_18
action_32 (15) = happyShift action_19
action_32 (16) = happyShift action_20
action_32 (17) = happyShift action_21
action_32 (18) = happyShift action_22
action_32 (19) = happyShift action_23
action_32 (27) = happyShift action_24
action_32 (28) = happyShift action_25
action_32 (29) = happyShift action_26
action_32 (30) = happyShift action_27
action_32 (31) = happyShift action_28
action_32 (32) = happyShift action_29
action_32 _ = happyReduce_14

action_33 (13) = happyShift action_17
action_33 (14) = happyShift action_18
action_33 (15) = happyShift action_19
action_33 (16) = happyShift action_20
action_33 (17) = happyShift action_21
action_33 (18) = happyShift action_22
action_33 (19) = happyShift action_23
action_33 (27) = happyShift action_24
action_33 (28) = happyShift action_25
action_33 (29) = happyShift action_26
action_33 (30) = happyShift action_27
action_33 (31) = happyShift action_28
action_33 (32) = happyShift action_29
action_33 _ = happyReduce_13

action_34 (13) = happyShift action_17
action_34 (14) = happyShift action_18
action_34 (15) = happyShift action_19
action_34 (16) = happyShift action_20
action_34 (17) = happyShift action_21
action_34 (18) = happyShift action_22
action_34 (19) = happyShift action_23
action_34 (27) = happyShift action_24
action_34 (28) = happyShift action_25
action_34 (29) = happyShift action_26
action_34 (30) = happyShift action_27
action_34 (31) = happyShift action_28
action_34 (32) = happyShift action_29
action_34 _ = happyReduce_12

action_35 (13) = happyShift action_17
action_35 (14) = happyShift action_18
action_35 (15) = happyShift action_19
action_35 (16) = happyShift action_20
action_35 (17) = happyShift action_21
action_35 (18) = happyShift action_22
action_35 (19) = happyShift action_23
action_35 (27) = happyShift action_24
action_35 (28) = happyShift action_25
action_35 (29) = happyShift action_26
action_35 (30) = happyShift action_27
action_35 (31) = happyShift action_28
action_35 (32) = happyShift action_29
action_35 _ = happyReduce_11

action_36 (13) = happyShift action_17
action_36 (14) = happyShift action_18
action_36 (15) = happyShift action_19
action_36 (16) = happyShift action_20
action_36 (17) = happyShift action_21
action_36 (18) = happyShift action_22
action_36 (19) = happyShift action_23
action_36 (27) = happyShift action_24
action_36 (28) = happyShift action_25
action_36 (29) = happyShift action_26
action_36 (30) = happyShift action_27
action_36 (31) = happyShift action_28
action_36 (32) = happyShift action_29
action_36 _ = happyReduce_10

action_37 (13) = happyShift action_17
action_37 (14) = happyShift action_18
action_37 (15) = happyShift action_19
action_37 (16) = happyShift action_20
action_37 (17) = happyShift action_21
action_37 (18) = happyShift action_22
action_37 (19) = happyShift action_23
action_37 (27) = happyShift action_24
action_37 (28) = happyShift action_25
action_37 (29) = happyShift action_26
action_37 (30) = happyShift action_27
action_37 (31) = happyShift action_28
action_37 (32) = happyShift action_29
action_37 _ = happyReduce_9

action_38 (13) = happyShift action_17
action_38 (14) = happyShift action_18
action_38 (15) = happyShift action_19
action_38 (16) = happyShift action_20
action_38 (17) = happyShift action_21
action_38 (18) = happyShift action_22
action_38 (19) = happyShift action_23
action_38 (27) = happyShift action_24
action_38 (28) = happyShift action_25
action_38 (29) = happyShift action_26
action_38 (30) = happyShift action_27
action_38 (31) = happyShift action_28
action_38 (32) = happyShift action_29
action_38 _ = happyReduce_6

action_39 (13) = happyShift action_17
action_39 (14) = happyShift action_18
action_39 (15) = happyShift action_19
action_39 (16) = happyShift action_20
action_39 (17) = happyShift action_21
action_39 (18) = happyShift action_22
action_39 (19) = happyShift action_23
action_39 (27) = happyShift action_24
action_39 (28) = happyShift action_25
action_39 (29) = happyShift action_26
action_39 (30) = happyShift action_27
action_39 (31) = happyShift action_28
action_39 (32) = happyShift action_29
action_39 _ = happyReduce_5

action_40 (13) = happyShift action_17
action_40 (14) = happyShift action_18
action_40 (15) = happyShift action_19
action_40 (16) = happyShift action_20
action_40 (17) = happyShift action_21
action_40 (18) = happyShift action_22
action_40 (19) = happyShift action_23
action_40 (27) = happyShift action_24
action_40 (28) = happyShift action_25
action_40 (29) = happyShift action_26
action_40 (30) = happyShift action_27
action_40 (31) = happyShift action_28
action_40 (32) = happyShift action_29
action_40 _ = happyReduce_4

action_41 (13) = happyShift action_17
action_41 (14) = happyShift action_18
action_41 (15) = happyShift action_19
action_41 (16) = happyShift action_20
action_41 (17) = happyShift action_21
action_41 (18) = happyShift action_22
action_41 (19) = happyShift action_23
action_41 (27) = happyShift action_24
action_41 (28) = happyShift action_25
action_41 (29) = happyShift action_26
action_41 (30) = happyShift action_27
action_41 (31) = happyShift action_28
action_41 (32) = happyShift action_29
action_41 _ = happyReduce_3

action_42 (13) = happyShift action_17
action_42 (14) = happyShift action_18
action_42 (15) = happyShift action_19
action_42 (16) = happyShift action_20
action_42 (17) = happyShift action_21
action_42 (18) = happyShift action_22
action_42 (19) = happyShift action_23
action_42 (27) = happyShift action_24
action_42 (28) = happyShift action_25
action_42 (29) = happyShift action_26
action_42 (30) = happyShift action_27
action_42 (31) = happyShift action_28
action_42 (32) = happyShift action_29
action_42 _ = happyReduce_2

action_43 (13) = happyShift action_17
action_43 (14) = happyShift action_18
action_43 (15) = happyShift action_19
action_43 (16) = happyShift action_20
action_43 (17) = happyShift action_21
action_43 (18) = happyShift action_22
action_43 (19) = happyShift action_23
action_43 (27) = happyShift action_24
action_43 (28) = happyShift action_25
action_43 (29) = happyShift action_26
action_43 (30) = happyShift action_27
action_43 (31) = happyShift action_28
action_43 (32) = happyShift action_29
action_43 _ = happyReduce_8

action_44 (13) = happyShift action_17
action_44 (14) = happyShift action_18
action_44 (15) = happyShift action_19
action_44 (16) = happyShift action_20
action_44 (17) = happyShift action_21
action_44 (18) = happyShift action_22
action_44 (19) = happyShift action_23
action_44 (27) = happyShift action_24
action_44 (28) = happyShift action_25
action_44 (29) = happyShift action_26
action_44 (30) = happyShift action_27
action_44 (31) = happyShift action_28
action_44 (32) = happyShift action_29
action_44 _ = happyReduce_7

action_45 (11) = happyShift action_55
action_45 (13) = happyShift action_17
action_45 (14) = happyShift action_18
action_45 (15) = happyShift action_19
action_45 (16) = happyShift action_20
action_45 (17) = happyShift action_21
action_45 (18) = happyShift action_22
action_45 (19) = happyShift action_23
action_45 (27) = happyShift action_24
action_45 (28) = happyShift action_25
action_45 (29) = happyShift action_26
action_45 (30) = happyShift action_27
action_45 (31) = happyShift action_28
action_45 (32) = happyShift action_29
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (5) = happyShift action_4
action_46 (6) = happyShift action_5
action_46 (7) = happyShift action_6
action_46 (8) = happyShift action_7
action_46 (9) = happyShift action_8
action_46 (10) = happyShift action_9
action_46 (20) = happyShift action_10
action_46 (21) = happyShift action_2
action_46 (4) = happyGoto action_54
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (12) = happyShift action_53
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_52
action_48 (13) = happyShift action_17
action_48 (14) = happyShift action_18
action_48 (15) = happyShift action_19
action_48 (16) = happyShift action_20
action_48 (17) = happyShift action_21
action_48 (18) = happyShift action_22
action_48 (19) = happyShift action_23
action_48 (27) = happyShift action_24
action_48 (28) = happyShift action_25
action_48 (29) = happyShift action_26
action_48 (30) = happyShift action_27
action_48 (31) = happyShift action_28
action_48 (32) = happyShift action_29
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_22

action_50 (5) = happyShift action_4
action_50 (6) = happyShift action_5
action_50 (7) = happyShift action_6
action_50 (8) = happyShift action_7
action_50 (9) = happyShift action_8
action_50 (10) = happyShift action_9
action_50 (20) = happyShift action_10
action_50 (21) = happyShift action_2
action_50 (4) = happyGoto action_51
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (11) = happyShift action_59
action_51 (13) = happyShift action_17
action_51 (14) = happyShift action_18
action_51 (15) = happyShift action_19
action_51 (16) = happyShift action_20
action_51 (17) = happyShift action_21
action_51 (18) = happyShift action_22
action_51 (19) = happyShift action_23
action_51 (27) = happyShift action_24
action_51 (28) = happyShift action_25
action_51 (29) = happyShift action_26
action_51 (30) = happyShift action_27
action_51 (31) = happyShift action_28
action_51 (32) = happyShift action_29
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_17

action_53 (5) = happyShift action_4
action_53 (6) = happyShift action_5
action_53 (7) = happyShift action_6
action_53 (8) = happyShift action_7
action_53 (9) = happyShift action_8
action_53 (10) = happyShift action_9
action_53 (20) = happyShift action_10
action_53 (21) = happyShift action_2
action_53 (4) = happyGoto action_58
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (13) = happyShift action_17
action_54 (14) = happyShift action_18
action_54 (15) = happyShift action_19
action_54 (16) = happyShift action_20
action_54 (17) = happyShift action_21
action_54 (18) = happyShift action_22
action_54 (19) = happyShift action_23
action_54 (27) = happyShift action_24
action_54 (28) = happyShift action_25
action_54 (29) = happyShift action_26
action_54 (30) = happyShift action_27
action_54 (31) = happyShift action_28
action_54 (32) = happyShift action_29
action_54 _ = happyReduce_20

action_55 _ = happyReduce_19

action_56 (13) = happyShift action_17
action_56 (14) = happyShift action_18
action_56 (15) = happyShift action_19
action_56 (16) = happyShift action_20
action_56 (17) = happyShift action_21
action_56 (18) = happyShift action_22
action_56 (19) = happyShift action_23
action_56 (22) = happyShift action_57
action_56 (27) = happyShift action_24
action_56 (28) = happyShift action_25
action_56 (29) = happyShift action_26
action_56 (30) = happyShift action_27
action_56 (31) = happyShift action_28
action_56 (32) = happyShift action_29
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (5) = happyShift action_4
action_57 (6) = happyShift action_5
action_57 (7) = happyShift action_6
action_57 (8) = happyShift action_7
action_57 (9) = happyShift action_8
action_57 (10) = happyShift action_9
action_57 (20) = happyShift action_10
action_57 (21) = happyShift action_2
action_57 (4) = happyGoto action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (13) = happyShift action_17
action_58 (14) = happyShift action_18
action_58 (15) = happyShift action_19
action_58 (16) = happyShift action_20
action_58 (17) = happyShift action_21
action_58 (18) = happyShift action_22
action_58 (19) = happyShift action_23
action_58 (27) = happyShift action_24
action_58 (28) = happyShift action_25
action_58 (29) = happyShift action_26
action_58 (30) = happyShift action_27
action_58 (31) = happyShift action_28
action_58 (32) = happyShift action_29
action_58 _ = happyReduce_21

action_59 _ = happyReduce_15

action_60 (13) = happyShift action_17
action_60 (14) = happyShift action_18
action_60 (15) = happyShift action_19
action_60 (16) = happyShift action_20
action_60 (17) = happyShift action_21
action_60 (18) = happyShift action_22
action_60 (19) = happyShift action_23
action_60 (27) = happyShift action_24
action_60 (28) = happyShift action_25
action_60 (29) = happyShift action_26
action_60 (30) = happyShift action_27
action_60 (31) = happyShift action_28
action_60 (32) = happyShift action_29
action_60 _ = happyReduce_1

happyReduce_1 = happyReduce 6 4 happyReduction_1
happyReduction_1 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ELet happy_var_2 happy_var_4 happy_var_6
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

happyReduce_15 = happyReduce 5 4 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ETuple happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ENegate happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 4 4 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ENegate happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn4
		 (EVar happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EVarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 5 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_3)) `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunDec happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_3  4 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  4 happyReduction_23
happyReduction_23 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (EInt happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  4 happyReduction_24
happyReduction_24 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (EBool happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

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

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a
parseError _ = error "Parse error"

type Op = String

data Expr =
   EFunDec Name Name Expr
   | EFunCall Name Expr
   | EInt Int
   | EBool Bool
   | EArithmeticOp Op Expr Expr
   | EComparisonOp Op Expr Expr
   | ERelationalOp Op Expr Expr
   | EVar Name
   | EVarDec Name Expr
   | ENegate Expr
   | Case Expr Expr
   | EIn Expr
   | ELet Name Expr Expr
   | ETuple Expr Expr
   deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
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
     = case happyDrop (k - ((1) :: Int)) sts of
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





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
