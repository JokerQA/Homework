/*1.������� ������� employees*/
create table employess(
	id serial primary key,
	employee_name varchar(50) not null
)

/*2.��������� ������� employee 70 ��������. ����� � ������� ���� ������, � ��������� 70 ������� ������������ python ��������*/
insert into employess(employee_name)
values('Vladislav')

/*3.������� ������� salary*/
create table salary(
id serial primary key,
monthly_salary int not null
)

/*4.��������� ������� salary 15 ��������*/
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
 
/*5.������� ������� employee_salary*/
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
)

/*6.��������� ������� employee_salary 40 ��������. ����� � ����� �������������� python �������� � �������� 40 �������*/
insert into employee_salary(employee_id,salary_id)
values(82,4)

/*7.������� ������� roles*/
create table roles(
id serial primary key,
role_name int not null unique
)

/*8.�������� ��� ������ role_name � int �� varchar(30)*/
alter table roles 
alter column role_name type varchar(30)

/*9.��������� ������� roles 20 ��������*/
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

/*10.������� ������� roles_employee*/
create table roles_employee(
id serial primary key,
employee_id int not null unique,
foreign key (employee_id)
	references employess(id) ,
role_id int not null,
foreign key (role_id)
	references roles(id)
)

/*11.��������� ������� roles_employee 40 ��������. 1 ������ �������, ��������� python ��������*/
insert into roles_employee (employee_id,role_id)
values(1,1)

      

