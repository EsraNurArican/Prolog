:-style_check(-singleton).
%Facts.
flight(istanbul,rize).
flight(istanbul,izmir).
flight(istanbul,ankara).
flight(istanbul,van).
flight(istanbul,gaziantep).
flight(istanbul,antalya).
flight(izmir,ısparta).
flight(izmir,istanbul).
flight(ısparta,izmir).
flight(ısparta,burdur).
flight(burdur,ısparta).
flight(edirne,edremit).
flight(edremit,edirne).
flight(edremit,erzincan).
flight(erzincan,edremit).
flight(antalya,istanbul).
flight(antalya,konya).
flight(antalya,gaziantep).
flight(konya,ankara).
flight(konya,antalya).
flight(gaziantep,antalya).
flight(gaziantep,istanbul).
flight(ankara,istanbul).
flight(ankara,konya).
flight(ankara,van).
flight(van,istanbul).
flight(van,ankara).
flight(van,rize).
flight(rize,istanbul).
flight(rize,van).

%rules that find if there is a route between given X,Y.
route(X, Y) :- routex(X, Y, []).
routex(X, Y, VisitList) :- flight(X, Z), not(member(Z, VisitList))
						, (Y = Z; routex(Z, Y, [X | VisitList])).