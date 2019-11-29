% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("macros.erl"). macros:main().

-module(macros).
                 
-compile(export_all).

-define(add(X,Y), {X+Y}).

main() -> 
    io:fwrite("~p\n", [?add(3, 4)])
    .
    
