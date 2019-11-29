% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("tuples.erl").

-module(tuples).
                 
-compile(export_all).

make_person(Name, Age, Height) ->
    Person = {Name, Age, Height},
    Person.

display_person(Person) ->
    {Name, Age, Height} = Person,
    io:fwrite("~s is ~w years old and has a height of ~f\n", [Name, Age, Height]).

display_person_name_only(Person) ->
    {Name, _, _} = Person,      % User anonymouse variables, if we don't care about some elements in tuple
    io:fwrite("Name: ~s\n", [Name]).
    
main() -> 
    Person = make_person("John", 18, 5.8),
    display_person(Person)
    .
    
