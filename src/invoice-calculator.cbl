       IDENTIFICATION DIVISION.
       PROGRAM-ID. INVOICE-CALCULATOR.
       AUTHOR. Oscar-Privitera.
       DATE-WRITTEN 2025-04-16.
       DATE-COMPILED 2025-04-16.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER. MAC.
       OBJECT-COMPUTER. MAC.


       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NET-PRICE        PIC 9(3)V99.
       01 VAT-RATE         PIC 9V99.
       01 VAT-AMOUNT       PIC 9(3)V99.
       01 TOTAL-PRICE      PIC 9(4)V99.

       01 NET-FORMATTED    PIC Z(3).99.
       01 VAT-FORMATTED    PIC Z(3).99.
       01 TOTAL-FORMATTED  PIC Z(4).99.

       PROCEDURE DIVISION.
           DISPLAY "Enter the net price (before VAT): ".
           ACCEPT NET-PRICE.

           DISPLAY "Enter the VAT rate (e.g. 0.20 for 20%): ".
           ACCEPT VAT-RATE.

           COMPUTE VAT-AMOUNT = NET-PRICE * VAT-RATE.
           COMPUTE TOTAL-PRICE = NET-PRICE + VAT-AMOUNT.

           MOVE NET-PRICE TO NET-FORMATTED.
           MOVE VAT-AMOUNT TO VAT-FORMATTED.
           MOVE TOTAL-PRICE TO TOTAL-FORMATTED.

           DISPLAY "Invoice summary:".
           DISPLAY "Net price : " NET-FORMATTED.
           DISPLAY "VAT       : " VAT-FORMATTED.
           DISPLAY "Total     : " TOTAL-FORMATTED.

           STOP RUN.
