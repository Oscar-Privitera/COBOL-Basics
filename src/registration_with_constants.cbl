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
       78 MAX-AGE VALUE 130.
       01 APP-INFOS PIC X(50).

       *> Structure 
       01 PERSON.
          05 FIRSTNAME PIC X(20).
          05 LASTNAME PIC X(20).
          05 AGE PIC Z(3).
          05 CITY PIC X(20).
       
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

           MOVE "Oscar" TO FIRSTNAME.
           MOVE "Arasaka" TO LASTNAME.
           MOVE 24 TO AGE.
           MOVE "Paris" TO CITY.

           DISPLAY "Firstname : "  FIRSTNAME.
           DISPLAY "Lastname : " LASTNAME.
           DISPLAY "Age : " AGE.
           DISPLAY "City : " CITY.

           DISPLAY MAX-AGE.

           STOP RUN.
           