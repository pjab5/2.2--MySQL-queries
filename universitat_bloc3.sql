use universidad;
select d.nombre,ps.apellido1,ps.apellido2,ps.nombre from profesor as p right join persona as ps on p.id_profesor=ps.id left join departamento as d on p.id_departamento=d.id where ps.tipo='profesor' order by d.nombre,ps.apellido1,ps.apellido2,ps.nombre;
select * from persona as ps left join profesor as p on ps.id=p.id_profesor where ps.tipo='profesor' and p.id_profesor is null;
select d.* from departamento as d left join profesor as p on d.id=p.id_departamento where p.id_profesor is null;
select p.* from persona as p left join asignatura as a on p.id=a.id_profesor where p.tipo='profesor' and a.id_profesor is null;
select * from asignatura where id_profesor is null;
