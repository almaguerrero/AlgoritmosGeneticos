%%%%ALMA ELIZA GUERRERO SANCHEZ
c=1  %%variable para contar numero de generaciones
n=100 %%numero de poblacion
A=round(rand(n,6)) %%genero poblacion
A1=bi2de(A)%%convierto de binario a decimal 
normalizado=funciones(A1) %%normalizo la poblacion en el intervalo de -1 a 1 mando llamar la funcion de normalizacion
%%%%%%%%%%%%%%%%%%%%%%%%
x = linspace(-1,1,100);
y =(x.^2)
plot(x,y) %%Ploteo la funcion fitness
grid on
hold on
x1=normalizado
y1=normalizado.^2
plot(x1,y1,'+r')%%ploteo mi poblacion para ver su nivel fitness de manera grafica
hold on
do = true;
while do  
c=c+1 %%contador de generaciones
 if(c==50000)
do=false
A1=bi2de(A) %%convierto a decimal
%%%%%%%%%%55 
normalizado=funciones(A1)  %%normalizo con la funcion
%%%%%%%%%%%%%%SELECCION PSEUDOALEATORIA CON UN CORTE%%%%%%%%%%%%%
arr1 = randi(n,1,n) 
arr2= randi(n,1,n)
elegidosO=[]
elegidosT=[]
for(i=1:size(A))
 x=arr1(i)
 y=arr2(i)
 pareja11=A(x,:)
 pareja12=A(y,:)
 elegidosO=[elegidosO;pareja11]
 elegidosT=[elegidosT;pareja12]
end

hijos=[]
 for(i=1:size(elegidosO))
    pareja1=elegidosO(i,:)
    pareja2=elegidosT(i,:)
    corte1=pareja1(1:3)
    corte2=pareja2(4:6)
    hijos=[hijos;corte1,corte2]
 end

%%%%%%%%%%%% PLOTEO MI ULTIMA GENERACION PARA COMPROBAR CON MI GENERACION
%%%%%%%%%%%% INICIAL
hijosB=bi2de(hijos)
normalizado=funciones(hijosB)
x2 = linspace(-1,1,100);
title(['generacion',num2str(c)])
grid on
hold on
x3=normalizado
y3=normalizado.^2
plot(x3,y3,'o')

    end
end
