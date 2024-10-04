-- VolunteerEntity_TaskEntity [rel1]
alter table "APP"."VOLUNTEERENTITY"  add column  "TASKENTITY_TASKID"  integer;
alter table "APP"."VOLUNTEERENTITY"   add constraint FK_VOLUNTEERENTITY_TASKENTITY foreign key ("TASKENTITY_TASKID") references "APP"."TASKENTITY" ("TASKID");


-- VolunteerEntity_TaskEntity_2 [rel2]
create table "APP"."VOLUNTEERENTITY_TASKENTITY_2" (
   "VOLUNTEERENTITY_VOLUNTEERID"  integer not null,
   "TASKENTITY_TASKID"  integer not null,
  primary key ("VOLUNTEERENTITY_VOLUNTEERID", "TASKENTITY_TASKID")
);
alter table "APP"."VOLUNTEERENTITY_TASKENTITY_2"   add constraint FK_VOLUNTEERENTITY_TASKENTIT_2 foreign key ("VOLUNTEERENTITY_VOLUNTEERID") references "APP"."VOLUNTEERENTITY" ("VOLUNTEERID");
alter table "APP"."VOLUNTEERENTITY_TASKENTITY_2"   add constraint FK_VOLUNTEERENTITY_TASKENTIT_3 foreign key ("TASKENTITY_TASKID") references "APP"."TASKENTITY" ("TASKID");


-- REL FK: TaskEntityToProjectEntity [rel10#role20]
alter table "APP"."PROJECTENTITY"   add constraint FK_PROJECTENTITY_TASKENTITY foreign key ("TASKENTITY_TASKID") references "APP"."TASKENTITY" ("TASKID");


-- REL FK: NonProfitOrganizationEntityToProjectEntity [rel11#role21]
alter table "APP"."NONPROFITORGANIZATIONENTITY_PR"   add constraint FK_NONPROFITORGANIZATIONENTITY foreign key ("NONPROFITORGANIZATIONENTITY_NP") references "APP"."NONPROFITORGANIZATIONENTITY" ("NPOID");


-- REL FK: ProjectEntityToNonProfitOrganizationEntity [rel11#role22]
alter table "APP"."NONPROFITORGANIZATIONENTITY_PR"   add constraint FK_NONPROFITORGANIZATIONENTI_3 foreign key ("PROJECTENTITY_PROJECTID") references "APP"."PROJECTENTITY" ("PROJECTID");


-- REL FK: ProjectEntityToNonProfitOrganizationEntity_2 [rel13#role26]
alter table "APP"."NONPROFITORGANIZATIONENTITY"   add constraint FK_NONPROFITORGANIZATIONENTI_2 foreign key ("PROJECTENTITY_PROJECTID") references "APP"."PROJECTENTITY" ("PROJECTID");


-- REL FK: VolunteerEntityToProjectEntity [rel3#role5]
alter table "APP"."VOLUNTEERENTITY_PROJECTENTITY"   add constraint FK_VOLUNTEERENTITY_PROJECTEN_2 foreign key ("VOLUNTEERENTITY_VOLUNTEERID") references "APP"."VOLUNTEERENTITY" ("VOLUNTEERID");


-- REL FK: ProjectEntityToVolunteerEntity [rel3#role6]
alter table "APP"."VOLUNTEERENTITY_PROJECTENTITY"   add constraint FK_VOLUNTEERENTITY_PROJECTENTI foreign key ("PROJECTENTITY_PROJECTID") references "APP"."PROJECTENTITY" ("PROJECTID");


-- REL FK: ProjectEntityToVolunteerEntity_2 [rel4#role8]
alter table "APP"."VOLUNTEERENTITY"   add constraint FK_VOLUNTEERENTITY_PROJECTEN_3 foreign key ("PROJECTENTITY_PROJECTID") references "APP"."PROJECTENTITY" ("PROJECTID");


