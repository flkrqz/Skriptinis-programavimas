%% 6 laboratorinis darbas
% Skriptinis programavimas
% Vardas, pavarde: Jaromir Kozenevski
% Grupe: EDIf25/1
% 5 variantas

%% 1. Elementariu funkciju kurimas

A = [4 10 -3; 7 2 9];

[maziausias, didziausias, vidurkis] = masyvoinfo(A);

disp('Masyvo minimumas:')
disp(maziausias)
disp('Masyvo maksimumas:')
disp(didziausias)
disp('Masyvo vidurkis:')
disp(vidurkis)

help masyvoinfo


%% 2. Globaliu kintamuju naudojimas

global x y

x = 0 : 0.1 : 2*pi;

skaiciuoti_global

whos x y

figure(1)
plot(x, y, 'b:s', 'LineWidth', 1.5)
title('y = sin(x) + cos(x)')
xlabel('x')
ylabel('y')
grid on


%% Papildoma uzduotis

ats1 = specfunkc(3);
disp('specfunkc(3) rezultatas:')
disp(ats1)

ats2 = specfunkc(3, 2);
disp('specfunkc(3,2) rezultatas:')
disp(ats2)

help specfunkc
