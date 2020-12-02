/Предикат, осуществляющий перестановку двух элементов списка с заданными номерами./

swapel(1,A,B,[B|L],[A|L]):- !. %перестановки голов списков
swapel(Y,A,B,[C|L],[C|L1]):- %перестановки в двух разных списках элементов с индексом Y
    Y1 is Y-1, 
    swapel(Y1,A,B,L,L1).

swap(X,X,L,L):- !. 
swap(X,Y,[A|L],[A|L1]):- %продолжаем убирать ненужные первые элементы первого списка чтобы дойти до головы
    X>1, 
    X<Y,!, 
    X1 is X-1, 
    Y1 is Y-1, 
    swap(X1,Y1,L,L1). %рекурсивный вызов для хвоста и индексов меньше на 1
swap(1,Y,[A|L],[B|L1]):- 
    Y1 is Y-1, 
    swapel(Y1,A,B,L,L1).
swap(X,Y,L,L1):- 
    Y>0, 
    swap(Y,X,L,L1).



/** <examples>
?- swap(1,2,[a,b,c,d],X).
	[b, a, c, d]
*/
