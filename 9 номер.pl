/Предикат, удаляющий в исходном списке все повторные вхождения элементов./

deleteDups([], []). 
deleteDups([Head | Tail], NewTail) :- %Если head содержится в tail 
    member(Head, Tail), 
    deleteDups(Tail, NewTail). %не добавляем Head
deleteDups([Head | Tail], [Head | NewTail]) :- 
    not(member(Head, Tail)), 
    deleteDups(Tail, NewTail), !.  %добавляем Head



/** <examples>
?- deleteDups([a,b,c,c,a,d],X).
	[b, c, a, d]
*/
