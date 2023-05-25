*&---------------------------------------------------------------------*
*& Report ZBR_2341_SCREEN3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBR_2341_SCREEN3.

PARAMETERS: A TYPE I DEFAULT 20,
            B TYPE I,
            C TYPE I.

SELECTION-SCREEN SKIP 2.

  SELECTION-SCREEN PUSHBUTTON 6(12) B1 USER-COMMAND FC1.
  SELECTION-SCREEN PUSHBUTTON 21(12) B2 USER-COMMAND FC2.
  SELECTION-SCREEN SKIP 2.
  SELECTION-SCREEN PUSHBUTTON 10(12) B3 USER-COMMAND FC3.

  INITIALIZATION.
  B1 = 'ADD'.
  B2 = 'CLEAR'.
  B3 = 'EXIT'.

  AT SELECTION-SCREEN.
     CASE SY-ucomm.
       WHEN 'FC1'.
         C = A + B.
       WHEN 'FC2'.
         CLEAR: A, B, C.
       WHEN 'FC3'.
         LEAVE PROGRAM.
         ENDCASE.
