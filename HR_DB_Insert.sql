/*job_grades: GRADE_LEVEL varchar(2) NOT NULL,LOWEST_SAL LONG NULL, HIGHEST_SAL LONG NULL*/
INSERT INTO job_grades VALUES('12', 10000, 12000);
INSERT INTO job_grades VALUES('11', 8000, 9999);
INSERT INTO job_grades VALUES('10', 6000, 7999);
INSERT INTO job_grades VALUES('09', 4000, 5999);
INSERT INTO job_grades VALUES('08', 2000, 3999);
INSERT INTO job_grades VALUES('07', 100, 1999);

/*jobs:JOB_ID VARCHAR(10) NOT NULL,JOB_TITLE VARCHAR(35) NULL,MIN_SALARY LONG NULL,MAX_SALARY LONG NULL*/
INSERT INTO jobs values( "IT_PROG", "PROGRAMMER" , 12102.90,3405544.57);
INSERT INTO jobs values( "FI_MGR", "FIN_TECH" , 2000.90,2945544.57);
INSERT INTO jobs values( "FI_ACCOUNT", "ACOUNTANT" , 2090.90,2645544.57);
INSERT INTO jobs values( "PU_MAN", "MANAGER" , 1022.90,2745544.57);
INSERT INTO jobs values( "PU_CLERK", "OFFICE CLERKS" , 1022.90,2245544.57);
INSERT INTO jobs values( "ST_MAN", "STORE KEEPER" , 10822.90,2945544.57);
INSERT INTO jobs values( "ST_CLERK", "STORE CLERK" , 10922.90,2785544.57);
INSERT INTO jobs values( "SA_REP", "MARKETER" , 1002.90,1645544.57);     
 
     
     
     
     
 


/*regions:REGION_ID numeric NOT NULL,REGION_NAME VARCHAR(25) NULL*/
INSERT INTO regions VALUES(100, "METROPOLIS");
INSERT INTO regions VALUES(101, "DERIVANGE");
INSERT INTO regions VALUES(102, "BUNDFERGUS");
INSERT INTO regions VALUES(103, "SEAMUR");
INSERT INTO regions VALUES(104, "PREAH");
INSERT INTO regions VALUES(105, "HARPPER");
INSERT INTO regions VALUES(106, "BRINLK");
INSERT INTO regions VALUES(107, "ARCH");
INSERT INTO regions VALUES(108, "BRAT");
INSERT INTO regions VALUES(109, "GARNT");

/*countries:COUNTRY_ID CHAR(2) NOT NULL,COUNTRY_NAME VARCHAR(40) NULL,REGION_ID NUMERIC NULL*/
INSERT INTO countries VALUES(01, "HELSINKI",100);
INSERT INTO countries VALUES(02, "UKRAINE",101);
INSERT INTO countries VALUES(03, "NIGERIA",102);
INSERT INTO countries VALUES(04, "INDIA",103);
INSERT INTO countries VALUES(05, "FRANCE",104);
INSERT INTO countries VALUES(06, "CHINA",105);
INSERT INTO countries VALUES(07, "ISRAEL",106);
INSERT INTO countries VALUES(08, "GHANA",107);
INSERT INTO countries VALUES(09, "UK",108);
INSERT INTO countries VALUES(10, "USA",109);


/*locations:LOCATION_ID NUMERIC NOT NULL,STREET_ADDRESS VARCHAR(25) NULL,POSTAL_CODE VARCHAR(12) NULL,CITY VARCHAR(30) NULL,STATE_PROVINCE VARCHAR(12) NULL,
COUNTRY_ID CHAR(2) NOT NULL.*/
INSERT INTO locations VALUES(001, "AKANNI", "213-7PMB","OAKLAND", "LIMPOP", 01);
INSERT INTO locations VALUES(002, "GLOVER", "153-9PMB","BASER", "NEW YORK", 02);
INSERT INTO locations VALUES(003, "BAIJI", "908-4PMB","DOWNTOWN", "KADUNA", 03);
INSERT INTO locations VALUES(004, "RELES", "321-8PMB","UPFER", "KOGI", 04);
INSERT INTO locations VALUES(005, "SAMARI", "404-7PMB","BREINNE", "DELTA", 05);
INSERT INTO locations VALUES(006, "DOSA", "278-5PMB","KOGI", "CALIFUEN", 06);
INSERT INTO locations VALUES(007, "BOSTNIA", "645-7PMB","YELWA", "CHAULETTE", 07);
INSERT INTO locations VALUES(008, "REAFOD", "442-7PMB","BURUNDI", "PRAQUE", 08);
INSERT INTO locations VALUES(009, "DANJUMA", "907-7PMB","GBESE", "OSBORNE", 09);
INSERT INTO locations VALUES(010, "KWALI", "655-8PMB","REMUL", "BENTA", 10);

/*departments:DEPARTMENT_ID NUMERIC NOT NULL,DEPARTMENT_NAME VARCHAR(30) NULL,MANAGER_ID NUMERIC NOT NULL,LOCATION_ID NUMERIC NOT NULL*/
INSERT INTO departments VALUES(60, "IT", 103,  001);
INSERT INTO departments VALUES(100, "FINANCE", 101,  002);
#INSERT INTO departments VALUES(100, "FINANCE", 108,  003);
INSERT INTO departments VALUES(30, "PU_MANAGMENT", 100,  004);
#INSERT INTO departments VALUES(30, "PU_CLERK", 114,  005);
INSERT INTO departments VALUES(50, "STORE MANAGEMENT", 100,  006);
#INSERT INTO departments VALUES(50, "STORE CLERK", 120,  007);
#INSERT INTO departments VALUES(80, "SALES REP", 147,  008);
#INSERT INTO departments VALUES(80, "SALES REP", 148,  009);
INSERT INTO departments VALUES(80, "SALES REP", 149,  010);

/*employees:EMPLOYEE_ID NUMERIC NOT NULL,FIRST_NAME VARCHAR(20)  NULL,LAST_NAME VARCHAR(25) NULL,EMAIL VARCHAR(25) NULL,PHONE_NUMBER VARCHAR(20) NULL,
HIRE_DATE DATE NULL,JOB_ID VARCHAR(10) NOT NULL,SALARY NUMERIC NULL,COMMISSION_PCT NUMERIC NULL,MANAGER_ID NUMERIC NOT NULL,DEPARTMENT_ID NUMERIC NOT NULL,*/
INSERT INTO employees VALUES(106, "Valli", "Pataballa", "VPATABAL",'590.423.4560','2006-02-05','IT_PROG', 4800,NULL,103,60);
INSERT INTO employees VALUES(107, "Diana", "Lorentz", "DLORENTZ", '590.423.5567', '2007-02-07','IT_PROG', 4200,0,103,60);
INSERT INTO employees VALUES(108,'Nancy','Greenberg','NGREENBE','515.124.4569','2002-08-17','FI_MGR',12008,0,101,	100);
INSERT INTO employees VALUES(109, 'Daniel', 'Faviet', 'DFAVIET',  '515.124.4169' , '2002-08-16','FI_ACCOUNT', 9000,0, 108,100);
INSERT INTO employees VALUES(110,'John', 'Chen ', 'JCHEN','515.124.4269','2005-09-28', 'FI_ACCOUNT', 8200,	0,	108,	100);
INSERT INTO employees VALUES(111,'Ismael', 'Sciarra','ISCIARRA', '515.124.4369', '2005-09-30',	'FI_ACCOUNT', 7700,0,108,100);
INSERT INTO employees VALUES(112, 'Jose Manuel', 'Urman','JMURMAN', '515.124.4469', '2006-03-07', 'FI_ACCOUNT' ,7800,	0,108,100);
INSERT INTO employees VALUES(113,'Luis', 'Popp', 'LPOPP', '515.124.4567', 	'2007-12-07',	'FI_ACCOUNT',6900,	NULL, 108,100);
INSERT INTO employees VALUES(114,'Den',  'Raphaely' , 'DRAPHEAL', '515.127.4561', '2002-12-07','PU_MAN', 11000,0,	100,30);
INSERT INTO employees VALUES(115,'Alexander', 'Khoo', 'AKHOO',  '515.127.4562', '2003-05-18',	'PU_CLERK', 3100,0,	114, 30);
INSERT INTO employees VALUES(116, 'Shelli', 'Baida',  'SBAIDA',  '515.127.4563',  '2005-12-24', 'PU_CLERK',  2900,0,114,30);
INSERT INTO employees VALUES(121,'Adam','Fripp', 'AFRIPP',  '650.123.2234',  '2005-04-10','ST_MAN',  8200,0,100,	50);
INSERT INTO employees VALUES(122,'Payam',	'Kaufling',  'PKAUFLIN', '650.123.3234','2003-05-01',	'ST_MAN',   7900,0,	100,50);
INSERT INTO employees VALUES(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '2005-10-10','ST_MAN',  6500,	0,	100,	50);
INSERT INTO employees VALUES(124, 'Kevin'  , 'Mourgos',  'KMOURGOS', '650.123.5234',  '2007-11-16',	'ST_MAN',  5800,0,	100,50);
INSERT INTO employees VALUES(125, 'Julia',  'Nayer', 'JNAYER',	'650.124.1214',    '2005-07-16',	'ST_CLERK'  , 3200,	0,	120,	50);
INSERT INTO employees VALUES(126, 'Irene', 'Mikkilineni',	'IMIKKILI',	'650.124.1224', 	'2006-09-28',	'ST_CLERK',   	2700,0,	120,	50);
INSERT INTO employees VALUES(164, 'Mattea',  'Marvins',    'MMARVINS', 	'011.44.1346.329268', 	'2008-01-24',	'SA_REP',	7200,	0.1,	147,	80);
INSERT INTO employees VALUES(165, 'David',    'Lee',    'DLEE',   '011.44.1346.529268', 	'2008-02-23',	'SA_REP',     	6800,	0.1,	147,	80);
INSERT INTO employees VALUES(166,	'Sundar',	'Ande',        	'SANDE',    	'011.44.1346.629268', 	'2008-03-24',	'SA_REP',     	6400,	0.1,147,80);
INSERT INTO employees VALUES(167,	'Amit', 'Banda',       	'ABANDA',   	'011.44.1346.729268', 	'2008-04-21',	'SA_REP',     	6200,	0.1,	147,	80);
INSERT INTO employees VALUES(168,	'Lisa',  'Ozer' ,       	'LOZER',    	'011.44.1343.929268', 	'2005-03-11', 'SA_REP', 	11500,	0.25,	148,	80);
INSERT INTO employees VALUES(169,	'Harrison', 'Bloom',       	'HBLOOM',   	'011.44.1343.829268', 	'2006-03-23',	'SA_REP',10000,	0.2,	148,	80);
INSERT INTO employees VALUES(170,	'Tayler',      	'Fox'  ,       	'TFOX',     	'011.44.1343.729268', 	'2006-01-24',	'SA_REP', 9600,	0.2,	148,	80);
INSERT INTO employees VALUES(171,	'William',     	'Smith',       	'WSMITH',   	'011.44.1343.629268', 	'2007-02-23',	'SA_REP', 7400,	0.15,	148,	80);
INSERT INTO employees VALUES(172,	'Elizabeth',   	'Bates',       	'EBATES',   	'011.44.1343.529268',	'2007-03-24',	'SA_REP', 7300,	0.15,	148,	80);
INSERT INTO employees VALUES(173,	'Sundita',     	'Kumar',       	'SKUMAR',  	'011.44.1343.329268',	'2008-04-21',	'SA_REP',  6100,	0.1,	148,	80);
INSERT INTO employees VALUES(174,	'Ellen',       	'Abel' ,       	'EABEL',    '011.44.1644.429267',	'2004-05-11',	'SA_REP', 11000,0.3,	149,	80);
INSERT INTO employees VALUES(175,	'Alyssa',      	'Hutton',      	'AHUTTON',  '011.44.1644.429266', '2005-03-19',	'SA_REP',8800,	0.25,	149,	80);
INSERT INTO employees VALUES(176,	'Jonathon',    	'Taylor',      	'JTAYLOR',  '011.44.1644.429265', 	'2006-03-24',	'SA_REP', 8600,	0.2,	149,	80);
INSERT INTO employees VALUES(177,	'Jack' ,   	'Livingston',  	'JLIVINGS',	'011.44.1644.429264', 	'2006-04-23',	'SA_REP',  8400,	0.20,	149,	80);
INSERT INTO employees VALUES(178,	'Kimberely',   	'Grant' ,      	'KGRAN', '011.44.1644.429263', 	'2007-05-24',	'SA_REP',   7000,	0.15,	0,80);	
/*job_history:EMPLOYEE_ID NUMERIC NOT NULL,START_DATE DATE NOT NULL,END_DATE DATE NULL,JOB_ID VARCHAR(10) NOT NULL,DEPARTMENT_ID NUMERIC NOT NULL.*/
INSERT INTO job_history VALUES(106,'2006-02-05',NULL,"IT_PROG",60);
INSERT INTO job_history VALUES(107,'2007-02-07',NULL,"IT_PROG",60);
INSERT INTO job_history VALUES(108,'2002-08-17','2020-06-01',"FI_MGR",100);
INSERT INTO job_history VALUES(109,'2002-08-16','2020-06-01',"FI_ACCOUNT",100);
INSERT INTO job_history VALUES(110,'2005-09-28',NULL,"FI_ACCOUNT",100);
INSERT INTO job_history VALUES(111,'2005-09-30',NULL,"FI_ACCOUNT",100);
INSERT INTO job_history VALUES(112,'2006-03-07',NULL,"FI_ACCOUNT",100);
INSERT INTO job_history VALUES(113,'2007-12-07',NULL,"FI_ACCOUNT",100);
INSERT INTO job_history VALUES(114,'2002-12-07',NULL,"PU_MAN",30);
INSERT INTO job_history VALUES(115,'2003-05-18',NULL,"PU_CLERK",30);
INSERT INTO job_history VALUES(116,'2005-12-24',NULL,"PU_CLERK",30);
INSERT INTO job_history VALUES(121,'2005-04-10',NULL,"ST_MAN",50);
INSERT INTO job_history VALUES(122,'2003-05-01',NULL,"ST_MAN",50);
INSERT INTO job_history VALUES(123,'2005-10-10',NULL,"ST_MAN",50);
INSERT INTO job_history VALUES(124,'2007-11-16',NULL,"ST_MAN",50);
INSERT INTO job_history VALUES(125,'2005-07-16',NULL,"ST_CLERK",50);
INSERT INTO job_history VALUES(126,'2006-09-28',NULL,"ST_CLERK",50);
INSERT INTO job_history VALUES(164,'2008-01-24',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(165,'2008-02-23',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(166,'2008-03-24',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(167,'2008-04-21',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(168,'2005-03-11',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(169,'2006-03-23',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(170,'2006-01-24',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(171,'2007-02-23',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(172,'2007-03-24',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(173,'2008-04-21',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(174,'2004-05-11',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(175,'2005-03-19',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(176,'2006-03-24',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(177,'2006-04-23',NULL,"SA_REP",80);
INSERT INTO job_history VALUES(178,'2007-05-24',NULL,"SA_REP",80);