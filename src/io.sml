
open TextIO;

val inputMsg = "------Enter text string--:";
val inpuCmnt = "-.-.-.-.-.-.-.-";

fun inLine() = valOf(inputLine(stdIn));

fun do_do(inputFn,cmnt):string = inputFn ^ cmnt;

fun prompt(inputMsg) =
  (
    print(inputMsg ^ "\r\n");
    (* print(inLine() ^ "-.-.-.-.\r\n") *)
  );
		
prompt(inputMsg);
do_do(inLine,inputCmnt);
