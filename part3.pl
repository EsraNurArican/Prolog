%facts.

when(102, 10).
when(108, 12).
when(341, 14).
when(455, 16).
when(452, 17).

where(102, z23).
where(108, z11).
where(341, z06).
where(455, 207).
where(452, 207).

enroll(a,102).
enroll(a,108).
enroll(b,102).
enroll(c,108).
enroll(d,341).
enroll(e,455).


%rules.

schedule(S, P, T) :- enroll(S, C), where(C, P), when(C,T).

usage(P, T) :- where(C,P), when(C,T).

conflict(X,Y):- (when(X,T1), when(Y,T2), T1==T2); (where(X,P1), where(Y,P2), P1==P2).

meet(X,Y):- enroll(X,C1), enroll(Y,C2), C1==C2,!.	