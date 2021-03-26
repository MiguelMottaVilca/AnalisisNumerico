function sis_euler_xy(t0,b,y0,h)
  t=t0; y=y0'; i=0;
  while t<=b
    i=i+1;
    x(i)=y(1); yy(i)=y(2);
    y=y+h*funk(y,t); t=t+h;
  endwhile
  %%subplot(1,2,1)
  t=t0:h:b; 
  plot(t,x,'b'),grid
  #plot(t,x,'b',t,yy,'r'),grid
  %legend('Concentracion de Sal - Tanque A','Concentracion de Sal - Tanque B') 
  %subplot(1,2,2)
  %plot(x,yy,'g'),grid
  M=[t' x' yy']
endfunction