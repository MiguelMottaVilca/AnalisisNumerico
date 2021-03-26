function z = sr(A)
  n = length(A) - 1 ;
  x = zeros(n,1);
  x(n) = A(n,n+1)/A(n,n);
  for i =  n-1 : -1 : 1
    s = 0;
    for j = i+1 : n
      s = s+A(i,j)*x(j);
    endfor
    x(i)=(A(i,n+1)-s)/A(i,i);
  endfor
  z = x;
endfunction
