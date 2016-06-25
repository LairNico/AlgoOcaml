(*#use "eratosthene.ml";;*)
let rec insere_dernier v l = match l with
|[]->[v]
|x::l'->x::(insere_dernier v l');;

let rec make_liste n =
    if (n = 2) then [2]
    else n::make_liste (n-1);;

let est_divisible_par n  m = (n mod m = 0);;

let rec filtre l  p = match l with
| [] -> []
| x::l' -> if(est_divisible_par x p) then filtre l' p
    else x::filtre l' p;;

let rec crible n =
    let l = ref(make_liste n) in
    (l := filtre !l 2;
    l := insere_dernier 2 !l;
    let x = ref 3 in
    while(!x * !x <= n) do
        l := filtre !l !x;
        l := insere_dernier !x !l;
        x := !x + 2;
    done;
    !l;);;

let res = crible 15 ;;
res;;
