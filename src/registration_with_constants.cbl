       IDENTIFICATION DIVISION.
       PROGRAM-ID. REGISTRATION-WITH-CONSTANTS.
       DATE-WRITTEN. 2025-04-16.
       DATE-COMPILED. 2025-04-16.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       78 APP-NAME VALUE "People Manager".
       78 APP-VERSION VALUE "v1.0.0".
       78 DEFAULT-COUNTRY VALUE "France".
       78 MAX-WS-AGE VALUE 130.
       01 APP-INFOS PIC X(50).

       *> Structure 
       01 PERSON.
          05 WS-FIRSTNAME PIC X(20).
          05 WS-LASTNAME PIC X(20).
          05 WS-AGE PIC Z(3).
          05 WS-CITY PIC X(20).
       
       PROCEDURE DIVISION.
           STRING "Application : " DELIMITED BY SIZE
                  APP-NAME DELIMITED BY SIZE
                  " - " DELIMITED BY SIZE
                  APP-VERSION DELIMITED BY SIZE
                  " (" DELIMITED BY SIZE
                  DEFAULT-COUNTRY DELIMITED BY SPACE
                  ")" DELIMITED BY SIZE
                  INTO APP-INFOS.
           DISPLAY APP-INFOS.

           MOVE "Oscar" TO WS-FIRSTNAME.
           MOVE "Arasaka" TO WS-LASTNAME.
           MOVE 24 TO WS-AGE.
           MOVE "Paris" TO WS-CITY.

           DISPLAY "Firstname : "  WS-FIRSTNAME.
           DISPLAY "Lastname : " WS-LASTNAME.
           DISPLAY "Age : " WS-AGE.
           DISPLAY "City : " WS-CITY.

           DISPLAY MAX-WS-AGE.

           STOP RUN.
