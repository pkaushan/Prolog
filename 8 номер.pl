/Предикат Q(L, X, L1), осуществляющий удаление указанного количества X последних элементов исходного списка L/

deleteLast([], []).  %для пустого списка
deleteLast([_], []).  %для списка с одним элементом
deleteLast([X | Tail], [X | Tail2]) :-  %убираем голову списка
    deleteLast(Tail, Tail2). 
%copy(List, List). копируется список
copy([],[]).		
copy([H|List],[H|List]):- 
    copy(List,List).
for(List, I, N, Res):- %Предикат цикла, выполняется, пока I<N
	I<N, 
    I1 is I+1, 
    deleteLast(List, List1), 
    for(List1,I1,N,Res2), 
    copy(Res2, Res). 
for(List, I,N, Res):- %Предикат цикла, выполняется, пока I=N
    I = N, 
    copy(List, Res). 
q(L, X, L1):- %Искомый предикат
    for(L, 0, X, L1).


/** <examples>
?- q([a,b,c,d],1,X).
	[a, b, c]
*/
