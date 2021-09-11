-- To add a column to an existing table --
alter table Games
add gameGenre varchar(45) default('None');  

alter table Human
add height numeric(4, 1) default(0);

-- To drop a column to an existing table --
alter table Human
drop COLUMN height;

-- To delete a row --
delete from GamePurchase
where humanId = 2;

-- To delete all in a table --
delete from Human;

-- Add Primary Key to an existing table --
create table Persons (
	ID int not null,
    LastName varchar(255) not null,
    FirstName varchar(255) not null,
    Age int
);

alter table Persons
add constraint PK_Person primary key (ID, LastName);

-- Remove Primary Key constraint from a table --
alter table Persons
drop primary key;