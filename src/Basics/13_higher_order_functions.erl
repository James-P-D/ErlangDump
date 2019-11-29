% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("higher_order_functions.erl"). higher_order_functions:main().

-module(higher_order_functions).
                 
-compile(export_all).

double(X) -> X * 2.

triple(X) -> X * 3.

return_double() -> fun double/1.

return_triple() -> fun triple/1.

main() -> 
    %lists:map(fun double/1, [1,2,3])
    %lists:map(fun triple/1, [1,2,3])
    
    %X = return_double(),
    %lists:map(X, [1,2,3]),

    %Y = return_triple(),
    %lists:map(Y, [1,2,3])
    
    Name = "James",
    Say_Hello = fun() -> io:fwrite("hello ~p\n", [Name]) end,
    Say_Hello(),
    
    A = 2,
    B = 3,
    C = 4,
    Z = fun() -> io:fwrite("~p + ~p + ~p = ~p\n", [A, B, C, A + B + C]) end,
    Z()
    .
    
    
