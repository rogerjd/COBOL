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
       PROCEDURE DIVISION.
       MAIN.
      * use paragraph not sections ? MAIN is a paragraph
           PERFORM ADDTst.
           PERFORM BBB
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
       END PROGRAM YOUR-PROGRAM-NAME.
