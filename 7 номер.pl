subList([],_,_,[]).          %Случай с пустым списком
subList([Head|Tail],N,A,L):-       %Проходим по списку, пока не найдем нужный индекс
    N<A,
    N1 is N+1,
    subList(Tail, N1, A, L).
subList([Head|Tail],N,A,[Head|L]):-  %Копируем в новый лист
    N>=A,
    N1 is (N+1),
    subList(Tail,A,N,L).

sub(L1, N, L2):-
subList(L1, 0, N, L2).



/** <examples>
?- sub([a,b,c,d], 2, X)
	[c, d]
*/
