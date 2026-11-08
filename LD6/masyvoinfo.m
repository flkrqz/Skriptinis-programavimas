function [minimumas, maksimumas, vidurkis] = masyvoinfo(masyvas)
% MASYVOINFO Randa skaiciu masyvo minimuma, maksimuma ir vidurki.
% Naudojimas:
%   [minimumas, maksimumas, vidurkis] = masyvoinfo(masyvas)
% Ivestis:
%   masyvas - skaiciu vektorius arba matrica.
% Isvestis:
%   minimumas - maziausia reiksme.
%   maksimumas - didziausia reiksme.
%   vidurkis - visu reiksmiu vidurkis.

% (: ) paima visus masyvo elementus kaip viena stulpeli
minimumas = min(masyvas(:));
maksimumas = max(masyvas(:));
vidurkis = mean(masyvas(:));
end
