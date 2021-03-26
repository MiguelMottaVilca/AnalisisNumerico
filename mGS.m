function  w=mGS(A,x,e)
n=length(A)-1;
error=e+1;
r=0;
while error>e
    xx=x;
    for i=1:n
        s=0;
        for j=1:n
          if i~=j 
            s=s+A(i,j)*xx(j);
          end
        end
        x(i)=(A(i,n+1)-s)/A(i,i);
    end
    error=norm(x-xx,1);
    r=r+1;
    fprintf('i= %g',r)
    for k=1:n
        fprintf('   x%g=%f',k,xx(k))
    end
    fprintf('   error=%f\n',error)

end
w=x;
endfunction
 