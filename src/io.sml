
open TextIO;

val inputMsg  =  "------Enter text string--:\r\n";
val inputCmnt =  "-.-.-.-.-.-.-.-.-.-.-.-.-.\r\n";

fun inLine() = valOf(inputLine(stdIn));

fun do_do inL = 
    let
	val inpp = inL() ^ inputCmnt
    in
	print(inpp)
    end

fun prompt inputMsg = print(inputMsg);

(* action time *)
prompt(inputMsg);
do_do(inLine);
