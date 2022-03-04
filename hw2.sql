/*1.Создать таблицу employees*/
create table employess(
	id serial primary key,
	employee_name varchar(50) not null
)

/*2.Наполнить таблицу employee 70 строками. Здесь я добавил одну строку, а остальные 70 записей сгенерировал python скриптом*/
insert into employess(employee_name)
values('Vladislav')

/*3.Создать таблицу salary*/
create table salary(
id serial primary key,
monthly_salary int not null
)

/*4.Наполнить таблицу salary 15 строками*/
insert into salary(monthly_salary)
values(1000),
      (1100),
      (1200),
      (1300),
      (1400),
      (1500),
      (1600),
      (1700),
      (1800),
      (2000),
      (2100),
      (2200),
      (2300),
      (2400),
      (2500)
 
/*5.Создать таблицу employee_salary*/
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
)

/*6.Наполнить таблицу employee_salary 40 строками. Здесь я вновь воспользовался python скриптом и сгенерил 40 записей*/
insert into employee_salary(employee_id,salary_id)
values(82,4)

/*7.Создать таблицу roles*/
create table roles(
id serial primary key,
role_name int not null unique
)

/*8.Поменять тип столба role_name с int на varchar(30)*/
alter table roles 
alter column role_name type varchar(30)

/*9.Наполнить таблицу roles 20 строками*/
insert into roles(role_name)
values('Junior Python developer'),
      ('Middle Python developer'),
      ('Senior Python developer'),
      ('Junior Java developer'),
      ('Middle Java developer'),
      ('Senior Java developer'),
      ('Junior JavaScript developer'),
      ('Middle JavaScript developer'),
      ('Senior JavaScript developer'),
      ('Junior Manual QA engineer'),
      ('Middle Manual QA engineer'),
      ('Senior Manual QA engineer'),
      ('Project Manager'),
      ('Designer'),
      ('HR'),
      ('CEO'),
      ('Sales manager'),
      ('Junior Automation QA engineer'),
      ('Middle Automation QA engineer'),
      ('Senior Automation QA engineer')

/*10.Создать таблицу roles_employee*/
create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign key (employee_id)
	references employess(id) ,
role_id int not null,
foreign key (role_id)
	references roles(id)
)

/*11.Наполнить таблицу roles_employee 40 строками. 1 запись вручную, остальные python скриптом*/
insert into roles_employee (employee_id,role_id)
values(1,1)


