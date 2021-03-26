function SOL_LU(Aum)
n=length(Aum)-1;
#Aum=[1 3 1 3;2 5 5 7;3 7 8 12]
A=Aum(:,1:3)
[L,U]=desc_lu(A)
b=Aum(:,4)
L1=[L b]
Y=sust_ADELANTE(L1)
U1=[U Y]
X=sr(U1)