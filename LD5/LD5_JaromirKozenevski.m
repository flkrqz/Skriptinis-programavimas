%% 5 laboratorinis darbas
% Skriptinis programavimas
% Vardas, pavarde: Jaromir Koženevski
% Grupe: EDIf25/1
% 5 variantas

%% 1. Strukturos

studentai = {'Jonas', 'Jonaitis', 'Vilniaus g. 10, Vilnius';
             'Ona', 'Onaite', 'Kauno g. 5, Kaunas';
             'Mantas', 'Petraitis', 'Taikos g. 7, Klaipeda'};

struktura = cell2struct(studentai, ...
    {'vardas', 'pavarde', 'adresas'}, 2);

disp('Pirmo studento duomenys:')
disp(struktura(1))

disp('Ar tai struktura? 1 - taip, 0 - ne:')
disp(isstruct(struktura))


%% 2. Srauto valdymo konstruktoriai

disp('Norint baigti, iveskite x = 0 ir y = 0.')

while true

    x = input('Iveskite x = ');
    y = input('Iveskite y = ');

    if x == 0 && y == 0
        disp('Lygybes tikrinimas baigtas.')
        break
    end

    b = atan(y/x);

    lentele = zeros(10,3);

    for n = 1:10

        kaire = n * (cos(b) + 1i*sin(b))^n;

        desine = cos(n*b) + 1i*sin(n*b);

        skirtumas = kaire - desine;

        lentele(n,:) = [kaire desine skirtumas];

    end

    disp('1 - kaire, 2 - desine, 3 - skirtumas:')
    disp(lentele)

    if max(abs(lentele(:,3))) < 1e-10
        disp('Lygybe galioja visiems n.')
    else
        disp('Lygybe negalioja visiems n.')
    end

end


%% Papildoma uzduotis 

disp('Iveskite teigiamus sveikuosius skaicius.')

x = input('Iveskite x (eiluciu skaicius) = ');
y = input('Iveskite y (stulpeliu skaicius) = ');

for k = 1:10

    A = zeros(x,y);

    m = randi(x);
    n = randi(y);

    A(m,n) = NaN;

    disp('Iteracija:')
    disp(k)
    disp(A)

    if k < 10
        pause(1)
        clc
    end

end
