element(E, [E|_]).
element(E, [_|S]):- element(E, S).

union(S1,S2,S3) :- union2(S1,S2,X), equivalent(X,S3).
union2([], S2, S2).
union2([E|S1], S2, S3) :- element(E, S2), !, union2(S1, S2, S3). 
union2([E|S1], S2, [E|S3]) :- union2(S1, S2, S3).

equivalent(S1, S2) :- equivalent2(S1,S2), equivalent2(S2,S1).
equivalent2([],_).
equivalent2([E|S1],S2):- element(E,S2), equivalent2(S1,S2).

intersect(S1,S2,S3) :- intersect2(S1,S2,X), equivalent(X,S3).
intersect2([], _, []).
intersect2([E|S1], S2, [E|S3]):- element(E, S2), !, intersect2(S1, S2, S3).
intersect2([_|S1], S2, S3):- intersect2(S1, S2, S3).