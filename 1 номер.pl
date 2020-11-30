/*Adding odd digits of N*/

count(N,Sum):-  %предикат, вычисляющий сумм
    N mod 2 =:= 1,  %Проверяем на нечетность(=:= - арифметическое сравнение)
    Num is N div 2 + 1, 
    Sum is (1+N)/2*Num. 
count(N,Sum):- 
    N mod 2 =:= 0, %Проверка на четность
    Num is N div 2, 
    Sum is N/2*Num.
