-- VolunteerEntity [ent1]
create table "APP"."VOLUNTEERENTITY" (
   "VOLUNTEERID"  integer  not null,
   "VOLUNTEERCOMPETENCEID"  integer,
   "VOLUNTEERCATEGORY"  varchar(255),
   "VOLUNTEERADDRESS"  varchar(255),
   "VOLUNTEERPHONENUMBER"  integer,
   "VOLUNTEEREMAIL"  varchar(255),
   "VOLUNTEERNAME"  varchar(255),
  primary key ("VOLUNTEERID")
);


-- NonProfitOrganizationEntity [ent2]
create table "APP"."NONPROFITORGANIZATIONENTITY" (
   "NPOID"  integer  not null,
   "NPOCATEGORY"  varchar(255),
   "NPOINFORMATION"  varchar(255),
   "NPOADDRESS"  varchar(255),
   "NPOPHONENUMBER"  integer,
   "NPOPASSWORD"  varchar(255),
   "NPOEMAIL"  varchar(255),
   "NPONAME"  varchar(255),
  primary key ("NPOID")
);


-- ProjectEntity [ent4]
create table "APP"."PROJECTENTITY" (
   "PROJECTID"  integer  not null,
   "PROJECTREQUIRMENTS"  varchar(255),
   "PROJECTENDDATE"  date,
   "PROJECTSTARTDATE"  date,
   "PROJECTMODIFIEDDATE"  date,
   "PROJECTCREATEDDATE"  date,
   "PROJECTSTATUS"  integer,
   "PROJECTLOCATION"  varchar(255),
   "PROJECTADDRESS"  varchar(255),
   "PROJECTDESCRIPTION"  varchar(255),
   "PROJECTNAME"  varchar(255),
  primary key ("PROJECTID")
);


-- TaskEntity [ent6]
create table "APP"."TASKENTITY" (
   "TASKID"  integer  not null,
   "TASKUSERSTATUS"  integer,
   "TASKPROJECTFKID"  integer,
   "TASKREWARDSFKID"  integer,
   "TASKCOMPETENCEFKID"  integer,
   "TASKREQUIRMENTS"  varchar(255),
   "TASKENDDATE"  date,
   "TASKSTARTDATE"  date,
   "TASKMODIFIEDDATE"  time,
   "TASKCREATEDDATE"  date,
   "TASKSTATUS"  integer,
   "TASKLOCATION"  varchar(255),
   "TASKADDRESS"  varchar(255),
   "TASKDESCRIPTION"  varchar(255),
   "TASKNAME"  varchar(255),
  primary key ("TASKID")
);


