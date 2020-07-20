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
c=c+1
 if(c==10000)
 do=false
 A1=bi2de(A)
%%%%%%%%%%55
normalizado=funciones(A1)
%%%%%%%%%%%%%%seleccion aleatoria y cruza con dos cortes%%%%%%%%%%%%%
par=seleccion(A)%%Poblacion seleccionada
impar=Iseleccion(A)%%Poblacion seleccionada
hijos=[] %%hijos que tendre
for i=1:size(par)%%For para que pase por todo mi arreglo par
    pareja1=par(i,:) %%elijo la pareja 1
    pareja2=impar(i,:)%%elijo la pareja 2
    corte1=pareja1(1:2)%%[1][0][-][-][-][-]%%selecciono los cortes
    corte2=pareja2(3:4)%%[-][-][1][0][-][-]
    corte3=pareja1(4:5)%%[-][-][-][-][1][0]
    hijos=[hijos;corte1,corte2,corte3]%%junto los cortes y los guardo en un arreglo
end
hijosp=[] %%hijos que tendre
for i=1:size(par)
    pareja1=par(i,:)
    pareja2=impar(i,:)
    corte11=pareja2(1:2)
    corte22=pareja1(3:4)
    corte33=pareja2(4:5)
    hijosp=[hijosp;corte11,corte22,corte33]
end
generacionx=[]
generacionx=[generacionx;hijosp;hijos]
%%%%%%%%%%%%Ploteo la nueva generacion
reese=bi2de(generacionx)
normalizado=funciones(reese)
x2 = linspace(-1,1,100);
title(['generacion',num2str(c)])
grid on
hold on
x3=normalizado
y3=normalizado.^2
plot(x3,y3,'o')
    end
end
