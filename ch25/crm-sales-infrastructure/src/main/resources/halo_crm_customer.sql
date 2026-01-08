drop database if exists test;
drop user if exists 'test'@'%';
-- 支持emoji：需要mysql数据库参数： character_set_server=utf8mb4
create database test default character set utf8mb4 collate utf8mb4_unicode_ci;
use test;
-- 注意密码强度
create user 'test'@'%' identified by 'test@db26X';
grant all privileges on test.* to 'test'@'%';
flush privileges;

--  创建表
CREATE TABLE `halo_crm_customer` (
  `customer_id` varchar(32) NOT NULL DEFAULT '',
  `member_id` varchar(32) DEFAULT NULL,
  `global_id` varchar(32) DEFAULT NULL,
  `company_name` varchar(64) DEFAULT NULL,
  `source` varchar(16) DEFAULT NULL,
  `company_type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;