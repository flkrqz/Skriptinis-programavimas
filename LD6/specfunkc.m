function varargout = specfunkc(varargin)
% SPECFUNKC Skaiciuoja pagal ivestu argumentu skaiciu.
% Naudojimas:
%   rezultatas = specfunkc(a)    - grazina a^2.
%   rezultatas = specfunkc(a,b)  - grazina a^2 - b^3.
% Funkcija grazina viena rezultata.

if nargin == 1
    a = varargin{1};
    rezultatas = a^2;
elseif nargin == 2
    a = varargin{1};
    b = varargin{2};
    rezultatas = a^2 - b^3;
else
    error('Iveskite viena arba du skaicius.')
end

if nargout > 1
    error('Funkcija grazina tik viena rezultata.')
end

if nargout == 0
    disp(rezultatas)
else
    varargout{1} = rezultatas;
end
end
