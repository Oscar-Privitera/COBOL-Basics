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
          05 WS-FIRSTNAME PIC X(20).
          05 WS-LASTNAME  PIC X(20).
          05 WS-AGE       PIC Z(3).
          05 WS-CITY      PIC X(20).

       PROCEDURE DIVISION.
           
           MOVE "Yuka"   TO WS-FIRSTNAME.
           MOVE "Tadaki" TO WS-LASTNAME.
           MOVE 32       TO WS-AGE.
           MOVE "Tokyo"  TO WS-CITY.

           DISPLAY "Before reinitialization :"
           DISPLAY "Firstname : " WS-FIRSTNAME.
           DISPLAY "Lastname : " WS-LASTNAME.
           DISPLAY "Age : " WS-AGE.
           DISPLAY "City : " WS-CITY.

           MOVE SPACES TO WS-FIRSTNAME.
           MOVE SPACES TO WS-LASTNAME.
           MOVE ZEROS  TO WS-AGE.
           MOVE SPACES TO WS-CITY.

           DISPLAY "After MOVE SPACES/ZEROS :"
           DISPLAY "Firstname : " WS-FIRSTNAME.
           DISPLAY "Lastname : " WS-LASTNAME.
           DISPLAY "Age : " WS-AGE.
           DISPLAY "City : " WS-CITY.

           INITIALIZE PERSON.

           DISPLAY "After INITIALIZE :"
           DISPLAY "Firstname : " WS-FIRSTNAME.
           DISPLAY "Lastname : " WS-LASTNAME.
           DISPLAY "Age : " WS-AGE.
           DISPLAY "City : " WS-CITY.

           STOP RUN.
