(*#use "multiplication_russe.ml";;*)
let estPair a = (a mod 2 = 0);;

let rec mult a b = if (a = 0) then 0 else match estPair a with
| true -> (mult (a/2) (b*2))
| false->  (b + (mult (a-1) b));;

let res = mult 26 54;;
res;;
