/Предикат, осуществляющий сортировку вставкой./

sort([], []). 
sort([X|L], S):- 
    sort(L, S1), insert(X, S1, S). 
insert(X, [], [X]). 
insert(X, [X1|L1], [X, X1|L1]):- X=<X1.
insert(X, [X1|L1], [X1|L]):- X>X1, 
    insert(X, L1, L).





/** <examples>
?- sort([1,2,3,2,8,0,4,5,6],Y).
[0, 1, 2, 3, 4, 5, 6, 8]
*/
