% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("file_io.erl"). file_io:main().

-module(file_io).
                 
-compile(export_all).

main() -> 
    Filename = "test.txt",
    write_text("hello everyone!\n", Filename),
    append_text("goodbye everyone\n", Filename),
    TextRead = read_text(Filename),
    io:fwrite("~p", [TextRead]).
    
write_text(Text, Filename) ->
    {ok, FileHandle} = file:open(Filename, [write]),
    file:write(FileHandle, Text).
    
append_text(Text, Filename) ->
    {ok, FileHandle} = file:open(Filename, [append]),
    file:write(FileHandle, Text).
    
read_text(Filename) ->
    {ok, FileHandle} = file:open(Filename, [read]),
    file:read(FileHandle, 10000).