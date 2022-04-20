USE HOSPITAL_MANAGEMENT

/*SQL Script to create table structure for Hospital Admin*/
CREATE TABLE HOSPITAL_ADMIN
(
    ADMIN_ID INT NOT NULL IDENTITY(100,1),
    ADMIN_NAME VARCHAR(30) NOT NULL,
    CONTACT_NO BIGINT NOT NULL,
    EMAIL_ID VARCHAR(50) NOT NULL UNIQUE,
	CONSTRAINT HOSPITAL_ADMIN_PK PRIMARY KEY (ADMIN_ID)
);

/*Insert Scripts for HOSPITAL_ADMIN*/

INSERT INTO HOSPITAL_ADMIN VALUES('Brandy Hagenes', 1978253236, 'brandy.hagenes@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Geraldo Schumm', 9498602713, 'geraldo.schumm@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Jenice Satterfield', 6052122437, 'jenice.satterfield@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Cecille Aufderhar', 5679733830, 'cecille.aufderhar@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Cameron Schinner', 3192189003, 'cameron.schinner@yahoo.com');
INSERT INTO HOSPITAL_ADMIN VALUES('Daron Johns', 5013366101, 'daron.johns@yahoo.com');

SELECT * FROM HOSPITAL_ADMIN

/*PATIENT TABLE STRUCTURE*/

CREATE TABLE PATIENT
(
    PATIENT_ID INT IDENTITY(5000,1) CONSTRAINT PATIENT_PK  PRIMARY KEY, -- primary key column
    FIRST_NAME VARCHAR(30) NOT NULL,
    MIDDLE_NAME VARCHAR(20),
    LAST_NAME VARCHAR(30) NOT NULL,
    DOB DATE NOT NULL ,
    WEIGHT INT CHECK(WEIGHT > 0), -- in pounds (lbs)
    HEIGHT INT CHECK(HEIGHT > 0), -- in centimeters (cm)
    GENDER VARCHAR(2) NOT NULL CHECK(gender IN ('M', 'F', 'NA')), -- assigned at birth
    STREET_NO INT NOT NULL,
    STREET_NAME VARCHAR(100) NOT NULL,
    CITY VARCHAR(30) NOT NULL,
    STATE_NAME CHAR(2) NOT NULL, -- Two letter abbreviation for stateName
    ZIP INT NOT NULL,
    PHONE_NO BIGINT  NOT NULL,
    EMAIL_ID VARCHAR(50) NULL,
);

/*INSERT SCRIPT FOR PATIENT*/

INSERT INTO PATIENT VALUES( 'Onita', 'Murray', 'Langworth', '1973-07-04', 228, 127, 'F', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, 'onita.langworth@yahoo.com');
INSERT INTO PATIENT VALUES( 'Jeffry', 'Cummings', 'Boyer', '06-Feb-1980', 133, 162, 'F', 697, 'Barton Street', 'Domitilachester', 'GA', 31042, 1913425048, 'jeffry.boyer@yahoo.com');
INSERT INTO PATIENT VALUES( 'Domenic', 'Schmidt', 'Bednar', '29-Aug-1964', 330, 126, 'M', 475, 'Bayer Burg', 'South Luannechester', 'DE', 19931, 5712127297, 'domenic.bednar@yahoo.com');
INSERT INTO PATIENT VALUES( 'Darryl', 'Josh', 'Reilly', '18-Sep-1996', 144, 167, 'M', 884, 'Min Station', 'Schneidertown', 'UT', 84523, 4349719735, 'darryl.reilly@yahoo.com');
INSERT INTO PATIENT VALUES( 'Taryn', 'Rempel', 'Breitenberg', '25-Sep-1993', 167, 185, 'M', 554, 'Tammera Parkways', 'West Maliaport', 'TX', 78594, 1312903684, 'taryn.breitenberg@yahoo.com');
INSERT INTO PATIENT VALUES( 'Danny', 'tyler', 'scott', '1993-07-05', 228, 127, 'M', 408, 'Patrick Neck', 'Greenshire', 'OH', 44485, 8168483635, 'danny.tyler@yahoo.com');
INSERT INTO PATIENT VALUES( 'Theodora', 'Greenfelder', 'DuBuque', '08-Sep-1983', 275, 171, 'F', 760, 'Pfannerstill Burg', 'West Robinview', 'CA', 92313, 5173095341, 'theodora.dubuque@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Torie', 'Jenice', 'Huel', '05-Jun-1966', 331, 156, 'F', 309, 'Davis Lodge', 'Thielchester', 'NV', 89145, 2348621386, 'torie.huel@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Lowell', 'Bailey', 'Jaskolski', '03-Nov-1975', 289, 151, 'F', 187, 'Sheilah Highway', 'Erinberg', 'OK', 73024, 1732781752, 'lowell.jaskolski@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Bree', 'Leuschke', 'Wuckert', '31-Dec-2000', 246, 153, 'M', 840, 'Veum Isle', 'New Feliciaborough', 'NM', 87565, 2709166578, 'bree.wuckert@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Sean', 'Dach', 'Stracke', '10-Dec-1998', 221, 164, 'F', 265, 'Rickie Forges', 'Rolfsonview', 'SC', 29208, 1731515022, 'sean.stracke@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Trey', 'Gleichner', 'Deckow', '28-Jun-1988', 292, 133, 'NA', 915, 'Wm Mall', 'Altagraciashire', 'ID', 83635, 5095628048, 'trey.deckow@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Edelmira', 'Cristobal', 'Rutherford', '30-Apr-1997', 236, 156, 'M', 960, 'Collier Cove', 'Aubreyton', 'MA', 1522, 9209542798, 'edelmira.rutherford@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Hoyt', 'Lavonda', 'Kiehn', '21-May-1982', 314, 160, 'M', 369, 'Cremin Brook', 'Gutmannmouth', 'OK', 74441, 1651417637, 'hoyt.kiehn@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Max', 'Gleichner', 'Dickinson', '07-Nov-2001', 326, 165, 'F', 125, 'Grimes Turnpike', 'Claudiomouth', 'TX', 79927, 9723091766, 'max.dickinson@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Haywood', 'Hickle', 'Satterfield', '26-Dec-1961', 232, 200, 'F', 413, 'Angelica Mills', 'South Toraland', 'NE', 69033, 6366091879, 'haywood.satterfield@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Jacalyn', 'Zulauf', 'Hyatt', '05-May-1989', 93, 192, 'F', 200, 'Jack Curve', 'Dachport', 'NE', 68023, 3109843905, 'jacalyn.hyatt@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Guy', 'Renner', 'Monahan', '09-Nov-1994', 157, 167, 'M', 836, 'Maggio Harbors', 'West Winstonview', 'CO', 80160, 2567730143, 'guy.monahan@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Guy', 'Nancee', 'Lockman', '24-Aug-1962', 145, 201, 'M', 778, 'Vincent Motorway', 'Lake Oneida', 'NE', 68136, 3347188220, 'guy.lockman@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Roscoe', 'Turcotte', 'Wisozk', '11-Nov-1983', 299, 121, 'F', 673, 'Osinski Mountains', 'Jessville', 'OR', 97115, 5034011533, 'roscoe.wisozk@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Leslee', 'Boyle', 'Zboncak', '02-Nov-1962', 296, 176, 'M', 698, 'Jesus Estate', 'South Rozella', 'WA', 98257, 1915813529, 'leslee.zboncak@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Teodoro', 'Simonis', 'Doyle', '27-Jun-1968', 97, 188, 'F', 982, 'Domingo Summit', 'Yoshikotown', 'UT', 84014, 9257046301, 'teodoro.doyle@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Chang', 'Koepp', 'Howe', '04-Nov-1995', 221, 179, 'F', 121, 'West Place', 'Port Vaughn', 'IN', 46619, 6189122025, 'chang.howe@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Veronique', 'Zulauf', 'Jaskolski', '14-Sep-2002', 127, 141, 'F', 409, 'Buckridge Expressway', 'Moenstad', 'NE', 68628, 9063093987, 'veronique.jaskolski@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Hermelinda', 'Nader', 'Blanda', '02-Dec-1968', 98, 172, 'F', 82, 'Champlin Ferry', 'Wardville', 'VA', 24155, 2167744265, 'hermelinda.blanda@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Ghislaine', 'Santiago', 'Upton', '19-Jun-1997', 101, 143, 'F', 897, 'Trenton Estates', 'Willischester', 'OH', 44802, 1562970729, 'ghislaine.upton@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Barton', 'Erdman', 'Mraz', '21-Nov-1991', 268, 193, 'M', 250, 'Novella Springs', 'Yvoneborough', 'VA', 23605, 9047577679, 'barton.mraz@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Ervin', 'Romaguera', 'DuBuque', '19-Nov-1998', 174, 145, 'F', 539, 'Terence Plains', 'New Bomouth', 'CT', 6922, 1906478190, 'ervin.dubuque@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Buena', 'Howell', 'Senger', '27-Nov-1983', 282, 173, 'NA', 325, 'Lindgren Oval', 'Kunzemouth', 'MA', 2643, 1541217621, 'buena.senger@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Emmett', 'Carter', 'Miller', '02-Oct-1984', 83, 149, 'F', 610, 'Hettinger Circles', 'South Brett', 'CO', 80244, 6417850015, 'emmett.miller@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Kemberly', 'Hubert', 'Ankunding', '10-Jul-1982', 163, 184, 'F', 305, 'Ondricka Squares', 'Port Sabramouth', 'CT', 6379, 6189368375, 'kemberly.ankunding@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Samual', 'Stehr', 'Zulauf', '09-Dec-1998', 333, 187, 'F', 201, 'Duncan Causeway', 'Garrettfurt', 'IN', 46819, 1206205359, 'samual.zulauf@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Elvera', 'Kuhic', 'Johnston', '26-May-1957', 237, 157, 'F', 823, 'Paris Glen', 'New Ja', 'IA', 51548, 7042765208, 'elvera.johnston@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Robin', 'Emmerich', 'Nader', '21-May-1958', 301, 142, 'M', 108, 'Ullrich Stravenue', 'North Terresaborough', 'ID', 83403, 1714979631, 'robin.nader@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Arnold', 'Stark', 'Schulist', '28-Sep-1985', 147, 124, 'M', 894, 'Deckow Islands', 'Ellsworthhaven', 'WY', 82242, 3519521027, 'arnold.schulist@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Lilli', 'Wiegand', 'Skiles', '15-Jul-1997', 332, 122, 'F', 535, 'Caitlyn Ranch', 'Homenickview', 'MS', 39213, 5019168878, 'lilli.skiles@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Roland', 'McDermott', 'Braun', '31-Dec-1983', 148, 163, 'F', 610, 'Cherry Branch', 'West Joseph', 'OK', 73573, 2536184653, 'roland.braun@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Renaldo', 'Halvorson', 'Ebert', '20-Jan-1969', 242, 158, 'NA', 19, 'Nienow Flat', 'East Yaelborough', 'CO', 81155, 9102195536, 'renaldo.ebert@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Keith', 'White', 'Jast', '28-Mar-1959', 102, 154, 'F', 392, 'Rempel Hill', 'Katieburgh', 'OK', 73744, 6154194742, 'keith.jast@yahoo.com', '');
INSERT INTO PATIENT VALUES( 'Marisha', 'Alton', 'Parker', '12-Oct-1962', 257, 197, 'F', 714, 'Carter Road', 'Port Mikaela', 'NM', 87061, 5055575943, 'marisha.parker@yahoo.com', '');


SELECT * FROM PATIENT

--PROCEDURE FOR DROPPING AND CREATING NONCLUSTERED INDEX FOR PATIENT
USE HOSPITAL_MANAGEMENT;
GO
IF EXISTS (SELECT NAME FROM SYS.INDEXES WHERE NAME ='IX_FULL_NAME')
	DROP INDEX IX_FULL_NAME ON dbo.PATIENT;
GO
CREATE NONCLUSTERED INDEX IX_FULL_NAME ON PATIENT (FIRST_NAME, MIDDLE_NAME, LAST_NAME ASC);
GO

/*DEPARTMENT*/

CREATE TABLE DEPARTMENT
(
    DEPT_ID INT NOT NULL IDENTITY(3000,1),
    DEPT_NAME VARCHAR(100) NOT NULL,
    ADMIN_ID INT NOT NULL,
    CONSTRAINT DEPARTMENT_PK PRIMARY KEY(DEPT_ID),
    CONSTRAINT DEPARTMENT_FK FOREIGN KEY (ADMIN_ID) REFERENCES HOSPITAL_ADMIN(ADMIN_ID)
);

--NONCLUSTERED INDEX FOR DEPT
CREATE NONCLUSTERED INDEX IX_DEPTNAME ON DEPARTMENT (DEPT_NAME ASC);

--DROP TABLE DEPARTMENT

/*INSERT SCRIPT FOR DEPARTMENT*/
/*INSERT SCRIPT FOR DEPARTMENT*/
INSERT INTO DEPARTMENT VALUES('General Internal Medicine',100);
INSERT INTO DEPARTMENT VALUES('Cardiology',100);
INSERT INTO DEPARTMENT VALUES('Dermatology',100);
INSERT INTO DEPARTMENT VALUES('Endocrinology',100);
INSERT INTO DEPARTMENT VALUES('Gastroenterology',100);
INSERT INTO DEPARTMENT VALUES('Oncology',100);
INSERT INTO DEPARTMENT VALUES('Epidemiology',100);
INSERT INTO DEPARTMENT VALUES('Nephrology',100);
INSERT INTO DEPARTMENT VALUES('Pharmacology',100);
INSERT INTO DEPARTMENT VALUES('Pulmonology',100);
INSERT INTO DEPARTMENT VALUES('Rheumatology',100);
INSERT INTO DEPARTMENT VALUES('ER',100);
INSERT INTO DEPARTMENT VALUES('Haemotology',100);
INSERT INTO DEPARTMENT VALUES('Radiology',100);
INSERT INTO DEPARTMENT VALUES('Gynecology',100);
INSERT INTO DEPARTMENT VALUES('Intensive Care Unit',100);
INSERT INTO DEPARTMENT VALUES('Neonatal',100);
INSERT INTO DEPARTMENT VALUES('Neurology',100);
INSERT INTO DEPARTMENT VALUES('Ophthalmology',100);
INSERT INTO DEPARTMENT VALUES('Orthopaedics',100);
INSERT INTO DEPARTMENT VALUES('Urology',100);
INSERT INTO DEPARTMENT VALUES('Anesthesiology',100);
INSERT INTO DEPARTMENT VALUES('Dental Medicine',100);
INSERT INTO DEPARTMENT VALUES('Pediatrics',100);
INSERT INTO DEPARTMENT VALUES('Trauma',100);
INSERT INTO DEPARTMENT VALUES('ENT',100);

SELECT * FROM DEPARTMENT

/*DOCTOR */
CREATE TABLE DOCTOR
(
    DOCTOR_ID INT NOT NULL IDENTITY(4000,1),
    DEPT_ID INT NOT NULL,
    FIRST_NAME VARCHAR(30) NOT NULL,
    MIDDLE_NAME VARCHAR(30),
    LAST_NAME VARCHAR(30) NOT NULL,
    PHONE_NO VARCHAR(10) NOT NULL,
    EMAIL_ID VARCHAR(50) UNIQUE NOT NULL,
    QUALIFICATION VARCHAR(30) NOT NULL,
    YEARS_OF_WORKING INT NOT NULL,
    OFFICE_ROOM VARCHAR(4) NOT NULL,
    CONSTRAINT DOCTOR_PK PRIMARY KEY(DOCTOR_ID),
    CONSTRAINT DOCTOR_FK FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID)
);


/*INSERT SCRIPT FOR DOCTOR*/
INSERT INTO DOCTOR VALUES(3002, 'Lupe', 'Anneliese', 'Waelchi', 1304816124, 'lupe.waelchi@yahoo.com', 'Junior', 3, 1);
INSERT INTO DOCTOR VALUES(3003, 'Florentina', 'Botsford', 'Homenick', 9175022721, 'florentina.homenick@yahoo.com', 'Junior', 2, 1);
INSERT INTO DOCTOR VALUES(3004, 'Temple', 'Murphy', 'Wisoky', 7243015231, 'temple.wisoky@yahoo.com', 'Senior',7,39);
INSERT INTO DOCTOR VALUES(3005, 'Brendan', 'Shanahan', 'McDermott', 5162271847, 'brendan.mcdermott@yahoo.com', 'Senior',10, 23);
INSERT INTO DOCTOR VALUES(3000, 'Nidia', 'Lynch', 'Schmeler', 3056827291, 'nidia.schmeler@yahoo.com', 'Junior',2,38);
INSERT INTO DOCTOR VALUES(3001, 'Leonard', 'Deann', 'Balistreri', 6199136070, 'leonard.balistreri@yahoo.com','Junior', 4, 32);
INSERT INTO DOCTOR VALUES(3010, 'Hollis', 'Rempel', 'Klein', 7188641172, 'hollis.klein@yahoo.com', 'Senior', 6,63);
INSERT INTO DOCTOR VALUES(3005, 'Leonel', 'Hessel', 'Davis',  5173361614, 'leonel.davis@yahoo.com', 'Junior', 1, 55);
INSERT INTO DOCTOR VALUES(3007, 'Ranee', 'Botsford', 'Huels', 1870808919, 'ranee.huels@yahoo.com', 'Junior', 2, 55);
INSERT INTO DOCTOR VALUES(3012, 'Marx', 'Green', 'Marvin', 9016010244, 'marx.marvin@yahoo.com', 'Junior',3, 69);
INSERT INTO DOCTOR VALUES(3011, 'Russ', 'Shanahan', 'Mertz', 1478563818, 'russ.mertz@yahoo.com', 'Senior',10, 84);
INSERT INTO DOCTOR VALUES(3009, 'Marisha', 'Koelpin', 'Carter', 2099595818, 'marisha.carter@yahoo.com', 'Senior',12, 80);
INSERT INTO DOCTOR VALUES(3001, 'Roma', 'Lura', 'Fahey', 7857169644, 'roma.fahey@yahoo.com', 'Senior',15, 47);
INSERT INTO DOCTOR VALUES(3020, 'Sanjuana', 'Shanahan', 'Dach', 8563312155, 'sanjuana.dach@yahoo.com', 'Junior',5, 74);
INSERT INTO DOCTOR VALUES(3021, 'Ethan', 'Walker', 'Dicki', 4076465015, 'ethan.dicki@yahoo.com', 'Senior',15, 87);
INSERT INTO DOCTOR VALUES(3022, 'Larry', 'Lynch', 'Hilpert', 1914518125, 'larry.hilpert@yahoo.com', 'Senior', 19,76);
INSERT INTO DOCTOR VALUES(3023, 'Frida', 'West', 'Schaefer', 1941704535, 'frida.schaefer@yahoo.com', 'Junior',4, 61);
INSERT INTO DOCTOR VALUES(3024, 'Rafaela', 'Harry', 'Beer', 1856336956, 'rafaela.beer@yahoo.com', 'Junior',5, 38);
INSERT INTO DOCTOR VALUES(3025, 'Andre', 'Pagac', 'Kshlerin', 1928707466, 'andre.kshlerin@yahoo.com', 'Senior',10, 32);
INSERT INTO DOCTOR VALUES(3019, 'Jerry', 'Hahn', 'Mohr', 1608754906, 'jerry.mohr@yahoo.com', 'Senior',10, 45);
INSERT INTO DOCTOR VALUES(3018, 'Kenia', 'Baumbach', 'Schuster', 9478147245, 'kenia.schuster@yahoo.com', 'Senior',12, 45);
INSERT INTO DOCTOR VALUES(3017, 'Dreama', 'Pagac', 'Abbott', 7702761822, 'dreama.abbott@yahoo.com', 'Senior',15, 17);
INSERT INTO DOCTOR VALUES(3016, 'Parker', 'Sanford', 'Bailey', 5629186352, 'parker.bailey@yahoo.com', 'Junior',3, 64);
INSERT INTO DOCTOR VALUES(3015, 'Adam', 'Jenkins', 'McGlynn', 4154148490, 'adam.mcglynn@yahoo.com', 'Junior',4, 21);
INSERT INTO DOCTOR VALUES(3014, 'Wilburn', 'Conroy', 'Pouros', 1760518312, 'wilburn.pouros@yahoo.com', 'Senior',8, 53);
INSERT INTO DOCTOR VALUES(3013, 'Jennell', 'Ryan', 'Metz', 7724103609, 'jennell.metz@yahoo.com', 'Senior',10, 7);
INSERT INTO DOCTOR VALUES(3008, 'Terry', 'Adolfo', 'Cruickshank', 3174703398, 'terry.cruickshank@yahoo.com', 'Senior',16, 55);
INSERT INTO DOCTOR VALUES(3012, 'Jc', 'Lang', 'Schmidt', 3179802715, 'jc.schmidt@yahoo.com', 'Junior',1, 56);
INSERT INTO DOCTOR VALUES(3006, 'Serafina', 'Fisher', 'Ankunding', 9496090197, 'serafina.ankunding@yahoo.com', 'Junior',3, 26);
INSERT INTO DOCTOR VALUES(3000, 'Valentin', 'Jordan', 'Hessel', 5072487932, 'valentin.hessel@yahoo.com', 'Junior',5, 44);
INSERT INTO DOCTOR VALUES(3010, 'Delbert', 'Jast', 'Emard', 5673309205, 'delbert.emard@yahoo.com', 'Senior',12, 70);
INSERT INTO DOCTOR VALUES(3011, 'Armida', 'Baumbach', 'Huels', 3186614692, 'armida.huels@yahoo.com', 'Junior',4, 49);
INSERT INTO DOCTOR VALUES(3012, 'Edison', 'Carroll', 'Jakubowski', 6316309755, 'edison.jakubowski@yahoo.com', 'Junior',5, 43);
INSERT INTO DOCTOR VALUES(3013, 'Joshua', 'Rolfson', 'McDermott', 4155853041, 'joshua.mcdermott@yahoo.com', 'Senior', 8, 46);
INSERT INTO DOCTOR VALUES(3014, 'Carolann', 'Stanton', 'Mohr', 2183868761, 'carolann.mohr@yahoo.com', 'Senior',12, 26);
INSERT INTO DOCTOR VALUES(3015, 'Tabitha', 'Kub', 'Schaefer', 8473144158, 'tabitha.schaefer@yahoo.com', 'Senior',14, 44);
INSERT INTO DOCTOR VALUES(3016, 'Rashad', 'Emard', 'Abbott', 3527730531, 'rashad.abbott@yahoo.com', 'Senior',12, 30);
INSERT INTO DOCTOR VALUES(3017, 'Nada', 'Stanton', 'Davis', 9897155118, 'nada.davis@yahoo.com', 'Junior',3, 3);
INSERT INTO DOCTOR VALUES(3018, 'Cristy', 'White', 'Robel', 5018086486, 'cristy.robel@yahoo.com', 'Junior',5, 14);
INSERT INTO DOCTOR VALUES(3019, 'Argentina', 'McCullough', 'Hoppe', 6068284225, 'argentina.hoppe@yahoo.com', 'Senior',18, 7);

SELECT * FROM DOCTOR

--NONCLUSTERED INDEX FOR DOCTOR
CREATE NONCLUSTERED INDEX IX_DOCTOR_NAME ON DOCTOR (FIRST_NAME ASC);


/*DOCTOR SCHEDULE*/
CREATE TABLE DOCTOR_SCHEDULE
(
    DOCSCHEDULE_ID INT NOT NULL IDENTITY(7000,1),
    SCHEDULE_DATE DATETIME,
    SCHEDULE_STATUS VARCHAR(20) DEFAULT 'Available' CHECK(SCHEDULE_STATUS IN ('Available','Cancelled')),
    DOCTOR_ID INT NOT NULL,
    CONSTRAINT DOCTOR_SCHEDULE_PK PRIMARY KEY(DOCSCHEDULE_ID),
    CONSTRAINT DOCTOR_ID FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID)
);

/*INSERT SCRIPT FOR DOCTOR SCHEDULE*/
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-15 04:05:00', 'Cancelled',4000);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-16 07:30:00', 'Available',4001);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-20 18:54:26', 'Available',4002);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-23 12:05:00', 'Cancelled',4002);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-23 17:10:00', 'Available',4003);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-28 08:30:00', 'Available',4004);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-10-29 09:00:00', 'Cancelled',4005);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-01 11:15:00', 'Cancelled',4000);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-05 14:35:00', 'Available',4002);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-18 16:40:00', 'Available',4002);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-22 12:00:00', 'Available',4001);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-23 07:30:00', 'Cancelled',4011);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-23 10:10:00', 'Available',4012);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-24 09:00:00', 'Cancelled',4013);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-25 10:45:00', 'Cancelled',4014);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-28 13:50:00', 'Available',4015);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-11-30 14:00:00', 'Available',4016);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-01 09:15:00', 'Cancelled',4017);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-01 15:35:00', 'Available',4018);
INSERT INTO DOCTOR_SCHEDULE VALUES('2021-12-02 11:20:00', 'Available',4019);

SELECT * FROM DOCTOR_SCHEDULE

/*Stored Procedures for Doctor Schedule*/

-- Enter the doctor's first and last name to get the doctor's schedule appointment
USE HOSPITAL_MANAGEMENT
GO
CREATE PROCEDURE GetDOCTORSHEDULE @FirstName VARCHAR(30), @Lastname VARCHAR(30) AS
BEGIN
    SELECT d.DOCTOR_ID, d.FIRST_NAME, d.LAST_NAME, ds.DOCSCHEDULE_ID, ds.SCHEDULE_DATE, ds.SCHEDULE_STATUS
    FROM Doctor d JOIN DOCTOR_SCHEDULE ds ON d.DOCTOR_ID = ds.DOCTOR_ID
    WHERE FIRST_NAME = @FirstName AND LAST_NAME = @Lastname
END;

EXEC GetDOCTORSHEDULE 'Temple','Wisoky';

-- Enter the department and the date, see all the available doctors.
GO
CREATE PROCEDURE GetDOCTORAVAILABLE @SCHEDULE_DATE VARCHAR(30), @DEPARTMENT_NAME VARCHAR(30) AS
BEGIN
    SELECT d.DOCTOR_ID, d.FIRST_NAME,d.LAST_NAME, ds.DOCSCHEDULE_ID, ds.SCHEDULE_DATE, ds.SCHEDULE_STATUS,dp.DEPT_ID,dp.DEPT_NAME
    FROM DOCTOR d LEFT JOIN DOCTOR_SCHEDULE ds ON d.DOCTOR_ID = ds.DOCTOR_ID
                  LEFT JOIN DEPARTMENT dp ON d.DEPT_ID = dp.DEPT_ID
    WHERE ds.SCHEDULE_DATE between CONVERT(DATETIME,'2021-10-20',0) AND DATEADD(dd,1,'2021-10-20')
    AND dp.DEPT_NAME = @DEPARTMENT_NAME
END;

EXEC GetDOCTORAVAILABLE '2021-10-20','Gastroenterology';


/*SQL Script to create table structure for Lab*/
CREATE TABLE LAB
(
    LAB_ID INT NOT NULL IDENTITY(8000,1),
    LAB_NAME VARCHAR(30) NOT NULL,
	LAB_TYPE VARCHAR(30) NOT NULL,
    LAB_DESCRIPTION VARCHAR(50) NOT NULL,
	ADMIN_ID INT NOT NULL,
    CONSTRAINT LAB_PK PRIMARY KEY (LAB_ID),
	CONSTRAINT LAB_FK FOREIGN KEY (ADMIN_ID) REFERENCES HOSPITAL_ADMIN(ADMIN_ID)
);

/*INSERT SCRIPT FOR LAB*/
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Complete Blood Count(CBC)','Complete Blood Count(CBC)','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Prothrombin Time','Prothrombin Time','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Basic Metabolic Panel','Basic Metabolic Panel','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Comprehensive Metabolic Panel','Comprehensive Metabolic Panel','101')
INSERT INTO LAB VALUES ('Wallgreens','Lipid Panel','Lipid Panel','104')
INSERT INTO LAB VALUES ('Wallgreens','Liver Panel','Liver Panel','104')
INSERT INTO LAB VALUES ('Wallgreens','Thyroid Stimulating Hormone','Thyroid Stimulating Hormone','104')
INSERT INTO LAB VALUES ('Wallgreens','Hemoglobin A1C','Hemoglobin A1C','104')
INSERT INTO LAB VALUES ('Wallgreens','Urinalysis','Urinalysis','104')
INSERT INTO LAB VALUES ('Quest Diagnostics','Echo','Echo','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','ECG','ECG','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','CT Scan','CT Scan','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Bone Densitometry','Bone Densitometry','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Angiography','Angiography','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','Mamography','Mamography','102')
INSERT INTO LAB VALUES ('Quest Diagnostics','X-Ray Report','X-Ray Report','102')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Vitamin Deficiency','Vitamin Deficiency','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Cancer Biopsy Test','Cancer Biopsy Test','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Diabetes','Diabetes','101')
INSERT INTO LAB VALUES ('Boston Clinical Laboratories','Abdominal Test','Abdominal Test','101')


SELECT * FROM LAB


/*BILLING*/
Create table BILLING
(
	BILLING_ID int not null identity (9000,1),
	BILLING_DATE date not null,
	PATIENT_ID int not null ,
	DOCTOR_FEES int not null,
	ROOM_CHARGES int not null,
	Constraint Billing_PK PRIMARY KEY (BILLING_ID),
	Constraint Billing_FK FOREIGN KEY (PATIENT_ID) REFERENCES Patient (PATIENT_ID)

);


/*APPOINTMENT SCHEDULING*/

Create table APPOINTMENT_SCHEDULING 
(
	APPOINTMENT_ID int not null identity(1000,1),
	DOCSCHEDULE_ID int not null ,
	PATIENT_ID int not null ,
	ADMIN_ID int not null ,
	APPOINTMENT_DATE datetime not null,
	START_TIME TIME NOT NULL,
	END_TIME TIME NOT NULL,
	APPOINTMENT_STATUS varchar(30),
	APPOINTMENT_REASON VARCHAR(50),
	PATIENT_TYPE VARCHAR(1)
	Constraint Appointment_Scheduling_PK PRIMARY KEY (APPOINTMENT_ID),
	Constraint Appointment_Scheduling_FK1 FOREIGN KEY (DOCSCHEDULE_ID) REFERENCES Doctor_Schedule(DOCSCHEDULE_ID),
	Constraint Appointment_Scheduling_FK2 FOREIGN KEY (PATIENT_ID) REFERENCES Patient (PATIENT_ID),
	Constraint Appointment_Scheduling_FK3 FOREIGN KEY (ADMIN_ID) REFERENCES Hospital_Admin (ADMIN_ID)
);

SELECT * FROM APPOINTMENT_SCHEDULING WHERE APPOINTMENT_DATE = '2021-10-16 07:30:00.000'

SELECT * FROM DOCTOR_SCHEDULE

SELECT * FROM APPOINTMENT_SCHEDULING

Insert into APPOINTMENT_SCHEDULING Values ('7001','5001','100','2021-10-16 07:30:00.000','07:30:00','08:00:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7002','5002','100','2021-10-20 18:54:26.000','18:54:26','19:00:00','Booked','TEST','O');
Insert into APPOINTMENT_SCHEDULING Values ('7004','5003','100','2021-10-23 17:10:00.000','17:10:00','18:00:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7005','5007','100','2021-10-27 17:10:00.000','18:10:00','19:00:00','Booked','TEST', 'I');
Insert into APPOINTMENT_SCHEDULING Values ('7003','5008','100','2021-10-27 17:10:00.000','18:10:00','19:00:00','Booked','TEST', 'I');


/*RECORD*/

CREATE TABLE RECORD(    RECORD_ID INT PRIMARY KEY NOT NULL IDENTITY(10001,1),    DOCTOR_ID INT FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID),    PATIENT_ID INT FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID),    ADMIT_DATE DATE,    DISCHARGEDATE DATE,    BILLING_ID INT NULL FOREIGN KEY (BILLING_ID) REFERENCES BILLING(BILLING_ID),    PATIENT_TYPE VARCHAR(1) CONSTRAINT CHK_SUBJECT CHECK (PATIENT_TYPE IN ('I', 'O')),)

SELECT * FROM RECORD

INSERT INTO RECORD VALUES(4001, 5001, '2021-10-16 07:30:00.000', '2021-10-20 07:30:00.000',NULL, 'I');



/*DOCTOR_LAB_ACCESS*/
CREATE TABLE DOCTOR_LAB_ACCESS
(
DOCTOR_ID INT NOT NULL,
LAB_ID INT NOT NULL,
SCOPE_AUTHORITY INT NOT NULL,
PERMISSION_DATETIME DATETIME NOT NULL
CONSTRAINT DOCTOR_LAB_PK PRIMARY KEY (DOCTOR_ID,LAB_ID),
CONSTRAINT DOCTOR_FK FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID),
CONSTRAINT LAB_FK FOREIGN KEY (LAB_ID) REFERENCES LAB(LAB_ID)
);

/*LAB REPORT*/
CREATE TABLE LAB_REPORT
(
LABREPORT_ID INT NOT NULL IDENTITY(12001,1),
LAB_ID INT NOT NULL,
RECORD_ID INT NOT NULL,
RPTGENERATED_DTTM DATETIME NOT NULL
CONSTRAINT LABREPORT_PK PRIMARY KEY (LABREPORT_ID),
CONSTRAINT LAB_FK FOREIGN KEY (LAB_ID) REFERENCES LAB(LAB_ID),
CONSTRAINT RECORD_FK FOREIGN KEY (RECORD_ID) REFERENCES RECORD(RECORD_ID)
);

/**/
CREATE TABLE PAYMENT(	PAYMENT_ID INT NOT NULL IDENTITY (11001,1),	PAYMENT_METHOD VARCHAR(30) NOT NULL,	PAYMENT_DATE_TIME DATETIME NOT NULL,	BILLING_ID INT NOT NULL,	CONSTRAINT PAYMENT_PK PRIMARY KEY (PAYMENT_ID),	CONSTRAINT PAYMENT_FK FOREIGN KEY (BILLING_ID) REFERENCES BILLING (BILLING_ID)	);


/*UDF*/
/* UDF  -- DATE DIFFERENCE*/
CREATE FUNCTION DateDifference(@x as date, @y as date)
RETURNS int
AS 
BEGIN
DECLARE @Days AS INT 
SET @Days = DATEDIFF(DY,@x,@y)
RETURN @Days
END


/* UDF  -- TIME DIFFERENCE*/
CREATE FUNCTION TimeDifference(@x as DATETIME, @y as DATETIME)
RETURNS DECIMAL
AS 
BEGIN
DECLARE @HR AS DECIMAL 
SET @HR = DATEDIFF(HH,@x,@y)
RETURN @HR
END


/* UDF MULTIPLY*/
CREATE FUNCTION Multiply(@x as int, @y as int)
RETURNS int
AS 
BEGIN
DECLARE @Billing_Amount AS INT 
SET @Billing_Amount = @x*@y
RETURN @Billing_Amount
END

ALTER TABLE RECORD
ADD BILLINGFEE INT;

/* CALCULATE BILING DAYS -- STORED PROCEDURE */

CREATE PROCEDURE BillingDays
AS
BEGIN
    alter table Record ADD BillingDays as (dbo.DateDifference(RECORD.ADMIT_DATE, RECORD.DISCHARGEDATE))
END;

exec BillingDays


ALTER TABLE BILLING
ADD BILLINGFEE INT;


ALTER TABLE RECORD
ADD BILLINGFEE INT;

/* CALCULATE INPATIENT BILLING FEE -- STORED PROCEDURE*/


CREATE PROCEDURE Calculate_IP_Billing
AS
BEGIN
     UPDATE Record SET BILLINGFEE = dbo.Multiply(100, dbo.DateDifference(RECORD.ADMIT_DATE, RECORD.DISCHARGEDATE)) WHERE
     PATIENT_TYPE = 'I'
END;

exec Calculate_IP_Billing

SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT * FROM BILLING

/* CALCULATE OUTPATIENT BILLING FEE -- STORED PROCEDURE*/

CREATE PROCEDURE Calculate_OP_Billing
AS
BEGIN
    UPDATE Record SET BILLINGFEE = dbo.Multiply(10, dbo.TimeDifference(RECORD.ADMIT_DATE, RECORD.DISCHARGEDATE)) WHERE
     PATIENT_TYPE = 'O'
END;

exec Calculate_OP_Billing


/* CALCULATE BILLING FEE STORED PROCEDURE*/

drop procedure Calculate_Billing
CREATE PROCEDURE Calculate_Billing
AS
BEGIN 
   
    IF EXISTS (SELECT Patient_Type from APPOINTMENT_SCHEDULING WHERE PATIENT_TYPE = 'I')
    Begin
            EXEC Calculate_IP_Billing
    End
    IF EXISTS (SELECT Patient_Type from APPOINTMENT_SCHEDULING WHERE PATIENT_TYPE = 'O')
    Begin
            EXEC Calculate_OP_Billing
    End
END

EXEC Calculate_Billing


/*COLUMN BASED ENCRYPTION*/

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'GROUP07_PASSWORD';


CREATE CERTIFICATE GROUP07_CERTIFICATE
WITH SUBJECT = 'GROUP07 HOSPITAL MANAGEMENT',
EXPIRY_DATE= '2022-08-30';

CREATE SYMMETRIC KEY GROUP07_Symmetrickey
WITH ALGORITHM= AES_128
ENCRYPTION BY CERTIFICATE GROUP07_Certificate;
OPEN SYMMETRIC KEY
GROUP07_Symmetrickey
DECRYPTION BY CERTIFICATE GROUP07_CERTIFICATE;


ALTER TABLE DBO.PATIENT
    ADD EncryptedEmail varbinary(128);   
GO  

UPDATE DBO.PATIENT
SET EncryptedEmail = EncryptByKey(Key_GUID('GROUP07_Symmetrickey'), EMAIL_ID);  
GO  


/*TRIGGER TO SEND MAIL TO PATIENT AFTER APPOINTMENT SCHEDULING*/

SP_CONFIGURE 'show advanced options', 1
RECONFIGURE WITH OVERRIDE
GO
 
SP_CONFIGURE 'Database Mail XPs', 1
RECONFIGURE WITH OVERRIDE
GO
 
SP_CONFIGURE 'show advanced options', 0
RECONFIGURE WITH OVERRIDE
GO

CREATE TRIGGER [dbo].[PATIENT_INSERT_Notification]
       ON [dbo].APPOINTMENT_SCHEDULING
AFTER INSERT
AS
BEGIN
       SET NOCOUNT ON;
 
       DECLARE @AppointmentID int
	   DECLARE @FirstName VARCHAR(30)
       DECLARE @MiddleName VARCHAR(20)
       DECLARE @LastName VARCHAR(30)  
 
       SELECT @AppointmentID = APPOINTMENT_SCHEDULING.APPOINTMENT_ID,
	   @FirstName = PATIENT.FIRST_NAME,
	   @MiddleName = PATIENT.MIDDLE_NAME,
	   @LastName = PATIENT.LAST_NAME
       FROM APPOINTMENT_SCHEDULING JOIN PATIENT 
	   ON APPOINTMENT_SCHEDULING.PATIENT_ID = PATIENT.PATIENT_ID

       declare @body varchar(500) = 'Appointment has been created with Appointment ID: ' + cast(@AppointmentID as VARCHAR(10)) 
	   + ' for Patient ' + CAST(@FirstName AS VARCHAR(30)) + ' ' + CAST(@MiddleName AS VARCHAR(20)) + ' ' + CAST(@LastName AS VARCHAR(30))
	   
	   EXEC msdb.dbo.sp_send_dbmail
            @profile_name = 'Hospital_Management_Admin_profile'
		   ,@recipients = 'zodeyshantanu@gmail.com'
           ,@subject = 'Appointment has been created'
           ,@body = @body
           ,@importance ='HIGH'
END

