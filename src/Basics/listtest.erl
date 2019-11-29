% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("listtest.erl").

-module(listtest).
                 
-compile(export_all).

concat_lists(L1, L2) ->
    L1 ++ L2.

subtract_list(L1, L2) ->
    L1 -- L2.
    
head_only(L) ->
    hd(L).
    
tail_only(L) ->
    tl(L).

head_only2(L) ->
    [Head|_] = L,
    Head.
    
tail_only2(L) ->
    [_|Tail] = L,
    Tail.

add_to_start_of_list(L, X) ->
    [X|L].

double_list(L) ->
    NewList = [2*N || N <- L],
    NewList.

get_even(L) ->
    [N || N <- L, N rem 2 == 0].

get_old_people_from_tuple_list(People) ->
    [{Name, Age} || {Name, Age} <- People, Age > 65].
    
main() -> 
    %concat_lists([1, 2, 3], [4, 5, 6])    
    %subtract_list([1, 2, 3, 4], [2, 3])
    %head_only([1, 2, 3, 4])
    %tail_only([1, 2, 3, 4])
    %head_only2([1, 2, 3, 4])
    %tail_only2([1, 2, 3, 4])
    %add_to_start_of_list([1, 2, 3, 4], 5)
    %double_list([1, 2, 3])
    %get_even([1, 2, 3, 4])
    get_old_people_from_tuple_list([{john, 18}, {mike, 35}, {peter, 75}, {carol, 99}])
    .
    
