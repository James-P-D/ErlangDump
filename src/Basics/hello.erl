% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("hello.erl").
% hello:helloworld().

-module(hello).

-export([hello_world/0, main/0]).

hello_world() ->
    io:fwrite("Hello, world!").
    
main() ->
    hello_world().