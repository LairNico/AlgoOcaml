(*)#use "libListe.ml";;*)

(*Liste de monome*)
let polynome = [];;

let insere v l = match l with
|[]->[v]
|_->v::l;;

let insereMonome degre coeff =
    let monome = (degre, coeff) in
    polynome = insere monome polynome
;;

let rec affichage p = match p with
			| [] -> []
			| (x,y) :: p' ->  begin if (x>0) then
									begin
										print_string("+"^string_of_int(abs(x)));
                                        if (y>0)
                                            then if(y == 1)
                                                then print_string("x")
                                            else if (y == 0)
                                                then print_string("")
                                                else print_string("x"^string_of_int(y));
										end
									else
										begin
											print_string("-"^string_of_int(abs(x)));
											if (y>0)
                                                then if(y == 1)
                                                    then print_string("x")
                                                else if (y == 0)
                                                    then print_string("")
                                                    else print_string("x"^string_of_int(y));
										end;
									affichage p';
								end;;

(*let triPoly polynome =

;;*)

let main =
let coeff = ref 0 in
let degre = ref 0 in
while (!degre <> -1)
do
    coeff := read_int();
    degre := read_int();
    insereMonome !coeff !degre;
done;
        affichage polynome
;;
