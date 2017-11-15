%Definitions for isElementInList(El, List)
isElementInList(El, List) :-
    member(El, List).
    
%Definitions for reverseList(List, ReversedList)
reverseList([], []).
reverseList(List, ReversedList) :-
    [H|T] = List,
    reverseList(T, Z),
    mergeLists(Z, [H], ReversedList).

%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):-
    mergeLists(List, El, NewList).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists(List1, List2, Merged) :-
   	L = [List1, List2],
    flatten(L, Merged).
