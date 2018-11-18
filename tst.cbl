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
       77  B PIC 9(3).
       77  B1 PIC ZZ9.
       01  MARITAL-STATUS PIC 9 VALUE 2.
       88  SINGLE VALUE IS 1.
       88  MARRIED VALUE IS 2.

       PROCEDURE DIVISION.
       MAIN.
      * use paragraph not sections ? MAIN is a paragraph
           PERFORM ADDTst.
           PERFORM BBB.
           PERFORM CONDITIONAL-NAME-TEST.
           PERFORM IF-TEST.
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
       COND-TEST SECTION.
       CONDITIONAL-NAME-TEST.
           IF SINGLE DISPLAY "SINGLE".
           IF MARRIED DISPLAY "MARRIED".

       IF-TEST.
           IF 0=0
               IF 0=0
                   DISPLAY "TRUE"
               ELSE
                   DISPLAY "FALSE"
               END-IF
               DISPLAY "x"
           ELSE
               DISPLAY "F".

       EXIT PROGRAM.
