%% 1 laboratorinis darbas

% Skriptinis programavimas
% Vardas, pavarde: Jaromir Koženevski
% Grupe: EDIf25/1
% Data: 2026-09-14
%% Privaloma užduotis 

% Paprastas skriptas

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [o-o]   |   F_2 [-x-]')
%% MATLAB funkciju pagalba

% Pagalbos paieska:
% help sin
% doc sin
% help plot
% doc plot
% help title
% doc title

% linspace pavyzdziai:
% linspace(0,10)
% linspace(0,10,5)

% size pavyzdziai:
% size(A)
% size(A,1)
% size(A,2)

% max pavyzdziai:
% max(v)
% [m,vieta] = max(v)
%% Papildoma užduotis 

N = 5

v = N+1 : 0.5 : N+4

A = [N   N+1 N+2;
    N+3 N+4 N+5;
    N+6 N+7 N+8]

a = A(3,2)

b = A(2:3,1:2)

c = A([1 3],[1 3])

v2 = v(1:3);

A_su_vektoriumi = [A; v2]