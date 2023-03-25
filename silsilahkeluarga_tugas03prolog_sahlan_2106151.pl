ortu(david, liza). /* Bapaknya Liza adalah David */
ortu(amy, liza). /* Ibunya Liza adalah Amy */
ortu(david, john). /* Bapaknya John adalah David */
ortu(amy, john). /* Ibunya jhon adalah Amy */
ortu(jack, susan). /* Bapaknya Susan adalah Jack */
ortu(karen, susan). /* Ibunya Susan adalah Karen */
ortu(john, peter). /* Bapaknya peter adalah John */
ortu(susan, peter). /* Ibunya peter adalah Susan */
ortu(john, mary). /* Bapaknya mary adalah John */
ortu(susan, mary). /*Ibunya mary adalah Susan */
ortu(jack, ray). /* Bapaknya Ray adalah Jack */
ortu(karen, ray). /* Ibunya Ray adalah Karen */

/* Pemberian Jenis Kelamin */
laki_laki(david).
laki_laki(john).
laki_laki(peter).
laki_laki(jack).
laki_laki(ray).

perempuan(amy).
perempuan(liza).
perempuan(susan).
perempuan(mary).
perempuan(karen).


/* aturan */
orang_tua(X,Y) :- ortu(X,Y).
saudara(X, Y) :- ortu(Z, X), ortu(Z, Y), X \= Y.
anak(Y,X) :- ortu(X,Y).
kakek(X,Z) :- ortu(X,Y), ortu(Y,Z), laki_laki(X).
nenek(X,Z) :- ortu(X,Y), ortu(Y,Z), perempuan(X).
