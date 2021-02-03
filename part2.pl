%Facts.

distance(istanbul,rize,967.79).
distance(istanbul,izmir,328.80).
distance(istanbul,ankara,351.50).
distance(istanbul,van,1262.37).
distance(istanbul,gaziantep,847.42).
distance(istanbul,antalya,482.75).
distance(izmir,ısparta,308.55).
distance(izmir,istanbul,328.80).
distance(ısparta,izmir,308.55).
distance(ısparta,burdur,24.60).
distance(burdur,ısparta,24.60).
distance(edirne,edremit,914.67).
distance(edremit,edirne,914.67).
distance(edremit,erzincan,736.34).
distance(erzincan,edremit,736.34).
distance(antalya,istanbul,482.75).
distance(antalya,konya,192.28).
distance(antalya,gaziantep,592.33).
distance(konya,ankara,227.34).
distance(konya,antalya,192.28).
distance(gaziantep,antalya,592.33).
distance(gaziantep,istanbul,847.42).
distance(ankara,istanbul,351.50).
distance(ankara,konya,227.34).
distance(ankara,van,920.31).
distance(van,istanbul,1262.37).
distance(van,ankara,920.31).
distance(van,rize,373.01).
distance(rize,istanbul,967.79).
distance(rize,van,373.01).

% Rule that finds distance between two cities.
sroute(A,B,C):-distance(A,B,C).
sroute(A,B,C):- distance(A,Z,D1),
                distance(Z,B,D2),
                C is D1+D2.