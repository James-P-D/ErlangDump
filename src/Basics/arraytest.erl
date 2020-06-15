% c("arraytest.erl").
% arraytest:stuff().

-module(arraytest).
-export([stuff/0]).

create_1d(X) -> array:new(10).

set_1d(X, N, Array) -> array:get(X, N, Array).

get_1d(X, Array) -> array:get(X, Array).

%create_2d( X, Y ) -> array:new( [{size, X}, {default, array:new( [{size, Y}] )}] ).

%get_2d( X, Y, Array ) -> array:get( Y, array:get(X, Array) ).

%stuff() -> test_array = create_2d(10, 10),
%           N = get(1, 1, test_array),
%           io:fwrite("N = ~B~n", [N]).

stuff() -> length([[1,2,3],[4,5,6],[7,8,9]])
           %small_array = create_1d(10)
           %set_1d(1, 99, small_array),
           %N = get_1d(1, small_array),
           %io:fwrite("N = ~B~n", [N])
           .
