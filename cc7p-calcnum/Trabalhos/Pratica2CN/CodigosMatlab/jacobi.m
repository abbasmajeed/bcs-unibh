%%   Dayanne Gouveia Coelho
%	UNIBH - Departamento de Ciencias Exatas e Tecnol�gicas
%	e-mail: dayanne.coelho@prof.unibh.br  
% M�todo iterativo de Jacobi para determinar uma solu��o 
% aproximada do sistema  Ax=b.    
%%
function [tabela,x, R] = jacobi(A,b,x0,eps,Iter) 

n = length(b); 
x = x0;     % inicializa Xant 
X = x0;          % inicializa X  
tabela = [ x0' 0];        % inicializa Z   
for k = 1:Iter   % iterar at� max vezes
   for j = 1:n   % para cada equa��o  
   Sum = b(j) - A(j,[1:j-1,j+1:n])*x([1:j-1,j+1:n]); 
    X(j) = Sum/A(j,j); 
  end
  erro = norm(abs(X-x),inf);
  tabela = [tabela;X' erro ];    % armazena a hist�ria
  if (erro<eps)
      break, 
  end 
  x = X;
  R = b-A*x; % C�lculo do Residuo
end
 


