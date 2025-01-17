use universidad;
select apellido1, apellido2, nombre from persona where tipo='alumno' order by apellido1 asc, apellido2 asc, nombre asc;
select nombre, apellido1, apellido2 from persona where tipo='alumno' and telefono is null;
select * from persona where tipo='alumno' and substring(fecha_nacimiento,1,4)='1999';
select * from persona where tipo='profesor' and telefono is null and nif LIKE "%K";
select * from asignatura where cuatrimestre=1 and curso=3;
select p.apellido1, p.apellido2, p.nombre,d.nombre from profesor as pf inner join persona as p on pf.id_profesor = p.id left join departamento as d on pf.id_departamento=d.id  order by p.apellido1 asc, p.apellido2 asc, p.nombre asc;
select sg.nombre, c.anyo_inicio, c.anyo_fin from alumno_se_matricula_asignatura as a inner join curso_escolar as c on a.id_curso_escolar=c.id inner join persona as p on a.id_alumno=p.id inner join asignatura as sg on a.id_asignatura=sg.id where p.nif="26902806M";
select dp.nombre from asignatura as a inner join grado as g on a.id_grado=g.id inner join (select id_profesor, nombre from profesor as p inner join departamento as d on p.id_departamento=d.id) as dp on a.id_profesor=dp.id_profesor where g.nombre='Grado en Ingeniería Informática (Plan 2015)';
select distinct p.nombre, p.apellido1, p.apellido2 from alumno_se_matricula_asignatura as a inner join curso_escolar as c on a.id_curso_escolar=c.id inner join persona as p on a.id_alumno=p.id inner join asignatura as sg on a.id_asignatura=sg.id where p.tipo='alumno' and c.anyo_inicio=2018;