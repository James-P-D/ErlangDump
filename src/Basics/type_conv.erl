% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("type_conv.erl").

-module(type_conv).
                 
-compile(export_all).

check_is_atom(X) ->
    is_atom(X).
    
check_is_float(X) ->
    is_float(X).

check_is_integer(X) ->
    is_integer(X).

check_is_boolean(X) ->
    is_boolean(X).

check_is_list(X) ->
    is_list(X).

check_is_tuple(X) ->
    is_tuple(X).

% atom_to_binary, atom_to_list etc.
% Check video at 29mins

convert_integer_to_list(N) ->
    integer_to_list(N).
    
main() -> 
    %check_is_atom(hello)    % true
    %check_is_atom("hello")  % false
    %check_is_float(3.14)    % true
    %check_is_float(3)       % false
    %check_is_integer(1)     % true
    %check_is_integer(1.2)   % false
    %check_is_boolean(true)  % true
    %check_is_boolean(5)     % false
    %check_is_list([1,2])    % true
    %check_is_list(5)        % false
    %check_is_tuple({1,2})   % true
    %check_is_tuple(3.14)    % false
    convert_integer_to_list(5)
    .
    
