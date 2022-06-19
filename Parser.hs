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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,264) ([64512,5632,0,126,11,0,49279,15,0,0,0,0,0,0,0,512,0,8192,0,0,16,0,32256,2816,0,32831,5,1024,0,49152,24591,1,57344,63503,61441,22531,0,504,44,64512,5632,0,126,11,16128,1408,32768,49183,2,4032,352,57344,45063,0,1008,88,63488,11265,0,252,22,32256,2816,0,32831,5,32768,58431,7,2,0,0,64,0,0,0,63488,32387,0,1,0,8,0,0,512,32768,49183,2,49152,62495,3,8,0,1008,88,0,4096,0,0,64,0,0,0,0,0,8064,704,49152,24591,1,0,0,0,32768,0,0,16,64512,5632,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10224,252,504,44,0,0,0,65024,8128,0,0,0,2,0,4032,352,0,0,0,0,0,0,1016,127,0,0,0,0,0,32512,4064,8064,704,0,8128,1016,0,1024,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Expr","Exprs","identifiers","caseOf","caseOfs","varDec","varDecs","int","bool","identifier","varDecSym","funDecSym","\"(\"","\")\"","\"=\"","\"<\"","\">\"","\"+\"","\"-\"","\"*\"","\"/\"","\"%\"","\"!\"","let","in","case","of","\",\"","end","\"==\"","\"!=\"","\"<=\"","\">=\"","\"&&\"","\"||\"","%eof"]
        bit_start = st * 39
        bit_end = (st + 1) * 39
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..38]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (11) = happyShift action_4
action_0 (12) = happyShift action_5
action_0 (13) = happyShift action_6
action_0 (14) = happyShift action_7
action_0 (15) = happyShift action_8
action_0 (16) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (27) = happyShift action_11
action_0 (29) = happyShift action_12
action_0 (4) = happyGoto action_13
action_0 (9) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (11) = happyShift action_4
action_1 (12) = happyShift action_5
action_1 (13) = happyShift action_6
action_1 (14) = happyShift action_7
action_1 (15) = happyShift action_8
action_1 (16) = happyShift action_9
action_1 (26) = happyShift action_10
action_1 (27) = happyShift action_11
action_1 (29) = happyShift action_12
action_1 (4) = happyGoto action_2
action_1 (9) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (19) = happyShift action_14
action_2 (20) = happyShift action_15
action_2 (21) = happyShift action_16
action_2 (22) = happyShift action_17
action_2 (23) = happyShift action_18
action_2 (24) = happyShift action_19
action_2 (25) = happyShift action_20
action_2 (33) = happyShift action_21
action_2 (34) = happyShift action_22
action_2 (35) = happyShift action_23
action_2 (36) = happyShift action_24
action_2 (37) = happyShift action_25
action_2 (38) = happyShift action_26
action_2 _ = happyFail (happyExpListPerState 2)

action_3 _ = happyReduce_20

action_4 _ = happyReduce_21

action_5 _ = happyReduce_22

action_6 (16) = happyShift action_35
action_6 _ = happyReduce_17

action_7 (13) = happyShift action_34
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (13) = happyShift action_33
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (11) = happyShift action_4
action_9 (12) = happyShift action_5
action_9 (13) = happyShift action_6
action_9 (14) = happyShift action_7
action_9 (15) = happyShift action_8
action_9 (16) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (27) = happyShift action_11
action_9 (29) = happyShift action_12
action_9 (4) = happyGoto action_31
action_9 (5) = happyGoto action_32
action_9 (9) = happyGoto action_3
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (11) = happyShift action_4
action_10 (12) = happyShift action_5
action_10 (13) = happyShift action_6
action_10 (14) = happyShift action_7
action_10 (15) = happyShift action_8
action_10 (16) = happyShift action_9
action_10 (26) = happyShift action_10
action_10 (27) = happyShift action_11
action_10 (29) = happyShift action_12
action_10 (4) = happyGoto action_30
action_10 (9) = happyGoto action_3
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (14) = happyShift action_7
action_11 (9) = happyGoto action_28
action_11 (10) = happyGoto action_29
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (11) = happyShift action_4
action_12 (12) = happyShift action_5
action_12 (13) = happyShift action_6
action_12 (14) = happyShift action_7
action_12 (15) = happyShift action_8
action_12 (16) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (27) = happyShift action_11
action_12 (29) = happyShift action_12
action_12 (4) = happyGoto action_27
action_12 (9) = happyGoto action_3
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (19) = happyShift action_14
action_13 (20) = happyShift action_15
action_13 (21) = happyShift action_16
action_13 (22) = happyShift action_17
action_13 (23) = happyShift action_18
action_13 (24) = happyShift action_19
action_13 (25) = happyShift action_20
action_13 (33) = happyShift action_21
action_13 (34) = happyShift action_22
action_13 (35) = happyShift action_23
action_13 (36) = happyShift action_24
action_13 (37) = happyShift action_25
action_13 (38) = happyShift action_26
action_13 (39) = happyAccept
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (11) = happyShift action_4
action_14 (12) = happyShift action_5
action_14 (13) = happyShift action_6
action_14 (14) = happyShift action_7
action_14 (15) = happyShift action_8
action_14 (16) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (27) = happyShift action_11
action_14 (29) = happyShift action_12
action_14 (4) = happyGoto action_61
action_14 (9) = happyGoto action_3
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (11) = happyShift action_4
action_15 (12) = happyShift action_5
action_15 (13) = happyShift action_6
action_15 (14) = happyShift action_7
action_15 (15) = happyShift action_8
action_15 (16) = happyShift action_9
action_15 (26) = happyShift action_10
action_15 (27) = happyShift action_11
action_15 (29) = happyShift action_12
action_15 (4) = happyGoto action_60
action_15 (9) = happyGoto action_3
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (11) = happyShift action_4
action_16 (12) = happyShift action_5
action_16 (13) = happyShift action_6
action_16 (14) = happyShift action_7
action_16 (15) = happyShift action_8
action_16 (16) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (27) = happyShift action_11
action_16 (29) = happyShift action_12
action_16 (4) = happyGoto action_59
action_16 (9) = happyGoto action_3
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (11) = happyShift action_4
action_17 (12) = happyShift action_5
action_17 (13) = happyShift action_6
action_17 (14) = happyShift action_7
action_17 (15) = happyShift action_8
action_17 (16) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (27) = happyShift action_11
action_17 (29) = happyShift action_12
action_17 (4) = happyGoto action_58
action_17 (9) = happyGoto action_3
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (11) = happyShift action_4
action_18 (12) = happyShift action_5
action_18 (13) = happyShift action_6
action_18 (14) = happyShift action_7
action_18 (15) = happyShift action_8
action_18 (16) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (27) = happyShift action_11
action_18 (29) = happyShift action_12
action_18 (4) = happyGoto action_57
action_18 (9) = happyGoto action_3
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (11) = happyShift action_4
action_19 (12) = happyShift action_5
action_19 (13) = happyShift action_6
action_19 (14) = happyShift action_7
action_19 (15) = happyShift action_8
action_19 (16) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (27) = happyShift action_11
action_19 (29) = happyShift action_12
action_19 (4) = happyGoto action_56
action_19 (9) = happyGoto action_3
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (11) = happyShift action_4
action_20 (12) = happyShift action_5
action_20 (13) = happyShift action_6
action_20 (14) = happyShift action_7
action_20 (15) = happyShift action_8
action_20 (16) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (27) = happyShift action_11
action_20 (29) = happyShift action_12
action_20 (4) = happyGoto action_55
action_20 (9) = happyGoto action_3
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (11) = happyShift action_4
action_21 (12) = happyShift action_5
action_21 (13) = happyShift action_6
action_21 (14) = happyShift action_7
action_21 (15) = happyShift action_8
action_21 (16) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (27) = happyShift action_11
action_21 (29) = happyShift action_12
action_21 (4) = happyGoto action_54
action_21 (9) = happyGoto action_3
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (11) = happyShift action_4
action_22 (12) = happyShift action_5
action_22 (13) = happyShift action_6
action_22 (14) = happyShift action_7
action_22 (15) = happyShift action_8
action_22 (16) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (27) = happyShift action_11
action_22 (29) = happyShift action_12
action_22 (4) = happyGoto action_53
action_22 (9) = happyGoto action_3
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (11) = happyShift action_4
action_23 (12) = happyShift action_5
action_23 (13) = happyShift action_6
action_23 (14) = happyShift action_7
action_23 (15) = happyShift action_8
action_23 (16) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (27) = happyShift action_11
action_23 (29) = happyShift action_12
action_23 (4) = happyGoto action_52
action_23 (9) = happyGoto action_3
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (11) = happyShift action_4
action_24 (12) = happyShift action_5
action_24 (13) = happyShift action_6
action_24 (14) = happyShift action_7
action_24 (15) = happyShift action_8
action_24 (16) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (27) = happyShift action_11
action_24 (29) = happyShift action_12
action_24 (4) = happyGoto action_51
action_24 (9) = happyGoto action_3
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (11) = happyShift action_4
action_25 (12) = happyShift action_5
action_25 (13) = happyShift action_6
action_25 (14) = happyShift action_7
action_25 (15) = happyShift action_8
action_25 (16) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (27) = happyShift action_11
action_25 (29) = happyShift action_12
action_25 (4) = happyGoto action_50
action_25 (9) = happyGoto action_3
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (11) = happyShift action_4
action_26 (12) = happyShift action_5
action_26 (13) = happyShift action_6
action_26 (14) = happyShift action_7
action_26 (15) = happyShift action_8
action_26 (16) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (27) = happyShift action_11
action_26 (29) = happyShift action_12
action_26 (4) = happyGoto action_49
action_26 (9) = happyGoto action_3
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (19) = happyShift action_14
action_27 (20) = happyShift action_15
action_27 (21) = happyShift action_16
action_27 (22) = happyShift action_17
action_27 (23) = happyShift action_18
action_27 (24) = happyShift action_19
action_27 (25) = happyShift action_20
action_27 (30) = happyShift action_48
action_27 (33) = happyShift action_21
action_27 (34) = happyShift action_22
action_27 (35) = happyShift action_23
action_27 (36) = happyShift action_24
action_27 (37) = happyShift action_25
action_27 (38) = happyShift action_26
action_27 (7) = happyGoto action_46
action_27 (8) = happyGoto action_47
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_7
action_28 (9) = happyGoto action_28
action_28 (10) = happyGoto action_45
action_28 _ = happyReduce_33

action_29 (28) = happyShift action_44
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (19) = happyShift action_14
action_30 (20) = happyShift action_15
action_30 (21) = happyShift action_16
action_30 (22) = happyShift action_17
action_30 (23) = happyShift action_18
action_30 (24) = happyShift action_19
action_30 (25) = happyShift action_20
action_30 (33) = happyShift action_21
action_30 (34) = happyShift action_22
action_30 (35) = happyShift action_23
action_30 (36) = happyShift action_24
action_30 (37) = happyShift action_25
action_30 (38) = happyShift action_26
action_30 _ = happyReduce_16

action_31 (17) = happyShift action_42
action_31 (19) = happyShift action_14
action_31 (20) = happyShift action_15
action_31 (21) = happyShift action_16
action_31 (22) = happyShift action_17
action_31 (23) = happyShift action_18
action_31 (24) = happyShift action_19
action_31 (25) = happyShift action_20
action_31 (31) = happyShift action_43
action_31 (33) = happyShift action_21
action_31 (34) = happyShift action_22
action_31 (35) = happyShift action_23
action_31 (36) = happyShift action_24
action_31 (37) = happyShift action_25
action_31 (38) = happyShift action_26
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (17) = happyShift action_41
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (13) = happyShift action_40
action_33 (6) = happyGoto action_39
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (28) = happyShift action_38
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (11) = happyShift action_4
action_35 (12) = happyShift action_5
action_35 (13) = happyShift action_6
action_35 (14) = happyShift action_7
action_35 (15) = happyShift action_8
action_35 (16) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (27) = happyShift action_11
action_35 (29) = happyShift action_12
action_35 (4) = happyGoto action_36
action_35 (5) = happyGoto action_37
action_35 (9) = happyGoto action_3
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (19) = happyShift action_14
action_36 (20) = happyShift action_15
action_36 (21) = happyShift action_16
action_36 (22) = happyShift action_17
action_36 (23) = happyShift action_18
action_36 (24) = happyShift action_19
action_36 (25) = happyShift action_20
action_36 (31) = happyShift action_43
action_36 (33) = happyShift action_21
action_36 (34) = happyShift action_22
action_36 (35) = happyShift action_23
action_36 (36) = happyShift action_24
action_36 (37) = happyShift action_25
action_36 (38) = happyShift action_26
action_36 _ = happyReduce_25

action_37 (17) = happyShift action_70
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (11) = happyShift action_4
action_38 (12) = happyShift action_5
action_38 (13) = happyShift action_6
action_38 (14) = happyShift action_7
action_38 (15) = happyShift action_8
action_38 (16) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (27) = happyShift action_11
action_38 (29) = happyShift action_12
action_38 (4) = happyGoto action_69
action_38 (9) = happyGoto action_3
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (28) = happyShift action_68
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (31) = happyShift action_67
action_40 _ = happyReduce_27

action_41 _ = happyReduce_15

action_42 _ = happyReduce_14

action_43 (11) = happyShift action_4
action_43 (12) = happyShift action_5
action_43 (13) = happyShift action_6
action_43 (14) = happyShift action_7
action_43 (15) = happyShift action_8
action_43 (16) = happyShift action_9
action_43 (26) = happyShift action_10
action_43 (27) = happyShift action_11
action_43 (29) = happyShift action_12
action_43 (4) = happyGoto action_36
action_43 (5) = happyGoto action_66
action_43 (9) = happyGoto action_3
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (11) = happyShift action_4
action_44 (12) = happyShift action_5
action_44 (13) = happyShift action_6
action_44 (14) = happyShift action_7
action_44 (15) = happyShift action_8
action_44 (16) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (27) = happyShift action_11
action_44 (29) = happyShift action_12
action_44 (4) = happyGoto action_65
action_44 (9) = happyGoto action_3
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_34

action_46 (30) = happyShift action_48
action_46 (7) = happyGoto action_46
action_46 (8) = happyGoto action_64
action_46 _ = happyReduce_30

action_47 (28) = happyShift action_63
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (11) = happyShift action_4
action_48 (12) = happyShift action_5
action_48 (13) = happyShift action_6
action_48 (14) = happyShift action_7
action_48 (15) = happyShift action_8
action_48 (16) = happyShift action_9
action_48 (26) = happyShift action_10
action_48 (27) = happyShift action_11
action_48 (29) = happyShift action_12
action_48 (4) = happyGoto action_62
action_48 (9) = happyGoto action_3
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (22) = happyShift action_17
action_49 (23) = happyShift action_18
action_49 (24) = happyShift action_19
action_49 (25) = happyShift action_20
action_49 (33) = happyShift action_21
action_49 (34) = happyShift action_22
action_49 (35) = happyShift action_23
action_49 (36) = happyShift action_24
action_49 (37) = happyShift action_25
action_49 (38) = happyShift action_26
action_49 _ = happyReduce_13

action_50 (19) = happyShift action_14
action_50 (20) = happyShift action_15
action_50 (21) = happyShift action_16
action_50 (22) = happyShift action_17
action_50 (23) = happyShift action_18
action_50 (24) = happyShift action_19
action_50 (25) = happyShift action_20
action_50 (33) = happyShift action_21
action_50 (34) = happyShift action_22
action_50 (35) = happyShift action_23
action_50 (36) = happyShift action_24
action_50 (37) = happyShift action_25
action_50 (38) = happyShift action_26
action_50 _ = happyReduce_12

action_51 (19) = happyShift action_14
action_51 (20) = happyShift action_15
action_51 (21) = happyShift action_16
action_51 (22) = happyShift action_17
action_51 (23) = happyShift action_18
action_51 (24) = happyShift action_19
action_51 (25) = happyShift action_20
action_51 (33) = happyShift action_21
action_51 (34) = happyShift action_22
action_51 (35) = happyShift action_23
action_51 (36) = happyShift action_24
action_51 (37) = happyShift action_25
action_51 (38) = happyShift action_26
action_51 _ = happyReduce_11

action_52 (19) = happyShift action_14
action_52 (20) = happyShift action_15
action_52 (21) = happyShift action_16
action_52 (22) = happyShift action_17
action_52 (23) = happyShift action_18
action_52 (24) = happyShift action_19
action_52 (25) = happyShift action_20
action_52 (33) = happyShift action_21
action_52 (34) = happyShift action_22
action_52 (35) = happyShift action_23
action_52 (36) = happyShift action_24
action_52 (37) = happyShift action_25
action_52 (38) = happyShift action_26
action_52 _ = happyReduce_10

action_53 (19) = happyShift action_14
action_53 (20) = happyShift action_15
action_53 (21) = happyShift action_16
action_53 (22) = happyShift action_17
action_53 (23) = happyShift action_18
action_53 (24) = happyShift action_19
action_53 (25) = happyShift action_20
action_53 (33) = happyShift action_21
action_53 (34) = happyShift action_22
action_53 (35) = happyShift action_23
action_53 (36) = happyShift action_24
action_53 (37) = happyShift action_25
action_53 (38) = happyShift action_26
action_53 _ = happyReduce_9

action_54 (19) = happyShift action_14
action_54 (20) = happyShift action_15
action_54 (21) = happyShift action_16
action_54 (22) = happyShift action_17
action_54 (23) = happyShift action_18
action_54 (24) = happyShift action_19
action_54 (25) = happyShift action_20
action_54 (33) = happyShift action_21
action_54 (34) = happyShift action_22
action_54 (35) = happyShift action_23
action_54 (36) = happyShift action_24
action_54 (37) = happyShift action_25
action_54 (38) = happyShift action_26
action_54 _ = happyReduce_8

action_55 (19) = happyShift action_14
action_55 (20) = happyShift action_15
action_55 (21) = happyShift action_16
action_55 (22) = happyShift action_17
action_55 (23) = happyShift action_18
action_55 (24) = happyShift action_19
action_55 (25) = happyShift action_20
action_55 (33) = happyShift action_21
action_55 (34) = happyShift action_22
action_55 (35) = happyShift action_23
action_55 (36) = happyShift action_24
action_55 (37) = happyShift action_25
action_55 (38) = happyShift action_26
action_55 _ = happyReduce_5

action_56 (19) = happyShift action_14
action_56 (20) = happyShift action_15
action_56 (21) = happyShift action_16
action_56 (22) = happyShift action_17
action_56 (23) = happyShift action_18
action_56 (24) = happyShift action_19
action_56 (25) = happyShift action_20
action_56 (33) = happyShift action_21
action_56 (34) = happyShift action_22
action_56 (35) = happyShift action_23
action_56 (36) = happyShift action_24
action_56 (37) = happyShift action_25
action_56 (38) = happyShift action_26
action_56 _ = happyReduce_4

action_57 (19) = happyShift action_14
action_57 (20) = happyShift action_15
action_57 (21) = happyShift action_16
action_57 (22) = happyShift action_17
action_57 (23) = happyShift action_18
action_57 (24) = happyShift action_19
action_57 (25) = happyShift action_20
action_57 (33) = happyShift action_21
action_57 (34) = happyShift action_22
action_57 (35) = happyShift action_23
action_57 (36) = happyShift action_24
action_57 (37) = happyShift action_25
action_57 (38) = happyShift action_26
action_57 _ = happyReduce_3

action_58 (19) = happyShift action_14
action_58 (20) = happyShift action_15
action_58 (21) = happyShift action_16
action_58 (22) = happyShift action_17
action_58 (23) = happyShift action_18
action_58 (24) = happyShift action_19
action_58 (25) = happyShift action_20
action_58 (33) = happyShift action_21
action_58 (34) = happyShift action_22
action_58 (35) = happyShift action_23
action_58 (36) = happyShift action_24
action_58 (37) = happyShift action_25
action_58 (38) = happyShift action_26
action_58 _ = happyReduce_2

action_59 (19) = happyShift action_14
action_59 (20) = happyShift action_15
action_59 (21) = happyShift action_16
action_59 (22) = happyShift action_17
action_59 (23) = happyShift action_18
action_59 (24) = happyShift action_19
action_59 (25) = happyShift action_20
action_59 (33) = happyShift action_21
action_59 (34) = happyShift action_22
action_59 (35) = happyShift action_23
action_59 (36) = happyShift action_24
action_59 (37) = happyShift action_25
action_59 (38) = happyShift action_26
action_59 _ = happyReduce_1

action_60 (19) = happyShift action_14
action_60 (20) = happyShift action_15
action_60 (21) = happyShift action_16
action_60 (22) = happyShift action_17
action_60 (23) = happyShift action_18
action_60 (24) = happyShift action_19
action_60 (25) = happyShift action_20
action_60 (33) = happyShift action_21
action_60 (34) = happyShift action_22
action_60 (35) = happyShift action_23
action_60 (36) = happyShift action_24
action_60 (37) = happyShift action_25
action_60 (38) = happyShift action_26
action_60 _ = happyReduce_7

action_61 (19) = happyShift action_14
action_61 (20) = happyShift action_15
action_61 (21) = happyShift action_16
action_61 (22) = happyShift action_17
action_61 (23) = happyShift action_18
action_61 (24) = happyShift action_19
action_61 (25) = happyShift action_20
action_61 (33) = happyShift action_21
action_61 (34) = happyShift action_22
action_61 (35) = happyShift action_23
action_61 (36) = happyShift action_24
action_61 (37) = happyShift action_25
action_61 (38) = happyShift action_26
action_61 _ = happyReduce_6

action_62 (19) = happyShift action_14
action_62 (20) = happyShift action_15
action_62 (21) = happyShift action_16
action_62 (22) = happyShift action_17
action_62 (23) = happyShift action_18
action_62 (24) = happyShift action_19
action_62 (25) = happyShift action_20
action_62 (28) = happyShift action_75
action_62 (33) = happyShift action_21
action_62 (34) = happyShift action_22
action_62 (35) = happyShift action_23
action_62 (36) = happyShift action_24
action_62 (37) = happyShift action_25
action_62 (38) = happyShift action_26
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (11) = happyShift action_4
action_63 (12) = happyShift action_5
action_63 (13) = happyShift action_6
action_63 (14) = happyShift action_7
action_63 (15) = happyShift action_8
action_63 (16) = happyShift action_9
action_63 (26) = happyShift action_10
action_63 (27) = happyShift action_11
action_63 (29) = happyShift action_12
action_63 (4) = happyGoto action_74
action_63 (9) = happyGoto action_3
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_31

action_65 (19) = happyShift action_14
action_65 (20) = happyShift action_15
action_65 (21) = happyShift action_16
action_65 (22) = happyShift action_17
action_65 (23) = happyShift action_18
action_65 (24) = happyShift action_19
action_65 (25) = happyShift action_20
action_65 (32) = happyShift action_73
action_65 (33) = happyShift action_21
action_65 (34) = happyShift action_22
action_65 (35) = happyShift action_23
action_65 (36) = happyShift action_24
action_65 (37) = happyShift action_25
action_65 (38) = happyShift action_26
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_26

action_67 (13) = happyShift action_40
action_67 (6) = happyGoto action_72
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (11) = happyShift action_4
action_68 (12) = happyShift action_5
action_68 (13) = happyShift action_6
action_68 (14) = happyShift action_7
action_68 (15) = happyShift action_8
action_68 (16) = happyShift action_9
action_68 (26) = happyShift action_10
action_68 (27) = happyShift action_11
action_68 (29) = happyShift action_12
action_68 (4) = happyGoto action_71
action_68 (9) = happyGoto action_3
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (19) = happyShift action_14
action_69 (20) = happyShift action_15
action_69 (21) = happyShift action_16
action_69 (22) = happyShift action_17
action_69 (23) = happyShift action_18
action_69 (24) = happyShift action_19
action_69 (25) = happyShift action_20
action_69 (33) = happyShift action_21
action_69 (34) = happyShift action_22
action_69 (35) = happyShift action_23
action_69 (36) = happyShift action_24
action_69 (37) = happyShift action_25
action_69 (38) = happyShift action_26
action_69 _ = happyReduce_32

action_70 _ = happyReduce_18

action_71 (19) = happyShift action_14
action_71 (20) = happyShift action_15
action_71 (21) = happyShift action_16
action_71 (22) = happyShift action_17
action_71 (23) = happyShift action_18
action_71 (24) = happyShift action_19
action_71 (25) = happyShift action_20
action_71 (32) = happyShift action_78
action_71 (33) = happyShift action_21
action_71 (34) = happyShift action_22
action_71 (35) = happyShift action_23
action_71 (36) = happyShift action_24
action_71 (37) = happyShift action_25
action_71 (38) = happyShift action_26
action_71 _ = happyFail (happyExpListPerState 71)

action_72 _ = happyReduce_28

action_73 _ = happyReduce_24

action_74 (19) = happyShift action_14
action_74 (20) = happyShift action_15
action_74 (21) = happyShift action_16
action_74 (22) = happyShift action_17
action_74 (23) = happyShift action_18
action_74 (24) = happyShift action_19
action_74 (25) = happyShift action_20
action_74 (32) = happyShift action_77
action_74 (33) = happyShift action_21
action_74 (34) = happyShift action_22
action_74 (35) = happyShift action_23
action_74 (36) = happyShift action_24
action_74 (37) = happyShift action_25
action_74 (38) = happyShift action_26
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (11) = happyShift action_4
action_75 (12) = happyShift action_5
action_75 (13) = happyShift action_6
action_75 (14) = happyShift action_7
action_75 (15) = happyShift action_8
action_75 (16) = happyShift action_9
action_75 (26) = happyShift action_10
action_75 (27) = happyShift action_11
action_75 (29) = happyShift action_12
action_75 (4) = happyGoto action_76
action_75 (9) = happyGoto action_3
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (19) = happyShift action_14
action_76 (20) = happyShift action_15
action_76 (21) = happyShift action_16
action_76 (22) = happyShift action_17
action_76 (23) = happyShift action_18
action_76 (24) = happyShift action_19
action_76 (25) = happyShift action_20
action_76 (32) = happyShift action_80
action_76 (33) = happyShift action_21
action_76 (34) = happyShift action_22
action_76 (35) = happyShift action_23
action_76 (36) = happyShift action_24
action_76 (37) = happyShift action_25
action_76 (38) = happyShift action_26
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (32) = happyShift action_79
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_19

action_79 _ = happyReduce_23

action_80 _ = happyReduce_29

happyReduce_1 = happySpecReduce_3  4 happyReduction_1
happyReduction_1 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "+" happy_var_1 happy_var_3
	)
happyReduction_1 _ _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_3  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "-" happy_var_1 happy_var_3
	)
happyReduction_2 _ _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_3  4 happyReduction_3
happyReduction_3 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "*" happy_var_1 happy_var_3
	)
happyReduction_3 _ _ _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "/" happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "%" happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp "<" happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EArithmeticOp ">" happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "==" happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "!=" happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp "<=" happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (EComparisonOp ">=" happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ERelationalOp "&&" happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (ERelationalOp "||" happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_3  4 happyReduction_15
happyReduction_15 _
	(HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ETuple happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_2  4 happyReduction_16
happyReduction_16 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (ENegate happy_var_2
	)
happyReduction_16 _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  4 happyReduction_17
happyReduction_17 (HappyTerminal (TIdentifier happy_var_1))
	 =  HappyAbsSyn4
		 (EVar happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 4 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 6 4 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (EFunDec happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  4 happyReduction_20
happyReduction_20 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  4 happyReduction_21
happyReduction_21 (HappyTerminal (TInt happy_var_1))
	 =  HappyAbsSyn4
		 (EInt happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  4 happyReduction_22
happyReduction_22 (HappyTerminal (TBool happy_var_1))
	 =  HappyAbsSyn4
		 (EBool happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happyReduce 7 4 happyReduction_23
happyReduction_23 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ECase happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_24 = happyReduce 5 4 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn10  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (ELet happy_var_2 happy_var_4
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

happyReduce_29 = happyReduce 5 7 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (ECaseOf happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_30 = happySpecReduce_1  8 happyReduction_30
happyReduction_30 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 ([happy_var_1]
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_2  8 happyReduction_31
happyReduction_31 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1:happy_var_2
	)
happyReduction_31 _ _  = notHappyAtAll 

happyReduce_32 = happyReduce 4 9 happyReduction_32
happyReduction_32 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TIdentifier happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (EVarDec happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_1  10 happyReduction_33
happyReduction_33 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_33 _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_2  10 happyReduction_34
happyReduction_34 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1:happy_var_2
	)
happyReduction_34 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TInt happy_dollar_dollar -> cont 11;
	TBool happy_dollar_dollar -> cont 12;
	TIdentifier happy_dollar_dollar -> cont 13;
	TVarDec -> cont 14;
	TFunDec -> cont 15;
	TSym '(' -> cont 16;
	TSym ')' -> cont 17;
	TSym '=' -> cont 18;
	TSym '<' -> cont 19;
	TSym '>' -> cont 20;
	TSym '+' -> cont 21;
	TSym '-' -> cont 22;
	TSym '*' -> cont 23;
	TSym '/' -> cont 24;
	TSym '%' -> cont 25;
	TSym '!' -> cont 26;
	TLet -> cont 27;
	TIn -> cont 28;
	TCase -> cont 29;
	TOf -> cont 30;
	TSym ',' -> cont 31;
	TEnd -> cont 32;
	TDSym "==" -> cont 33;
	TDSym "!=" -> cont 34;
	TDSym "<=" -> cont 35;
	TDSym ">=" -> cont 36;
	TDSym "&&" -> cont 37;
	TDSym "||" -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
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
   | ECase Expr [Expr] Expr
   | ECaseOf Expr Expr
   | ELet [Expr] Expr
   | ETuple [Expr]
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
