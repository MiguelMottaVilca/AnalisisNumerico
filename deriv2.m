function d = deriv2(x)
h = 0.001 ;
d = (fun(x+h) - fun(x-h)) / (2*h) ;
endfunction