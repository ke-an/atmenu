open TextIO;

fun inLine() = valOf(inputLine(stdIn));

fun prompt(msg) = (print(msg ^ "\r\n");inLine())
