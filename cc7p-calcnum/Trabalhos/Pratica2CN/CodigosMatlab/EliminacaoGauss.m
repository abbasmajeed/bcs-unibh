%%   Dayanne Gouveia Coelho
%	UNIBH - Departamento de Ciencias Exatas e Tecnológicas
%	e-mail: dayanne.coelho@prof.unibh.br  
%   Eliminação de Gauss  
%%

function x = EliminacaoGauss(A,b,n)
disp('Matriz Aumentada do sistema:');
MA = [A b]  % Matriz Aumentada
tamanhoA = size(MA);
% loop de linha e coluna
linhas  = tamanhoA(1,1);
colunas = tamanhoA(1,2);

for k = 1:(colunas-1)
       for j = (k+1):linhas
           if (MA(j, k) ~= 0)
               m(j,k) = MA(j,k)/MA(k,k);
               MA(j,:) = MA(j,:)- m(j,k) * MA(k,:);
           end
       end
end
    
b = MA(:,colunas); % Vetor b atual 
A = MA(1:n, 1:n); % Matriz A atual

disp('Sistema Triangular Superior');
Sistema_Triangular = [A b]
		
disp('Resolvendo o Sistema triangular superior:')		

x = SubRetroativa(n, A, b);  % Chamando o método Susbtituição retroativa
        
    
end