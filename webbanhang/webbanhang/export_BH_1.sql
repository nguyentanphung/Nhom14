--------------------------------------------------------
--  File created - Friday-May-04-2018   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type REPCAT$_OBJECT_NULL_VECTOR
--------------------------------------------------------

  CREATE OR REPLACE TYPE "SYSTEM"."REPCAT$_OBJECT_NULL_VECTOR" AS OBJECT
(
  -- type owner, name, hashcode for the type represented by null_vector
  type_owner      VARCHAR2(30),
  type_name       VARCHAR2(30),
  type_hashcode   RAW(17),
  -- null_vector for a particular object instance
  -- ROBJ REVISIT: should only contain the null image, and not version#
  null_vector     RAW(2000)
)

/
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_EXCEPTIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_EXCEPTIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVORS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVORS_S"  MINVALUE -2147483647 MAXVALUE 2147483647 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_FLAVOR_NAME_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_FLAVOR_NAME_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REFRESH_TEMPLATES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_REPPROP_KEY
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_REPPROP_KEY"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_RUNTIME_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_RUNTIME_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_OBJECTS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_PARMS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_REFGROUPS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMPLATE_SITES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMPLATE_SITES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_TEMP_OUTPUT_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_TEMP_OUTPUT_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_AUTHORIZATIONS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT$_USER_PARM_VALUES_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT$_USER_PARM_VALUES_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence REPCAT_LOG_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."REPCAT_LOG_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence TEMPLATE$_TARGETS_S
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."TEMPLATE$_TARGETS_S"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table admin
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."admin" 
   (	"ID" NUMBER(*,0), 
	"username" VARCHAR2(32 BYTE), 
	"password" VARCHAR2(32 BYTE), 
	"name" VARCHAR2(32 BYTE), 
	"ADMIN_GROUP_ID" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table admin_group
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."admin_group" 
   (	"ID" NUMBER(*,0), 
	"name" VARCHAR2(128 BYTE), 
	"sort_order" NUMBER(*,0), 
	"permissions" CLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("permissions") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table catalog
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."catalog" 
   (	"ID" NUMBER(*,0), 
	"name" NVARCHAR2(128), 
	"site_title" VARCHAR2(128 BYTE), 
	"meta_desc" VARCHAR2(255 BYTE), 
	"meta_key" VARCHAR2(255 BYTE), 
	"parent_id" NUMBER(*,0), 
	"sort_order" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table comment
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."comment" 
   (	"ID" NUMBER(*,0), 
	"ID_PRODUCT" NUMBER(*,0), 
	"parent_id" NUMBER(*,0), 
	"user_name" VARCHAR2(3999 BYTE), 
	"user_email" VARCHAR2(100 BYTE), 
	"ID_USERS" NUMBER(*,0), 
	"user_ip" VARCHAR2(20 BYTE), 
	"content" CLOB, 
	"created" NUMBER(*,0), 
	"count_like" NUMBER(*,0), 
	"status" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table contact
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."contact" 
   (	"ID" NUMBER(*,0), 
	"name" VARCHAR2(100 BYTE), 
	"email" VARCHAR2(50 BYTE), 
	"address" VARCHAR2(255 BYTE), 
	"title" VARCHAR2(255 BYTE), 
	"content" CLOB, 
	"phone" VARCHAR2(20 BYTE), 
	"created" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table content_static
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."content_static" 
   (	"ID" NUMBER(*,0), 
	"key" VARCHAR2(128 BYTE), 
	"content" CLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table info
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."info" 
   (	"ID" NUMBER(*,0), 
	"title" NVARCHAR2(255), 
	"content" CLOB, 
	"meta_desc" NVARCHAR2(255), 
	"meta_key" NVARCHAR2(255), 
	"created" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table maker
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."maker" 
   (	"ID" NUMBER(*,0), 
	"name" VARCHAR2(255 BYTE), 
	"info" CLOB, 
	"meta_desc" VARCHAR2(255 BYTE), 
	"meta_key" VARCHAR2(255 BYTE), 
	"site_title" VARCHAR2(255 BYTE), 
	"sort_order" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("info") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table menu
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."menu" 
   (	"ID" NUMBER(*,0), 
	"parent_id" NUMBER(*,0), 
	"title" VARCHAR2(128 BYTE), 
	"url" VARCHAR2(255 BYTE), 
	"sort_order" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table new
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."new" 
   (	"ID" NUMBER(*,0), 
	"title" NVARCHAR2(255), 
	"intro" NVARCHAR2(255), 
	"content" CLOB, 
	"meta_desc" VARCHAR2(255 BYTE), 
	"meta_key" VARCHAR2(255 BYTE), 
	"image_link" VARCHAR2(250 BYTE), 
	"created" NUMBER(*,0), 
	"feature" BLOB, 
	"count_view" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("feature") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table order
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."order" 
   (	"ID" NUMBER(*,0), 
	"ID_ORDER" NUMBER(*,0), 
	"product_id" NUMBER(*,0), 
	"qty" NUMBER(*,0), 
	"amount" NUMBER(15,4), 
	"data" CLOB, 
	"status" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("data") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table product
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."product" 
   (	"ID" NUMBER(*,0), 
	"ID_CATALOG" NUMBER(*,0), 
	"name" NVARCHAR2(100), 
	"ID_MAKER" NUMBER(*,0), 
	"price" NUMBER(15,4), 
	"content" CLOB, 
	"discount" NUMBER(*,0), 
	"image_link" NVARCHAR2(50), 
	"image_list" CLOB, 
	"created" NUMBER(*,0), 
	"view" NUMBER(*,0), 
	"meta_key" NVARCHAR2(255), 
	"site_title" NVARCHAR2(255), 
	"warranty" NVARCHAR2(50), 
	"total" NUMBER(*,0), 
	"buyed" NUMBER(*,0), 
	"rate_total" NUMBER(*,0), 
	"rate_count" NUMBER(*,0), 
	"gifts" NVARCHAR2(100), 
	"video" NVARCHAR2(255), 
	"meta_desc" NVARCHAR2(255), 
	"feature" BLOB
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("content") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("image_list") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) 
 LOB ("feature") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table slide
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."slide" 
   (	"ID" NUMBER(*,0), 
	"name" NVARCHAR2(100), 
	"image_name" NVARCHAR2(100), 
	"image_link" NVARCHAR2(50), 
	"link" NVARCHAR2(150), 
	"info" NVARCHAR2(100), 
	"sort_order" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table support
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."support" 
   (	"ID" NUMBER(*,0), 
	"name" NVARCHAR2(100), 
	"yahoo" NVARCHAR2(50), 
	"gmail" NVARCHAR2(50), 
	"skype" NVARCHAR2(50), 
	"phone" NVARCHAR2(20), 
	"sort_order" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table transaction
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."transaction" 
   (	"ID" NUMBER(*,0), 
	"type" NUMBER(*,0), 
	"status" NUMBER(*,0), 
	"user_id" NUMBER(*,0), 
	"user_name" NVARCHAR2(50), 
	"user_email" NVARCHAR2(50), 
	"user_phone" NVARCHAR2(20), 
	"amount" NUMBER(15,4), 
	"payment" NVARCHAR2(32), 
	"payment_info" CLOB, 
	"message" NVARCHAR2(255), 
	"security" NVARCHAR2(16), 
	"created" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
 LOB ("payment_info") STORE AS BASICFILE (
  TABLESPACE "SYSTEM" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;
--------------------------------------------------------
--  DDL for Table user
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."user" 
   (	"ID" NUMBER(*,0), 
	"name" NVARCHAR2(50), 
	"email" NVARCHAR2(50), 
	"phone" NVARCHAR2(15), 
	"address" NVARCHAR2(128), 
	"password" NVARCHAR2(40), 
	"created" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table video
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."video" 
   (	"ID" NUMBER(*,0), 
	"count_view" NUMBER(*,0), 
	"name" NVARCHAR2(255), 
	"images" NVARCHAR2(100), 
	"intro" NVARCHAR2(200), 
	"link" NVARCHAR2(200), 
	"feature" NUMBER(*,0), 
	"created" NUMBER(*,0), 
	"view" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQCALL
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQCALL" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$DEF$_AQERROR
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQERROR" ("QUEUE", "MSG_ID", "CORR_ID", "MSG_PRIORITY", "MSG_STATE", "DELAY", "DELAY_TIMESTAMP", "EXPIRATION", "ENQ_TIME", "ENQ_TIMESTAMP", "ENQ_USER_ID", "ENQ_TXN_ID", "DEQ_TIME", "DEQ_TIMESTAMP", "DEQ_USER_ID", "DEQ_TXN_ID", "RETRY_COUNT", "EXCEPTION_QUEUE_OWNER", "EXCEPTION_QUEUE", "USER_DATA", "ORIGINAL_QUEUE_NAME", "ORIGINAL_QUEUE_OWNER", "EXPIRATION_REASON") AS 
  SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9 WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQCALL_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQCALL_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View AQ$_DEF$_AQERROR_F
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQERROR_F" ("Q_NAME", "ROW_ID", "MSGID", "CORRID", "PRIORITY", "STATE", "DELAY", "EXPIRATION", "ENQ_TIME", "ENQ_UID", "ENQ_TID", "DEQ_TIME", "DEQ_UID", "DEQ_TID", "RETRY_COUNT", "EXCEPTION_QSCHEMA", "EXCEPTION_QUEUE", "CSCN", "DSCN", "CHAIN_NO", "LOCAL_ORDER_NO", "TIME_MANAGER_INFO", "STEP_NO", "USER_DATA", "QUEUE_ID") AS 
  SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM' WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID
;
REM INSERTING into SYSTEM."admin"
SET DEFINE OFF;
Insert into SYSTEM."admin" (ID,"username","password","name",ADMIN_GROUP_ID) values (1,'PHUNG','123','ADMIN',1);
Insert into SYSTEM."admin" (ID,"username","password","name",ADMIN_GROUP_ID) values (2,'DUNG','1234','Mod',2);
REM INSERTING into SYSTEM."admin_group"
SET DEFINE OFF;
Insert into SYSTEM."admin_group" (ID,"name","sort_order") values (2,'Mod',2);
Insert into SYSTEM."admin_group" (ID,"name","sort_order") values (1,'Admin',1);
REM INSERTING into SYSTEM."catalog"
SET DEFINE OFF;
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (1,'Laptop',null,null,null,0,0);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (2,'Ði?n tho?i',null,null,null,0,1);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (3,'Tivi',null,null,null,0,2);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (4,' Acer',null,null,null,1,0);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (5,' Apple',null,null,null,1,1);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (6,'Asus',null,null,null,1,2);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (7,'Dell',null,null,null,1,3);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (8,'HP',null,null,null,1,5);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (9,'Apple',null,null,null,2,0);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (10,'Asus',null,null,null,2,1);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (11,'BlackBerry',null,null,null,2,3);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (12,'HTC',null,null,null,2,4);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (13,'AKAI',null,null,null,3,0);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (14,'JVC',null,null,null,3,1);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (15,'LG',null,null,null,3,2);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (16,'Panasonic',null,null,null,3,3);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (17,'Samsung',null,null,null,3,5);
Insert into SYSTEM."catalog" (ID,"name","site_title","meta_desc","meta_key","parent_id","sort_order") values (18,'Toshiba',null,null,null,3,6);
REM INSERTING into SYSTEM."comment"
SET DEFINE OFF;
Insert into SYSTEM."comment" (ID,ID_PRODUCT,"parent_id","user_name","user_email",ID_USERS,"user_ip","created","count_like","status") values (1,7,0,'Tan Phung','tanphung@gmail.com',16,null,1408798677,10,1);
Insert into SYSTEM."comment" (ID,ID_PRODUCT,"parent_id","user_name","user_email",ID_USERS,"user_ip","created","count_like","status") values (2,7,1,'Nhat Minh','nhatminh@gmail.com',16,null,1408799662,3,1);
Insert into SYSTEM."comment" (ID,ID_PRODUCT,"parent_id","user_name","user_email",ID_USERS,"user_ip","created","count_like","status") values (3,7,0,'Trung Tri','trungtri@gmail.com',16,null,1408800324,8,1);
REM INSERTING into SYSTEM."contact"
SET DEFINE OFF;
REM INSERTING into SYSTEM."content_static"
SET DEFINE OFF;
Insert into SYSTEM."content_static" (ID,"key") values (3,'footer');
Insert into SYSTEM."content_static" (ID,"key") values (18,'shipping');
REM INSERTING into SYSTEM."info"
SET DEFINE OFF;
Insert into SYSTEM."info" (ID,"title","meta_desc","meta_key","created") values (1,'Gi?i thi?u',null,null,1409044792);
Insert into SYSTEM."info" (ID,"title","meta_desc","meta_key","created") values (2,'Hu?ng d?n mua hàng',null,null,1409044950);
REM INSERTING into SYSTEM."maker"
SET DEFINE OFF;
Insert into SYSTEM."maker" (ID,"name","meta_desc","meta_key","site_title","sort_order") values (0,'miyu',null,null,null,1);
REM INSERTING into SYSTEM."menu"
SET DEFINE OFF;
REM INSERTING into SYSTEM."new"
SET DEFINE OFF;
Insert into SYSTEM."new" (ID,"title","intro","meta_desc","meta_key","image_link","created","count_view") values (1,'Nhà l?u siêu xe hàng mã ? s?ng, ?? ch?i bi?n ??o hút khách','(Dân trí) - Lo?t ?? ch?i trung thu bi?n ??o h??ng v? quê h??ng m?i xu?t hi?n nh?ng ?ã hút khách, các m?t hàng vàng mã “xa x?” không còn ???c nhi?u ng??i mua s?m.',null,null,'n1-242e1.jpg',1407553602,1);
Insert into SYSTEM."new" (ID,"title","intro","meta_desc","meta_key","image_link","created","count_view") values (2,'Arsenal ??ng ý bán Vermaelen cho Barcelona','(Dân trí) - Theo nh?ng thông tin t? báo gi?i Anh, Arsenal ?ã quy?t ??nh t? ch?i MU, ?? bán trung v? Vermarlen cho Barcelona. M?c giá c?a trung v? này vào kho?ng 15 tri?u b?ng.',null,null,'Vermaelen-d4361.jpg',1407553674,2);
Insert into SYSTEM."new" (ID,"title","intro","meta_desc","meta_key","image_link","created","count_view") values (3,'Hà N?i: CSGT tìm ng??i thân giúp cháu bé 8 tu?i ?i l?c','(Dân trí) - Theo ng??i thân cháu Chi, trong lúc gia ?ình ngh? tr?a, cháu Chi m?i ch?i ?ã ?i l?c t? phía ph??ng Ng?c Lâm (qu?n Long Biên) sang n?i thành. Trong lúc ?ang hoang mang tìm cháu, gia ?ình nh?n ???c tin báo c?a l?c l??ng c?nh sát giao thông.',null,null,'455-549e4.jpg',1407553969,9);
Insert into SYSTEM."new" (ID,"title","intro","meta_desc","meta_key","image_link","created","count_view") values (4,'M? t?ng c??ng không kích Iraq','(Dân trí) - Sau khi T?ng th?ng Obama phê chu?n cho không kích các m?c tiêu c?a nhóm phi?n quân H?i giáo IS ? mi?n b?c Iraq, L?u N?m Góc ?ã ti?n hành 3 ??t không kích.',null,null,'1-7d48c.jpg',1407554007,0);
REM INSERTING into SYSTEM."order"
SET DEFINE OFF;
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (7,6,2,1,4000000,1);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (8,7,2,1,4000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (9,8,8,1,10000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (10,9,8,1,10000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (11,10,8,1,10000000,2);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (12,11,8,1,10000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (13,12,8,2,20000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (14,13,8,1,10000000,1);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (15,14,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (16,15,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (17,16,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (18,17,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (19,18,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (20,19,3,1,5000000,0);
Insert into SYSTEM."order" (ID,ID_ORDER,"product_id","qty","amount","status") values (21,20,8,1,10000000,0);
REM INSERTING into SYSTEM."product"
SET DEFINE OFF;
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (2,15,'Tivi LG 4000',0,4000000,200000,'product2.jpg',0,4,null,null,'12 tháng',0,0,4,1,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (3,13,'Tivi Akai',0,5000000,0,'product1.jpg',0,8,null,null,'12 tháng',0,0,4,1,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (4,16,'Tivi Panasonic',0,6000000,0,'product3.jpg',0,4,null,null,'12 tháng',0,0,12,3,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (5,17,'Tivi Samsung',0,5500000,0,'product4.jpg',0,1,null,null,'12 tháng',0,0,0,0,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (6,15,'Tivi LG 5000',0,5000000,0,'product5.jpg',0,1,null,null,'12 tháng',0,0,0,0,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (7,18,'Tivi Toshiba',0,6200000,400000,'product6.jpg',0,74,null,null,'12 tháng',0,0,7,2,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (8,14,'Tivi JVC 500',0,10000000,500000,'product7.jpg',0,112,null,null,'12 tháng',0,0,17,5,'USB 4G','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
Insert into SYSTEM."product" (ID,ID_CATALOG,"name",ID_MAKER,"price","discount","image_link","created","view","meta_key","site_title","warranty","total","buyed","rate_total","rate_count","gifts","video","meta_desc") values (9,15,'Tivi LG 520',0,5400000,0,'product13.jpg',0,19,null,null,'12 tháng',0,0,4,1,'0','https://www.youtube.com/watch?v=zAEYQ6FDO5U',null);
REM INSERTING into SYSTEM."slide"
SET DEFINE OFF;
Insert into SYSTEM."slide" (ID,"name","image_name","image_link","link","info","sort_order") values (1,'Slide 1',null,'11.jpg','http://dantri.com.vn/','0',1);
Insert into SYSTEM."slide" (ID,"name","image_name","image_link","link","info","sort_order") values (2,'Slide 2',null,'21.jpg','http://dantri.com.vn/',null,2);
Insert into SYSTEM."slide" (ID,"name","image_name","image_link","link","info","sort_order") values (3,'Slide 3',null,'31.jpg','http://dantri.com.vn/',null,3);
REM INSERTING into SYSTEM."support"
SET DEFINE OFF;
Insert into SYSTEM."support" (ID,"name","yahoo","gmail","skype","phone","sort_order") values (1,'tua','tuacntt','tua@gmail.com','tuacntt','01686039488',1);
REM INSERTING into SYSTEM."transaction"
SET DEFINE OFF;
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (7,0,1,15,'tua','tua@gmail.com','01686039488',4000000,'nganluong',null,null,1405548000);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (8,0,0,15,'tua','tua@gmail.com','01686039488',4000000,'nganluong',null,null,1407917785);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (9,0,0,0,'tua','tuat@gmail.com','01686039488',10000000,'nganluong','111',null,1407918071);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (10,0,0,0,'tua','tua@gmail.com','01686039488',10000000,'nganluong','111111',null,1407918235);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (11,0,2,0,'tua','tua@gmail.com','111111',10000000,'nganluong','111',null,1407918299);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (12,0,1,0,'tua','tua@gmail.com','7667676',10000000,'nganluong',null,null,1407923211);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (13,0,1,0,'tua','tua@gmail.com','11',20000000,'nganluong','11',null,1407926712);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (14,0,1,0,'tua','tua@gmail.com','01686039488',10000000,'nganluong',null,null,1407981011);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (15,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099561);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (16,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099692);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (17,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099749);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (18,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099776);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (19,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099813);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (20,0,0,19,'tua','tua@gmail.com','01686039488',5000000,'baokim',null,null,1408099856);
Insert into SYSTEM."transaction" (ID,"type","status","user_id","user_name","user_email","user_phone","amount","payment","message","security","created") values (21,0,0,0,'tua','tua@gmail.com','01686039488',10000000,'dathang',null,null,1408159002);
REM INSERTING into SYSTEM."user"
SET DEFINE OFF;
Insert into SYSTEM."user" (ID,"name","email","phone","address","password","created") values (16,'dung','dung@yahoo.com','0921827210','111111','96e79218965eb72c92a549dd5a330112',1405589118);
Insert into SYSTEM."user" (ID,"name","email","phone","address","password","created") values (19,'phung','phung@gmail.com','01686039488','111','96e79218965eb72c92a549dd5a330112',0);
REM INSERTING into SYSTEM."video"
SET DEFINE OFF;
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (10,0,'Chuy?n Tình Trên Facebook - H? Vi?t Trung [Official]','1386147113843_video.jpg',null,'http://www.youtube.com/watch?v=3ZlLyU2L4P0',1386146497,2013,4);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (8,0,'Ch? còn trong m? ?i không em','1386147092891_video.jpg',null,'http://www.youtube.com/watch?v=RfNJ43HBzOM',1386146505,2013,6);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (7,0,'[HD] Anh Xin L?i - Minh V??ng M4U','1386147058495_video.jpg',null,'http://www.youtube.com/watch?v=OCZ4D9qT8lI',1386146502,2013,17);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (16,0,'Nh?t Em Vào Tim - H? Vi?t Trung [Official]','1386147135763_video.jpg',null,'http://www.youtube.com/watch?v=fkDSnN_I_Ig',0,1386147135,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (17,0,'Ch? Yêu Mình Em - Châu Kh?i Phong [Official]','1386147154302_video.jpg',null,'http://www.youtube.com/watch?v=l2MydtlKra8',0,1386147154,4);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (18,0,'S? Nghèo - Châu Kh?i Phong [Official]','138614718279_video.jpg',null,'http://www.youtube.com/watch?v=LJRvv8U6Dos',1386147576,1386147182,1);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (19,0,'Trò Ch?i ??ng Cay - Châu Kh?i Phong [Official]','138614721063_video.jpg',null,'http://www.youtube.com/watch?v=3J8d8-YgOlU',1386147575,1386147210,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (20,0,'S?u Tím Thi?p H?ng - Quang Lê ? Quyên ( Liveshow Quang Lê )','1386147271236_video.jpg',null,'http://www.youtube.com/watch?v=Kd5OrV4Y_bs',0,1386147271,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (21,0,'Gõ c?a trái tim Quang Lê - Mai Thiên Vân','1386147292776_video.jpg',null,'http://www.youtube.com/watch?v=9oVxDQsgXIQ',1386147577,1386147292,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (22,0,'Cô Hàng Xóm - Quang Lê','1386147310490_video.jpg',null,'http://www.youtube.com/watch?v=nA9ub4zlel8',0,1386147310,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (23,0,'Lam Truong - Mai Mai','1386147353743_video.jpg',null,'http://www.youtube.com/watch?v=o1igATj9lMw',0,1386147353,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (24,0,'L? Yêu Em R?i - B?ng Ki?u','1386147364632_video.jpg',null,'http://www.youtube.com/watch?v=HYi-5dM_c34',0,1386147364,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (25,0,'Ba?n Ti?nh Cuô?i - B??ng Kiê?u','1386147389790_video.jpg',null,'http://www.youtube.com/watch?v=pNr7jEQ8LT8',0,1386147389,2);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (26,1,'Phút cu?i - B?ng Ki?u','1386150063515_video.jpg',null,'http://www.youtube.com/watch?v=sA_gM6_eqXU',0,1386150063,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (27,0,'Gi?c M? (Live) - Bùi Anh Tu?n ft Yanbi','1386150103768_video.jpg',null,'http://www.youtube.com/watch?v=XLr463dUNgQ',0,1386150103,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (28,4,'Anh Nh? Em - Tu?n H?ng','1386150121482_video.jpg',null,'http://www.youtube.com/watch?v=ewNQtt1RiSk',0,1386150121,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (29,0,'LE QUYEN  HUNG - Nhu Giac Chiem Bao','1386150141608_video.jpg',null,'http://www.youtube.com/watch?v=DaMARvh0kms',0,1386150141,0);
Insert into SYSTEM."video" (ID,"count_view","name","images","intro","link","feature","created","view") values (30,10,'D? Vãng Cu?c Tình - Duy M?nh ft Tu?n H?ng','140905101897_video.jpg',null,'http://www.youtube.com/watch?v=g8I-LoBIFgQ',0,1409051018,0);
--------------------------------------------------------
--  DDL for Index SYS_C007152
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007152" ON "SYSTEM"."admin" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007151
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007151" ON "SYSTEM"."admin_group" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007154
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007154" ON "SYSTEM"."catalog" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007171
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007171" ON "SYSTEM"."comment" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007155
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007155" ON "SYSTEM"."contact" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007156
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007156" ON "SYSTEM"."content_static" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007157
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007157" ON "SYSTEM"."info" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007158
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007158" ON "SYSTEM"."maker" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007159
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007159" ON "SYSTEM"."menu" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007160
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007160" ON "SYSTEM"."new" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007165
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007165" ON "SYSTEM"."order" ("ID_ORDER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007162
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007162" ON "SYSTEM"."product" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007167
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007167" ON "SYSTEM"."slide" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007168
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007168" ON "SYSTEM"."support" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007161
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007161" ON "SYSTEM"."transaction" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007169
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007169" ON "SYSTEM"."user" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C007170
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C007170" ON "SYSTEM"."video" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure ORA$_SYS_REP_AUTH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SYSTEM"."ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;

/
--------------------------------------------------------
--  DDL for Package DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
9
bf d6
0cfc6e4Sm6mfaMYwsbW2JygBepcwg/BKmJ4VZy/pO06UXsVUMejsissTcGWYR4qeK4TPqfDK
q7UPH+SmKP6nW9zmxMZnuK1VDzM0Iv9O4E4SvvsnHWn+EPF9hR+oBFe3fEro6RQ5R5Ejd1nr
e+fAK010dExf76gg/c6ZB3YxGPHDOqkGI4lV6HNsd57gKLwTd0bxan5UwJriIpt7Vjc=

/
--------------------------------------------------------
--  DDL for Package Body DBMS_REPCAT_AUTH
--------------------------------------------------------

  CREATE OR REPLACE PACKAGE BODY "SYSTEM"."DBMS_REPCAT_AUTH" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
b
b9d 39c
PBMGkNCh5NDAdLezCHsLvZaVi/swg5UrNSCDfI4Zvp0VB6GpRld+By6E2nVdlFHT2g2kK9zM
8jSnsuee7mkmJD+W3Mo36HQvUfOe7jH5vP7tu1i0jDykzR0pUhJZUcY6xVrSwNPoNVPcT72N
eHhGwyRBj2+0vKbgTmcZKBMJzETRfOl2YGDDVB3FvKBSixMMqfWSX8uh3wPGOi8W9vOASC3z
0UvPqL7KR78SykUEoBCxpMGmE8pgElC/dagmVpIIt7QA6sneMlNb2OO/1zTN44ACRsm+2JAo
zD41TcuGaNUqDYNDRbPEKzeRZeXxrx1UvOWsYTNaO6icaV/NrtZbmXpDuGA/sqnz4jnKFK8S
0VC+Yjh2iJEV5edD2+8pyMgx44NVDiAQ+sjjDkpGc0IxXrm/v52yduhnj/xnkualIm/RyAv0
Q/YzRAHy7NvyavbajIvCFoZWpbO3Jw8NwkoU25ysfgvXZJrw4vPjh4hHR4Mpto6jFMM+dZPW
3N9HL971bTBgyAL0BjASEFXe83D+IoBYX0VQVk5+t7p7iUsmfyK5t+cECNpNOL6UaACcsAYB
Le+yLOAqFHSvCXlWcECxG7wXjAA2/XmBwvKBNLcggXKVp3i9cNzab0Mq9qSAcIYgRFxRdAOe
sTDZNOx6HkJTbCRKCMiJzgjQQW476DlOZD+9Gwh+AA/Y3PIDOfyhlvXT6HsjW33mASJUuORB
la5Jb3rB4syO6QO2a5vSHu26Gwib2EflS8bqC1hZhpHsvM+mAaWJ2x72JyrPe8V7Ohjbre49
gRsjAtspIYfP5958sSnHdkz32nGAXnrEY95lEHGwkuXLlj9y6I21aAyd3/lJkuEAEBxzZVnm
IaNJBwl8u33+SqGLZzILy1QxmA+pF8yUaQ+yRU/5+3n1mY4=

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  DDL for Queue DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQERROR',
     Queue_table         => 'SYSTEM.DEF$_AQERROR',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Error Queue for Deferred RPCs');
  END;
/
--------------------------------------------------------
--  DDL for Queue DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE(
     Queue_name          => 'SYSTEM.DEF$_AQCALL',
     Queue_table         => 'SYSTEM.DEF$_AQCALL',
     Queue_type          =>  0,
     Max_retries         =>  5,
     Retry_delay         =>  0,
     dependency_tracking =>  TRUE,
     comment             => 'Deferred RPC Queue');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQCALL
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQCALL"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  DDL for Queue Table DEF$_AQERROR
--------------------------------------------------------

   BEGIN DBMS_AQADM.CREATE_QUEUE_TABLE(
     Queue_table        => '"SYSTEM"."DEF$_AQERROR"',
     Queue_payload_type => 'VARIANT',
     storage_clause     => 'PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 TABLESPACE SYSTEM',
     Sort_list          => 'ENQ_TIME',
     Compatible         => '8.0.3');
  END;
/
--------------------------------------------------------
--  Constraints for Table admin
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."admin" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table admin_group
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."admin_group" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table catalog
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."catalog" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table comment
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."comment" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table contact
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."contact" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table content_static
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."content_static" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table info
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."info" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table maker
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."maker" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table menu
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."menu" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table new
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."new" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table order
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."order" ADD PRIMARY KEY ("ID_ORDER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table product
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."product" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table slide
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."slide" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table support
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."support" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table transaction
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."transaction" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table user
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."user" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table video
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."video" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table admin
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."admin" ADD FOREIGN KEY ("ADMIN_GROUP_ID")
	  REFERENCES "SYSTEM"."admin_group" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table comment
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."comment" ADD FOREIGN KEY ("ID_PRODUCT")
	  REFERENCES "SYSTEM"."product" ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."comment" ADD FOREIGN KEY ("ID_USERS")
	  REFERENCES "SYSTEM"."user" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table order
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."order" ADD FOREIGN KEY ("ID")
	  REFERENCES "SYSTEM"."transaction" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table product
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."product" ADD FOREIGN KEY ("ID_CATALOG")
	  REFERENCES "SYSTEM"."catalog" ("ID") ENABLE;
  ALTER TABLE "SYSTEM"."product" ADD FOREIGN KEY ("ID_MAKER")
	  REFERENCES "SYSTEM"."maker" ("ID") ENABLE;
