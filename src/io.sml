
open TextIO;

val inputMsg  =  "----Enter text string----:\r\n"
val inputCmnt =  "--------------------------\r\n"

fun inLine() = valOf(inputLine(stdIn))

fun do_do inL =
    let
	fun f n =
	  let
	      val upL = n ^ ".........\r\n"
	      fun prompt() = (print("output___" ^ "\r\n");inLine();do_do(inLine())
	  in
	      print(upL);
	      prompt()
	  end;
    in
	f inL
    end;

(* action time *)
do_do(inLine());
