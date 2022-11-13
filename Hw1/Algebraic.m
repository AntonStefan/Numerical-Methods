function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.

  output_precision(6);
fid = fopen(nume, "r");
N = fgetl(fid);
N = str2num(N);

%A
  %citim matricea
for i = 1:N
  k=str2num(fgetl(fid));
  for j = 3:(k(2)+2)
		A(i,k(j)) = 1;
   end
end 

%matricea noastra trebuie sa aiba pe diagonala 0
  for i =1:N
	if A(i,i) == 1
		A(i,i) = 0;
	end
end

  %L
L = zeros(N, 1);
   for i = 1:N
    %Completam L cu numarul de linkuri
    L(i) = sum(A(i,:) == 1);
  end
  
    %M
  M = zeros(N, N);
  for i = 1:N
	for j = 1:N
		if A(j,i) == 1
			M(i,j) = 1/L(j);
		end
	end
end

  
  vector=ones(N,1);
  In=eye(N);
  R=PR_Inv(In-d*M)*((1-d)/N)*vector;
  endfunction
  