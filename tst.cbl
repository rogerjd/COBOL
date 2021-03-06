      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
      * div order is fixed, sections seem to be too
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.
       OBJECT-COMPUTER.
       SPECIAL-NAMES.
       INPUT-OUTPUT SECTION.
       DATA  DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  n PIC 99.
       01  m PIC XX.
       01  q pic 99V99.
      *REDEFINES
       01  Z PIC X(6).
       01  Z2 REDEFINES Z.
       05  Z2a PIC XX.
       05  Z2b PIC X(4).
       77  B PIC 9(3).
       77  B1 PIC ZZ9.
       77  MSG PIC X(25).
       01  MARITAL-STATUS PIC 9 VALUE 2.
       88  SINGLE VALUE IS 1.
       88  MARRIED VALUE IS 2.

       01  I PIC 9 VALUE 1.
       01  I2 REDEFINES I PIC X.
       01  I3 PIC XX VALUE "Z1".
       01  I4 REDEFINES I3 PIC 9.

       PROCEDURE DIVISION.
       MAIN.
      * use paragraph not sections ? MAIN is a paragraph
           PERFORM HELLO.
           PERFORM ADD-TEST THRU DIV-TEST.
           PERFORM CONDITIONAL-NAME-TEST THRU CLASS-TEST.
           PERFORM VARYING-TST THRU TIMES-TST.
           PERFORM REDEFINES-TST.
           DISPLAY 'MAIN END'.
           STOP RUN.

       BEGIN SECTION.
       HELLO.
           DISPLAY "Hello world".

       MATH SECTION.
       ADD-TEST.
           ADD 3 to B.
           MOVE B to B1.
           DISPLAY B, B1.
       DIV-TEST.
           DIVIDE 5 by 2 GIVING n REMAINDER q.
           DISPLAY n, " ", q.

       COND-TEST SECTION.
       CONDITIONAL-NAME-TEST.
           IF SINGLE DISPLAY "SINGLE".
           IF MARRIED DISPLAY "MARRIED".

       IF-TEST.
      *NESTED-IF.  //PARAGRAPH
      * ELSE paired with previous IF-TEST
      * last period ends IF 'sentence'
      * can use END-IF  probably best (else is part of if, so end-if encloses both
           IF 0=0
               IF 0=0
                   DISPLAY "TRUE"
               ELSE
                   DISPLAY "FALSE"
               END-IF
               DISPLAY "x"
           ELSE
               DISPLAY "F"
           END-IF.

       CLASS-TEST.
      * X in 9  todo
           DISPLAY "Class Test".
           DISPLAY n.  *> orig value (eg: 2)
           ACCEPT n.   *> tt
           DISPLAY n.  *> 00
           IF n IS NUMERIC THEN
               DISPLAY "numeric"
           ELSE
               DISPLAY "not numeric".

           MOVE '1A' to m.
           IF m IS NUMERIC
               DISPLAY "numeric"
           ELSE
               DISPLAY 'not numeric'.


       LOOP SECTION.
           VARYING-TST.
               DISPLAY "PERFORM UNTIL."
               PERFORM DISPLAY-PARA VARYING n from 1 by 1 UNTIL n > 3.
           TIMES-TST.
               DISPLAY "PERFORM TIMES."
               PERFORM DISPLAY-PARA 5 TIMES.

       REDEFINES-RENAMES SECTION.

           REDEFINES-TST.
               DISPLAY "REDEFINES".
               DISPLAY I, " ", I2.
               DISPLAY I3, " ", I4.
      *        ADD 1 to I4.  cant add 1 to alpha (get exit code 1)
               DISPLAY I4.

               MOVE 'ABDDEF' TO Z.
               DISPLAY Z, ' ', Z2a, ' ', Z2b.

       UTILS SECTION.
           DISPLAY-PARA.
               DISPLAY n.

      *END PROGRAM "YOUR-PROGRAM-NAME".
       EXIT PROGRAM.
