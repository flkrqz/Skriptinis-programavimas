%% 2 laboratorinis darbas
% Skriptinis programavimas
% Vardas, pavarde: Jaromir Koženevski
% Grupe: EDIf25/1
% 5 variantas

%% 1. Vienmačiai masyvai

x = (-2*pi : pi/4 : 2*pi)'

y = tan(x)

z = x ./ y


%% 2. Dvimačiai masyvai

Z = randn(2,3)

Z = Z'

A = randn(3,1)

M = [Z A]

D = det(M)


%% 3. Praktinis veiksmu su masyvais taikymas

t = 0 : 0.002 : 1.2;

amplitude = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;

s = amplitude * sin(2*pi*f*t);

n = sigma * randn(size(t));

signalas = s + n;

virs_U1 = signalas(signalas > U1);

filtruotas = signalas;

filtruotas(abs(filtruotas) < U2) = 0;

signalo_dydis = size(signalas)

atrinktu_dydis = size(virs_U1)

didziausia_reiksme = max(filtruotas)

maziausia_reiksme = min(filtruotas)


%% Papildoma uzduotis P1
A1 = input('Iveskite vektoriu A = ');
B = [A1 A1(end:-1:1)];
disp('vektorius B yra:')
disp(B)