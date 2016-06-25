let n =  3;;

let rec hanoi n a b c =

    if n > 0 then
    begin
        hanoi (n-1) a c b;
        print_string("Déplacement de l'anneau " ^ string_of_int(n) ^ " de " ^ a ^ " vers " ^ c);
        print_newline();

        hanoi 1 a b c;
        print_string("Déplacement de l'anneau " ^ string_of_int(n) ^ " de " ^ a ^ " vers " ^ c);
        print_newline();

        hanoi (n-1) b a c;
        print_string("Déplacement de l'anneau " ^ string_of_int(n) ^ " de " ^ b ^ " vers " ^ c);
        print_newline()
    end
    ;;

hanoi n "a" "b" "c";;
