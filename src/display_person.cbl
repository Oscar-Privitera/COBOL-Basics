       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISPLAY-PERSON.
       AUTHOR. Oscar-Privitera.
       DATE-WRITTEN 2025-04-16
       DATE-COMPILED 2025-04-16

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 PERSON.
           05 WS-LASTNAME PIC X(20).
           05 WS-FIRSTNAME PIC X(20).
           05 WS-AGE PIC 99.
           05 LOCATION.
              10 STREET PIC X(30).
              10 WS-CITY PIC X(20).
              10 ZIP-CODE PIC X(5).

       PROCEDURE DIVISION.
           MOVE "Arasaka" TO WS-LASTNAME.
           MOVE "Oscar" TO WS-FIRSTNAME.
           MOVE 20 TO WS-AGE.
           MOVE "Street of Prince" TO STREET.
           MOVE "Paris" TO WS-CITY.
           MOVE "75001" TO ZIP-CODE.

           DISPLAY "Lastname : " WS-LASTNAME.
           DISPLAY "Firstname : " WS-FIRSTNAME.
           DISPLAY "Age : " WS-AGE.
           DISPLAY "Street : " STREET.
           DISPLAY "City : " WS-CITY.
           DISPLAY "Zip-Code : " ZIP-CODE.

           STOP RUN.
