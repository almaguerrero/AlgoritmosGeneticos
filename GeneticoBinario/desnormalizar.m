function [m] = desnormalizar(x)
disp(x)%---> gente
c=4
range = max(x(:)) - min(x(:));
m01 = (x - min(x(:))) / range;
ANorm = 2 * m01 - 1
AOr=sort(ANorm,'descend')

 generacionx=[]
for(i=1:c)
    elegido=AOr(i)
    generacionx=[generacionx;elegido]
end
%%desnormalizar

m = (generacionx./2+0.5) * (max(x(:)) - min(x(:))) + min(x(:))

end