% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("hello.erl").
% hello:helloworld().

-module(hello).

-export([hello_world/0, main/0]).

hello_world() ->
    io:fwrite("Hello, world!~n").
    
main() ->
    hello_world(),
    io:fwrite("2 + 3 = ~B~n", [2 + 3]),
    io:fwrite("a float might be ~f~n", [2.3e3]),
    io:fwrite("11111111 binary is ~B decimal~n", [2#11111111]),
    io:fwrite("FA0B hex is ~B decimal~n", [16#ffa]),
    io:fwrite("~B decimal is ~.16B in hex~n", [1234, 1234])
.