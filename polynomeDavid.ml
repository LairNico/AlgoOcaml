let p = [(3,2);(4,1);(-5,0)];;

let rec longueur l = match l with
| [] -> 0
| x::l' -> 1+ (longueur l');;

let affichage p =
		for i=1 to 3 do
			match p with
			| (x,y)::l' -> if x>0 then begin
										print_string("+"^x) ;
										if y>0 then
										print_string("x^"^y)
										else

										end;
								  else begin
										print_string("-"^x);
										if y>0 then
										print_string("x^"^y)
										else


										end;



		print_newline();

		done;;

affichage p;;
____________________________________________________________

let p = [(3,2);(4,1);(-5,0)];;
let affichage p = match p with
			| (x,y)::p' ->  if (x>0) then
			begin
			print_string("toto");

			affichage p';
			end;

		done;;
affichage p;;


| []->[]
print_string("+"^string_of_int(x)) ;
			print_string("x^"^y)

			____________________________________________________________let p = [(3,2);(4,1);(-5,0)];;
let rec affichage p = match p with
			| [] -> []
			| (x,y) :: p' ->  begin if (x>0) then
									begin
										print_string("+"^string_of_int(abs(x))^"x ");
										if (y>0) then print_string( string_of_int(y)) else print_string("-"^string_of_int(abs(y)));
										end
									else
										begin
											print_string("+"^string_of_int(abs(x))^"x ");
											if (y>0) then print_string( string_of_int(y)) else print_string("-"^string_of_int(abs(y)));
										end;
									affichage p';
								end;;

affichage p;;


let p = [(3,2);(4,1);(-5,0)];;
let rec affichage p = match p with
			| [] -> []
			| (x,y) :: p' ->  begin if (x>0) then
									begin
										print_string("+"^string_of_int(abs(x))^"x ");
										if (y>0) then print_string( string_of_int(y)) else print_string("-"^string_of_int(abs(y)));
										end
									else
										begin
											print_string("+"^string_of_int(abs(x))^"x ");
											if (y>0) then print_string( string_of_int(y)) else print_string("-"^string_of_int(abs(y)));
										end;
									affichage p';
								end;;

affichage p;;

	affichage p';
| []->[]
print_string("+"^string_of_int(x)) ;
			print_string("x^"^y)
