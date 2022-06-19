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

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,219) ([4032,352,0,512,16384,0,0,16256,2016,0,0,0,0,8192,0,8192,0,0,1,0,126,11,1008,88,8064,704,0,8700,63,0,0,32512,4048,512,0,256,0,0,1024,61440,22531,32768,49183,2,252,22,2016,176,16128,1408,63488,11265,49152,24591,1,126,11,1008,88,8064,704,64512,5632,57344,45063,0,32831,5,504,44,8192,0,32256,2816,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,63488,32387,4096,0,32256,2816,0,8192,0,0,8,0,0,0,0,16128,1408,63488,11265,0,40896,1008,0,0,64,0,8064,704,0,0,0,0,0,32512,4034,504,44,49152,63519,3,0,61440,22531,0,16256,2032,0,0,0,0,0,512,63488,11265,0,8128,1016,0,64,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","Exprs","identifiers","int","bool","identifier","varDecSym","funDecSym","\"(\"","\")\"","\"=\"","\"<\"","\">\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"!\"","let","in","case","of","\",\"","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st Prelude.* 35
        bit_end = (st Prelude.+ 1) Prelude.* 35
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..34]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (7) = happyShift action_4
action_0 (8) = happyShift action_5
action_0 (9) = happyShift action_6
action_0 (10) = happyShift action_7
action_0 (11) = happyShift action_8
action_0 (12) = happyShift action_9
action_0 (22) = happyShift action_10
action_0 (23) = happyShift action_2
action_0 (25) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (9) = happyShift action_32
action_2 _ = happyFail (happyExpListPerState 2)

action_3 (15) = happyShift action_19
action_3 (16) = happyShift action_20
action_3 (17) = happyShift action_21
action_3 (18) = happyShift action_22
action_3 (19) = happyShift action_23
action_3 (20) = happyShift action_24
action_3 (21) = happyShift action_25
action_3 (29) = happyShift action_26
action_3 (30) = happyShift action_27
action_3 (31) = happyShift action_28
action_3 (32) = happyShift action_29
action_3 (33) = happyShift action_30
action_3 (34) = happyShift action_31
action_3 (35) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_22

action_5 _ = happyReduce_23

action_6 (12) = happyShift action_18
action_6 _ = happyReduce_18

action_7 (9) = happyShift action_17
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (9) = happyShift action_16
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (7) = happyShift action_4
action_9 (8) = happyShift action_5
action_9 (9) = happyShift action_6
action_9 (10) = happyShift action_7
action_9 (11) = happyShift action_8
action_9 (12) = happyShift action_9
action_9 (22) = happyShift action_10
action_9 (23) = happyShift action_2
action_9 (25) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 (5) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (7) = happyShift action_4
action_10 (8) = happyShift action_5
action_10 (9) = happyShift action_6
action_10 (10) = happyShift action_7
action_10 (11) = happyShift action_8
action_10 (12) = happyShift action_9
action_10 (22) = happyShift action_10
action_10 (23) = happyShift action_2
action_10 (25) = happyShift action_11
action_10 (4) = happyGoto action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (7) = happyShift action_4
action_11 (8) = happyShift action_5
action_11 (9) = happyShift action_6
action_11 (10) = happyShift action_7
action_11 (11) = happyShift action_8
action_11 (12) = happyShift action_9
action_11 (22) = happyShift action_10
action_11 (23) = happyShift action_2
action_11 (25) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (15) = happyShift action_19
action_12 (16) = happyShift action_20
action_12 (17) = happyShift action_21
action_12 (18) = happyShift action_22
action_12 (19) = happyShift action_23
action_12 (20) = happyShift action_24
action_12 (21) = happyShift action_25
action_12 (26) = happyShift action_55
action_12 (29) = happyShift action_26
action_12 (30) = happyShift action_27
action_12 (31) = happyShift action_28
action_12 (32) = happyShift action_29
action_12 (33) = happyShift action_30
action_12 (34) = happyShift action_31
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_19
action_13 (16) = happyShift action_20
action_13 (17) = happyShift action_21
action_13 (18) = happyShift action_22
action_13 (19) = happyShift action_23
action_13 (20) = happyShift action_24
action_13 (21) = happyShift action_25
action_13 (29) = happyShift action_26
action_13 (30) = happyShift action_27
action_13 (31) = happyShift action_28
action_13 (32) = happyShift action_29
action_13 (33) = happyShift action_30
action_13 (34) = happyShift action_31
action_13 _ = happyReduce_17

action_14 (13) = happyShift action_53
action_14 (15) = happyShift action_19
action_14 (16) = happyShift action_20
action_14 (17) = happyShift action_21
action_14 (18) = happyShift action_22
action_14 (19) = happyShift action_23
action_14 (20) = happyShift action_24
action_14 (21) = happyShift action_25
action_14 (27) = happyShift action_54
action_14 (29) = happyShift action_26
action_14 (30) = happyShift action_27
action_14 (31) = happyShift action_28
action_14 (32) = happyShift action_29
action_14 (33) = happyShift action_30
action_14 (34) = happyShift action_31
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (13) = happyShift action_52
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (9) = happyShift action_51
action_16 (6) = happyGoto action_50
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (24) = happyShift action_49
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (7) = happyShift action_4
action_18 (8) = happyShift action_5
action_18 (9) = happyShift action_6
action_18 (10) = happyShift action_7
action_18 (11) = happyShift action_8
action_18 (12) = happyShift action_9
action_18 (22) = happyShift action_10
action_18 (23) = happyShift action_2
action_18 (25) = happyShift action_11
action_18 (4) = happyGoto action_47
action_18 (5) = happyGoto action_48
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (7) = happyShift action_4
action_19 (8) = happyShift action_5
action_19 (9) = happyShift action_6
action_19 (10) = happyShift action_7
action_19 (11) = happyShift action_8
action_19 (12) = happyShift action_9
action_19 (22) = happyShift action_10
action_19 (23) = happyShift action_2
action_19 (25) = happyShift action_11
action_19 (4) = happyGoto action_46
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (7) = happyShift action_4
action_20 (8) = happyShift action_5
action_20 (9) = happyShift action_6
action_20 (10) = happyShift action_7
action_20 (11) = happyShift action_8
action_20 (12) = happyShift action_9
action_20 (22) = happyShift action_10
action_20 (23) = happyShift action_2
action_20 (25) = happyShift action_11
action_20 (4) = happyGoto action_45
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (7) = happyShift action_4
action_21 (8) = happyShift action_5
action_21 (9) = happyShift action_6
action_21 (10) = happyShift action_7
action_21 (11) = happyShift action_8
action_21 (12) = happyShift action_9
action_21 (22) = happyShift action_10
action_21 (23) = happyShift action_2
action_21 (25) = happyShift action_11
action_21 (4) = happyGoto action_44
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (7) = happyShift action_4
action_22 (8) = happyShift action_5
action_22 (9) = happyShift action_6
action_22 (10) = happyShift action_7
action_22 (11) = happyShift action_8
action_22 (12) = happyShift action_9
action_22 (22) = happyShift action_10
action_22 (23) = happyShift action_2
action_22 (25) = happyShift action_11
action_22 (4) = happyGoto action_43
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (7) = happyShift action_4
action_23 (8) = happyShift action_5
action_23 (9) = happyShift action_6
action_23 (10) = happyShift action_7
action_23 (11) = happyShift action_8
action_23 (12) = happyShift action_9
action_23 (22) = happyShift action_10
action_23 (23) = happyShift action_2
action_23 (25) = happyShift action_11
action_23 (4) = happyGoto action_42
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (7) = happyShift action_4
action_24 (8) = happyShift action_5
action_24 (9) = happyShift action_6
action_24 (10) = happyShift action_7
action_24 (11) = happyShift action_8
action_24 (12) = happyShift action_9
action_24 (22) = happyShift action_10
action_24 (23) = happyShift action_2
action_24 (25) = happyShift action_11
action_24 (4) = happyGoto action_41
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (7) = happyShift action_4
action_25 (8) = happyShift action_5
action_25 (9) = happyShift action_6
action_25 (10) = happyShift action_7
action_25 (11) = happyShift action_8
action_25 (12) = happyShift action_9
action_25 (22) = happyShift action_10
action_25 (23) = happyShift action_2
action_25 (25) = happyShift action_11
action_25 (4) = happyGoto action_40
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (7) = happyShift action_4
action_26 (8) = happyShift action_5
action_26 (9) = happyShift action_6
action_26 (10) = happyShift action_7
action_26 (11) = happyShift action_8
action_26 (12) = happyShift action_9
action_26 (22) = happyShift action_10
action_26 (23) = happyShift action_2
action_26 (25) = happyShift action_11
action_26 (4) = happyGoto action_39
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (7) = happyShift action_4
action_27 (8) = happyShift action_5
action_27 (9) = happyShift action_6
action_27 (10) = happyShift action_7
action_27 (11) = happyShift action_8
action_27 (12) = happyShift action_9
action_27 (22) = happyShift action_10
action_27 (23) = happyShift action_2
action_27 (25) = happyShift action_11
action_27 (4) = happyGoto action_38
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (7) = happyShift action_4
action_28 (8) = happyShift action_5
action_28 (9) = happyShift action_6
action_28 (10) = happyShift action_7
action_28 (11) = happyShift action_8
action_28 (12) = happyShift action_9
action_28 (22) = happyShift action_10
action_28 (23) = happyShift action_2
action_28 (25) = happyShift action_11
action_28 (4) = happyGoto action_37
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (7) = happyShift action_4
action_29 (8) = happyShift action_5
action_29 (9) = happyShift action_6
action_29 (10) = happyShift action_7
action_29 (11) = happyShift action_8
action_29 (12) = happyShift action_9
action_29 (22) = happyShift action_10
action_29 (23) = happyShift action_2
action_29 (25) = happyShift action_11
action_29 (4) = happyGoto action_36
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (7) = happyShift action_4
action_30 (8) = happyShift action_5
action_30 (9) = happyShift action_6
action_30 (10) = happyShift action_7
action_30 (11) = happyShift action_8
action_30 (12) = happyShift action_9
action_30 (22) = happyShift action_10
action_30 (23) = happyShift action_2
action_30 (25) = happyShift action_11
action_30 (4) = happyGoto action_35
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (7) = happyShift action_4
action_31 (8) = happyShift action_5
action_31 (9) = happyShift action_6
action_31 (10) = happyShift action_7
action_31 (11) = happyShift action_8
action_31 (12) = happyShift action_9
action_31 (22) = happyShift action_10
action_31 (23) = happyShift action_2
action_31 (25) = happyShift action_11
action_31 (4) = happyGoto action_34
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_33
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (7) = happyShift action_4
action_33 (8) = happyShift action_5
action_33 (9) = happyShift action_6
action_33 (10) = happyShift action_7
action_33 (11) = happyShift action_8
action_33 (12) = happyShift action_9
action_33 (22) = happyShift action_10
action_33 (23) = happyShift action_2
action_33 (25) = happyShift action_11
action_33 (4) = happyGoto action_62
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_19
action_34 (16) = happyShift action_20
action_34 (17) = happyShift action_21
action_34 (18) = happyShift action_22
action_34 (19) = happyShift action_23
action_34 (20) = happyShift action_24
action_34 (21) = happyShift action_25
action_34 (29) = happyShift action_26
action_34 (30) = happyShift action_27
action_34 (31) = happyShift action_28
action_34 (32) = happyShift action_29
action_34 (33) = happyShift action_30
action_34 (34) = happyShift action_31
action_34 _ = happyReduce_14

action_35 (15) = happyShift action_19
action_35 (16) = happyShift action_20
action_35 (17) = happyShift action_21
action_35 (18) = happyShift action_22
action_35 (19) = happyShift action_23
action_35 (20) = happyShift action_24
action_35 (21) = happyShift action_25
action_35 (29) = happyShift action_26
action_35 (30) = happyShift action_27
action_35 (31) = happyShift action_28
action_35 (32) = happyShift action_29
action_35 (33) = happyShift action_30
action_35 (34) = happyShift action_31
action_35 _ = happyReduce_13

action_36 (15) = happyShift action_19
action_36 (16) = happyShift action_20
action_36 (17) = happyShift action_21
action_36 (18) = happyShift action_22
action_36 (19) = happyShift action_23
action_36 (20) = happyShift action_24
action_36 (21) = happyShift action_25
action_36 (29) = happyShift action_26
action_36 (30) = happyShift action_27
action_36 (31) = happyShift action_28
action_36 (32) = happyShift action_29
action_36 (33) = happyShift action_30
action_36 (34) = happyShift action_31
action_36 _ = happyReduce_12

action_37 (15) = happyShift action_19
action_37 (16) = happyShift action_20
action_37 (17) = happyShift action_21
action_37 (18) = happyShift action_22
action_37 (19) = happyShift action_23
action_37 (20) = happyShift action_24
action_37 (21) = happyShift action_25
action_37 (29) = happyShift action_26
action_37 (30) = happyShift action_27
action_37 (31) = happyShift action_28
action_37 (32) = happyShift action_29
action_37 (33) = happyShift action_30
action_37 (34) = happyShift action_31
action_37 _ = happyReduce_11

action_38 (15) = happyShift action_19
action_38 (16) = happyShift action_20
action_38 (17) = happyShift action_21
action_38 (18) = happyShift action_22
action_38 (19) = happyShift action_23
action_38 (20) = happyShift action_24
action_38 (21) = happyShift action_25
action_38 (29) = happyShift action_26
action_38 (30) = happyShift action_27
action_38 (31) = happyShift action_28
action_38 (32) = happyShift action_29
action_38 (33) = happyShift action_30
action_38 (34) = happyShift action_31
action_38 _ = happyReduce_10

action_39 (15) = happyShift action_19
action_39 (16) = happyShift action_20
action_39 (17) = happyShift action_21
action_39 (18) = happyShift action_22
action_39 (19) = happyShift action_23
action_39 (20) = happyShift action_24
action_39 (21) = happyShift action_25
action_39 (29) = happyShift action_26
action_39 (30) = happyShift action_27
action_39 (31) = happyShift action_28
action_39 (32) = happyShift action_29
action_39 (33) = happyShift action_30
action_39 (34) = happyShift action_31
action_39 _ = happyReduce_9

action_40 (15) = happyShift action_19
action_40 (16) = happyShift action_20
action_40 (17) = happyShift action_21
action_40 (18) = happyShift action_22
action_40 (19) = happyShift action_23
action_40 (20) = happyShift action_24
action_40 (21) = happyShift action_25
action_40 (29) = happyShift action_26
action_40 (30) = happyShift action_27
action_40 (31) = happyShift action_28
action_40 (32) = happyShift action_29
action_40 (33) = happyShift action_30
action_40 (34) = happyShift action_31
action_40 _ = happyReduce_6

action_41 (15) = happyShift action_19
action_41 (16) = happyShift action_20
action_41 (17) = happyShift action_21
action_41 (18) = happyShift action_22
action_41 (19) = happyShift action_23
action_41 (20) = happyShift action_24
action_41 (21) = happyShift action_25
action_41 (29) = happyShift action_26
action_41 (30) = happyShift action_27
action_41 (31) = happyShift action_28
action_41 (32) = happyShift action_29
action_41 (33) = happyShift action_30
action_41 (34) = happyShift action_31
action_41 _ = happyReduce_5

action_42 (15) = happyShift action_19
action_42 (16) = happyShift action_20
action_42 (17) = happyShift action_21
action_42 (18) = happyShift action_22
action_42 (19) = happyShift action_23
action_42 (20) = happyShift action_24
action_42 (21) = happyShift action_25
action_42 (29) = happyShift action_26
action_42 (30) = happyShift action_27
action_42 (31) = happyShift action_28
action_42 (32) = happyShift action_29
action_42 (33) = happyShift action_30
action_42 (34) = happyShift action_31
action_42 _ = happyReduce_4

action_43 (15) = happyShift action_19
action_43 (16) = happyShift action_20
action_43 (17) = happyShift action_21
action_43 (18) = happyShift action_22
action_43 (19) = happyShift action_23
action_43 (20) = happyShift action_24
action_43 (21) = happyShift action_25
action_43 (29) = happyShift action_26
action_43 (30) = happyShift action_27
action_43 (31) = happyShift action_28
action_43 (32) = happyShift action_29
action_43 (33) = happyShift action_30
action_43 (34) = happyShift action_31
action_43 _ = happyReduce_3

action_44 (15) = happyShift action_19
action_44 (16) = happyShift action_20
action_44 (17) = happyShift action_21
action_44 (18) = happyShift action_22
action_44 (19) = happyShift action_23
action_44 (20) = happyShift action_24
action_44 (21) = happyShift action_25
action_44 (29) = happyShift action_26
action_44 (30) = happyShift action_27
action_44 (31) = happyShift action_28
action_44 (32) = happyShift action_29
action_44 (33) = happyShift action_30
action_44 (34) = happyShift action_31
action_44 _ = happyReduce_2

action_45 (15) = happyShift action_19
action_45 (16) = happyShift action_20
action_45 (17) = happyShift action_21
action_45 (18) = happyShift action_22
action_45 (19) = happyShift action_23
action_45 (20) = happyShift action_24
action_45 (21) = happyShift action_25
action_45 (29) = happyShift action_26
action_45 (30) = happyShift action_27
action_45 (31) = happyShift action_28
action_45 (32) = happyShift action_29
action_45 (33) = happyShift action_30
action_45 (34) = happyShift action_31
action_45 _ = happyReduce_8

action_46 (15) = happyShift action_19
action_46 (16) = happyShift action_20
action_46 (17) = happyShift action_21
action_46 (18) = happyShift action_22
action_46 (19) = happyShift action_23
action_46 (20) = happyShift action_24
action_46 (21) = happyShift action_25
action_46 (29) = happyShift action_26
action_46 (30) = happyShift action_27
action_46 (31) = happyShift action_28
action_46 (32) = happyShift action_29
action_46 (33) = happyShift action_30
action_46 (34) = happyShift action_31
action_46 _ = happyReduce_7

action_47 (15) = happyShift action_19
action_47 (16) = happyShift action_20
action_47 (17) = happyShift action_21
action_47 (18) = happyShift action_22
action_47 (19) = happyShift action_23
action_47 (20) = happyShift action_24
action_47 (21) = happyShift action_25
action_47 (27) = happyShift action_54
action_47 (29) = happyShift action_26
action_47 (30) = happyShift action_27
action_47 (31) = happyShift action_28
action_47 (32) = happyShift action_29
action_47 (33) = happyShift action_30
action_47 (34) = happyShift action_31
action_47 _ = happyReduce_25

action_48 (13) = happyShift action_61
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (7) = happyShift action_4
action_49 (8) = happyShift action_5
action_49 (9) = happyShift action_6
action_49 (10) = happyShift action_7
action_49 (11) = happyShift action_8
action_49 (12) = happyShift action_9
action_49 (22) = happyShift action_10
action_49 (23) = happyShift action_2
action_49 (25) = happyShift action_11
action_49 (4) = happyGoto action_60
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (24) = happyShift action_59
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_58
action_51 _ = happyReduce_27

action_52 _ = happyReduce_16

action_53 _ = happyReduce_15

action_54 (7) = happyShift action_4
action_54 (8) = happyShift action_5
action_54 (9) = happyShift action_6
action_54 (10) = happyShift action_7
action_54 (11) = happyShift action_8
action_54 (12) = happyShift action_9
action_54 (22) = happyShift action_10
action_54 (23) = happyShift action_2
action_54 (25) = happyShift action_11
action_54 (4) = happyGoto action_47
action_54 (5) = happyGoto action_57
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (7) = happyShift action_4
action_55 (8) = happyShift action_5
action_55 (9) = happyShift action_6
action_55 (10) = happyShift action_7
action_55 (11) = happyShift action_8
action_55 (12) = happyShift action_9
action_55 (22) = happyShift action_10
action_55 (23) = happyShift action_2
action_55 (25) = happyShift action_11
action_55 (4) = happyGoto action_56
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (15) = happyShift action_19
action_56 (16) = happyShift action_20
action_56 (17) = happyShift action_21
action_56 (18) = happyShift action_22
action_56 (19) = happyShift action_23
action_56 (20) = happyShift action_24
action_56 (21) = happyShift action_25
action_56 (24) = happyShift action_66
action_56 (29) = happyShift action_26
action_56 (30) = happyShift action_27
action_56 (31) = happyShift action_28
action_56 (32) = happyShift action_29
action_56 (33) = happyShift action_30
action_56 (34) = happyShift action_31
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_26

action_58 (9) = happyShift action_51
action_58 (6) = happyGoto action_65
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (7) = happyShift action_4
action_59 (8) = happyShift action_5
action_59 (9) = happyShift action_6
action_59 (10) = happyShift action_7
action_59 (11) = happyShift action_8
action_59 (12) = happyShift action_9
action_59 (22) = happyShift action_10
action_59 (23) = happyShift action_2
action_59 (25) = happyShift action_11
action_59 (4) = happyGoto action_64
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (15) = happyShift action_19
action_60 (16) = happyShift action_20
action_60 (17) = happyShift action_21
action_60 (18) = happyShift action_22
action_60 (19) = happyShift action_23
action_60 (20) = happyShift action_24
action_60 (21) = happyShift action_25
action_60 (29) = happyShift action_26
action_60 (30) = happyShift action_27
action_60 (31) = happyShift action_28
action_60 (32) = happyShift action_29
action_60 (33) = happyShift action_30
action_60 (34) = happyShift action_31
action_60 _ = happyReduce_21

action_61 _ = happyReduce_19

action_62 (15) = happyShift action_19
action_62 (16) = happyShift action_20
action_62 (17) = happyShift action_21
action_62 (18) = happyShift action_22
action_62 (19) = happyShift action_23
action_62 (20) = happyShift action_24
action_62 (21) = happyShift action_25
action_62 (24) = happyShift action_63
action_62 (29) = happyShift action_26
action_62 (30) = happyShift action_27
action_62 (31) = happyShift action_28
action_62 (32) = happyShift action_29
action_62 (33) = happyShift action_30
action_62 (34) = happyShift action_31
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (7) = happyShift action_4
action_63 (8) = happyShift action_5
action_63 (9) = happyShift action_6
action_63 (10) = happyShift action_7
action_63 (11) = happyShift action_8
action_63 (12) = happyShift action_9
action_63 (22) = happyShift action_10
action_63 (23) = happyShift action_2
action_63 (25) = happyShift action_11
action_63 (4) = happyGoto action_69
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (15) = happyShift action_19
action_64 (16) = happyShift action_20
action_64 (17) = happyShift action_21
action_64 (18) = happyShift action_22
action_64 (19) = happyShift action_23
action_64 (20) = happyShift action_24
action_64 (21) = happyShift action_25
action_64 (28) = happyShift action_68
action_64 (29) = happyShift action_26
action_64 (30) = happyShift action_27
action_64 (31) = happyShift action_28
action_64 (32) = happyShift action_29
action_64 (33) = happyShift action_30
action_64 (34) = happyShift action_31
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_28

action_66 (7) = happyShift action_4
action_66 (8) = happyShift action_5
action_66 (9) = happyShift action_6
action_66 (10) = happyShift action_7
action_66 (11) = happyShift action_8
action_66 (12) = happyShift action_9
action_66 (22) = happyShift action_10
action_66 (23) = happyShift action_2
action_66 (25) = happyShift action_11
action_66 (4) = happyGoto action_67
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (15) = happyShift action_19
action_67 (16) = happyShift action_20
action_67 (17) = happyShift action_21
action_67 (18) = happyShift action_22
action_67 (19) = happyShift action_23
action_67 (20) = happyShift action_24
action_67 (21) = happyShift action_25
action_67 (28) = happyShift action_70
action_67 (29) = happyShift action_26
action_67 (30) = happyShift action_27
action_67 (31) = happyShift action_28
action_67 (32) = happyShift action_29
action_67 (33) = happyShift action_30
action_67 (34) = happyShift action_31
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_20

action_69 (15) = happyShift action_19
action_69 (16) = happyShift action_20
action_69 (17) = happyShift action_21
action_69 (18) = happyShift action_22
action_69 (19) = happyShift action_23
action_69 (20) = happyShift action_24
action_69 (21) = happyShift action_25
action_69 (29) = happyShift action_26
action_69 (30) = happyShift action_27
action_69 (31) = happyShift action_28
action_69 (32) = happyShift action_29
action_69 (33) = happyShift action_30
action_69 (34) = happyShift action_31
action_69 _ = happyReduce_1

action_70 (24) = happyShift action_71
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (7) = happyShift action_4
action_71 (8) = happyShift action_5
action_71 (9) = happyShift action_6
action_71 (10) = happyShift action_7
action_71 (11) = happyShift action_8
action_71 (12) = happyShift action_9
action_71 (22) = happyShift action_10
action_71 (23) = happyShift action_2
action_71 (25) = happyShift action_11
action_71 (4) = happyGoto action_72
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (15) = happyShift action_19
action_72 (16) = happyShift action_20
action_72 (17) = happyShift action_21
action_72 (18) = happyShift action_22
action_72 (19) = happyShift action_23
action_72 (20) = happyShift action_24
action_72 (21) = happyShift action_25
action_72 (28) = happyShift action_73
action_72 (29) = happyShift action_26
action_72 (30) = happyShift action_27
action_72 (31) = happyShift action_28
action_72 (32) = happyShift action_29
action_72 (33) = happyShift action_30
action_72 (34) = happyShift action_31
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (28) = happyShift action_74
action_73 _ = happyFail (happyExpListPerState 73)

action_74 _ = happyReduce_24

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

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  4 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ETuple happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ENegate happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  4 happyReduction_18
happyReduction_18 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn4
		 (EVar happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happyReduce 4 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunDec happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 4 4 happyReduction_21
happyReduction_21 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EVarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (EInt happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  4 happyReduction_23
happyReduction_23 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (EBool happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 11 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_9) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ECase happy_var_2 happy_var_4 happy_var_6 happy_var_9
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  5 happyReduction_25
happyReduction_25 (HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 ([happy_var_1]
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  5 happyReduction_26
happyReduction_26 (HappyAbsSyn5  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1:happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  6 happyReduction_27
happyReduction_27 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn6
		 ([happy_var_1]
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  6 happyReduction_28
happyReduction_28 (HappyAbsSyn6  happy_var_3)
	_
	(HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn6
		 (happy_var_1:happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 35 35 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 7;
	TBool happy_dollar_dollar -> cont 8;
	TIdentifier happy_dollar_dollar -> cont 9;
	TVarDec -> cont 10;
	TFunDec -> cont 11;
	TSym '(' -> cont 12;
	TSym ')' -> cont 13;
	TSym '=' -> cont 14;
	TSym '<' -> cont 15;
	TSym '>' -> cont 16;
	TSym '+' -> cont 17;
	TSym '-' -> cont 18;
	TSym '*' -> cont 19;
	TSym '/' -> cont 20;
	TSym '%' -> cont 21;
	TSym '!' -> cont 22;
	TLet -> cont 23;
	TIn -> cont 24;
	TCase -> cont 25;
	TOf -> cont 26;
	TSym ',' -> cont 27;
	TEnd -> cont 28;
	TDSym "==" -> cont 29;
	TDSym "!=" -> cont 30;
	TDSym "<=" -> cont 31;
	TDSym ">=" -> cont 32;
	TDSym "&&" -> cont 33;
	TDSym "||" -> cont 34;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 35 tk tks = happyError' (tks, explist)
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

type Op = String

data Expr =
   EFunDec Name [Name] Expr
   | EFunCall Name [Expr]
   | EInt Int
   | EBool Bool
   | EArithmeticOp Op Expr Expr
   | EComparisonOp Op Expr Expr
   | ERelationalOp Op Expr Expr
   | EVar Name
   | EVarDec Name Expr
   | ENegate Expr
   | ECase Expr Expr Expr Expr
   | EIn Expr
   | ELet Name Expr Expr
   | ETuple [Expr]
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
