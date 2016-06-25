let pair n = if (n mod 2) <> 0 then false else true;;

let rec expoMod a m n = 
	if m=0 then 1
	else (if pair m then (((expoMod a (m/2) n) * (expoMod a (m/2) n)) mod n)
	else (a*expoMod a (m-1) n) mod n);;

