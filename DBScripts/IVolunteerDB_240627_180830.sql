-- ProjectEntity_TaskEntity [rel10]
alter table "APP"."PROJECTENTITY"  add column  "TASKENTITY_TASKID"  integer;


-- NonProfitOrganizationEntity_ProjectEntity [rel11]
create table "APP"."NONPROFITORGANIZATIONENTITY_PR" (
   "NONPROFITORGANIZATIONENTITY_NP"  integer not null,
   "PROJECTENTITY_PROJECTID"  integer not null,
  primary key ("NONPROFITORGANIZATIONENTITY_NP", "PROJECTENTITY_PROJECTID")
);


-- NonProfitOrganizationEntity_ProjectEntity_2 [rel13]
alter table "APP"."NONPROFITORGANIZATIONENTITY"  add column  "PROJECTENTITY_PROJECTID"  integer;


-- VolunteerEntity_ProjectEntity [rel3]
create table "APP"."VOLUNTEERENTITY_PROJECTENTITY" (
   "VOLUNTEERENTITY_VOLUNTEERID"  integer not null,
   "PROJECTENTITY_PROJECTID"  integer not null,
  primary key ("VOLUNTEERENTITY_VOLUNTEERID", "PROJECTENTITY_PROJECTID")
);


-- VolunteerEntity_ProjectEntity_2 [rel4]
alter table "APP"."VOLUNTEERENTITY"  add column  "PROJECTENTITY_PROJECTID"  integer;


