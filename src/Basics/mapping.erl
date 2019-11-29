% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("mapping.erl").

-module(mapping).
                 
-compile(export_all).

get_first_name(X) ->
    maps:get(f_name, X).
    
get_last_name(X) ->
    maps:get(l_name, X).
    
get_all_keys(X) ->
    maps:keys(X).

get_all_values(X) ->
    maps:values(X).

get_only_names(X) ->
    maps:remove(age, X).

first_name_exists(X) ->
    maps:find(f_name, X).

add_address(X) ->
    maps:put(address, "123 fake st", X ).

main() -> 
    Bob = #{f_name=> 'Bob', l_name=> 'Smith', age=> 35},
    %get_first_name(Bob)
    %get_last_name(Bob)
    %get_all_keys(Bob)
    %get_all_values(Bob)
    %first_name_exists(Bob)
    add_address(Bob)
    .
    
    
