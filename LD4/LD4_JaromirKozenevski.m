%% 4 laboratorinis darbas
% Skriptinis programavimas
% Vardas, pavarde: Jaromir Koženevski
% Grupe: EDIf25/1
% 5 variantas

%% 1a. Pirmasis trimatis grafikas

x = (2*rand(1,200)-1).*sqrt(pi/2);
y = (2*rand(1,200)-1).*sqrt(pi/2);

x = sort(x);
y = sort(y);

[X,Y] = meshgrid(x,y);

Z = sin(X.^2 + Y.^2);

figure(1)

surf(X,Y,Z)

shading interp
colormap parula

view(50,50)

title('f(x,y) = sin(x^2 + y^2)')
xlabel('X asis')
ylabel('Y asis')
zlabel('Z asis')

grid on


%% 1b. Antrasis trimatis grafikas

x2 = -2 : 0.1 : 1;
y2 = -2 : 0.1 : 1;

[X2,Y2] = meshgrid(x2,y2);

Z2 = 1 - 2*X2.^2 - 3*Y2.^2;

figure(2)

surf(X2,Y2,Z2)

shading interp
colormap jet

view(60,60)

title('f(x,y) = 1 - 2x^2 - 3y^2')
xlabel('X asis')
ylabel('Y asis')
zlabel('Z asis')

grid on


%% Papildoma uzduotis

x = -1 : 0.1 : 1;
y = -1 : 0.1 : 1;

[X,Y] = meshgrid(x,y);

Z = 1 - (X.^2 + Y.^2);

figure(3)

surf(X,Y,Z,'FaceColor','b')

alpha(0.5)

title('z(x,y) = 1 - (x^2 + y^2)')
xlabel('X asis')
ylabel('Y asis')
zlabel('Z asis')

grid on
