
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MAJORITY-CHECKER.
       AUTHOR. Oscar-Privitera.
       DATE-WRITTEN 2025-04-16.
       DATE-COMPILED 2025-04-16.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-FIRSTNAME  PIC X(20).
       01 WS-AGE        PIC 99.
       01 WS-RESPONSE   PIC X(50).

       PROCEDURE DIVISION.
           DISPLAY "Enter your first name: ".
           ACCEPT WS-FIRSTNAME.

           DISPLAY "Enter your age: ".
           ACCEPT WS-AGE.

           IF WS-AGE >= 18
               STRING "Hello " DELIMITED BY SIZE
                      WS-FIRSTNAME DELIMITED BY SPACE
                      ", you are an adult." DELIMITED BY SIZE
                      INTO WS-RESPONSE
           ELSE
               STRING "Hello " DELIMITED BY SIZE
                      WS-FIRSTNAME DELIMITED BY SPACE
                      ", you are a minor." DELIMITED BY SIZE
                      INTO WS-RESPONSE
           END-IF

           DISPLAY WS-RESPONSE.

           STOP RUN.
