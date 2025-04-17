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
           05 LASTNAME PIC X(20).
           05 FIRSTNAME PIC X(20).
           05 AGE PIC 99.
           05 LOCATION.
              10 STREET PIC X(30).
              10 CITY PIC X(20).
              10 ZIP-CODE PIC X(5).

       PROCEDURE DIVISION.
           MOVE "Arasaka" TO LASTNAME.
           MOVE "Oscar" TO FIRSTNAME.
           MOVE 20 TO AGE.
           MOVE "Street of Prince" TO STREET.
           MOVE "Paris" TO CITY.
           MOVE "75001" TO ZIP-CODE.

           DISPLAY "Lastname : " LASTNAME.
           DISPLAY "Firstname : " FIRSTNAME.
           DISPLAY "Age : " AGE.
           DISPLAY "Street : " STREET.
           DISPLAY "City : " CITY.
           DISPLAY "Zip-Code : " ZIP-CODE.

           STOP RUN.
