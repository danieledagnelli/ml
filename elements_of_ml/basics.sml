fun upper(c) = chr(ord(c)-32);
upper(#"a");
upper(#"b");

fun square (x:real) = x*x;

val pi = 3.14159;
val radius = 4.0;

pi*square(radius);


fun max3 (a:real, b, c) =
    if a>b then
	if a>c then a
	else c
    else
	if b>c then b
	else c;
(* ml uses one parameter, but it can be a touple *)
val t = (1.0, 2.0, 3.0);
max3 t;

(* *)

val x = 3;
fun addx(a) = a+x;
val x = 10;
addx(2);

(* Excercises 3.1.1 *)

(* Cube of a real number x *)
fun cubereal (x: real) = x*x*x;
cubereal (3.0);


(* Smallest of 3 ints *)
fun smallest_3_ints (x, y, z) =
   if x<=y then
       if x<=z then x
       else
	   if y<=x then
	       if y<=
		  z then y
	       else z
	   else z
   else z;

smallest_3_ints (1, 2, 3);
smallest_3_ints (3, 2, 1);
smallest_3_ints (1, 3, 2);
smallest_3_ints (1, 1, 3);
			 
(* The third element of a list *)
fun return_third_element_of_list (l) =
    hd(tl(tl(l)));

return_third_element_of_list([1, 2, 3, 4, 5]);
return_third_element_of_list(explode("abcdefghi"));
