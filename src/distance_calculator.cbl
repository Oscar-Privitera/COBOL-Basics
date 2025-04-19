       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISTANCE-CALCULATOR.
       AUTHOR. Oscar Privitera.
       DATE-WRITTEN 2025-04-19.
       DATE-COMPILED 2025-04-19.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       *> Coordinates of points A(x1, y1) and B(x2, y2)
       01 X1           PIC 9      VALUE 3.
       01 Y1           PIC 9      VALUE 4.
       01 X2           PIC 9      VALUE 0.
       01 Y2           PIC 9      VALUE 0.

       *> For intermediate calculations
       01 DELTA-X      PIC S9(4).
       01 DELTA-Y      PIC S9(4).
       01 DIST-SQUARED USAGE COMP-2.
       01 DISTANCE     USAGE COMP-2.

       *> Formatted output variable
       01 DISPLAY-DIST PIC Z(3).99.

       PROCEDURE DIVISION.
           *> Calculate difference between coordinates
           COMPUTE DELTA-X = X2 - X1
           COMPUTE DELTA-Y = Y2 - Y1

           *> Apply Pythagorean theorem: (Δx)^2 + (Δy)^2
           COMPUTE DIST-SQUARED = (DELTA-X ** 2) + (DELTA-Y ** 2)

           *> Get the square root
           COMPUTE DISTANCE = FUNCTION SQRT(DIST-SQUARED)

           *> Move result into a displayable variable
           MOVE DISTANCE TO DISPLAY-DIST

           DISPLAY "Point A coordinates : (" X1 ", " Y1 ")"
           DISPLAY "Point B coordinates : (" X2 ", " Y2 ")"
           DISPLAY "Distance between A and B : " DISPLAY-DIST

           STOP RUN.
