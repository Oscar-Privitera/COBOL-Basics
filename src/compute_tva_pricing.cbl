       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPUTE-TVA-PRICING.
       AUTHOR. Oscar-Privitera.
       DATE-WRITTEN 2025-04-16.
       DATE-COMPILED 2025-04-16.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NET-PRICE     PIC 9(4)V99.
       01 WS-VAT-RATE      PIC 9V99.
       01 WS-GROSS-PRICE   PIC Z(4).99.

       PROCEDURE DIVISION.
           DISPLAY "Enter the net price (before VAT): ".
           ACCEPT WS-NET-PRICE.

           DISPLAY "Enter the VAT rate (e.g. 1.2 for 20%): ".
           ACCEPT WS-VAT-RATE.

           COMPUTE WS-GROSS-PRICE = WS-NET-PRICE * WS-VAT-RATE.
           DISPLAY "The total price including VAT is: " WS-GROSS-PRICE.

           STOP RUN.
