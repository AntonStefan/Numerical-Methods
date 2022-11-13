function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
 fid = fopen(nume, "r");
 output_precision(6);
 buff=fgetl(fid);
N = buff;
N = str2num(N);
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

val1 = fgetl(fid);
val1 = str2double(val1);

val2 = fgetl(fid);
val2 = str2double(val2);
fclose(fid);
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
R1 = Iterative(nume,d,eps);
R2 = Algebraic(nume,d);

PR1=R2;
# Se sorteaza si numarul nodului necesar la sfarsit		
		nod=1:N;
	# Sortare		
		p=1;	
		while (p)
			p=0;
			for j=1:N-1
				if ( PR1(j) < PR1(j+1) )
					p=1;
					aux = PR1(j);
					PR1(j) = PR1(j+1);
					PR1(j+1) = aux;
					aux = nod(j);
					nod(j) = nod(j+1);
					nod(j+1) = aux;
				end
			end
		end


 name = [nume ".out"];
  fid2 = fopen(name, "w");

% printam N
  fprintf(fid2,"Numarul nodurilor: %d\n\n", N);
  
  % Printam PR_Iterative
  fprintf(fid2,"Iterative : \n");
  for i = 1:N
    fprintf(fid2, "%f\n", R1(i));
  end
  fprintf(fid2,"\n");
  fprintf(fid2,"Algebraic : \n");
  
  % Printam PR_Algebraic
  
  for i = 1:N
    fprintf(fid2, "%f\n", R2(i));
  end
  fprintf(fid2,"\n");
  for i=1:N
		fprintf(fid2,"%d %d ", i, nod(i));
		fprintf(fid2,"%f\n", Apartenenta(PR1(i), val1, val2));
	end
  
  fclose(fid2);
endfunction

