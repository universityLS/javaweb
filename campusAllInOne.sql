/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/6/8 1:01:22                             */
/*==============================================================*/


drop table if exists comment;

drop table if exists contact;

drop table if exists goods_catetory;

drop table if exists message;

drop index record_title on record;

drop table if exists record;

drop index user_account_uIndex on user;

drop table if exists user;

/*==============================================================*/
/* Table: comment                                               */
/*==============================================================*/
create table comment
(
   id                   integer not null,
   contents             text not null,
   publish_datetime     datetime,
   com_rep_flag         integer,
   user_id              integer not null,
   quote_id             integer,
   primary key (id)
);

/*==============================================================*/
/* Table: contact                                               */
/*==============================================================*/
create table contact
(
   id                   integer not null,
   qq                   integer,
   wechat               varchar(50),
   landline             integer,
   mobile               integer,
   email                varchar(100),
   other                varchar(200),
   user_id              integer not null,
   primary key (id)
);

/*==============================================================*/
/* Table: goods_catetory                                        */
/*==============================================================*/
create table goods_catetory
(
   id                   integer not null,
   name                 varchar(200) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: message                                               */
/*==============================================================*/
create table message
(
   id                   integer not null,
   content              text not null,
   publish_time         datetime,
   send_user_id         integer not null,
   rec_user_id          integer not null,
   primary key (id)
);

/*==============================================================*/
/* Table: record                                                */
/*==============================================================*/
create table record
(
   id                   integer not null,
   lost_found_flag      integer not null,
   titile               varchar(200) not null,
   goods_name           varchar(50),
   description          text,
   img_path             varchar(200),
   publish_datetime     datetime,
   catetory_id          integer,
   user_id              integer,
   finish_flag          integer,
   primary key (id)
);

alter table record comment '丢失/捡到物品记录表';

/*==============================================================*/
/* Index: record_title                                          */
/*==============================================================*/
create index record_title on record
(
   titile
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   integer not null,
   account              varchar(50) not null,
   nickname             varchar(50) not null,
   password             varchar(200) not null,
   power                int,
   person_sign          text,
   head_img_path        varchar(200),
   last_login_time      datetime,
   primary key (id)
);

/*==============================================================*/
/* Index: user_account_uIndex                                   */
/*==============================================================*/
create unique index user_account_uIndex on user
(
   last_login_time
);

