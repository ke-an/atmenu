
open TextIO;

val inputMsg  =  "----Enter text string----:\r\n";
val inputCmnt =  "--------------------------\r\n";

fun inLine() = valOf(inputLine(stdIn));

fun prompt inputMsg = print(inputMsg);

fun do_do inL =
    let
	val inpp = inL() ^ inputCmnt
    in
	print(inpp)
    end

(* action time *)
do_do(inLine);
