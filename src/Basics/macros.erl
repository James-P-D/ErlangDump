% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("macros.erl"). macros:main().

-module(macros).
                 
-compile(export_all).

-define(add(X,Y), {X+Y}).

-define(PI, 3.1415).

main() -> 
    io:fwrite("~p\n", [?add(3, 4)]),
    io:fwrite("Macros can be used to create constants. pi = ~f\n", [?PI])
    .
    
