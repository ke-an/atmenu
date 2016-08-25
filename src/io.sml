
open TextIO;

val inputMsg = "------Enter text string--:";
val inputCmnt = "-.-.-.-.-.-.-.-";

fun inLine() = valOf(inputLine(stdIn));

fun do_do(inputFn,cmnt):string = inputFn() ^ cmnt;

fun prompt(inputMsg) = (
    print(inputMsg ^ "\r\n")
);

(* action time *)
prompt(inputMsg);
do_do(inLine,inputCmnt);
     
