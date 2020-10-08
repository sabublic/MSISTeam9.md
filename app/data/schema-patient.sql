USE finalProject;

CREATE TABLE Person(
PersonalID int(5) primary key,
firstName varchar(40),
lastName varchar(40),
street varchar(40),
city varchar(40),
zipcode varchar(40),
radioNumber int(15),
stationNumber int(15),
gender varchar(10),
email varchar(40),
position varchar(15),
isActive varchar(10),
dateofBirth date
);

CREATE TABLE Ceritfication(
CertificationID INT(5) Primary Key,
certifyingAgency varchar(40),
certificationName varchar(40),
standardExpiry varchar(10)
);

CREATE TABLE Person_Certification(
PersonalID INT(5) Foreign Key REFERENCES Person(PersonalID),
CertificationID INT(5) Foreign Key REFERENCES Certification(CertificationID),
expirationDate date,
certificationStatus varchar(40),
renewedDate date
);

CREATE TABLE person_phone(
PersonalID INT(5) Foreign Key REFRENCES Person(PersonalID),
mobileNumber varchar(10) ,
workNumber varchar(10)
);

INSERT into Person(PersonalID, firstName, lastName, street, city, zipcode, radioNumber, stationNumber,gender,email,position, isActive, dateofBirth)
VALUES("1","Kathryn","Pryde","1123 Xavier School Drive","Watkinsville","GA","30677","A-1", "all","Female","kathrynPyrde@gmail.com","Chief", "Yes","11-03-1990"),
("2","Piotr","Rasputin","A31 Mother Russia Road",""Seattle","WA","98133","841","8","Male","piotrRasputin@gmail.com","Assistant","Yes","02-06-1984""),
("3","Warren","Worthington III","1140 Experiment Station Rd","Watkinsville","GA","47408","122","1","Male","warrenWothington@gmail.com","Fireman","Yes","11-29-1997");

INSERT into Certification(CertificationID,certifyingAgency,certificationName,standardExpiry)
VALUES("1","CPR","CPR for Healthcare Providers/American Heart Assocition","2 years"),
("2","CPR","CPR for the Professional Rescuer/American Red Cross","3 years"),
("3","Firefighter I","Athens Technical College","3 years"),
("4","Firefigher 1","Ivy Technical College","3 years"),
("5","POST","Georgia POST Academy","5 years");

INSERT into person_phone(PersonalID,mobileNumber,workNumber),
VALUES("1"," 707-555-1234","707-555-2345"),
("2",""," 206-555-9876"),
("3","","706-555-3945");
