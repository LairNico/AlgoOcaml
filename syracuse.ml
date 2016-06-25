(*#use "syracuse.ml";;*)
let estPair a = (a mod 2 = 0);;

let rec syracuse n =
if(n = 1) then []  else match estPair n with
    | true -> (n/2)::syracuse (n/2)
    | false -> (n*3+1)::syracuse(n*3+1);;

syracuse 25;;
