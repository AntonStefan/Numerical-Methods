
function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
  
	%	-> nume: numele fisierului din care se citeste;
  fid=fopen(nume,"r");
  output_precision(6);
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
%Citim N

N=fgetl(fid);
N=str2num(N);
A=zeros(N);
k=zeros(1,N);

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

%caclulam indicii Pagerank
R=ones(N,1);
vector= ones(N ,1);
R = R.*1/N;
while 1
	ro = R;
	R = d*M*R + ((1-d)/N)*vector;
	if abs(R - ro) < eps
		break;
	end
end

   fclose(fid);
  endfunction 
  
  
  

    
