function y = Apartenenta(x, val1, val2)
	% Functia care primeste ca parametrii x, val1, val2 si care calculeaza valoarea functiei membru in punctul x.
	% Stim ca 0 <= x <= 1
  
  
 %Trei ramuri
  if x < val1
    %prima
    y = 0;
    % Rezolvarea functiei u(x) - continua
	% a * val1 + b = 0
	% a * val2 + b = 1
  elseif  x <= val2
    #a doua
    a = 1 / (val2 - val1);
    b = - a * val1;
    y = a * x + b;
  elseif x <=1
    #a treia
    y = 1;
  end
endfunction
	