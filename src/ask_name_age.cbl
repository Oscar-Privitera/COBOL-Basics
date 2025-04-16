       IDENTIFICATION DIVISION.
       PROGRAM-ID. ASK-NAME-AGE.
       AUTHOR. Oscar-Privitera.
       DATE-WRITTEN 2025-04-16.
       DATE-COMPILED 2025-04-16.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FIRSTNAME   PIC X(20).
       01 AGE         PIC 99.
       01 RESPONSE    PIC X(50).

       PROCEDURE DIVISION.
           DISPLAY "Enter your first name: ".
           ACCEPT FIRSTNAME.

           DISPLAY "Enter your age: ".
           ACCEPT AGE.

           STRING "Hello " DELIMITED BY SIZE
                  FIRSTNAME DELIMITED BY SPACE
                  ", you are " DELIMITED BY SIZE
                  AGE DELIMITED BY SIZE
                  " years old." DELIMITED BY SIZE
                  INTO RESPONSE

           DISPLAY RESPONSE.

           STOP RUN.
