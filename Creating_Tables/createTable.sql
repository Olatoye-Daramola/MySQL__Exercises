use demo;


create table Human(
	`humanId` 	int(10) Not Null,
    `name`		varChar(30) Not Null,
    `age` 		int(3) Not Null,
    `gender` 	varChar(1) Not Null,
    bloodtype 	varChar(3) Not Null,
    Genotype 	varChar(3) Not Null,
    
    -- define the PK --
    constraint human_PK Primary Key(humanId)
);

create table Games(
	`gameId`	int(3) Not Null,
    `GameName`	varChar(30) Not Null,
    `price`		numeric(4,2) Not Null,
	`numeric`	int(3) Not Null,
    Location	varChar(25) Not Null,
    
    constraint Games_PK Primary Key(gameId)
);

create table GamePurchase(
	humanId		int(10) Not Null,
    `gameId`	int(3) Not Null,
    -- Surrogate column --
    `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    constraint Order_Pk Primary Key(humanId, gameId),
    constraint human_fk foreign Key(humanId)
						references Human(humanId),
	constraint game_fk foreign key(gameId)
						references Games(gameId)
);