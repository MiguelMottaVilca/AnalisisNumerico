function d=deriv(x)
  h=0.1;
  d=(fun(x+h)-fun(x))/h;  
endfunction