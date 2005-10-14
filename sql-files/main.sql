-- MySQL dump 9.11
-- Server version	4.0.24

--
-- Table structure for table `cart_inventory`
--

DROP TABLE IF EXISTS `cart_inventory`;
CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL auto_increment,
  `char_id` int(11) NOT NULL default '0',
  `nameid` int(11) NOT NULL default '0',
  `amount` int(11) NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) NOT NULL default '0',
  `card0` int(11) NOT NULL default '0',
  `card1` int(11) NOT NULL default '0',
  `card2` int(11) NOT NULL default '0',
  `card3` int(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`)
) TYPE=MyISAM;

--
-- Table structure for table `char`
--

DROP TABLE IF EXISTS `char`;
CREATE TABLE `char` (
  `char_id` int(11) unsigned NOT NULL auto_increment,
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_num` tinyint(4) NOT NULL default '0',
  `name` varchar(30) NOT NULL default '',
  `class` smallint(11) unsigned NOT NULL default '0',
  `base_level` smallint(20) unsigned NOT NULL default '1',
  `job_level` smallint(20) unsigned NOT NULL default '1',
  `base_exp` bigint(20) unsigned NOT NULL default '0',
  `job_exp` bigint(20) unsigned NOT NULL default '0',
  `zeny` int(11) unsigned NOT NULL default '500',
  `str` smallint(11) unsigned NOT NULL default '0',
  `agi` smallint(11) unsigned NOT NULL default '0',
  `vit` smallint(11) unsigned NOT NULL default '0',
  `int` smallint(11) unsigned NOT NULL default '0',
  `dex` smallint(11) unsigned NOT NULL default '0',
  `luk` smallint(11) unsigned NOT NULL default '0',
  `max_hp` mediumint(11) unsigned NOT NULL default '0',
  `hp` mediumint(11) unsigned NOT NULL default '0',
  `max_sp` mediumint(11) unsigned NOT NULL default '0',
  `sp` mediumint(11) unsigned NOT NULL default '0',
  `status_point` smallint(11) unsigned NOT NULL default '0',
  `skill_point` smallint(11) unsigned NOT NULL default '0',
  `option` int(11) NOT NULL default '0',
  `karma` tinyint(11) unsigned NOT NULL default '0',
  `manner` tinyint(11) unsigned NOT NULL default '0',
  `party_id` smallint(11) unsigned NOT NULL default '0',
  `guild_id` smallint(11) unsigned NOT NULL default '0',
  `pet_id` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(4) unsigned NOT NULL default '0',
  `hair_color` smallint(11) unsigned NOT NULL default '0',
  `clothes_color` smallint(4) unsigned NOT NULL default '0',
  `weapon` smallint(11) unsigned NOT NULL default '1',
  `shield` smallint(11) unsigned NOT NULL default '0',
  `head_top` smallint(11) unsigned NOT NULL default '0',
  `head_mid` smallint(11) unsigned NOT NULL default '0',
  `head_bottom` smallint(11) unsigned NOT NULL default '0',
  `last_map` varchar(20) NOT NULL default 'new_1-1.gat',
  `last_x` smallint(11) unsigned NOT NULL default '53',
  `last_y` smallint(11) unsigned NOT NULL default '111',
  `save_map` varchar(20) NOT NULL default 'new_1-1.gat',
  `save_x` smallint(11) unsigned NOT NULL default '53',
  `save_y` smallint(11) unsigned NOT NULL default '111',
  `partner_id` int(11) unsigned NOT NULL default '0',
  `online` tinyint(4) NOT NULL default '0',
  `father` int(11) unsigned NOT NULL default '0',
  `mother` int(11) unsigned NOT NULL default '0',
  `child` int(11) unsigned NOT NULL default '0',
  `fame` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`),
  KEY `party_id` (`party_id`),
  KEY `guild_id` (`guild_id`)
) TYPE=InnoDB AUTO_INCREMENT=150000; 

--
-- Table structure for table `sc_data`
--

DROP TABLE IF EXISTS `sc_data`;
CREATE TABLE `sc_data` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `type` smallint(11) unsigned NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL default '0',
  `val2` int(11) NOT NULL default '0',
  `val3` int(11) NOT NULL default '0',
  `val4` int(11) NOT NULL default '0',
  PRIMARY KEY  (`account_id`,`char_id`,`type`),
  CONSTRAINT `scdata_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `login` (`account_id`) ON DELETE CASCADE,
  CONSTRAINT `scdata_ibfk_2` FOREIGN KEY (`char_id`) REFERENCES `char` (`char_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `charlog`
--

DROP TABLE IF EXISTS `charlog`;
CREATE TABLE `charlog` (
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `char_msg` varchar(255) NOT NULL default 'char select',
  `account_id` int(11) NOT NULL default '0',
  `char_num` tinyint(4) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `str` int(11) unsigned NOT NULL default '0',
  `agi` int(11) unsigned NOT NULL default '0',
  `vit` int(11) unsigned NOT NULL default '0',
  `int` int(11) unsigned NOT NULL default '0',
  `dex` int(11) unsigned NOT NULL default '0',
  `luk` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(4) NOT NULL default '0',
  `hair_color` int(11) NOT NULL default '0'
) TYPE=MyISAM; 

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `char_id` int(11) NOT NULL default '0',
  `friend_account` int(11) NOT NULL default '0',
  `friend_id` int(11) NOT NULL default '0'
) TYPE=MyISAM;

--
-- Table structure for table `global_reg_value`
--

DROP TABLE IF EXISTS `global_reg_value`;
CREATE TABLE `global_reg_value` (
  `char_id` int(11) unsigned NOT NULL default '0',
  `str` varchar(255) NOT NULL default '',
  `value` varchar(255) NOT NULL default '0',
  `type` int(11) NOT NULL default '3',
  `account_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`str`,`account_id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`)
) TYPE=MyISAM;

--
-- Table structure for table `guild`
--

DROP TABLE IF EXISTS `guild`;
CREATE TABLE `guild` (
  `guild_id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(24) NOT NULL default '',
  `char_id` int(11) unsigned NOT NULL default '0',
  `master` varchar(24) NOT NULL default '',
  `guild_lv` tinyint(6) unsigned NOT NULL default '0',
  `connect_member` tinyint(6) unsigned NOT NULL default '0',
  `max_member` tinyint(6) unsigned NOT NULL default '0',
  `average_lv` tinyint(6) unsigned NOT NULL default '0',
  `exp` int(11) unsigned NOT NULL default '0',
  `next_exp` int(11) unsigned NOT NULL default '0',
  `skill_point` tinyint(11) unsigned NOT NULL default '0',
  `castle_id` tinyint(11) unsigned NOT NULL default '0',
  `mes1` varchar(60) NOT NULL default '',
  `mes2` varchar(120) NOT NULL default '',
  `emblem_len` int(11) unsigned NOT NULL default '0',
  `emblem_id` int(11) unsigned NOT NULL default '0',
  `emblem_data` blob NOT NULL,
  PRIMARY KEY  (`guild_id`,`char_id`),
  UNIQUE KEY `guild_id` (`guild_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `guild_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `char` (`char_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_alliance`
--

DROP TABLE IF EXISTS `guild_alliance`;
CREATE TABLE `guild_alliance` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `opposition` int(11) unsigned NOT NULL default '0',
  `alliance_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  PRIMARY KEY  (`guild_id`,`alliance_id`),
  KEY `alliance_id` (`alliance_id`),
  CONSTRAINT `guild_alliance_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE,
  CONSTRAINT `guild_alliance_ibfk_2` FOREIGN KEY (`alliance_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_castle`
--

DROP TABLE IF EXISTS `guild_castle`;
CREATE TABLE `guild_castle` (
  `castle_id` int(11) unsigned NOT NULL default '0',
  `guild_id` int(11) unsigned NOT NULL default '0',
  `economy` int(11) unsigned NOT NULL default '0',
  `defense` int(11) unsigned NOT NULL default '0',
  `triggerE` int(11) unsigned NOT NULL default '0',
  `triggerD` int(11) unsigned NOT NULL default '0',
  `nextTime` int(11) unsigned NOT NULL default '0',
  `payTime` int(11) unsigned NOT NULL default '0',
  `createTime` int(11) unsigned NOT NULL default '0',
  `visibleC` int(11) unsigned NOT NULL default '0',
  `visibleG0` int(11) unsigned NOT NULL default '0',
  `visibleG1` int(11) unsigned NOT NULL default '0',
  `visibleG2` int(11) unsigned NOT NULL default '0',
  `visibleG3` int(11) unsigned NOT NULL default '0',
  `visibleG4` int(11) unsigned NOT NULL default '0',
  `visibleG5` int(11) unsigned NOT NULL default '0',
  `visibleG6` int(11) unsigned NOT NULL default '0',
  `visibleG7` int(11) unsigned NOT NULL default '0',
  `gHP0` int(11) unsigned NOT NULL default '0',
  `ghP1` int(11) unsigned NOT NULL default '0',
  `gHP2` int(11) unsigned NOT NULL default '0',
  `gHP3` int(11) unsigned NOT NULL default '0',
  `gHP4` int(11) unsigned NOT NULL default '0',
  `gHP5` int(11) unsigned NOT NULL default '0',
  `gHP6` int(11) unsigned NOT NULL default '0',
  `gHP7` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`castle_id`),
  KEY `guild_id` (`guild_id`)
) TYPE=MyISAM;

--
-- Table structure for table `guild_expulsion`
--

DROP TABLE IF EXISTS `guild_expulsion`;
CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `mes` varchar(40) NOT NULL default '',
  `acc` varchar(40) NOT NULL default '',
  `account_id` int(11) unsigned NOT NULL default '0',
  `rsv1` int(11) unsigned NOT NULL default '0',
  `rsv2` int(11) unsigned NOT NULL default '0',
  `rsv3` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guild_id`,`name`),
  CONSTRAINT `guild_expulsion_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_member`
--

DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE `guild_member` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_id` int(11) unsigned NOT NULL default '0',
  `hair` tinyint(6) unsigned NOT NULL default '0',
  `hair_color` smallint(6) unsigned NOT NULL default '0',
  `gender` tinyint(6) unsigned NOT NULL default '0',
  `class` smallint(6) unsigned NOT NULL default '0',
  `lv` smallint(6) unsigned NOT NULL default '0',
  `exp` bigint(20) unsigned NOT NULL default '0',
  `exp_payper` tinyint(11) unsigned NOT NULL default '0',
  `online` tinyint(4) unsigned NOT NULL default '0',
  `position` tinyint(6) unsigned NOT NULL default '0',
  `rsv1` int(11) unsigned NOT NULL default '0',
  `rsv2` int(11) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  PRIMARY KEY  (`guild_id`,`char_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `guild_member_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE,
  CONSTRAINT `guild_member_ibfk_2` FOREIGN KEY (`char_id`) REFERENCES `char` (`char_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_position`
--

DROP TABLE IF EXISTS `guild_position`;
CREATE TABLE `guild_position` (
  `guild_id` int(9) unsigned NOT NULL default '0',
  `position` tinyint(6) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `mode` tinyint(11) unsigned NOT NULL default '0',
  `exp_mode` tinyint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guild_id`,`position`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_position_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_skill`
--

DROP TABLE IF EXISTS `guild_skill`;
CREATE TABLE `guild_skill` (
  `guild_id` int(11) unsigned NOT NULL default '0',
  `id` smallint(11) unsigned NOT NULL default '0',
  `lv` tinyint(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guild_id`,`id`),
  CONSTRAINT `guild_skill_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE
) TYPE=InnoDB;

--
-- Table structure for table `guild_storage`
--

DROP TABLE IF EXISTS `guild_storage`;
CREATE TABLE `guild_storage` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `guild_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) unsigned NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_storage_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild` (`guild_id`) ON DELETE CASCADE
) TYPE=InnoDB;

-- Database: Ragnarok
-- Table: 'interlog'
--

DROP TABLE IF EXISTS `interlog`;
CREATE TABLE `interlog` (
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `log` varchar(255) NOT NULL default ''
) TYPE=MyISAM; 

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` int(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `char_id` (`char_id`)
) TYPE=MyISAM;

--
-- Table structure for table `ipbanlist`
--

DROP TABLE IF EXISTS `ipbanlist`;
CREATE TABLE `ipbanlist` (
  `list` varchar(255) NOT NULL default '',
  `btime` datetime NOT NULL default '0000-00-00 00:00:00',
  `rtime` datetime NOT NULL default '0000-00-00 00:00:00',
  `reason` varchar(255) NOT NULL default ''
) TYPE=MyISAM;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `account_id` int(11) unsigned NOT NULL auto_increment,
  `userid` varchar(255) NOT NULL default '',
  `user_pass` varchar(32) NOT NULL default '',
  `lastlogin` datetime NOT NULL default '0000-00-00 00:00:00',
  `sex` char(1) NOT NULL default 'M',
  `logincount` mediumint(9) unsigned NOT NULL default '0',
  `email` varchar(60) NOT NULL default '',
  `level` tinyint(3) unsigned NOT NULL default '0',
  `error_message` smallint(11) unsigned NOT NULL default '0',
  `connect_until` smallint(11) unsigned NOT NULL default '0',
  `last_ip` varchar(100) NOT NULL default '',
  `memo` smallint(11) unsigned NOT NULL default '0',
  `ban_until` int(11) unsigned NOT NULL default '0',
  `state` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`account_id`),
  KEY `name` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2000000; 

-- added standard accounts for servers, VERY INSECURE!!!
-- inserted into the table called login which is above

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('1', 's1', 'p1', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('2', 's2', 'p2', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('3', 's3', 'p3', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('4', 's4', 'p4', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('5', 's5', 'p5', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('6', 's6', 'p6', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('7', 's7', 'p7', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('8', 's8', 'p8', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('9', 's9', 'p9', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('10', 's10', 'p10', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('11', 's11', 'p11', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('12', 's12', 'p12', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('13', 's13', 'p13', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('14', 's14', 'p14', 'S','athena@athena.com');
INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`) VALUES ('15', 's15', 'p15', 'S','athena@athena.com');

--
-- Table structure for table `login_error`
--

DROP TABLE IF EXISTS `login_error`;
CREATE TABLE `login_error` (
  `err_id` int(11) NOT NULL default '0',
  `reason` varchar(100) NOT NULL default 'Unknown',
  PRIMARY KEY  (`err_id`)
) TYPE=MyISAM;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE `loginlog` (
  `time` datetime NOT NULL default '0000-00-00 00:00:00',
  `ip` varchar(64) NOT NULL default '',
  `user` varchar(32) NOT NULL default '',
  `rcode` tinyint(4) NOT NULL default '0',
  `log` varchar(255) NOT NULL default ''
) TYPE=MyISAM;

--
-- Table structure for table `memo`
--

DROP TABLE IF EXISTS `memo`;
CREATE TABLE `memo` (
  `memo_id` int(11) unsigned NOT NULL auto_increment,
  `char_id` int(11) unsigned NOT NULL default '0',
  `map` varchar(255) NOT NULL default '',
  `x` smallint(9) unsigned NOT NULL default '0',
  `y` smallint(9) unsigned NOT NULL default '0',
  PRIMARY KEY  (`memo_id`)
) TYPE=MyISAM;

--
-- Table structure for table `party`
--

DROP TABLE IF EXISTS `party`;
CREATE TABLE `party` (
  `party_id` int(11) unsigned NOT NULL default '100',
  `name` char(100) NOT NULL default '',
  `exp` tinyint(11) unsigned NOT NULL default '0',
  `item` tinyint(11) unsigned NOT NULL default '0',
  `leader_id` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`party_id`)
) TYPE=MyISAM;

--
-- Table structure for table `pet`
--

DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `pet_id` int(11) unsigned NOT NULL auto_increment,
  `class` mediumint(9) unsigned NOT NULL default '0',
  `name` varchar(24) NOT NULL default '',
  `account_id` int(11) unsigned NOT NULL default '0',
  `char_id` int(11) unsigned NOT NULL default '0',
  `level` smallint(4) unsigned NOT NULL default '0',
  `egg_id` smallint(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `intimate` smallint(9) unsigned NOT NULL default '0',
  `hungry` smallint(9) unsigned NOT NULL default '0',
  `rename_flag` tinyint(4) unsigned NOT NULL default '0',
  `incuvate` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`pet_id`)
) TYPE=MyISAM;

--
-- Table structure for table `ragsrvinfo`
--

DROP TABLE IF EXISTS `ragsrvinfo`;
CREATE TABLE `ragsrvinfo` (
  `index` int(11) NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `exp` int(11) unsigned NOT NULL default '0',
  `jexp` int(11) unsigned NOT NULL default '0',
  `drop` int(11) unsigned NOT NULL default '0',
  `motd` varchar(255) NOT NULL default ''
) TYPE=MyISAM;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `char_id` int(11) unsigned NOT NULL default '0',
  `id` smallint(11) unsigned NOT NULL default '0',
  `lv` tinyint(4) unsigned NOT NULL default '0',
  PRIMARY KEY  (`char_id`,`id`),
  KEY `char_id` (`char_id`)
) TYPE=MyISAM;

--
-- Table structure for table `sstatus`
--

DROP TABLE IF EXISTS `sstatus`;
CREATE TABLE `sstatus` (
  `index` tinyint(4) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `user` int(11) unsigned NOT NULL default '0'
) TYPE=MyISAM;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
CREATE TABLE `storage` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `account_id` int(11) unsigned NOT NULL default '0',
  `nameid` int(11) unsigned NOT NULL default '0',
  `amount` smallint(11) unsigned NOT NULL default '0',
  `equip` mediumint(8) unsigned NOT NULL default '0',
  `identify` smallint(6) unsigned NOT NULL default '0',
  `refine` tinyint(3) unsigned NOT NULL default '0',
  `attribute` tinyint(4) unsigned NOT NULL default '0',
  `card0` smallint(11) NOT NULL default '0',
  `card1` smallint(11) NOT NULL default '0',
  `card2` smallint(11) NOT NULL default '0',
  `card3` smallint(11) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  KEY `account_id` (`account_id`)
) TYPE=MyISAM;
