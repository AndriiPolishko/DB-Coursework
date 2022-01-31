create table if not exists advertesingAgency (
	id int not null auto_increment,
    agencyName varchar(64) not null,
    type_ varchar(64) not null,
    minimalProjectPrice int not null,
    numberOfEmployees int not null,
    dateOfFoundation date not null,
    locationOfHeadOffice varchar(64) not null,
    fullNameOfTheChairman varchar(64) not null,
    theMainEnvironmentForAds varchar(64) not null ,
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists customer (
	id int not null auto_increment,
    fullName varchar(64) not null,
    customerType varchar(64) not null,
    amountAllocatedForService int not null,
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists agency_customer (
	id_agency int not null,
    id_customer int not null,
    primary key(id_agency,id_customer),
    constraint fk1_id_agency foreign key(id_agency) references advertesingAgency(id) on update cascade on delete cascade,
    constraint fk1_id_customer foreign key(id_customer) references customer(id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists orderingOffice(
	id int not null auto_increment,
	location varchar(64) not null,
    numberOfEmployees int not null,
    primary key(id),
    id_agency int not null,
    constraint fk2_id_agency foreign key(id_agency) references advertesingAgency(id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists orderedService (
id int not null auto_increment,
price int not null,
dateOfTheStart date not null,
dateOfTheEnd date not null,
primary key(id),
id_customer int not null,
constraint fk2_id_customer foreign key(id_customer) references customer(id) on update cascade on delete cascade,
id_office int not null,
constraint fk1_id_office foreign key(id_office) references orderingoffice(id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists audience (
	id int not null auto_increment,
    estimatedNumber int not null,
    averageAge int not null,
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists audience_service (
	id_service int not null,
    id_audience int not null,
    primary key(id_service,id_audience),
    constraint fk1_id_service foreign key(id_service) references orderedService(id) on update cascade on delete cascade,
    constraint fk1_id_audience foreign key(id_audience) references audience(id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists thePurpose (
	id int not null auto_increment,
    type_ varchar(64),
    primary key(id),
    id_service int not null,
    constraint fk2_id_service foreign key(id_service) references orderedService(id) on update cascade on delete cascade 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists publishingEnvironment (
	id int not null auto_increment,
    coveredAudience int not null,
    type_ varchar(64) not null,
    primary key(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists service_environment (
	id_service int not null,
    id_environment int not null,
    primary key(id_service,id_environment),
    constraint fk3_id_service foreign key(id_service) references orderedService(id) on update cascade on delete cascade,
    constraint fk1_id_environment foreign key(id_environment) references publishingenvironment(id) on update cascade on delete cascade 
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists additionalCompanie (
	id int not null auto_increment,
    name_ varchar(64),
    goalOfCooperation varchar(64),
    primary key(id),
	id_office int not null,
	constraint fk2_id_office foreign key(id_office) references orderingoffice(id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists positionOfManager (
	id int not null auto_increment,
    name_ varchar(64),
    salary int,
    primary key (id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

create table if not exists manager (
	id int not null auto_increment,
    fullName varchar(64),
    primary key (id),
    constraint fk1_id foreign key(id) references orderingoffice(id) on update cascade on delete cascade,
    id_agency int not null,
    constraint fk_id_agency foreign key(id_agency) references advertesingagency(id) on delete cascade on update cascade,
    id_position int not null,
    constraint fk_id_position foreign key(id_position) references positionOfManager(id) on delete cascade on update cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into customer(fullName,customerType,amountAllocatedForService)
values ("Paul MacCartney","private persone",420),
		("Ringo Starr","private persone",520),
        ("John Lennon","private persone",420)
        