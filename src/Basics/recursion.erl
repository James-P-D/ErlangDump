% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("recursion.erl").

-module(recursion).
                 
-compile(export_all).

factorial(N) when N == 0 ->
    1;                          % Note the semi-colon !
factorial(N) when N > 0 ->
    N * factorial(N - 1).
    
total_array([]) ->
    0;
total_array([Head|Tail]) ->
    Head + total_array(Tail).

double_array([]) ->
    [];
double_array([Head|Tail]) ->
    [Head * 2|double_array(Tail)].

tail_rec_total_array(L) ->
    tail_rec_total_array(L, 0).
tail_rec_total_array([], N) -> 
    N;
tail_rec_total_array([Head|Tail], N) ->
    %io.fwrite("N: ~p\n", [N]),
    tail_rec_total_array(Tail, Head + N).
    
main() -> 
    %factorial(5)
    %total_array([1, 2, 3])
    %double_array([1, 2, 3])
    %tail_rec_total_array([1, 2, 3])
    .
    
