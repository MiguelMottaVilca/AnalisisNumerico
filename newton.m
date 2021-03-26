function z=newton(a,b,x0,e)
  e1=e+3;
  x=x0;
  c = 0 ;
 while c < 1 ; 
  xn=x;
  x=x-fun(x)/deriv(x);
  e1=abs(xn-x);
  fprintf('x=%f   f(x)=%f\n',x,e1)
  c = c + 1;
 end
  h=(b-a)/100;
  xx=a:h:b;
  yy=fun(xx);
  plot(xx,yy,'r',x,0,'ob')
  grid
  z=x;
endfunction