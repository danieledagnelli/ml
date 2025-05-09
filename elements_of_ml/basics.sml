
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


(* Reverse of a touple of len 3 *)
fun reverse_touple_len_3 (x, y, z) =
    (z, y, x);


reverse_touple_len_3(1, 2, 3);
reverse_touple_len_3(#"A", #"B", #"C");



(* third character of a character string *)
fun third_character_of_string (s: string) : char =
    hd(tl(tl(explode(s))));

third_character_of_string("abcdefg");


(* cycle list once *)

fun cycle_list_once (l) = tl(l) @
			  [hd(l)];

				      

print("cycle list once\n");


cycle_list_once([1, 2, 3]);

fun min_max (a: int, b:int, c:int): int * int =
    
    if a<=b then
	if b <= c then (a, c)
	else
	    (* b is largest *)
	    if a<=c then (a, b) else (c, b)
    else
	(* a > b *)
	if a<c then (b, c) else
	if
	    b<c then (b, c)
	else
	    (c, a);

	
min_max(3, 1, 2);

(* order a touple of 3 elements *)
fun ordered_three (a: int, b:int, c:int): int * int * int =
    if a<b then
	if b<c then (a, b, c)
	else
	    if a<c then (a, c, b)
	    else (c, a, b)
    else
	if b<c then
	    if a<c then (b, a, c)
	    else (b, c, a)
	else (c, b, a);

ordered_three(3, 3, 4);
ordered_three(1, 2, 3);
ordered_three(3, 2, 1);

(* round real to nearest tenth *)
fun round_tenth(x: real) : real =
    real(trunc(x)) +(
	real(trunc((x-real(trunc(x))) * 10.0))/10.0);

round_tenth(4.1234);
round_tenth(0.1);
round_tenth(1.0);
round_tenth(1.19);

(* delete second element from a list *)
fun delete_second_element(l) =
    hd(l) :: tl(tl(l));

delete_second_element(["a", "b", "c", "d", "e"]);
delete_second_element([1, 2, 3, 4, 5, 6]);



val a = 2;
fun f(b) = a*b;
val b = 3;
fun g(a) = a+b;

f(4);

fun reverse(L) =
    if L = nil then nil
    else
	reverse(tl(L)) @ [hd(L)];

reverse[1, 2, 3];

(* Non-linear rerucrsion *)

(* n chose m *)
fun comb (n, m) = (* assumes 0 <= m <= n *)
    if m=0 orelse n=m then 1
    else comb (n-1, m) + comb
			     (n-1, m-1);

comb (4, 2);

(* Mutual Recursion *)
fun take(L) =
    if L=nil then nil
    else hd(L)::skip(tl(L))
and
skip (L) =
if L=nil then nil
else
    take(tl(L));

take ([1,2,3,4,5]);
skip ([1,2,3,4,5]);
skip(explode("longlist"));



(* recursive functions *)
fun factorial (x) =
    if x=1 then 1
    else
	factorial (x-1) * x;

factorial (4);
factorial (5);
factorial (6);


fun cycle_l_i_times(i, L) =
    if i = 0 then L
		      
    else cycle_l_i_times(i-1, tl(L) @ [hd(L)
			]);
cycle_l_i_times
    (3, [1, 2, 3, 4, 5, 6, 7]);

cycle_l_i_times (5, [0, 1, 2, 3, 4, 5,6,7,8,9]);


print ("TEST CONCAT\n");


fun duplicate_each_element (L) =
    if L = nil then nil
    else [
	hd(L)] @
	 [hd(L)] @ duplicate_each_element(
	     tl(L));

duplicate_each_element ([1, 2, 3]);
duplicate_each_element(explode("hello"));
