function siseuler(t0,b,y0,h)
t=t0;y=y0';i=0;

while t<=b
   i=i+1;
   %fprintf('i=%g  , t=%f  , x=%f , y=%f\n',i,t,y(1),y(2));
   x(i)=y(1);yy(i)=y(2);
   y=y+h*funk(y);t=t+h;

end
subplot(1,2,1)
t=t0:h:b;plot(t,x,t,yy,'r'),grid
subplot(1,2,2)
plot(x,yy,'g'),grid
M=[t' x' yy']
M1=[t' x']
M2=[t' yy']
M3=[x' yy']
endfunction