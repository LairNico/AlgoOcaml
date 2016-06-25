(* tri_extraction.ml *)


let tab=[|3;2;5;1;7;9|];;

let permute tab a b =
	let temp = tab.(a) in
	tab.(a) <- tab.(b);
	tab.(b) <- temp;;

let tri tab =
	let permut = ref(true) in
	while (!permut)  do
		permut := false;
		for i=0 to (Array.length tab-2) do
			if tab.(i) > tab.(i+1)
			then begin permute tab i (i+1);
			permut := true;
			end;
		done;
	done;;


let rec dicho tab g d x =
	if g > d
		then -1
	else
		begin
		let milieu = (g+d)/2 in
		if x = tab.(milieu) then
			milieu
		else if x < tab.(milieu) then
			dicho tab g (milieu-1) x
		else
			dicho tab (milieu+1) d x
		end
		;;

let main tab g d x =
	tri tab;
	dicho tab g d x;;
