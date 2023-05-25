*&---------------------------------------------------------------------*
*& Report ZBR_2341_SCREEN2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbr_2341_screen2.

PARAMETERS: a TYPE i,
            b TYPE i.

DATA: c TYPE i.

PARAMETERS: p_c1 AS CHECKBOX USER-COMMAND fc1,
            p_c2 AS CHECKBOX USER-COMMAND fc2,
            p_c3 AS CHECKBOX USER-COMMAND fc3.

AT SELECTION-SCREEN.
  CASE sy-ucomm.
    WHEN 'FC1'.
      MESSAGE 'ADDITION IS SELECTED' TYPE 'I'.
    WHEN 'FC2'.
      MESSAGE 'SUBSTRACTIN IS SELECTED' TYPE 'I'.
    WHEN 'FC3'.
      MESSAGE 'MULTIPLICATION IS SELECTED' TYPE 'I'.
  ENDCASE.

START-OF-SELECTION.
  IF P_C1 = 'X'.
    C = A + B.
    WRITE:  'ADDITION IS', C.
   ENDIF.

     IF P_C2 = 'X'.
    C = A - B.
    WRITE: 'SUBSTRACTION IS', C.
   ENDIF.

     IF P_C3 = 'X'.
    C = A * B.
    WRITE: 'MULTIPLICATION IS', C.
   ENDIF.
