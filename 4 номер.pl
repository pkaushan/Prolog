kaushan(From, To, [From|Tail], [To|Tail2]) :-  %Все элементы List1, равные From, заменены на To в List2
    kaushan(From, To, Tail, Tail2). 
kaushan(From, To, [X|Tail], [X|Tail2]) :- 
    dif(X, From), %Встроенный предикат, проверяющий что два элемента не равны
    kaushan(From, To, Tail, Tail2). 
kaushan(_, _, [], []). 

/** <examples>
?- kaushan(1,B,[1,2,3,a,b],X)
B	[B, 2, 3, a, b]
*/
