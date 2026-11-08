function skaiciuoti_global
% SKAICIUOTI_GLOBAL Apskaiciuoja sin(x)+cos(x) naudojant globalius kintamuosius.
% Funkcija neturi nei ivesties, nei isvesties argumentu.

global x y

y = sin(x) + cos(x);

% Parodo kintamuosius (tarp ju ir globaliuosius)
whos x y
end
