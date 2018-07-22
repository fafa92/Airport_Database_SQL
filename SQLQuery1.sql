create table Plane (PID int, PName varchar(20), buildDate date,
	primary key (PID)
) 

create table Employees(EID int, name varchar(20), salary int, history date,
	primary key(EID)
)

create table Certified(PID int, EID int,
	foreign key(PID) references Plane,
	foreign key(EID) references Employees
)


create table Airports(ID int, city varchar(20), name varchar(20), capacity int,
	primary key(ID)
)

create table Flights (flightNumber int, fromID int, toID int, distance int, departTime time, flightDate date, PID int,
	 arriveTime time, price int,
	primary key (flightNumber),
	foreign key(fromID) references Airports(ID),
	foreign key(toID)references Airports (ID),
	foreign key(PID)references Plane
)


create table Passengers(SSN int, fullName varchar(20), flightNumber int, typeOfFilght varchar(20),
	primary key (SSN),
	foreign key(flightNumber) references Flights
)


