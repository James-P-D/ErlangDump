% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("error_handling.erl"). error_handling:main().

-module(error_handling).
                 
-compile(export_all).

main() -> 
    I1 = divide_function(10, 2),
    io:fwrite("~p\n", [I1]),
    I2 = divide_function(10, 0),
    io:fwrite("~p\n", [I2]),
    I3 = divide_function_again(10, 0),
    io:fwrite("~p\n", [I3])
    .
    
divide_function(X, Y) ->
    try
        Z = X / Y,
        Z
    catch
        error:badarith ->      % this needs to be an actual exception type (badarith)
            "Divide by zero!"
    end.
    
divide_function_again(X, Y) ->
    try
        Z = X / Y,
        Z
    catch
        _:_ ->                 % catch any exception
            "Something went wrong!"
    end.    