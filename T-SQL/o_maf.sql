use o_maf
--CREATE DATABASE o_maf

------------------------------------------------------------------------------
--Aircraft Table
------------------------------------------------------------------------------
--drop table if exists acft
create table 
    acft(
    id int IDENTITY(1, 1),
    modex INT not null Primary Key,
    typeAcft varchar(4),           --
    dircm bit,				-- Yes (1) or No (0)
    nomA varchar(5),                --  
    orgCd varchar(3)		      --GC7
    )
------------------------------------------------------------------------------
insert into acft (modex, typeAcft, dircm, nomA, orgCd)
values 
(01, 'AYNE', 1, '+2', 'GC7'),
(02, 'AYNE', 1, '+3', 'GC7'),
(03, 'AYNE', 1, '+1', 'GC7'),
(04, 'AYNE', 1, '+4', 'GC7'),
(05, 'AYNE', 1, '+2', 'GC7'),
(06, 'AYNE', 1, '+4', 'GC7'),
(07, 'AYNE', 1, '+1', 'GC7'),
(08, 'AYNE', 1, '+3', 'GC7'),
(09, 'AYNE', 1, '+3', 'GC7'),
(10, 'AYNE', 1, '+2', 'GC7')

select * from acft

------------------------------------------------------------------------------
--Personnel Table
------------------------------------------------------------------------------
--drop table if exists personnel
create table
    personnel(
    id int IDENTITY(1, 1),
    logId varchar(10) not null UNIQUE,
    aRank varchar(5),
    fName varchar(20),
    lName varchar (20),
    qual varchar(3),
    pin int,             --must be an authentication key
    shop int,
    orgCd varchar(3),
    --Dependencies: 
    --discrepancy table
    --InPro table
    )

alter table personnel
alter column aRank varchar(5)
------------------------------------------------------------------------------
insert into personnel (logId, aRank, fName, lName, qual, pin, shop,  orgCd)
values
('bt4585', 'Sgt', 'Bryan', 'Thompson', 'QA', 1254, 200, 'GC7'),
('bd5478', 'Sgt', 'Bryan', 'Duenaz', 'QA', 5247, 330, 'GC7'),
('et6241', 'MSgt', 'Tim', 'Eustace', 'SFF', 8521, 020, 'GC7'),
('jd8547', 'GySgt', 'Jaramy', 'Dodge', 'PC', 6521, 310, 'GC7'),
('cc6523', 'Cpl', 'Chris', 'Collins', 'CDI', 8574, 010, 'GC7'),
('mw5296', 'LCpl', 'Micah', 'Watson','PC', 3698, 120, 'GC7')

select * from personnel
------------------------------------------------------------------------------
--Technical Directive Table
------------------------------------------------------------------------------
--DROP TABLE IF EXISTS td
create table
    td(
    id int IDENTITY(1, 1) unique,
    tdCd int,
    tdBasic int,
    intrm varchar(1),
    am int,
    rev varchar(1),
    pt int,
    tdDesc varchar(255)
    )

alter table td
alter column tdDesc varchar(255)
------------------------------------------------------------------------------
insert into td(tdCd, tdBasic, intrm, am, rev, pt, tdDesc)
values
(50, 0245, null, null, 'A', 02, 'Engine upgrade of PTI'),
(93, 0095, 'I', null, null, null, 'Upgrade App, Comp, TCD'),
(40, 0247, null, 1, null, null, 'Software change for defense systems'),
(50, 0186, null, null, null, null, 'Replace lh/rh hub'),
(51, 0005, 'I', 3, null, null, 'update TCD'),
(74, 0145, null, null, 'C', null, 'Rotor blade inspection of taco patch'),
(40, 0226, null, null, 'D', null, 'Software update for DIRCM')

select * from td
------------------------------------------------------------------------------
--Work Unit Code Table
------------------------------------------------------------------------------
--DROP TABLE IF EXISTS wucNum
create table
    wucNum(
    id int IDENTITY(1, 1),
    wucNo int PRIMARY KEY,
    wucDesc varchar (30),
    Tracked varchar(3)
    )
------------------------------------------------------------------------------
insert into wucNum (wucNo, wucDesc, Tracked)
values 
(10, 'Hydraulics', 'SRC'),
(20, 'Engines', 'EHR'),
(30, 'Landing Gear', 'ARC'),
(40, 'Proprotor Gearbox', 'SRC'),
(50, 'Tiltaxis Gearbox', 'SRC'),
(60, 'Rotor System', 'EHR'),
(70, 'Fuels System', 'ARC'),
(80, 'Brake System', 'ARC'),
(90, 'Defense Systems', 'EHR'),
(100, 'Airframes', 'SRC')

select * from wucNum
------------------------------------------------------------------------------
--In Process Table
------------------------------------------------------------------------------
--DROP TABLE IF EXISTS inPro
create table
    inPro(
    InProId int identity,
    inProDtTm datetime,
    inProDesc varchar(255),
    Inspector varchar(10) foreign key references personnel(logId) not null
    )
------------------------------------------------------------------------------
insert into inPro (inProDtTm, inProDesc, Inspector)
values 
('2020-01-05 07:20:00 am', 'Observed torque check to 120 in lbs.', 'bt4585'),
('2020-01-05 07:20:00 am', 'Observed torque check to 220 in lbs.', 'et6241'),
('2020-01-05 07:20:00 am', 'Observed torque check to 200 in lbs.', 'jd8547'),
('2020-01-05 07:20:00 am', 'Observed torque check to 355 in lbs.', 'cc6523'),
('2020-01-05 07:20:00 am', 'Observed torque check to 50 in lbs.', 'mw5296')

update inPro
set inProDtTm = '2020-02-05 12:17:00 pm'
where InProId = 5;

select * from inPro
------------------------------------------------------------------------------
--Discrepancy Table
------------------------------------------------------------------------------
--drop table if exists discrepancy
create table
    discrepancy(
    id int IDENTITY(1, 1),
    mcn varchar(9)  not null UNIQUE,
    jcn varchar(9) UNIQUE,
    orgCd varchar(3),
    discCd varchar,
    typeMaint char,
    transCd varchar,
    maintLv varchar,
    sysReason varchar(50) not null,
    discrepan varchar(255) not null,
    InitLogId varchar(10) foreign key references personnel(logId) not null,
    InitLName varchar(20) not null,
    initiateDtTm datetime not null,
    aStatus varchar(2),
    cfReq bit,
    qaReq bit,
    wucNo int
    --Dependencies:
    --parts table
    --CorrAction table
    )

------------------------------------------------------------------------------
--Parts Table
------------------------------------------------------------------------------
--DROP TABLE IF EXISTS parts
create table
    parts(
    partId int IDENTITY(1, 1) primary key,
    nomen varchar (20),
    partNo varchar(30) UNIQUE not null,
    serialNo varchar(20) UNIQUE not null,
    --mcn varchar(9) foreign key references discrepancy(mcn),
    Tracked varchar(3)
    )

------------------------------------------------------------------------------
--Corrective Action Table
------------------------------------------------------------------------------
--DROP TABLE IF EXISTS CorrAction
create table
    CorrAction(
    id int IDENTITY(1, 1),
    --mcn varchar(9) foreign key references discrepancy(mcn),
    partId int foreign key references parts(partId),
    correctiveAction varchar(255),
    remPartNo varchar(30) foreign key references parts(partNo),
    remSerialNo varchar(20) foreign key references parts(serialNo),
    InstPartNo varchar(30) foreign key references parts(partNo),
    InstSerialNo varchar(20) foreign key references parts(serialNo),
    ActTk varchar,
    wucNo int, 
    Posit varchar,
    MalCd int,
    transCd char,
    CorrBy varchar(10) foreign key references personnel(logId) not null, --Put login Id
    InspBy varchar(10) foreign key references personnel(logId) not null, --Put login Id
    Suprvsr varchar(10) foreign key references personnel(logId) not null, --Put login Id
    MaintCtrl varchar(10) foreign key references personnel(logId) not null, --Put login Id
    VerifyMDS varchar(10) foreign key references personnel(logId) not null, --Put login Id
    InProId int

    )


--TODO: Deciding if I would create a separate table for each or just complie 
--them into one and just reference to it.

--DROP TABLE IF EXISTS DataCode
/*
create table
    DataCode(
    id int IDENTITY(1, 1),
    MalCd int,
    MalCdDesc varchar,
    ActTk varchar,
    ActTkDesc varchar,
    discCd varchar,
    discCdDesc varchar,
    typeMaint varchar,
    typeMaintDesc varchar,
    transCd varchar,
    transCdDesc varchar
    )
*/
-- Copy and paste this link to your browser to go back to O-MAF project. (https://github.com/gowebUSA/MSSA-Project/tree/master/TSQL/Project-Step-7)    
