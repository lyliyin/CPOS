/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2016/12/15 星期四 12:01:06                      */
/*==============================================================*/
CREATE DATABASE CPOS
GO
USE CPOS

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Coupon') and o.name = 'FK_COUPON_REFERENCE_VIPCOUPO')
alter table Coupon
   drop constraint FK_COUPON_REFERENCE_VIPCOUPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CouponType') and o.name = 'FK_COUPONTY_REFERENCE_COUPON')
alter table CouponType
   drop constraint FK_COUPONTY_REFERENCE_COUPON
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CouponTypeItem') and o.name = 'FK_COUPONTY_REFERENCE_COUPONTY')
alter table CouponTypeItem
   drop constraint FK_COUPONTY_REFERENCE_COUPONTY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CouponTypeUnit') and o.name = 'FK_COUPONTY_REFERENCE_COUPONTY')
alter table CouponTypeUnit
   drop constraint FK_COUPONTY_REFERENCE_COUPONTY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'FK_ITEM_REFERENCE_ITEMPRIC')
alter table Item
   drop constraint FK_ITEM_REFERENCE_ITEMPRIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'FK_ITEM_REFERENCE_ITEMIMAG')
alter table Item
   drop constraint FK_ITEM_REFERENCE_ITEMIMAG
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Item') and o.name = 'FK_ITEM_REFERENCE_ITEMBRAN')
alter table Item
   drop constraint FK_ITEM_REFERENCE_ITEMBRAN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemCategory') and o.name = 'FK_ITEMCATE_REFERENCE_ITEM')
alter table ItemCategory
   drop constraint FK_ITEMCATE_REFERENCE_ITEM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemPrice') and o.name = 'FK_ITEMPRIC_REFERENCE_ITEMPRIC')
alter table ItemPrice
   drop constraint FK_ITEMPRIC_REFERENCE_ITEMPRIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemPriceSkuProperty') and o.name = 'FK_ITEMPRIC_REFERENCE_商品评论表')
alter table ItemPriceSkuProperty
   drop constraint FK_ITEMPRIC_REFERENCE_商品评论表
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ItemSkuProperty') and o.name = 'FK_ITEMSKUP_REFERENCE_ITEMPRIC')
alter table ItemSkuProperty
   drop constraint FK_ITEMSKUP_REFERENCE_ITEMPRIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysCardTypeStatus') and o.name = 'FK_SYSCARDT_REFERENCE_VIPCARD')
alter table SysCardTypeStatus
   drop constraint FK_SYSCARDT_REFERENCE_VIPCARD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SysVipCardType') and o.name = 'FK_SYSVIPCA_REFERENCE_VIPCARD')
alter table SysVipCardType
   drop constraint FK_SYSVIPCA_REFERENCE_VIPCARD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_Menu') and o.name = 'FK_T_MENU_REFERENCE_T_ROLE_M')
alter table T_Menu
   drop constraint FK_T_MENU_REFERENCE_T_ROLE_M
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_Role') and o.name = 'FK_T_ROLE_REFERENCE_T_USER_R')
alter table T_Role
   drop constraint FK_T_ROLE_REFERENCE_T_USER_R
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_User') and o.name = 'FK_T_USER_REFERENCE_T_USER_R')
alter table T_User
   drop constraint FK_T_USER_REFERENCE_T_USER_R
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('T_User_Role_Mappering') and o.name = 'FK_T_USER_R_REFERENCE_T_ROLE_M')
alter table T_User_Role_Mappering
   drop constraint FK_T_USER_R_REFERENCE_T_ROLE_M
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Vip') and o.name = 'FK_VIP_REFERENCE_VIPCARDV')
alter table Vip
   drop constraint FK_VIP_REFERENCE_VIPCARDV
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VipCard') and o.name = 'FK_VIPCARD_REFERENCE_VIPCARDV')
alter table VipCard
   drop constraint FK_VIPCARD_REFERENCE_VIPCARDV
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Coupon')
            and   type = 'U')
   drop table Coupon
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CouponType')
            and   type = 'U')
   drop table CouponType
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CouponTypeItem')
            and   name  = 'IDX_ItemId_CouponTypeId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index CouponTypeItem.IDX_ItemId_CouponTypeId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CouponTypeItem')
            and   type = 'U')
   drop table CouponTypeItem
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CouponTypeUnit')
            and   name  = 'IDX_CouponTypeUnit_Id_Unique'
            and   indid > 0
            and   indid < 255)
   drop index CouponTypeUnit.IDX_CouponTypeUnit_Id_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CouponTypeUnit')
            and   type = 'U')
   drop table CouponTypeUnit
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Item')
            and   name  = 'IDX_ItemName_CustomerId_CategoryId_Cluster'
            and   indid > 0
            and   indid < 255)
   drop index Item.IDX_ItemName_CustomerId_CategoryId_Cluster
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Item')
            and   name  = 'IDX_ItmeCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index Item.IDX_ItmeCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Item')
            and   type = 'U')
   drop table Item
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemBrand')
            and   name  = 'IDX_ItemBrandName_CustomerId_IsDelete'
            and   indid > 0
            and   indid < 255)
   drop index ItemBrand.IDX_ItemBrandName_CustomerId_IsDelete
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemBrand')
            and   name  = 'IDX_BrandCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index ItemBrand.IDX_BrandCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemBrand')
            and   type = 'U')
   drop table ItemBrand
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemCategory')
            and   name  = 'IDX_CategoryName_Customer_IsDlete_Cluster'
            and   indid > 0
            and   indid < 255)
   drop index ItemCategory.IDX_CategoryName_Customer_IsDlete_Cluster
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemCategory')
            and   name  = 'IDX_CategoryCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index ItemCategory.IDX_CategoryCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemCategory')
            and   type = 'U')
   drop table ItemCategory
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemImages')
            and   name  = 'Idx_IsDelete_Cluster'
            and   indid > 0
            and   indid < 255)
   drop index ItemImages.Idx_IsDelete_Cluster
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemImages')
            and   name  = 'Idx_ItemId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index ItemImages.Idx_ItemId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemImages')
            and   type = 'U')
   drop table ItemImages
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemPrice')
            and   type = 'U')
   drop table ItemPrice
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ItemPriceSkuProperty')
            and   name  = 'IDX_SkuId_SkuPropertyId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index ItemPriceSkuProperty.IDX_SkuId_SkuPropertyId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemPriceSkuProperty')
            and   type = 'U')
   drop table ItemPriceSkuProperty
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemSkuProperty')
            and   type = 'U')
   drop table ItemSkuProperty
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SysCardTypeStatus')
            and   name  = 'IDX_CardTypeStatusCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index SysCardTypeStatus.IDX_CardTypeStatusCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysCardTypeStatus')
            and   type = 'U')
   drop table SysCardTypeStatus
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SysVipCardType')
            and   name  = 'IDX_CardTypeLevel_Unique'
            and   indid > 0
            and   indid < 255)
   drop index SysVipCardType.IDX_CardTypeLevel_Unique
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SysVipCardType')
            and   name  = 'IDX_CardTypeName_Cluster'
            and   indid > 0
            and   indid < 255)
   drop index SysVipCardType.IDX_CardTypeName_Cluster
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysVipCardType')
            and   type = 'U')
   drop table SysVipCardType
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_Menu')
            and   name  = 'IDX_MenuName_CustomerId_Status'
            and   indid > 0
            and   indid < 255)
   drop index T_Menu.IDX_MenuName_CustomerId_Status
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_Menu')
            and   name  = 'IDX_MenuCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index T_Menu.IDX_MenuCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Menu')
            and   type = 'U')
   drop table T_Menu
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_Role')
            and   name  = 'IDX_RoleCode_Customer_CustomIndex'
            and   indid > 0
            and   indid < 255)
   drop index T_Role.IDX_RoleCode_Customer_CustomIndex
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_Role')
            and   name  = 'IDX_RoleId_UniqueIndex'
            and   indid > 0
            and   indid < 255)
   drop index T_Role.IDX_RoleId_UniqueIndex
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Role')
            and   type = 'U')
   drop table T_Role
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_Role_Menu')
            and   name  = 'IDX_MenuId_RoleId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index T_Role_Menu.IDX_MenuId_RoleId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_Role_Menu')
            and   type = 'U')
   drop table T_Role_Menu
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_User')
            and   name  = 'IDX_UserId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index T_User.IDX_UserId_Unique
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_User')
            and   name  = 'IDX_UserCode_UserPhone_Customer_IsDelete_Cus'
            and   indid > 0
            and   indid < 255)
   drop index T_User.IDX_UserCode_UserPhone_Customer_IsDelete_Cus
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_User')
            and   type = 'U')
   drop table T_User
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('T_User_Role_Mappering')
            and   name  = 'Idx_UserId_RoleId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index T_User_Role_Mappering.Idx_UserId_RoleId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('T_User_Role_Mappering')
            and   type = 'U')
   drop table T_User_Role_Mappering
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Table_20')
            and   type = 'U')
   drop table Table_20
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Vip')
            and   type = 'U')
   drop table Vip
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VipCard')
            and   name  = 'IDX_Customer_CardCodeSID_Status_Cluster'
            and   indid > 0
            and   indid < 255)
   drop index VipCard.IDX_Customer_CardCodeSID_Status_Cluster
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VipCard')
            and   name  = 'IDX_VipCardCode_Unique'
            and   indid > 0
            and   indid < 255)
   drop index VipCard.IDX_VipCardCode_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VipCard')
            and   type = 'U')
   drop table VipCard
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('VipCardVipMappering')
            and   name  = 'IDX_VipId_VipCardId_Unique'
            and   indid > 0
            and   indid < 255)
   drop index VipCardVipMappering.IDX_VipId_VipCardId_Unique
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VipCardVipMappering')
            and   type = 'U')
   drop table VipCardVipMappering
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VipCouponTypeMappering')
            and   type = 'U')
   drop table VipCouponTypeMappering
go

if exists (select 1
            from  sysobjects
           where  id = object_id('商品评论表')
            and   type = 'U')
   drop table 商品评论表
go

/*==============================================================*/
/* Table: Coupon                                                */
/*==============================================================*/
create table Coupon (
   CouponId             uniqueidentifier     not null,
   Id                   uniqueidentifier     null,
   CouponName           varchar(50)          null,
   CouponCode           varchar(50)          null,
   CouponTypeId         uniqueidentifier     null,
   CreateTime           datetime             null default getdate(),
   IsDelete             int                  null,
   CustomerId           varchar(50)          null,
   constraint PK_COUPON primary key (CouponId)
)
go

/*==============================================================*/
/* Table: CouponType                                            */
/*==============================================================*/
create table CouponType (
   CouponTypeId         uniqueidentifier     not null,
   CouponId             uniqueidentifier     null,
   CouponTypeName       varchar(50)          null,
   CouponTypeCategory   int                  null,
   CouponTypeParval     decimal(18,2)        null,
   CouponTypeCount      int                  null,
   IsAutoCreaateCount   int                  null,
   IsAllUnit            int                  null,
   IsAllItem            int                  null,
   StartDate            datetime             null,
   EndDate              datetime             null,
   AfterDays            int                  null,
   CouponTypeImages     varbinary(max)       null,
   IsAllowAdd           int                  null,
   constraint PK_COUPONTYPE primary key (CouponTypeId)
)
go

/*==============================================================*/
/* Table: CouponTypeItem                                        */
/*==============================================================*/
create table CouponTypeItem (
   Id                   uniqueidentifier     not null,
   SkuPriceId           uniqueidentifier     not null,
   CouponTypeId         uniqueidentifier     not null,
   IsDelete             int                  null,
   CustomerId           varchar(50)          null,
   constraint PK_COUPONTYPEITEM primary key (Id)
)
go

/*==============================================================*/
/* Index: IDX_ItemId_CouponTypeId_Unique                        */
/*==============================================================*/
create index IDX_ItemId_CouponTypeId_Unique on CouponTypeItem (
SkuPriceId ASC,
CouponTypeId ASC
)
go

/*==============================================================*/
/* Table: CouponTypeUnit                                        */
/*==============================================================*/
create table CouponTypeUnit (
   Id                   uniqueidentifier     not null,
   UnitId               uniqueidentifier     not null,
   CouponTypeId         uniqueidentifier     not null,
   IsDelete             int                  null,
   CustomerId           char(10)             null,
   constraint PK_COUPONTYPEUNIT primary key (Id)
)
go

/*==============================================================*/
/* Index: IDX_CouponTypeUnit_Id_Unique                          */
/*==============================================================*/
create unique index IDX_CouponTypeUnit_Id_Unique on CouponTypeUnit (
UnitId ASC,
CouponTypeId ASC
)
go

/*==============================================================*/
/* Table: Item                                                  */
/*==============================================================*/
create table Item (
   ItemId               uniqueidentifier     not null,
   ItemPriceId          uniqueidentifier     null,
   ItemImagesId         uniqueidentifier     null,
   ItemBrandId          uniqueidentifier     null,
   ItemName             varchar(50)          not null,
   ItemCategoryId       uniqueidentifier     not null,
   ItemCode             varchar(50)          not null,
   IsDelete             int                  not null,
   CustomerId           varchar(50)          not null,
   ItemDesc             varchar(max)         null,
   DisplayIndex         int                  null,
   IsDiscount           int                  null,
   DiscountRate         decimal(18,2)        null,
   IsConvertible        int                  null,
   品牌Id                 uniqueidentifier     null,
   constraint PK_ITEM primary key nonclustered (ItemId)
)
go

/*==============================================================*/
/* Index: IDX_ItmeCode_Unique                                   */
/*==============================================================*/
create unique index IDX_ItmeCode_Unique on Item (
ItemCode ASC
)
go

/*==============================================================*/
/* Index: IDX_ItemName_CustomerId_CategoryId_Cluster            */
/*==============================================================*/
create clustered index IDX_ItemName_CustomerId_CategoryId_Cluster on Item (
ItemName ASC,
ItemCategoryId ASC,
IsDelete ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Table: ItemBrand                                             */
/*==============================================================*/
create table ItemBrand (
   ItemBrandId          uniqueidentifier     not null,
   ItemBrandCode        varchar(50)          not null,
   ItemBrandName        varchar(50)          not null,
   IsDelete             int             not null,
   CustomerId           varchar(50)          not null,
   constraint PK_ITEMBRAND primary key nonclustered (ItemBrandId)
)
go

/*==============================================================*/
/* Index: IDX_BrandCode_Unique                                  */
/*==============================================================*/
create unique index IDX_BrandCode_Unique on ItemBrand (
ItemBrandCode ASC
)
go

/*==============================================================*/
/* Index: IDX_ItemBrandName_CustomerId_IsDelete                 */
/*==============================================================*/
create clustered index IDX_ItemBrandName_CustomerId_IsDelete on ItemBrand (
ItemBrandName ASC,
IsDelete ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Table: ItemCategory                                          */
/*==============================================================*/
create table ItemCategory (
   CategoryId           uniqueidentifier     not null,
   ItemId               uniqueidentifier     null,
   CategoryName         varbinary(50)        not null,
   CategoryCode         varbinary(50)        not null,
   ParentId             uniqueidentifier     not null,
   IsDelete             int                  not null default 0,
   CustomerId           varchar(50)          not null,
   constraint PK_ITEMCATEGORY primary key nonclustered (CategoryId)
)
go

/*==============================================================*/
/* Index: IDX_CategoryCode_Unique                               */
/*==============================================================*/
create unique index IDX_CategoryCode_Unique on ItemCategory (
CategoryCode ASC
)
go

/*==============================================================*/
/* Index: IDX_CategoryName_Customer_IsDlete_Cluster             */
/*==============================================================*/
create clustered index IDX_CategoryName_Customer_IsDlete_Cluster on ItemCategory (
CategoryName ASC,
ParentId ASC,
IsDelete ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Table: ItemImages                                            */
/*==============================================================*/
create table ItemImages (
   ItemImagesId         uniqueidentifier     not null,
   ItemId               uniqueidentifier     not null,
   ImagesUrl            varchar(50)          not null,
   DisplayIndex         int                  not null,
   IsDelete             int                  null,
   constraint PK_ITEMIMAGES primary key (ItemImagesId)
)
go

/*==============================================================*/
/* Index: Idx_ItemId_Unique                                     */
/*==============================================================*/
create index Idx_ItemId_Unique on ItemImages (
ItemId ASC
)
go

/*==============================================================*/
/* Index: Idx_IsDelete_Cluster                                  */
/*==============================================================*/
create index Idx_IsDelete_Cluster on ItemImages (
IsDelete ASC
)
go

/*==============================================================*/
/* Table: ItemPrice                                             */
/*==============================================================*/
create table ItemPrice (
   ItemPriceId          uniqueidentifier     not null,
   ItemPricePropertyId  uniqueidentifier     null,
   OrignalPrice         decimal(18,2)        null,
   SalePrice            decimal(18,2)        null,
   StoreCount           int                  null,
   SaleCount            int                  null,
   ItemId               uniqueidentifier     not null,
   constraint PK_ITEMPRICE primary key (ItemPriceId)
)
go

/*==============================================================*/
/* Table: ItemPriceSkuProperty                                  */
/*==============================================================*/
create table ItemPriceSkuProperty (
   ItemPricePropertyId  uniqueidentifier     not null,
   ItemPriceId          uniqueidentifier     not null,
   PropertyId           uniqueidentifier     not null,
   IsDelete             int                  null,
   CustomerId           varchar(50)          null,
   constraint PK_ITEMPRICESKUPROPERTY primary key (ItemPricePropertyId)
)
go

/*==============================================================*/
/* Index: IDX_SkuId_SkuPropertyId_Unique                        */
/*==============================================================*/
create index IDX_SkuId_SkuPropertyId_Unique on ItemPriceSkuProperty (
ItemPriceId ASC,
PropertyId ASC
)
go

/*==============================================================*/
/* Table: ItemSkuProperty                                       */
/*==============================================================*/
create table ItemSkuProperty (
   标识                   uniqueidentifier     not null,
   ItemPricePropertyId  uniqueidentifier     null,
   PropertyName         varchar(50)          not null,
   PropertyParentId     uniqueidentifier     not null,
   IsDelete             int                  not null,
   CustomerId           varchar(50)          not null,
   constraint PK_ITEMSKUPROPERTY primary key (标识)
)
go

/*==============================================================*/
/* Table: SysCardTypeStatus                                     */
/*==============================================================*/
create table SysCardTypeStatus (
   SysCardTypeStatusId  uniqueidentifier     not null,
   VipCardId            uniqueidentifier     null,
   SysCardTypeStatusCode varchar(50)          not null,
   SysCardTypeStatusDesc varchar(50)          not null,
   CustomerId           varchar(50)          null,
   CreateTime           datetime             not null default getdate(),
   LastUpdateTime       datetime             not null default getdate(),
   constraint PK_SYSCARDTYPESTATUS primary key (SysCardTypeStatusId)
)
go

/*==============================================================*/
/* Index: IDX_CardTypeStatusCode_Unique                         */
/*==============================================================*/
create unique index IDX_CardTypeStatusCode_Unique on SysCardTypeStatus (
SysCardTypeStatusCode ASC
)
go

/*==============================================================*/
/* Table: SysVipCardType                                        */
/*==============================================================*/
create table SysVipCardType (
   Id                   uniqueidentifier     not null,
   VipCardId            uniqueidentifier     null,
   VipCardTypeName      varbinary(50)        not null,
   VipCardTypeLevel     int                  null,
   CardDiscount         decimal(18,2)        null,
   IsRecharge           int                  null,
   IsOnlineSale         int                  null,
   CustomerId           varchar(50)          null,
   IsDelete             int                  null,
   constraint PK_SYSVIPCARDTYPE primary key nonclustered (Id)
)
go

/*==============================================================*/
/* Index: IDX_CardTypeName_Cluster                              */
/*==============================================================*/
create clustered index IDX_CardTypeName_Cluster on SysVipCardType (
VipCardTypeName ASC,
IsRecharge ASC,
IsOnlineSale ASC,
CustomerId ASC,
IsDelete ASC
)
go

/*==============================================================*/
/* Index: IDX_CardTypeLevel_Unique                              */
/*==============================================================*/
create unique index IDX_CardTypeLevel_Unique on SysVipCardType (
VipCardTypeLevel ASC
)
go

/*==============================================================*/
/* Table: T_Menu                                                */
/*==============================================================*/
create table T_Menu (
   MenuId               uniqueidentifier     not null,
   RoleMenuId           uniqueidentifier     null,
   ParentId             varchar(50)          not null,
   MenuCode             varchar(50)          not null,
   MenuName             varchar(50)          not null,
   MenuUrl              varchar(250)         not null,
   DisplayIndex         int                  null,
   MenuStatus           int                  null,
   CustomerId           varchar(50)          not null,
   constraint PK_T_MENU primary key nonclustered (MenuId)
)
go

/*==============================================================*/
/* Index: IDX_MenuCode_Unique                                   */
/*==============================================================*/
create unique index IDX_MenuCode_Unique on T_Menu (
MenuCode ASC
)
go

/*==============================================================*/
/* Index: IDX_MenuName_CustomerId_Status                        */
/*==============================================================*/
create clustered index IDX_MenuName_CustomerId_Status on T_Menu (
MenuName ASC,
MenuStatus ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Table: T_Role                                                */
/*==============================================================*/
create table T_Role (
   RoleId               uniqueidentifier     not null,
   RoleCode             varchar(50)          not null,
   RoleName             varchar(50)          not null,
   CustomerId           varchar(50)          not null,
   IsDelete             int                  not null,
   constraint PK_T_ROLE primary key nonclustered (RoleId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('T_Role') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'T_Role' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '角色表', 
   'user', @CurrentUser, 'table', 'T_Role'
go

/*==============================================================*/
/* Index: IDX_RoleId_UniqueIndex                                */
/*==============================================================*/
create unique index IDX_RoleId_UniqueIndex on T_Role (
RoleId ASC
)
go

/*==============================================================*/
/* Index: IDX_RoleCode_Customer_CustomIndex                     */
/*==============================================================*/
create clustered index IDX_RoleCode_Customer_CustomIndex on T_Role (
RoleCode ASC,
CustomerId ASC,
IsDelete ASC
)
go

/*==============================================================*/
/* Table: T_Role_Menu                                           */
/*==============================================================*/
create table T_Role_Menu (
   RoleMenuId           uniqueidentifier     not null,
   MenuId               uniqueidentifier     not null,
   RoleId               uniqueidentifier     not null,
   constraint PK_T_ROLE_MENU primary key (RoleMenuId)
)
go

/*==============================================================*/
/* Index: IDX_MenuId_RoleId_Unique                              */
/*==============================================================*/
create unique index IDX_MenuId_RoleId_Unique on T_Role_Menu (
MenuId ASC,
RoleId ASC
)
go

/*==============================================================*/
/* Table: T_User                                                */
/*==============================================================*/
create table T_User (
   UserId               uniqueidentifier     not null,
   UserCode             varchar(50)          not null,
   UserName             varchar(50)          not null,
   UserPassword         varchar(50)          not null,
   UserAge              int                  null,
   UserPhone            varchar(50)          not null,
   UserAddress          varchar(50)          null,
   UserEmail            varchar(50)          null,
   IsDelete             int                  not null default 0
      constraint CKC_ISDELETE_T_USER check (IsDelete between 0 and 1),
   CustomerId           varchar(50)          not null,
   constraint PK_T_USER primary key nonclustered (UserId)
)
go

/*==============================================================*/
/* Index: IDX_UserCode_UserPhone_Customer_IsDelete_Cus          */
/*==============================================================*/
create clustered index IDX_UserCode_UserPhone_Customer_IsDelete_Cus on T_User (
UserCode ASC,
UserPhone ASC,
UserEmail ASC,
IsDelete ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Index: IDX_UserId_Unique                                     */
/*==============================================================*/
create unique index IDX_UserId_Unique on T_User (
UserId ASC
)
go

/*==============================================================*/
/* Table: T_User_Role_Mappering                                 */
/*==============================================================*/
create table T_User_Role_Mappering (
   UserRoleId           uniqueidentifier     not null,
   RoleMenuId           uniqueidentifier     null,
   UserId               uniqueidentifier     not null,
   RoleId               uniqueidentifier     not null,
   constraint PK_T_USER_ROLE_MAPPERING primary key (UserRoleId)
)
go

/*==============================================================*/
/* Index: Idx_UserId_RoleId_Unique                              */
/*==============================================================*/
create index Idx_UserId_RoleId_Unique on T_User_Role_Mappering (
UserId ASC,
RoleId ASC
)
go

/*==============================================================*/
/* Table: Vip                                                   */
/*==============================================================*/
create table Vip (
   VipId                uniqueidentifier     not null,
   VipCardVipMapperingId uniqueidentifier     null,
   VipName              varchar(50)          not null,
   Phone                varchar(50)          not null,
   VipAddress           varchar(255)         null,
   VipGender            int                  null,
   CreateTime           datetime             not null,
   constraint PK_VIP primary key (VipId)
)
go

/*==============================================================*/
/* Table: VipCard                                               */
/*==============================================================*/
create table VipCard (
   VipCardId            uniqueidentifier     not null,
   VipCardVipMapperingId uniqueidentifier     null,
   VipCardCode          varchar(50)          not null,
   VipCardSid           varchar(50)          null,
   VipCardStatus        varchar(50)          not null,
   CustomerId           varchar(50)          not null,
   IsDelete             int                  not null,
   CreateTime           datetime             not null default getdate(),
   LastUpdateTime       datetime             not null default getdate(),
   VipCardTypeId        uniqueidentifier     null,
   constraint PK_VIPCARD primary key nonclustered (VipCardId)
)
go

/*==============================================================*/
/* Index: IDX_VipCardCode_Unique                                */
/*==============================================================*/
create unique index IDX_VipCardCode_Unique on VipCard (
VipCardCode ASC
)
go

/*==============================================================*/
/* Index: IDX_Customer_CardCodeSID_Status_Cluster               */
/*==============================================================*/
create clustered index IDX_Customer_CardCodeSID_Status_Cluster on VipCard (
VipCardSid ASC,
VipCardStatus ASC,
CustomerId ASC,
IsDelete ASC
)
go

/*==============================================================*/
/* Table: VipCardVipMappering                                   */
/*==============================================================*/
create table VipCardVipMappering (
   VipCardVipMapperingId uniqueidentifier     not null,
   VipId                uniqueidentifier     not null,
   VipCardId            uniqueidentifier     not null,
   IsDelete             int                  not null,
   CustomerId           varchar(50)          null,
   constraint PK_VIPCARDVIPMAPPERING primary key (VipCardVipMapperingId)
)
go

/*==============================================================*/
/* Index: IDX_VipId_VipCardId_Unique                            */
/*==============================================================*/
create unique index IDX_VipId_VipCardId_Unique on VipCardVipMappering (
VipId ASC,
VipCardId ASC,
IsDelete ASC,
CustomerId ASC
)
go

/*==============================================================*/
/* Table: VipCouponTypeMappering                                */
/*==============================================================*/
create table VipCouponTypeMappering (
   Id                   uniqueidentifier     not null,
   VipId                uniqueidentifier     null,
   CouponId             uniqueidentifier     null,
   CouponSourcesId      int                  null,
   IsDelete             int                  null,
   CustomerId           char(10)             null,
   constraint PK_VIPCOUPONTYPEMAPPERING primary key (Id)
)
go

/*==============================================================*/
/* Table: 商品评论表                                                 */
/*==============================================================*/
alter table Coupon
   add constraint FK_COUPON_REFERENCE_VIPCOUPO foreign key (Id)
      references VipCouponTypeMappering (Id)
go

alter table CouponType
   add constraint FK_COUPONTY_REFERENCE_COUPON foreign key (CouponId)
      references Coupon (CouponId)
go

alter table CouponTypeItem
   add constraint FK_COUPONTY_REFERENCE_COUPONTY foreign key (CouponTypeId)
      references CouponType (CouponTypeId)
go


alter table Item
   add constraint FK_ITEM_REFERENCE_ITEMPRIC foreign key (ItemPriceId)
      references ItemPrice (ItemPriceId)
go

alter table Item
   add constraint FK_ITEM_REFERENCE_ITEMIMAG foreign key (ItemImagesId)
      references ItemImages (ItemImagesId)
go

alter table Item
   add constraint FK_ITEM_REFERENCE_ITEMBRAN foreign key (ItemBrandId)
      references ItemBrand (ItemBrandId)
go

alter table ItemCategory
   add constraint FK_ITEMCATE_REFERENCE_ITEM foreign key (ItemId)
      references Item (ItemId)
go

alter table ItemPrice
   add constraint FK_ITEMPRIC_REFERENCE_ITEMPRIC foreign key (ItemPricePropertyId)
      references ItemPriceSkuProperty (ItemPricePropertyId)
go

alter table ItemSkuProperty
   add constraint FK_ITEMSKUP_REFERENCE_ITEMPRIC foreign key (ItemPricePropertyId)
      references ItemPriceSkuProperty (ItemPricePropertyId)
go

alter table SysCardTypeStatus
   add constraint FK_SYSCARDT_REFERENCE_VIPCARD foreign key (VipCardId)
      references VipCard (VipCardId)
go

alter table SysVipCardType
   add constraint FK_SYSVIPCA_REFERENCE_VIPCARD foreign key (VipCardId)
      references VipCard (VipCardId)
go

alter table T_Menu
   add constraint FK_T_MENU_REFERENCE_T_ROLE_M foreign key (RoleMenuId)
      references T_Role_Menu (RoleMenuId)
go


alter table T_User_Role_Mappering
   add constraint FK_T_USER_R_REFERENCE_T_ROLE_M foreign key (RoleMenuId)
      references T_Role_Menu (RoleMenuId)
go

alter table Vip
   add constraint FK_VIP_REFERENCE_VIPCARDV foreign key (VipCardVipMapperingId)
      references VipCardVipMappering (VipCardVipMapperingId)
go

alter table VipCard
   add constraint FK_VIPCARD_REFERENCE_VIPCARDV foreign key (VipCardVipMapperingId)
      references VipCardVipMappering (VipCardVipMapperingId)
go

