% TO RUN....
% cd("C:\\Users\\jdorr\\Desktop\\Dev\\ErlangDump\\src\\Basics\\").
% c("strings.erl").

-module(strings).

-import(string, [len/1,
                 concat/2,
                 chr/2,
                 substr/3,
                 str/2,
                 to_lower/1,
                 to_upper/1]).
                 
-compile(export_all).

output_string(S) ->
    io:fwrite("~p\n", [S]). % Note output does have quotes around it

output_string_format(S) ->
    OutputS = io_lib:format("~s\n", [S]),
    io:fwrite("~s\n", [OutputS]).       % Note output no longer has quotes around it

string_length(S) ->
    len(S).
    
add_strings(S1, S2) ->
    concat(S1, S2).

char_index(Str, Ch) ->
    chr(Str, Ch).     % char_index("hello world", $e). returns 2. $x returns 0

sub_string(Str, Index, Length) ->
    substr(Str, Index, Length). % sub_string("hello world", 3, 4) returns "llo "

string_index(Str, SubString) ->
    str(Str, SubString). % string_index("hello world", "world") returns 7

make_uppercase(Str) ->
    to_upper(Str).

make_lowercase(Str) ->
    to_lower(Str).
    
main() -> 
    string_index("hello world", "world").
    
