-- Sentencias para Crear las tablas 

CREATE TABLE "Arma_medio" ("Cod_Arma" INTEGER, "Nom_Arma" TEXT, PRIMARY KEY("Cod_Arma"));

CREATE TABLE "Departamento" ("Cod_Dep" INTEGER, "Nom_Dep" TEXT, PRIMARY KEY("Cod_Dep"));

CREATE TABLE "Municipio" ("Cod_Dep" INTEGER, "Cod_Mun" INTEGER, "Nom_Mun"	TEXT, PRIMARY KEY("Cod_Mun"), FOREIGN KEY("Cod_Dep") REFERENCES "Departamento"("Cod_Dep"));

CREATE TABLE "Registro_Delito" ("Cod_Registro" INTEGER, "Cod_Dep" INTEGER, "Cod_Mun" INTEGER, "Cod_Arma" INTEGER, "Fecha_Delito" TEXT, "Genero" TEXT, "Grupo_Et" TEXT, "Can" INTEGER, PRIMARY KEY("Cod_Registro"), FOREIGN KEY("Cod_Arma") REFERENCES "Arma_medio"("Cod_Arma"), FOREIGN KEY("Cod_Dep") REFERENCES "Departamento"("Cod_Dep"));