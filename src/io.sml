
open TextIO;

val inputMsg  =  "----Enter text string----:\r\n"
val inputCmnt =  "--------------------------\r\n"

fun inLine() = valOf(inputLine(stdIn))

fun do_do inL =
    let
	fun f n =
	  let
	      val upL = n ^ ".........\r\n"
	      fun prompt() = (print("___output___" ^ "\r\n");inL)
	  in
	      print(upL);
	      prompt()
	  end;
    in
	f inL
    end;

(* action time *)
do_do(inLine());
