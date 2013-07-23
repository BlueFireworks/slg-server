-module(database_init_201306181371539185).
-export([up/0, down/0]).

up() ->
  %% Query= "
%% CREATE TABLE `buildings` (
%%   `id` int(11) NOT NULL,
%%   `user_id` int(11) NOT NULL,
%%   `b_type` varchar(30) NOT NULL,
%%   `sort` tinyint(3) unsigned NOT NULL,
%%   `level` tinyint(3) unsigned NOT NULL,
%%   PRIMARY KEY (`id`),
%%   UNIQUE KEY `fwefwefwfwe` (`user_id`,`b_type`)
%% ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
%%   ",
%%   model_exec:exec(migrate, Query),
%%   Query2= "
%%  CREATE TABLE `devices` (
%%   `id` int(11) NOT NULL,
%%   `d_type` varchar(20) NOT NULL DEFAULT 'unknown',
%%   `udid` char(40) NOT NULL DEFAULT 'unknown',
%%   `os` varchar(20) NOT NULL DEFAULT 'unknown',
%%   `os_version` varchar(10) NOT NULL DEFAULT 'unknown',
%%   `market` varchar(45) NOT NULL DEFAULT '',
%%   `terminal` varchar(45) NOT NULL DEFAULT '',
%%   `local` varchar(45) NOT NULL DEFAULT '',
%%   `mac_addr` varchar(255) NOT NULL DEFAULT '',
%%   PRIMARY KEY (`id`),
%%   UNIQUE KEY `id_UNIQUE` (`id`)
%% ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
%% ",
%%   model_exec:exec(migrate, Query2),
%%   Query3= "
%%  CREATE TABLE `users` (
%%   `id` bigint(20) NOT NULL,
%%   `user_id` bigint(20) NOT NULL,
%%   `device_id` int(11) NOT NULL,
%%   `name` varchar(30) NOT NULL,
%%   `level` int(11) NOT NULL,
%%   `experience` int(11) NOT NULL DEFAULT '0',
%%   `sex` tinyint(4) NOT NULL DEFAULT '-1',
%%   PRIMARY KEY (`id`),
%%   UNIQUE KEY `id_UNIQUE` (`id`),
%%   UNIQUE KEY `username_UNIQUE` (`name`)
%% ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ALTER TABLE `table` ADD INDEX `product_id` (`product_id`)';
%% ",
%%   model_exec:exec(migrate, Query3),
%%   Query4= "
%%  CREATE  TABLE IF NOT EXISTS `migrate` (
%%   `id` INT(10) NOT NULL AUTO_INCREMENT,
%%   `version` VARCHAR(50) NOT NULL,
%%   PRIMARY KEY (`id`) ,
%%   UNIQUE INDEX `id_UNIQUE` (`id` ASC)
%%   )
%% ENGINE = InnoDB
%% DEFAULT CHARACTER SET = utf8
%% COLLATE = utf8_general_ci;
%% ",
  %%   model_exec:exec(migrate, Query4),
  ok.

down() ->
  io:format("create down ~n"),
  ok.
