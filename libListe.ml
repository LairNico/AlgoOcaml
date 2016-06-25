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

(*Insertion dans une liste ordonnée*)
let rec insereOrd v l = match l with
|[]->[v]
|x::l'->if(v<x) then v::l else x::(insere v l');;

(*Suppression dans une liste ordonnée*)
let rec supprime v l = match l with
|[]->[]
|x::l'->if (x=v) then l' else x::(supprime v l');;

(*Recherche plus petit élément dans une liste quelconque*)
let rec mini l = match l with
|[]->failwith "Pas de sens"
|[x]->x
|x::l'->min x (mini l');;

(*tri d'une liste*)
let rec tri l = match l with
|[]->[]
|_->let m = mini l in
    let l' = supprime m l in
        m::(tri l');;
