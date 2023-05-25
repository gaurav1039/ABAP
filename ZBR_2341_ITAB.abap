*&---------------------------------------------------------------------*
*& Report ZBR_2341_ITAB
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBR_2341_ITAB.

TYPES: BEGIN OF ty_stud,
  stud_id TYPE i,
  stud_name(20) TYPE c,
  stud_sub(25) TYPE c,
  end of ty_stud.

  data: lt_stud TYPE TABLE OF ty_stud WITH HEADER LINE,
        lt_new TYPE TABLE OF ty_stud.


  clear lt_stud.
  lt_stud-stud_id = 1.
  lt_stud-stud_name = 'Avi'.
  lt_stud-stud_sub = 'English'.
    APPEND lt_stud.


      clear lt_stud.
  lt_stud-stud_id = 3.
  lt_stud-stud_name = 'Rohan'.
  lt_stud-stud_sub = 'Maths'.
    APPEND lt_stud.

      clear lt_stud.
  lt_stud-stud_id = 5.
  lt_stud-stud_name = 'Avinash'.
  lt_stud-stud_sub = 'English'.
    APPEND lt_stud.

    WRITE: lt_stud-stud_id,   lt_stud-stud_name,   lt_stud-stud_sub.

    skip 2.


    loop at lt_stud.
    WRITE: / lt_stud-stud_id,   lt_stud-stud_name,   lt_stud-stud_sub.
    ENDLOOP.

    skip 1.


    loop at lt_stud WHERE stud_sub = 'History'.
    WRITE: / lt_stud-stud_id,   lt_stud-stud_name,   lt_stud-stud_sub.
    ENDLOOP.

    APPEND LINES OF lt_stud TO lt_new.

     loop at lt_stud.
    WRITE: / lt_stud-stud_id,   lt_stud-stud_name,   lt_stud-stud_sub.
    ENDLOOP.
    skip 1.

    DESCRIBE TABLE lt_stud.
    WRITE: / 'No of records', sy-tfill.

    CLEAR lt_stud.
    CLEAR lt_stud[].
    clear lt_new.
    refresh lt_new.
    free lt_new.
