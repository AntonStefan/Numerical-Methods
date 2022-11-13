function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
%define Q and R
[m n] = size(A);
Q = zeros(m,n);
R = zeros(n,n);
%Gram-Schmidt
for i = 1:n
	R(i,i) = norm(A(:,i));
	Q(:,i) = A(:,i)/R(i,i);
	for j = i+1:n
		R(i,j) = Q(:,i)' * A(:,j);
		A(:,j) = A(:,j) - R(i,j)*Q(:,i);
	end
end  
B = inv(R) * Q';
endfunction



