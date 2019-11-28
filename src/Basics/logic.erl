% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("maths.erl").

-module(maths).

-export([
    main/0,
    add/2,
    add/3,
    add/4,
    multiply/2,
    divide/2,
    integer_division/2,
    integer_modulus/2,
    logarithm/1,
    squared/1,
    dice_roll/0
    ]).

add(A, B) ->
    A + B.

add(A, B, C) ->
    A + B + C.

add(A, B, C, D) ->
    add(A, add(B, C, D)).

multiply(A, B) ->
    A * B.

divide(A, B) ->
    A / B.

integer_division(A, B) ->
    A div B.

integer_modulus(A, B) ->
    A rem B.

logarithm(X) ->
    math:log(X).
    
squared(X) ->
    math:pow(X, 2).
    
dice_roll() ->
    rand:uniform(6).
    
main() ->
    add(2, 4, 6, 8).