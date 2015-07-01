%Datos del honeypot
sD = som_read_data('honeypot3.data');
%var normalición mediante la varianza
sD = som_normalize(sD,'var');
%Entrenamiento
sM = som_make(sD,'seq');
%Auto etiquetado de celdas
sM = som_autolabel(sM,sD,'vote');

figure;
% muestra el mapa (U-Matrix) 
%som_show(sM,'umat','all','empty','Labels');
som_show(sM,'umat','all','comp','all','empty','Labels','norm','d');
 
% muestra las etiquetas
som_show_add('label',sM,'Textsize',8,'TextColor','r','Subplot',4);

%Amumentar celdas que contienen mayor numero de ejemplos.
h = som_hits(sM,sD);
som_show_add('hit',h,'MarkerColor','r','Subplot',2);

%Datos del honeypot
sD = som_read_data('honeypot4.data');
%var normalición mediante la varianza
sD = som_normalize(sD,'var');
%Entrenamiento
sM = som_make(sD,'seq');
%Auto etiquetado de celdas
sM = som_autolabel(sM,sD,'vote');

figure(2);
% muestra el mapa (U-Matrix) 
%som_show(sM,'umat','all','empty','Labels');
som_show(sM,'umat','all','comp','all','empty','Labels','norm','d');
 
% muestra las etiquetas
som_show_add('label',sM,'Textsize',8,'TextColor','r','Subplot',4);

%Amumentar celdas que contienen mayor numero de ejemplos.
h = som_hits(sM,sD);
som_show_add('hit',h,'MarkerColor','r','Subplot',2);

%Datos del honeypot
sD = som_read_data('honeypot5.data');
%var normalición mediante la varianza
sD = som_normalize(sD,'var');
%Entrenamiento
sM = som_make(sD,'seq');
%Auto etiquetado de celdas
sM = som_autolabel(sM,sD,'vote');

figure;
% muestra el mapa (U-Matrix) 
%som_show(sM,'umat','all','empty','Labels');
som_show(sM,'umat','all','comp','all','empty','Labels','norm','d');
 
% muestra las etiquetas
som_show_add('label',sM,'Textsize',8,'TextColor','r','Subplot',4);

%Amumentar celdas que contienen mayor numero de ejemplos.
h = som_hits(sM,sD);
som_show_add('hit',h,'MarkerColor','w','Subplot',2);
