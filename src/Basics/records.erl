% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("records.erl").

-module(records).
                 
-compile(export_all).

-record(customer, {name = "", balence = 0.00}).

main() -> 
    Sally = #customer{name="Sally Smith", balence=12.34},
    Sally2 = Sally#customer{bal = 50},
    io.fwrite("~p owes ~p\n", [Sally#customer.name, Sally#customer.balence]),
    io.fwrite("~p owes ~p\n", [Sally2#customer.name, Sally2#customer.balence]),
    .
    
    
