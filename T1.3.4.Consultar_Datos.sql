--Sentencia para consultar el total de víctimas por genero
select Genero, count (*) as total_Victimas
from Registro_Delito
group by Genero

--Sentencia para consultar el total de delitos segun el arma o medio
select Registro_Delito.Cod_Arma, Arma_medio.Nom_Arma as Arma_Medio,  count (*) as total_delitos
from Registro_Delito, Arma_medio
where Registro_Delito.Cod_Arma = Arma_medio.Cod_Arma
group by Registro_Delito.Cod_Arma

--Sentencia para consultar el total de delitos por departamento
select Registro_Delito.Cod_Dep, Departamento.Nom_Dep as Departamento,  count (*) as total_delitos
from Registro_Delito, Departamento
where Registro_Delito.Cod_Dep = Departamento.Cod_Dep
group by Registro_Delito.Cod_Dep

--Sentencia para consultar el departamento con más delitos registrados
select Registro_Delito.Cod_Dep, Departamento.Nom_Dep as Departamento,  count (*) as total_delitos
from Registro_Delito, Departamento 
where Registro_Delito.Cod_Dep = Departamento.Cod_Dep
group by Registro_Delito.Cod_Dep
order by total_delitos DESC
LIMIT 1

--Sentencia para consultar el departamento con menos delitos registrados
select Registro_Delito.Cod_Dep, Departamento.Nom_Dep as Departamento,  count (*) as total_delitos
from Registro_Delito, Departamento 
where Registro_Delito.Cod_Dep = Departamento.Cod_Dep
group by Registro_Delito.Cod_Dep
order by total_delitos ASC
LIMIT 1




