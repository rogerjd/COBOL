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
       01  q pic 99V99.
       77  B PIC 9(3).
       77  B1 PIC ZZ9.
       77  MSG PIC X(25).
       01  MARITAL-STATUS PIC 9 VALUE 2.
       88  SINGLE VALUE IS 1.
       88  MARRIED VALUE IS 2.

       PROCEDURE DIVISION.
       MAIN.
      * use paragraph not sections ? MAIN is a paragraph
           PERFORM ADDTst THRU DivTst.
           PERFORM BBB.
           PERFORM CONDITIONAL-NAME-TEST THRU IF-TEST.
           PERFORM VARYING-TST THRU TIMES-TST.
           DISPLAY 'MAIN END'.
           STOP RUN.
       xzz.
       tst SECTION.
       BBB.
           DISPLAY "Hello world".

       math SECTION.
       ADDTst.
           ADD 3 to B.
           MOVE B to B1.
           DISPLAY B, B1.
       DivTst.
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

       LOOP SECTION.
           VARYING-TST.
               DISPLAY "PERFORM UNTIL."
               PERFORM DISPLAY-PARA VARYING n from 1 by 1 UNTIL n > 3.
           TIMES-TST.
               DISPLAY "PERFORM TIMES."
               PERFORM DISPLAY-PARA 5 TIMES.

       UTILS SECTION.
           DISPLAY-PARA.
               DISPLAY n.

      *END PROGRAM "YOUR-PROGRAM-NAME".
       EXIT PROGRAM.
