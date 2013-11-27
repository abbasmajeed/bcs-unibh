% *************************************************************************
% Centro Universit�rio de Belo Horizonte - UNIBH
% Trabalho Pr�tico de Inteligencia Artificial
% Professora Ana Paula Ladeira
% Alunos: Henrique Silvestre Souza e Pedro Lucas Cristianos
% Estudo de T�cnicas de Aprendizado de M�quina Aplicadas a Problemas de
% Classifica��o de Padr�es
% *************************************************************************
%
addpath C:\Knn\prt % Indicando diretorio das bibliotecas utilizadas
prtPath; % Inicializando fun��es
%
%
baseTreinamento = prtDataGenIris; % Carregando dados da flor Iris
baseTreinamento = baseTreinamento.retainFeatures(1:3); % Filtrando 3 dimens�es dos dados obtidos
%
myPca = prtPreProcPca;  % Criando objeto para comportar os valores dos dados processados
myPca.nComponents = 2;  % Setando para 2 os componentes a serem utilizados


%
%
%
%
%
%
%
%
%
%
%
%
%

