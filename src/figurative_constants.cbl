       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIGURATIVE-CONSTANTS.
       DATE-WRITTEN. 2025-04-16.
       DATE-COMPILED. 2025-04-16.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERSON.
          05 FIRSTNAME PIC X(20).
          05 LASTNAME  PIC X(20).
          05 AGE       PIC Z(3).
          05 CITY      PIC X(20).

       PROCEDURE DIVISION.
           
           MOVE "Yuka"   TO FIRSTNAME.
           MOVE "Tadaki" TO LASTNAME.
           MOVE 32       TO AGE.
           MOVE "Tokyo"  TO CITY.

           DISPLAY "Before reinitialization :"
           DISPLAY "Firstname : " FIRSTNAME.
           DISPLAY "Lastname : " LASTNAME.
           DISPLAY "Age : " AGE.
           DISPLAY "City : " CITY.

           MOVE SPACES TO FIRSTNAME.
           MOVE SPACES TO LASTNAME.
           MOVE ZEROS  TO AGE.
           MOVE SPACES TO CITY.

           DISPLAY "After MOVE SPACES/ZEROS :"
           DISPLAY "Firstname : " FIRSTNAME.
           DISPLAY "Lastname : " LASTNAME.
           DISPLAY "Age : " AGE.
           DISPLAY "City : " CITY.

           INITIALIZE PERSON.

           DISPLAY "After INITIALIZE :"
           DISPLAY "Firstname : " FIRSTNAME.
           DISPLAY "Lastname : " LASTNAME.
           DISPLAY "Age : " AGE.
           DISPLAY "City : " CITY.

           STOP RUN.
