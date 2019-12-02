% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("records.erl"). records:main().

-module(records).
                 
-compile(export_all).

-record(customer, {name = "", balance = 0.00}).

main() -> 
    Sally = #customer{name="Sally Smith", balance=12.34},
    Sally2 = Sally#customer{balance = 50},
    io:fwrite("~p owes ~p\n", [Sally#customer.name, Sally#customer.balance]), 
    io:fwrite("~p owes ~p\n", [Sally2#customer.name, Sally2#customer.balance]),
    
    io:format("Record fields: ~p~n", [record_info(fields, customer)]),
    io:format("Record size: ~p~n", [record_info(size, customer)])
    .
    
    
