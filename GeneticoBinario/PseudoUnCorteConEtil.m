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
 if(c==10000)
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


 for(i=1:size(elegidosO))
     hijos=[]
     hijos2=[]
    pareja1=elegidosO(i,:)
    pareja2=elegidosT(i,:)
    corte1=pareja1(1:3)
    corte2=pareja2(4:6)
    corte11=pareja1(4:6)
    corte22=pareja2(1:3)
    hijos=[hijos;corte1,corte2]
    hijos2=[hijos2;corte11,corte22]
    %%%%%%%%%%%%%%%%%%%
    parejaBin=bi2de(elegidosO(i,:))
    parejaBin2=bi2de(elegidosT(i,:))
    hijo1Bin=bi2de(hijos)
    hijo2Bin=bi2de(hijos2)
    %%%%%%%%%%%%%%%%%%%
    ANorm=[]
    ANorm=[ANorm;parejaBin;parejaBin2;hijo1Bin;hijo2Bin]
    etil=desnormalizar(ANorm)
    hijo1=etil(1,:)
    hijo2=etil(2,:)
    generacion_x=[]
    generacion_x=[generacion_x;hijo1;hijo2]
    titanes=dec2bin(generacion_x)
    A=[]
    A=titanes
    %%Ploteo
    %alex=str2double(titanes);
    normalizado=funciones(etil)
    x2 = linspace(-1,1,100);
    title(['generacion',num2str(c)])
    grid on
    hold on
    x3=normalizado
    y3=normalizado.^2
    plot(x3,y3,'o')
 end
    end
end
