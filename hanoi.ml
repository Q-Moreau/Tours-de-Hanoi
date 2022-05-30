(* Quentin MOREAU Tours de Hanoi *)



let deplacerDisque source destination =
  print_string ("Deplacer le disque en haut de la tour " ^ source ^ " sur la tour " ^ destination ^ ".");print_newline();;


let rec hanoi nombreDisques source destination transition =
  match nombreDisques with
  | 0 -> ()
  | 1 -> deplacerDisque source destination
  | nombreDisques -> hanoi (nombreDisques-1) source transition destination; hanoi 1 source destination transition; hanoi (nombreDisques-1) transition destination source;;


hanoi 10 "1" "2" "3";;