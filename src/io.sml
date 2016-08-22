open TextIO;

val inputMsg = "------Enter text string--:";

fun inLine() = valOf(inputLine(stdIn));

fun prompt(screenMsg) = (print(screensMg ^ "\r\n");inLine());

prompt(inputMsg);
