--Sentencia para contar el género femenino
db.registro_delito.count( { Genero: "Femenino" })

--Sentencia para contar el género masculino 
db.registro_delito.count( { Genero: "Masculino" })

--Sentencia para listar el departamento y grupo etario de genero masculino 
db.registro_delito.find({ Genero: "Masculino" },{ Grupo_Etario: 1, Departamento: 1 })

--Sentencia para listar el municipio y la fecha donde el arma o medio fue contundente
db.registro_delito.find({ Armas: "Contundentes" },{ Municipio: 1, Fecha: 1 })