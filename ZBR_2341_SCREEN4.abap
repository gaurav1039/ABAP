*&---------------------------------------------------------------------*
*& Report ZBR_2341_SCREN4
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBR_2341_SCREEN4.

DATA: LV_KUNNR TYPE kna1-KUNNR,
      LV_MATNR TYPE mara-matnr.

SELECTION-SCREEN BEGIN OF BLOCK B1 WITH FRAME TITLE TEXT-001.
  PARAMETERS: P_MAT RADIOBUTTON GROUP GRP1 USER-COMMAND sel DEFAULT 'X',
              P_CUST RADIOBUTTON GROUP GRP1.
  SELECTION-SCREEN END OF BLOCK B1.

  SELECTION-SCREEN BEGIN OF BLOCK B2 WITH FRAME TITLE TEXT-002.
    SELECT-OPTIONS: LS_KUNNR FOR LV_KUNNR MODIF ID T11 no INTERVALS,
                    LS_MATNR FOR lv_matnr MODIF ID T21.
    PARAMETERS a TYPE i MODIF ID t31.
    SELECTION-SCREEN END OF BLOCK B2.


    AT SELECTION-SCREEN OUTPUT.

      IF p_mat = abap_true.
        LOOP AT SCREEN.
          IF screen-group1 = 'T21' or
             screen-group1 = 'T31'.
            SCREEN-active = 1.
            MODIFY SCREEN.
          ELSEIF screen-group1(1) = 'T'.
            screen-active = 0.
            MODIFY SCREEN.
            ENDIF.
            ENDLOOP.

      ELSEIF p_CUST = abap_true.
        LOOP AT SCREEN.
          IF screen-group1 = 'T11'.
            SCREEN-active = 1.
            MODIFY SCREEN.
          ELSEIF screen-group1(1) = 'T'.
            screen-active = 0.
            MODIFY SCREEN.
            ENDIF.
            ENDLOOP.

            ENDIF.
