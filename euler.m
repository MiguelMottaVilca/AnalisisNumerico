function [v_x, v_y]=euler(x0,y0,h,b)%[vx,vy]=
  x=x0;
  y=y0;
  i=0;
  
  fprintf('x0=%6.4f   y0=%6.4f\n',x,y)
  vx(1)=x0;vy(1)=y0;
  for x=x0:h:b-h
    i=i+1;  
    y=y+h*dfxy(x,y);  
    xx=x;
    
    fprintf('x%1.0g=%6.4f   y%1.0g=%6.4f\n',i,xx+h,i,y)
    vx(i+1)=xx+h;
    vy(i+1)=y;
  end
  plot(vx,vy,'or',vx,vy,'b'),grid
  v_x=vx;
  v_y=vy;
endfunction