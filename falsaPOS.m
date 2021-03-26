function z=FalsaPOS(a,b,e)
  e1=e+1; 
  while  e1>e
    %c=(a+b)/2;
    
    c=b-fun33(b)*(b-a)/(fun33(b)-fun33(a));
    if fun33(a)*fun33(c)<0
      b=c;
    else
      a=c;
    end
    
    e1=abs(fun33(c));
    
    fprintf('a=%f   b=%f   c=%f   f(a)=%f    f(c)=%f\n',a,b,c,fun33(a),fun33(c))
       
   end
  
  z=c;
  
  
endfunction