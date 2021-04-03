%Separación de los datos de entrenamiento/validación
%%
clear
clc

load Trainnumbers
% Trainnumbers
% Trainnumbers.image
% Trainnumbers.label

%%
ind_rand=randperm(10000);

n_prueba=8000;
ind_prueba=ind_rand(1:n_prueba);
p_image_ind=zeros(784,n_prueba);
p_label_ind=zeros(1,n_prueba);
for i=1:n_prueba
	p_image_ind(:,i)=Trainnumbers.image(:,ind_prueba(i));
	p_label_ind(i)=Trainnumbers.label(ind_prueba(i));
end

n_validacion=2000;
ind_validacion=ind_rand(n_prueba+1:10000);
v_image_ind=zeros(784,n_validacion);
v_label_ind=zeros(1,n_validacion);
for j=1:n_validacion
	v_image_ind(:,j)=Trainnumbers.image(:,ind_validacion(j));
	v_label_ind(j)=Trainnumbers.label(ind_validacion(j));
end

%%
PruebaNumbers.image=p_image_ind;
PruebaNumbers.label=p_label_ind;
PruebaNumbers
save 'PruebaNumbers.mat' 'PruebaNumbers'
%clear
%load PruebaNumbers

ValidacionNumbers.image=v_image_ind;
ValidacionNumbers.label=v_label_ind;
ValidacionNumbers
save 'ValidacionNumbers.mat' 'ValidacionNumbers'
%clear
%load ValidacionNumbers