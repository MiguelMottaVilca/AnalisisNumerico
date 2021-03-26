function d=funk(y,t)
  f(1,:)= y(2);
  f(2,:)= 80*cos(5*t)-9*y(1);
  d=f;
endfunction