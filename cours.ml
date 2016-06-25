(* code cours *)
let rec factorielle n= if n=0 then 1 else n*factorielle(n-1)

let t = [|1;2;4|];;
val t : int array = [|1;2;4|];;

let t2 = Array.make 4 0;;

let taille = 4;;
let t3 = Array.make taille 1;;

t.(1);; -> 2
t.(1) <- 3;;
t;;

t2.(2) <- Random.int 200;

let t =[|
	[|1;2;3|];
	[|3;4;5|];
	[|5;6;7|];
	|];;

let t2 = Array.make_matrix 3 2 1;;

let l = [l1; l2; l3];; (*Liste pleine*)
let l_vide = [];; (*Liste vide*)

(*Les éléments peuvent être des expressions*)
let f x = x+1 in let l = [f0;f1;f2];;

let l = [1;2;3];;
let l = 0::l;;

(*Tête de liste*)
let tete l = match l with
|[]-> failwith "liste vide"
|x::l'->x;;

(*Queue de liste*)
let queue l = match l with
|[]->failwith "Liste vide"
|x::l'->l';;

(*Valeur de tête de liste*)
let valeur_en_tete l v = match l with
|x::_->(x=v)
|_->false;;

(*Insere liste*)
let insere v l = match l with
|[]->[v]
|_->v::l;;

(*Longueur liste*)
let rec longueur l = match l with
|[]->0
|x::l'->1+(longueur l');;

(*cherche élément*)
let rec cherche v l = match l with
|[] -> false
|x :: l'->(x=v) || (cherche v l');;

(*Dernier élément de la liste*)
let rec dernier l = match l with
|[]-> failwith "Liste vide"
|[x]-> x
|_::l'-> dernier l';;

(*Insertion queue de liste*)
let rec insere_dernier v l = match l with
|[]->[v]
|x::l'->x::(insere_dernier v l');;


let p = (1, "albert");;
let c = (tri, "ceci est la fonction tri");;

let entoure x = (pred(x), succ(x));;

let v = (1.5, 2.5);;
(*première solution*)
let carre_norme v = match v with
|(x,y)-> x*x + y*y;;
(*deuxième solution*)
let carre_norme (x,y) = x*x + y*y;;

(*produit scalaire de 2 vecteurs*)
let scalaire v1 v2 = match v1 with
(x,y) -> match v2 with
	(z,t) -> match v2 with
		(z,t)->x*y + y*t;;

(*Fonction renvoyant une paire*)
let rec div a b = if a<b then (0,a) else
	match div(a-b) b with
	|(q,r)->(q+1,r);;
