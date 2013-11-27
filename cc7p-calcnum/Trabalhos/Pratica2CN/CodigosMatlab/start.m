%%   Dayanne Gouveia Coelho
%	UNIBH - Departamento de Ciencias Exatas e Tecnol�gicas
%	e-mail: dayanne.coelho@prof.unibh.br  
%%
%=================== Aula 2 ==================== %
clear all; clc;
%format short  % 4 casas decimais
format bank   % 2 casas decimais 

%==== Procedimento para resolver sistemas lineares ====%
% Exemplo de como entrar com os valores:
% Entrada do algoritmo:

%===== Exemplo 1: ======%
%A = [10 2 3; 0 4.8 0.7; 0 0 9.02];  % matriz A dos sistema
%b = [7;-8;6];     % matriz b ou vetor das constantes.
n = 3;  %dimens�o da matriz

%===== Exemplo 2: ======%
A=[10 2 3; 1 5 1; 2 3 10]; 
b = [ 7;-8;6];
%% ====== Substitui��o Retroativa ===== %% 

%disp('Resolu��o do sistema triangular superior pelo m�todo de substitui��o Retroativa');
%x = SubRetroativa(n,A,b)


%% ====== Metodo Direto: Elimina��o de Gauss ===== %% 
disp('Resolu��o pelo m�todo de Elimina��o de Gauss');

x = EliminacaoGauss(A,b,n)

%% ====== M�todo Iterativo: M�todo de Jacobi ===== %% 
% Valores de Entrada:
 x0 = [0;0;0];    % solu��o inicial
 eps=0.001;       % erro esperado
 IterMax = 10;       % Numero m�ximo de itera��es
% Saida do algoritmo:
% Tabela          (Tabela com todas as solu��es e os errros) 
%   X             (Solu��o Final do sistema)
%   R             (Res�duo)
[tabela, X, R] = jacobi(A,b,x0,eps,IterMax)
