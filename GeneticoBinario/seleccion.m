function [par] = selecciopar(x)
A=(x)
[f,c]=size(A)
par=[]
impar=[]
 for i=1:f
   if(mod(i,2)==0)
     par = [par;A(i,:)]
   end
 end
end