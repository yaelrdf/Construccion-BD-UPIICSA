select * from especialidades

Select nombre, fecha_nacimiento, id_genero
From Pacientes AS P Inner Join Genero AS G on
P. Genero ID = G.IDGENERO
WHERE G.IDGENERO =1 --No.1 Genero Masculino 

Select nombre,apellido, especialidad
From Medicos AS M INNER JOIN  especialidades AS E ON E.idespecialidad = M.Especialidadid
Where M.Nombre Like "%Alejandro%"

Select p.nombre, fecha, m.medico
From Consulta AS C INNER JOIN Medicos AS M ON 
	M.id.Medico = C.Medico INNER JOIN PACIENTES AS P
    ON C. Paciente id = p.id Paciente
Where C.fecha Between "2025-05-01" AND "2025-05-30"
ORDER BY P.Nombre ASC;

select Nombre, Genero, Especialidad
From genero AS  G INNER JOIN Medicos AS M ON 
G. idGenero = 	m.generoid inner JOIN Especialidad AS e 
ON E.idespecialidad = M.especialidadid
where E.especialidad = 4
order by M.nombre asc;

select count(fecha) as "Numero de consulta"
From Consoultas

select medicoid, count (idconsulta) as "consulta" 
from cosultas
group by medicoid
HAVING COUNT (IDCONSULTA) > 2
ORDER BY MEDICOID DESC;

update CONSULTAS 
SET MEDICOID = 3
where IDCONSULTA = 9

Alter table especialidades 
ADD costo decimal (10,2);  -- Decimales

update especialidad 
set especialidad = 3
where idmedico = 1

select SUM(E.COSTO) AS "TOTAL"
From especialidad as e Inner join medicos as M
     on e.idespecialidad = m.especialidad  inner join 
     consultas as  c on c.medicoid = m.idmedico;