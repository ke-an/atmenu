(**** Input and Output ****)

(*** String conversions ***)

val months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN",
	      "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];

(*An example of using exception Bind -- forward reference from Chapter 4?*)
fun dateFromString s =
  let val sday::smon::syear::_ = String.tokens (fn c => c = #"-") s
      val SOME day = Int.fromString sday
      val mon      = String.substring (smon, 0, 3)
      val SOME year = Int.fromString syear
  in  if List.exists (fn m => m=mon) months
      then SOME (day, mon, year)
      else NONE
  end
  handle Subscript => NONE
      |  Bind      => NONE;


(*** Stream Input/Output ***)

(** Initial letters of words in each line **)

fun firstChar s = String.sub(s,0);

val initials = implode o (map firstChar) o (String.tokens Char.isSpace);

initials "My ransom is this frail and worthless trunk";

fun batchInitials (is, os) =
  while not (TextIO.endOfStream is)
	do TextIO.output(os, initials (valOf (TextIO.inputLine is)) ^ "\n");

fun promptInitials (is, os) =
  while (TextIO.output(os, "Input line? ");  TextIO.flushOut os;
	 not (TextIO.endOfStream is))
	do TextIO.output(os, "Initials:   " ^ initials (valOf (TextIO.inputLine is)) ^ "\n"); 
