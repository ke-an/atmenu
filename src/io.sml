
open TextIO;

val inputMsg = "------Enter text string--:"
val inputCmnt = "-------------------------"

fun inLine() = valOf(inputLine(stdIn))

fun prompt (msg) =
  let
      val oo = "hhh";
  in
      (print(msg ^ "\r\n"))
  end
      

(* action time *)
prompt(inputMsg);
