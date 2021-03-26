function RK2(x0,y0,h,b)
  x=x0;y=y0;i=0;
  fprintf('x0=%6.4f   y0=%6.4f\n',x,y)
  vx(1)=x0;vy(1)=y0;
  for x=x0:h:b-2*h
  
  K1=h*dfxy(x,y); xx=x+h;
  K2=h*dfxy(xx,y+K1);
  y=y+(1/2)*(K1+K2);
  fprintf('x%g=%6.4f   y%g=%6.4f\n',i,xx+h,i,y)
  vx(i+1)=xx+h;vy(i+1)=y;
  i=i+1;  
  end
  plot(vx,vy,'or',vx,vy,'b'),grid
endfunction