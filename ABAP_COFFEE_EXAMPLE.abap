*&---------------------------------------------------------------------*
*& Report ABAP_COFFEE_EXAMPLE
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ABAP_COFFEE_EXAMPLE.

CLASS lcl_coffee DEFINITION.

  PUBLIC SECTION.
    METHODS refill.
    METHODS drink.
    DATA empty TYPE abap_bool.

ENDCLASS.

CLASS lcl_coffee IMPLEMENTATION.

    METHOD refill.
      empty = abap_true.
    ENDMETHOD.

    METHOD drink.
      empty = abap_false.
    ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

DATA(obj_lcl_coffee) = NEW lcl_coffee( ).

obj_lcl_coffee->refill( ).

IF obj_lcl_coffee->empty = abap_true.

  obj_lcl_coffee->refill( ).

ELSE.

  obj_lcl_coffee->drink( ).

ENDIF.