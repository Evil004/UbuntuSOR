#!/bin/bash

cd /
mkdir /proyectos


adduser usu_sinformacion
groupadd g_sinformacion
adduser usu_sinformacion g_sinformacion


adduser usu_desarrollo
groupadd g_desarrollo
adduser usu_desarrollo g_desarrollo


adduser usu_explotacion
groupadd g_explotacion
adduser usu_explotacion g_explotacion

setfacl  -m g:g_sinformacion:7 /proyectos
setfacl -d -m g:g_sinformacion:7 /proyectos
setfacl -R -d -m other:0 /proyectos
setfacl -R -m other:0 /proyectos

mkdir /proyectos/src
mkdir /proyectos/pruebas

cd /proyectos
echo "hola"
setfacl -d -m g:g_desarrollo:7 src
setfacl -m g:g_desarrollo:7 src
setfacl -d -m g:g_explotacion:5 src
setfacl  -m g:g_explotacion:5 src

setfacl -d -m g:g_explotacion:7 pruebas
setfacl -m g:g_explotacion:7 pruebas

setfacl -R -d -m other:1 /proyectos
setfacl -R -m other:1 /proyectos



touch Proyecto1.pdf
touch Proyecto2.pdf

cd pruebas

touch Prueba1.pdf
touch Prueba2.pdf

cd ../src

touch app1.sh
touch app2.sh



