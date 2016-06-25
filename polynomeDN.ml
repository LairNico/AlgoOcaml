let p = [(3,2);(4,1);(-5,1)];;

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
affichage p;;
