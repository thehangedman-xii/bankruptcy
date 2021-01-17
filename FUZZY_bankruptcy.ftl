PROJECT {
  NAME       = FUZZY_bankruptcy.ftl;
  TITLE      =êóðñà÷2;
  DATEFORMAT = YYYY.DD.MM;
  LASTCHANGE = 2021.17.01;
  CREATED    = 2020.08.12;
  SHELL      = ON_LINE;
  SHELLOPTIONS {
    ONLINE_REFRESHTIME  = 55;
    ONLINE_TIMEOUTCOUNT = 1100;
    ONLINE_CODE         = OFF;
    ONLINE_TRACE_BUFFER = (OFF, PAR(0));
    COMMENTS            = ON;
    FTL_BUFFER          = (OFF, PAR(1));
    PASSWORD            = OFF;
    PUBLIC_IO           = ON;
    FAST_CMBF           = OFF;
    FAST_COA            = ON;
    BTYPE               = DOUBLE;
    C_TYPE              = ANSI;
  } /* SHELLOPTIONS */
  MODEL {
    VARIABLE_SECTION {
      LVAR {
        NAME       = Debtor;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(20.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(10.0);
        RESOLUTION = XGRID(2.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (0), BLUE (128);
        INPUT      = CMBF;
        POS        = -550, 11;
        TERM {
          TERMNAME = Few;
          POINTS   = (0.0, 0.0),
                     (6.6665, 1.0),
                     (12.149, 0.0),
                     (20.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = ALot;
          POINTS   = (0.0, 0.0),
                     (6.6665, 0.0),
                     (13.3335, 1.0),
                     (20.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Econoics;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (255), GREEN (0), BLUE (0);
        INPUT      = CMBF;
        POS        = -547, -171;
        TERM {
          TERMNAME = Favorable;
          POINTS   = (0.0, 0.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Neutral;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = Unfavorable;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Income;
        BASEVAR    = Units;
        LVRANGE    = MIN(7.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(9.3), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (128), BLUE (128);
        INPUT      = CMBF;
        POS        = -549, 38;
        TERM {
          TERMNAME = Beggar;
          POINTS   = (7.0, 0.0),
                     (10.0, 1.0),
                     (12.752, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Poor;
          POINTS   = (7.0, 0.0),
                     (10.0, 0.0),
                     (17.0, 1.0),
                     (25.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = Prosperity;
          POINTS   = (7.0, 0.0),
                     (20.0, 0.0),
                     (40.0, 1.0),
                     (60.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
        TERM {
          TERMNAME = Substantive;
          POINTS   = (7.0, 0.0),
                     (53.5, 0.0),
                     (69.0, 1.0),
                     (90.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (128), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Rich;
          POINTS   = (7.0, 0.0),
                     (84.5, 0.0),
                     (99.0, 1.0),
                     (100.0, 1.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (128);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Loan;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(25.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (255), GREEN (0), BLUE (128);
        INPUT      = CMBF;
        POS        = -550, 70;
        TERM {
          TERMNAME = low;
          POINTS   = (0.0, 0.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Average;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = high;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Politics;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (128), BLUE (0);
        INPUT      = CMBF;
        POS        = -548, -140;
        TERM {
          TERMNAME = Favorable;
          POINTS   = (0.0, 1.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Neutral;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = Unfavorable;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 1.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Population;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (128), GREEN (0), BLUE (0);
        INPUT      = CMBF;
        POS        = -550, -107;
        TERM {
          TERMNAME = Lost;
          POINTS   = (0.0, 0.0),
                     (33.334, 1.0),
                     (66.666, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Growth;
          POINTS   = (0.0, 0.0),
                     (33.334, 0.0),
                     (66.666, 1.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Progress;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(37.5);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (0), BLUE (255);
        INPUT      = CMBF;
        POS        = -546, -83;
        TERM {
          TERMNAME = low;
          POINTS   = (0.0, 0.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = Average;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = high;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = (S_SHAPE, PAR (0.8));
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Bankruptcy;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (0), BLUE (0);
        OUTPUT     = COM;
        POS        = 124, -79;
        TERM {
          TERMNAME = low;
          POINTS   = (0.0, 0.0),
                     (10.0, 1.0),
                     (49.852, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = medium;
          POINTS   = (0.0, 0.0),
                     (10.31, 0.0),
                     (25.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = high;
          POINTS   = (0.0, 0.0),
                     (24.89, 0.0),
                     (40.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = External_Out;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (128), GREEN (128), BLUE (128);
        OUTPUT     = COM;
        POS        = -214, -223;
        TERM {
          TERMNAME = low;
          POINTS   = (0.0, 1.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = medium;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = high;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
      LVAR {
        NAME       = Internal_Out;
        BASEVAR    = Units;
        LVRANGE    = MIN(0.0), MAX(100.0),
                     MINDEF(0), MAXDEF(65535),
                     DEFAULT_OUTPUT(50.0);
        RESOLUTION = XGRID(10.0), YGRID(0.1),
                     SHOWGRID (ON), SNAPTOGRID(OFF);
        COLOR      = RED (0), GREEN (255), BLUE (255);
        OUTPUT     = COM;
        POS        = -221, 88;
        TERM {
          TERMNAME = low;
          POINTS   = (0.0, 0.0),
                     (25.0, 1.0),
                     (50.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (255), GREEN (0), BLUE (0);
        }
        TERM {
          TERMNAME = medium;
          POINTS   = (0.0, 0.0),
                     (25.0, 0.0),
                     (50.0, 1.0),
                     (75.0, 0.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (128), BLUE (0);
        }
        TERM {
          TERMNAME = high;
          POINTS   = (0.0, 0.0),
                     (50.0, 0.0),
                     (75.0, 1.0),
                     (100.0, 0.0);
          SHAPE    = LINEAR;
          COLOR    = RED (0), GREEN (0), BLUE (255);
        }
      }  /* LVAR */
    }  /* VARIABLE_SECTION */

    OBJECT_SECTION {
      RULEBLOCK {
        NAME        = External;
        INPUT       = Econoics, Politics, Population, Progress;
        OUTPUT      = External_Out;
        AGGREGATION = (MIN_MAX, PAR (0.0));
        RESULT_AGGR = MAX;
        POS         = -336, -168;
        RULES {
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = low   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = low   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = low   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = low   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Favorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = low   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Neutral
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = high   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Favorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Neutral
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = high   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = Average
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Lost
            AND Progress = high
          THEN  External_Out = high   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = low
          THEN  External_Out = medium   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = Average
          THEN  External_Out = high   WITH 1.000;
          IF    Econoics = Unfavorable
            AND Politics = Unfavorable
            AND Population = Growth
            AND Progress = high
          THEN  External_Out = high   WITH 1.000;
        }  /* RULES */
      }  /* RULEBLOCK */
      RULEBLOCK {
        NAME        = Total;
        INPUT       = External_Out, Internal_Out;
        OUTPUT      = Bankruptcy;
        AGGREGATION = (MIN_MAX, PAR (0.0));
        RESULT_AGGR = BSUM;
        POS         = -91, -100;
        RULES {
          IF    External_Out = low
            AND Internal_Out = low
          THEN  Bankruptcy = low   WITH 1.000;
          IF    External_Out = low
            AND Internal_Out = medium
          THEN  Bankruptcy = low   WITH 1.000;
          IF    External_Out = low
            AND Internal_Out = high
          THEN  Bankruptcy = medium   WITH 1.000;
          IF    External_Out = medium
            AND Internal_Out = low
          THEN  Bankruptcy = low   WITH 1.000;
          IF    External_Out = medium
            AND Internal_Out = medium
          THEN  Bankruptcy = medium   WITH 1.000;
          IF    External_Out = medium
            AND Internal_Out = high
          THEN  Bankruptcy = high   WITH 1.000;
          IF    External_Out = high
            AND Internal_Out = low
          THEN  Bankruptcy = medium   WITH 1.000;
          IF    External_Out = high
            AND Internal_Out = medium
          THEN  Bankruptcy = high   WITH 1.000;
          IF    External_Out = high
            AND Internal_Out = high
          THEN  Bankruptcy = high   WITH 1.000;
        }  /* RULES */
      }  /* RULEBLOCK */
      RULEBLOCK {
        NAME        = Internal;
        INPUT       = Debtor, Income, Loan;
        OUTPUT      = Internal_Out;
        AGGREGATION = (MIN_MAX, PAR (0.0));
        RESULT_AGGR = MAX;
        POS         = -338, 0;
        RULES {
          IF    Debtor = Few
            AND Income = Beggar
            AND Loan = low
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Beggar
            AND Loan = Average
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Beggar
            AND Loan = high
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Poor
            AND Loan = low
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Poor
            AND Loan = Average
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Poor
            AND Loan = high
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Prosperity
            AND Loan = low
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Prosperity
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Prosperity
            AND Loan = high
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Substantive
            AND Loan = low
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = Few
            AND Income = Substantive
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Substantive
            AND Loan = high
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Rich
            AND Loan = low
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Rich
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = Few
            AND Income = Rich
            AND Loan = high
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Beggar
            AND Loan = low
          THEN  Internal_Out = low   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Beggar
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Beggar
            AND Loan = high
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Poor
            AND Loan = low
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Poor
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Poor
            AND Loan = high
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Prosperity
            AND Loan = low
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Prosperity
            AND Loan = Average
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Prosperity
            AND Loan = high
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Substantive
            AND Loan = low
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Substantive
            AND Loan = Average
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Substantive
            AND Loan = high
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Rich
            AND Loan = low
          THEN  Internal_Out = medium   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Rich
            AND Loan = Average
          THEN  Internal_Out = high   WITH 1.000;
          IF    Debtor = ALot
            AND Income = Rich
            AND Loan = high
          THEN  Internal_Out = high   WITH 1.000;
        }  /* RULES */
      }  /* RULEBLOCK */
    }  /* OBJECT_SECTION */
  }  /* MODEL */
}  /* PROJECT */ 
/* fuzzyTECH 5.54d Professional Edition */
Ýû¡€Ûé}à
  ¹Ðþ²³îâ¦¹ = 20210117065106UT;
}  /* ONLINE */

NEUROFUZZY {
  LEARNRULE     =RandomMethod;
  STEPWIDTHDOS  = 0.100000;
  STEPWIDTHTERM = 1.000000;
  MAXDEVIATION  = (50.000000, 1.000000, 0.750000);
  AVGDEVIATION  = 0.100000;
  MAXSTEPS      = 100;
  NEURONS       = 1;
  DATASEQUENCE  = RANDOM;
  UPDATEDBGWIN  = OFF;
}  /* NEUROFUZZY */