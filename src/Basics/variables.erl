% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("variables.erl").
% variables:return_four().

-module(variables).

-export([main/0, return_four/0, return_five/0, return_house/0, return_my_home/0]).

return_four() ->
    4.
    
return_five() ->
    Num = 5,
    Num.

% An atom is a variable that is equal to its value
return_house() ->
    house.
return_my_home() ->
    'my home'.
    
main() ->
    return_my_home().