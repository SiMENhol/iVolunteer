-- Volunteer [ent30]
alter table "APP"."VOLUNTEER"  add column  "VOLUNTEERPASSWORD"  varchar(255);


-- Volunteer_Groups [rel5]
create table "APP"."VOLUNTEER_GROUPS" (
   "VOLUNTEER_VOLUNTEER_ID"  integer not null,
   "GROUPS_GROUP_ID"  integer not null,
  primary key ("VOLUNTEER_VOLUNTEER_ID", "GROUPS_GROUP_ID")
);
alter table "APP"."VOLUNTEER_GROUPS"   add constraint FK_VOLUNTEER_GROUPS_VOLUNTEER foreign key ("VOLUNTEER_VOLUNTEER_ID") references "APP"."VOLUNTEER" ("VOLUNTEER_ID");
alter table "APP"."VOLUNTEER_GROUPS"   add constraint FK_VOLUNTEER_GROUPS_GROUPS foreign key ("GROUPS_GROUP_ID") references "APP"."GROUPS" ("GROUP_ID");


-- Volunteer_Tasks [rel6]
create table "APP"."VOLUNTEER_TASKS" (
   "VOLUNTEER_VOLUNTEER_ID"  integer not null,
   "TASKS_TASK_ID"  integer not null,
  primary key ("VOLUNTEER_VOLUNTEER_ID", "TASKS_TASK_ID")
);
alter table "APP"."VOLUNTEER_TASKS"   add constraint FK_VOLUNTEER_TASKS_VOLUNTEER foreign key ("VOLUNTEER_VOLUNTEER_ID") references "APP"."VOLUNTEER" ("VOLUNTEER_ID");
alter table "APP"."VOLUNTEER_TASKS"   add constraint FK_VOLUNTEER_TASKS_TASKS foreign key ("TASKS_TASK_ID") references "APP"."TASKS" ("TASK_ID");


-- NonProfitOrganization_Tasks [rel7]
create table "APP"."NONPROFITORGANIZATION_TASKS" (
   "NON_PROFIT_ORGANIZATION_NPO_ID"  integer not null,
   "TASKS_TASK_ID"  integer not null,
  primary key ("NON_PROFIT_ORGANIZATION_NPO_ID", "TASKS_TASK_ID")
);
alter table "APP"."NONPROFITORGANIZATION_TASKS"   add constraint FK_NONPROFITORGANIZATION_TASKS foreign key ("NON_PROFIT_ORGANIZATION_NPO_ID") references "APP"."NON_PROFIT_ORGANIZATION" ("NPO_ID");
alter table "APP"."NONPROFITORGANIZATION_TASKS"   add constraint FK_NONPROFITORGANIZATION_TAS_2 foreign key ("TASKS_TASK_ID") references "APP"."TASKS" ("TASK_ID");


-- Project_Tasks [rel8]
create table "APP"."PROJECT_TASKS" (
   "PROJECT_PROJECT_ID"  integer not null,
   "TASKS_TASK_ID"  integer not null,
  primary key ("PROJECT_PROJECT_ID", "TASKS_TASK_ID")
);
alter table "APP"."PROJECT_TASKS"   add constraint FK_PROJECT_TASKS_PROJECT foreign key ("PROJECT_PROJECT_ID") references "APP"."PROJECT" ("PROJECT_ID");
alter table "APP"."PROJECT_TASKS"   add constraint FK_PROJECT_TASKS_TASKS foreign key ("TASKS_TASK_ID") references "APP"."TASKS" ("TASK_ID");


-- Project_NonProfitOrganization [rel9]
create table "APP"."PROJECT_NONPROFITORGANIZATION" (
   "PROJECT_PROJECT_ID"  integer not null,
   "NON_PROFIT_ORGANIZATION_NPO_ID"  integer not null,
  primary key ("PROJECT_PROJECT_ID", "NON_PROFIT_ORGANIZATION_NPO_ID")
);
alter table "APP"."PROJECT_NONPROFITORGANIZATION"   add constraint FK_PROJECT_NONPROFITORGANIZATI foreign key ("PROJECT_PROJECT_ID") references "APP"."PROJECT" ("PROJECT_ID");
alter table "APP"."PROJECT_NONPROFITORGANIZATION"   add constraint FK_PROJECT_NONPROFITORGANIZA_2 foreign key ("NON_PROFIT_ORGANIZATION_NPO_ID") references "APP"."NON_PROFIT_ORGANIZATION" ("NPO_ID");


