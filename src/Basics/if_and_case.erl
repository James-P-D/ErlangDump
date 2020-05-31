% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("if_and_case.erl").

-module(if_and_case).

-compile(export_all).

junior_school() ->
    'Go to juniors'.
primary_school() ->
    'Go to primary'.
secondary_school() ->
    'Go to secondary'.

% Note 'if' won't work when calling predicates (e.g. if we moved '(Age >= 5) and (Age =< 7)' into a separate
% function passing 'Age' as paremter. Instead we would need to use 'case')
    
what_school(Age) ->
    if (Age >= 5) and (Age =< 7) -> junior_school();
        (Age > 7) and (Age =< 11) -> primary_school();
        (Age >11) and (Age =< 18) -> secondary_school();
        true -> 'Not at school'
    end.
    
hello(Lang) ->
    case Lang of
        french -> 'Bonjour';
        spanish -> 'Hola';
        _ -> 'Hello'
    end.
    
main() -> 
    hello(english).
