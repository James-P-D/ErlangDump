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
    dice_roll/0,
    same_value_and_type/2,
    diff_value_and_type/2,
    same_value_disregard_type/2,
    not_equal/2,
    at_school/1
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

same_value_and_type(A, B) ->
    A =: B.
% same_value_and_type(4, 4.0) is false    

diff_value_and_type(A, B) ->
    A =/= B.
% diff_value_and_type(4, 4.0) is true

same_value_disregard_type(A, B) ->
    A == B.
% same_value_disregard_type(4, 4.0) is true   

not_equal(A, B) ->
    A /=B.

% > < >= =< and or not xor
     
at_school(Age) ->
    (Age >=5) and (Age =<16).
    
main() ->
    add(2, 4, 6, 8).