%% 3 laboratorinis darbas
% Skriptinis programavimas
% Vardas, pavarde: Jaromir Koženevski
% Grupe: EDIf25/1
% 5 variantas

%% 1. Dvimatis grafiku vaizdavimas

%% 1a

x1 = 0 : 0.5 : 2*pi;

y1 = sin(x1) + cos(x1).^2;

figure(1)

plot(x1, y1, 'o', ...
    'MarkerEdgeColor', 'r', ...
    'MarkerFaceColor', 'y')

title('f(x) = sin(x) + cos^2(x)')
xlabel('x')
ylabel('f(x)')
grid on

legend('f(x) = sin(x) + cos^2(x)', 'Location', 'best')

axis([min(x1) max(x1) min(y1)-0.2 max(y1)+0.2])


%% 1b

e = exp(1);

x2 = 0 : 0.05 : 2;

y2_1 = x2.^e;
y2_2 = x2.^(2*e);
y2_3 = x2.^(3*e);

figure(2)

plot(x2, y2_1, 'r', 'LineWidth', 2)
hold on

plot(x2, y2_2, 'b', 'LineWidth', 2)
plot(x2, y2_3, 'g', 'LineWidth', 2)

hold off

title('Trys funkcijos')
xlabel('x')
ylabel('f(x)')
grid on

legend('x^e', 'x^{2e}', 'x^{3e}', 'Location', 'northwest')

axis([min(x2) max(x2) ...
      min([y2_1 y2_2 y2_3]) ...
      max([y2_1 y2_2 y2_3])])

%% 2. Specializuotu grafiku kurimas

x3 = -2*pi : 0.5 : 2*pi;

y3 = x3.^3 + sin(x3);

figure(3)


%% 2a

subplot(1,2,1)


quiver(x3, zeros(size(x3)), ...
       zeros(size(x3)), y3, 0)

title('y(x) = x^3 + sin(x) - vektoriai')
xlabel('x')
ylabel('y(x)')
grid on


%% 2b

subplot(1,2,2)

bar(x3, y3)

title('y(x) = x^3 + sin(x) - stulpeline diagrama')
xlabel('x')
ylabel('y(x)')
grid on


%% Papildoma uzduotis

t = 0 : 0.002 : 1.2;

amplitude = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;

s = amplitude * sin(2*pi*f*t);

n = sigma * randn(size(t));

signalas = s + n;

filtruotas = signalas;

filtruotas(abs(filtruotas) < U2) = 0;


%% Papildoma a)

figure(4)

subplot(1,2,1)

plot(t, signalas, '-', 'LineWidth', 2)

hold on

plot(t, filtruotas, ':', 'LineWidth', 2)

yline(U1, 'r--', 'U1', 'LineWidth', 1.5)

yline(U2, '--', 'U2', ...
    'Color', [0.5 0 0.5], ...
    'LineWidth', 1.5)

hold off

title('Pradinis ir filtruotas signalai')
xlabel('Laikas, s')
ylabel('Itampa, V')
grid on

legend('Pradinis signalas', ...
       'Filtruotas signalas', ...
       'U1', ...
       'U2', ...
       'Location', 'northeast')

ymin = min([signalas filtruotas]) - 1;
ymax = max([signalas filtruotas]) + 1;

axis([min(t) max(t) ymin ymax])


%% Papildoma b)

subplot(1,2,2)

indeksai = signalas > U1;

t_U1 = t(indeksai);
signalas_U1 = signalas(indeksai);

stem(t_U1, signalas_U1, ...
    'LineWidth', 2)

hold on

max_reiksme = max(signalas_U1);

min_reiksme = min(signalas_U1);

max_vieta = signalas_U1 == max_reiksme;
min_vieta = signalas_U1 == min_reiksme;

plot(t_U1(max_vieta), signalas_U1(max_vieta), ...
    'go', ...
    'MarkerSize', 9, ...
    'LineWidth', 2)

plot(t_U1(min_vieta), signalas_U1(min_vieta), ...
    'rs', ...
    'MarkerSize', 9, ...
    'LineWidth', 2)

hold off


title('Signalo reiksmes virs U1')
xlabel('Laikas, s')
ylabel('Itampa, V')
grid on

legend('Reiksmes virs U1', ...
       'Maksimali reiksme', ...
       'Minimali reiksme', ...
       'Location', 'northeast')

axis([min(t) max(t) ...
      U1-0.5 max(signalas_U1)+0.5])