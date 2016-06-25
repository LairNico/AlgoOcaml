(*#use"fibonacci.ml";;*)
let rec fibo n =
    if(n = 0) then 1
    else if(n = 1) then 1
    else fibo(n-2) + fibo(n-1);;
