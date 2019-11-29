% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("concurrency.erl"). concurrency:main().

-module(concurrency).
                 
-compile(export_all).

main() -> 
    %spawner(),
    %spawner(),
    %spawner(),
    for_spawner(100, 0),
    for_spawner(100, 0)
    .
    
get_id(M) ->
    io:fwrite("ID : ~p\n", [M]),
    io:fwrite("ID : ~p\n", [M]),
    io:fwrite("ID : ~p\n", [M]),
    io:fwrite("ID : ~p\n", [M]),
    io:fwrite("ID : ~p\n", [M])
    .
    
spawner() ->
    spawn(fun() -> get_id([self()]) end).
    
for(0, _) ->
    ok;
for(Max, Min) when Max > 0 ->
    io:fwrite("~p Num: ~p\n", [self(), Max]),
    for(Max - 1, Min).
    
for_spawner(Max, Min) ->
    spawn(fun() -> for(Max, Min) end).