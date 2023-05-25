*&---------------------------------------------------------------------*
*& Report ZBR_2341_SCREEN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBR_2341_SCREEN.

SELECTION-SCREEN: BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: PNAME1 TYPE I DEFAULT 20 OBLIGATORY,
              PNAME2 TYPE I OBLIGATORY.

  PARAMETERS: P_RB1 RADIOBUTTON GROUP GRP1,
               P_RB2 RADIOBUTTON GROUP GRP1 DEFAULT 'X',
               P_RB3 RADIOBUTTON GROUP GRP1,
               P_RB4 RADIOBUTTON GROUP GRP1.

  SELECTION-SCREEN END OF BLOCK B1.

SELECTION-SCREEN: BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-001.
  PARAMETERS: PNAME3 TYPE I DEFAULT 20 OBLIGATORY,
              PNAME4 TYPE I OBLIGATORY.

  PARAMETERS: P_RB5 RADIOBUTTON GROUP GRP2,
               P_RB6 RADIOBUTTON GROUP GRP2 DEFAULT 'X',
               P_RB7 RADIOBUTTON GROUP GRP2,
               P_RB8 RADIOBUTTON GROUP GRP2 .

  SELECTION-SCREEN END OF BLOCK B2.
  START-OF-SELECTION.

DATA A TYPE I.
  IF p_rb1 = 'X'.

    A = pname1 + pname2.
    WRITE: / 'SUM IS', A.

    ELSEIF p_rb1 = 'X'.

    A = pname1 - pname2.
    WRITE: / 'SUNSTRACTION IS', A.

    ELSEIF p_rb1 = 'X'.

    A = pname1 * pname2.
    WRITE: / 'MULTIPLICATION IS', A.

    ELSEIF p_rb1 = 'X'.

    A = pname1 / pname2.
    WRITE: / 'DIVISION IS', A.

    ENDIF.
