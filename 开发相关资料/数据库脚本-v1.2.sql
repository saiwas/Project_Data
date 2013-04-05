/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2013/4/1 9:10:08                             */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.CT_tab') and o.name = 'FK_CT_tab_Course_info_tab')
alter table dbo.CT_tab
   drop constraint FK_CT_tab_Course_info_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.CT_tab') and o.name = 'FK_CT_tab_Teacher_info_tab')
alter table dbo.CT_tab
   drop constraint FK_CT_tab_Teacher_info_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.Classes_info_tab') and o.name = 'FK_Classes_info_tab_SD_tab')
alter table dbo.Classes_info_tab
   drop constraint FK_Classes_info_tab_SD_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.Classes_info_tab') and o.name = 'FK_Classes_info_tab_Teacher_info_tab')
alter table dbo.Classes_info_tab
   drop constraint FK_Classes_info_tab_Teacher_info_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SC_tab') and o.name = 'FK_SC_TAB_FK_SC_TAB_CT_TAB')
alter table dbo.SC_tab
   drop constraint FK_SC_TAB_FK_SC_TAB_CT_TAB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SC_tab') and o.name = 'FK_SC_tab_Studunts_info_tab')
alter table dbo.SC_tab
   drop constraint FK_SC_tab_Studunts_info_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.SD_tab') and o.name = 'FK_SD_tab_Teacher_info_tab')
alter table dbo.SD_tab
   drop constraint FK_SD_tab_Teacher_info_tab
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.Studunts_info_tab') and o.name = 'FK_STUDUNTS_FK_STUDUN_CODE_TAB')
alter table dbo.Studunts_info_tab
   drop constraint FK_STUDUNTS_FK_STUDUN_CODE_TAB
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('dbo.Studunts_info_tab') and o.name = 'FK_Studunts_info_tab_Classes_info_tab')
alter table dbo.Studunts_info_tab
   drop constraint FK_Studunts_info_tab_Classes_info_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Admin_tab')
            and   type = 'U')
   drop table dbo.Admin_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.CT_tab')
            and   type = 'U')
   drop table dbo.CT_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Classes_info_tab')
            and   type = 'U')
   drop table dbo.Classes_info_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Code_tab')
            and   type = 'U')
   drop table dbo.Code_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Course_info_tab')
            and   type = 'U')
   drop table dbo.Course_info_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SC_tab')
            and   type = 'U')
   drop table dbo.SC_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.SD_tab')
            and   type = 'U')
   drop table dbo.SD_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 'U')
   drop table dbo.Studunts_info_tab
go

if exists (select 1
            from  sysobjects
           where  id = object_id('dbo.Teacher_info_tab')
            and   type = 'U')
   drop table dbo.Teacher_info_tab
go

drop schema dbo
go

/*==============================================================*/
/* User: dbo                                                    */
/*==============================================================*/
create schema dbo
go

/*==============================================================*/
/* Table: Admin_tab                                             */
/*==============================================================*/
create table dbo.Admin_tab (
   AId                  int                  not null,
   ANo                  varchar(50)          collate Chinese_PRC_CI_AS null,
   APwd                 varchar(50)          collate Chinese_PRC_CI_AS null,
   APower               varchar(50)          collate Chinese_PRC_CI_AS null,
   constraint PK_Admin_tab primary key (AId)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: CT_tab                                                */
/*==============================================================*/
create table dbo.CT_tab (
   CTId                 int                  not null,
   CNo                  varchar(50)          collate Chinese_PRC_CI_AS null,
   TNo                  varchar(50)          collate Chinese_PRC_CI_AS null,
   constraint PK_CT_tab primary key (CTId)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.CT_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'CT_tab', 'column', 'CTId'


end


execute sp_addextendedproperty 'MS_Description', 
   '任课编号',
   'user', 'dbo', 'table', 'CT_tab', 'column', 'CTId'
go

/*==============================================================*/
/* Table: Classes_info_tab                                      */
/*==============================================================*/
create table dbo.Classes_info_tab (
   ClassId              int                  identity(1, 1),
   ClassName            varchar(10)          collate Chinese_PRC_CI_AS null,
   TNo                  varchar(50)          collate Chinese_PRC_CI_AS not null,
   SDId                 int                  not null,
   constraint PK_Classes_info_tab primary key (ClassId)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Classes_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'ClassId'


end


execute sp_addextendedproperty 'MS_Description', 
   '班级编号',
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'ClassId'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Classes_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'ClassName'


end


execute sp_addextendedproperty 'MS_Description', 
   '班级名称',
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'ClassName'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Classes_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'TNo'


end


execute sp_addextendedproperty 'MS_Description', 
   '负责教师号',
   'user', 'dbo', 'table', 'Classes_info_tab', 'column', 'TNo'
go

/*==============================================================*/
/* Table: Code_tab                                              */
/*==============================================================*/
create table dbo.Code_tab (
   CodeID               int                  identity(1, 1),
   Code                 varchar(50)          collate Chinese_PRC_CI_AS null,
   CodeContent          varchar(50)          collate Chinese_PRC_CI_AS null,
   CodeTable            varchar(255)         collate Chinese_PRC_CI_AS null,
   constraint PK_Code_tab primary key (CodeID)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Code_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeID'


end


execute sp_addextendedproperty 'MS_Description', 
   '代码集编号',
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeID'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Code_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Code_tab', 'column', 'Code'


end


execute sp_addextendedproperty 'MS_Description', 
   '代码集代码',
   'user', 'dbo', 'table', 'Code_tab', 'column', 'Code'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Code_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeContent'


end


execute sp_addextendedproperty 'MS_Description', 
   '代码表示的内容',
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeContent'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Code_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeTable'


end


execute sp_addextendedproperty 'MS_Description', 
   '代码所属表',
   'user', 'dbo', 'table', 'Code_tab', 'column', 'CodeTable'
go

/*==============================================================*/
/* Table: Course_info_tab                                       */
/*==============================================================*/
create table dbo.Course_info_tab (
   CourseNo             varchar(50)          collate Chinese_PRC_CI_AS not null,
   CourseName           varchar(50)          collate Chinese_PRC_CI_AS not null,
   Credits              int                  null,
   CanChooseClasses     varchar(255)         collate Chinese_PRC_CI_AS not null constraint DF_Course_info_tab_CanChoose default (0),
   BeginTime            varchar(200)         collate Chinese_PRC_CI_AS null,
   Deadline             varchar(200)         collate Chinese_PRC_CI_AS null,
   Min_count            int                  null,
   Max_count            int                  null,
   Times                int                  null,
   constraint PK_Course_info_tab_1 primary key (CourseNo)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Course_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CourseNo'


end


execute sp_addextendedproperty 'MS_Description', 
   '课程代码',
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CourseNo'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Course_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CourseName'


end


execute sp_addextendedproperty 'MS_Description', 
   '课程名称',
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CourseName'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Course_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'Credits'


end


execute sp_addextendedproperty 'MS_Description', 
   '学分',
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'Credits'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Course_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CanChooseClasses'


end


execute sp_addextendedproperty 'MS_Description', 
   '是否可选',
   'user', 'dbo', 'table', 'Course_info_tab', 'column', 'CanChooseClasses'
go

/*==============================================================*/
/* Table: SC_tab                                                */
/*==============================================================*/
create table dbo.SC_tab (
   SID                  varchar(30)          collate Chinese_PRC_CI_AS not null,
   CTId                 int                  not null,
   Grade                int                  null,
   constraint PK_CS_tab primary key (SID, CTId)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.SC_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'SC_tab', 'column', 'Grade'


end


execute sp_addextendedproperty 'MS_Description', 
   '成绩',
   'user', 'dbo', 'table', 'SC_tab', 'column', 'Grade'
go

/*==============================================================*/
/* Table: SD_tab                                                */
/*==============================================================*/
create table dbo.SD_tab (
   SDId                 int                  not null,
   SDName               varchar(50)          collate Chinese_PRC_CI_AS null,
   TNo                  varchar(50)          collate Chinese_PRC_CI_AS not null,
   constraint PK_SD_tab primary key (SDId)
         on "PRIMARY"
)
on "PRIMARY"
go

/*==============================================================*/
/* Table: Studunts_info_tab                                     */
/*==============================================================*/
create table dbo.Studunts_info_tab (
   SNo                  varchar(30)          collate Chinese_PRC_CI_AS not null,
   SName                varchar(50)          collate Chinese_PRC_CI_AS null,
   SSex                 int                  not null,
   SPwd                 varchar(255)         collate Chinese_PRC_CI_AS not null,
   ClassId              int                  not null,
   Major                int                  null,
   Year                 varchar(50)          null,
   constraint PK_Studunts_info_tab_1 primary key (SNo)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SNo'


end


execute sp_addextendedproperty 'MS_Description', 
   '学号',
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SNo'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SName'


end


execute sp_addextendedproperty 'MS_Description', 
   '学生姓名',
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SName'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SSex'


end


execute sp_addextendedproperty 'MS_Description', 
   '学生性别',
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SSex'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SPwd'


end


execute sp_addextendedproperty 'MS_Description', 
   '登陆密码',
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'SPwd'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Studunts_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'ClassId'


end


execute sp_addextendedproperty 'MS_Description', 
   '班级编号',
   'user', 'dbo', 'table', 'Studunts_info_tab', 'column', 'ClassId'
go

/*==============================================================*/
/* Table: Teacher_info_tab                                      */
/*==============================================================*/
create table dbo.Teacher_info_tab (
   TNo                  varchar(50)          collate Chinese_PRC_CI_AS not null,
   TAge                 decimal(2)           null,
   TSex                 int                  null,
   TPwd                 varchar(255)         collate Chinese_PRC_CI_AS null,
   constraint PK_Teacher_info_tab_1 primary key (TNo)
         on "PRIMARY"
)
on "PRIMARY"
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Teacher_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TNo'


end


execute sp_addextendedproperty 'MS_Description', 
   '教工号',
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TNo'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Teacher_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TAge'


end


execute sp_addextendedproperty 'MS_Description', 
   '教师年龄',
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TAge'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Teacher_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TSex'


end


execute sp_addextendedproperty 'MS_Description', 
   '教师性别',
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TSex'
go

if exists (select 1
            from  sysproperties
           where  id = object_id('dbo.Teacher_info_tab')
            and   type = 4)
begin
   execute sp_dropextendedproperty 'MS_Description', 
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TPwd'


end


execute sp_addextendedproperty 'MS_Description', 
   '登陆密码',
   'user', 'dbo', 'table', 'Teacher_info_tab', 'column', 'TPwd'
go

alter table dbo.CT_tab
   add constraint FK_CT_tab_Course_info_tab foreign key (CNo)
      references dbo.Course_info_tab (CourseNo)
go

alter table dbo.CT_tab
   add constraint FK_CT_tab_Teacher_info_tab foreign key (TNo)
      references dbo.Teacher_info_tab (TNo)
go

alter table dbo.Classes_info_tab
   add constraint FK_Classes_info_tab_SD_tab foreign key (SDId)
      references dbo.SD_tab (SDId)
go

alter table dbo.Classes_info_tab
   add constraint FK_Classes_info_tab_Teacher_info_tab foreign key (TNo)
      references dbo.Teacher_info_tab (TNo)
go

alter table dbo.SC_tab
   add constraint FK_SC_TAB_FK_SC_TAB_CT_TAB foreign key (CTId)
      references dbo.CT_tab (CTId)
go

alter table dbo.SC_tab
   add constraint FK_SC_tab_Studunts_info_tab foreign key (SID)
      references dbo.Studunts_info_tab (SNo)
go

alter table dbo.SD_tab
   add constraint FK_SD_tab_Teacher_info_tab foreign key (TNo)
      references dbo.Teacher_info_tab (TNo)
go

alter table dbo.Studunts_info_tab
   add constraint FK_STUDUNTS_FK_STUDUN_CODE_TAB foreign key (Major)
      references dbo.Code_tab (CodeID)
go

alter table dbo.Studunts_info_tab
   add constraint FK_Studunts_info_tab_Classes_info_tab foreign key (ClassId)
      references dbo.Classes_info_tab (ClassId)
go

