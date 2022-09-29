--
-- 表的结构 `bra_players`
-- 储存角色数据的激活信息，包括PC和NPC。
--

DROP TABLE IF EXISTS bra_players;
CREATE TABLE bra_players (
  pid smallint unsigned NOT NULL auto_increment,
  type tinyint NOT NULL default '0',
  name char(15) NOT NULL default '',
  pass char(32) NOT NULL default '',
  gd char(1) NOT NULL default 'm',
  race char(32) NOT NULL default '0',
  sNo smallint unsigned NOT NULL default '0',
  icon smallint unsigned NOT NULL default '0',
  club tinyint unsigned NOT NULL default '0',
  endtime int(10) unsigned NOT NULL default '0',
  validtime int(10) unsigned NOT NULL default '0',
  deathtime int(10) unsigned NOT NULL default '0',
  cmdnum int unsigned NOT NULL default '0',
  achievement text NOT NULL default '',
  nick text NOT NULL default '',
  nicks text NOT NULL default '',
  skillpoint smallint unsigned NOT NULL default '0',
  skills smallint unsigned NOT NULL default '0',
  cdsec int(10) unsigned NOT NULL default '0',
  cdmsec smallint(3) unsigned NOT NULL default '0',
  cdtime mediumint unsigned NOT NULL default '0',
  action char(12) NOT NULL default '',
  hp mediumint unsigned NOT NULL default '0',
  mhp mediumint unsigned NOT NULL default '0',
  sp mediumint unsigned NOT NULL default '0',
  msp mediumint unsigned NOT NULL default '0',
  ss mediumint unsigned NOT NULL default '0',
  mss mediumint unsigned NOT NULL default '0',
  att mediumint unsigned NOT NULL default '0',
  def mediumint unsigned NOT NULL default '0',
  pls tinyint unsigned NOT NULL default '0',
  lvl tinyint unsigned NOT NULL default '0',
  `exp` smallint unsigned NOT NULL default '0',
  money mediumint unsigned NOT NULL default '0',
  rp mediumint unsigned NOT NULL default '0',
  bid smallint unsigned NOT NULL default '0',
  `inf` char(10) not null default '',
  rage tinyint unsigned NOT NULL default '0',
  pose tinyint(1) unsigned NOT NULL default '0',
  tactic tinyint(1) unsigned NOT NULL default '0',
  killnum smallint unsigned NOT NULL default '0',
  state tinyint unsigned NOT NULL default '0',
  `wp` smallint unsigned not null default '0',
  `wk` smallint unsigned not null default '0',
  `wg` smallint unsigned not null default '0',
  `wc` smallint unsigned not null default '0',
  `wd` smallint unsigned not null default '0',
  `wf` smallint unsigned not null default '0',
  `teamID` char(15) not null default '',
  `teamPass` char(15) not null default '',
  getitem text NOT NULL default '',
  itembag text NOT NULL default '',
  itmnum smallint unsigned NOT NULL default '0',
  itmnumlimit smallint unsigned NOT NULL default '0',
  wep char(250) NOT NULL default '',
  wepk char(5) not null default '',
  wepe mediumint unsigned NOT NULL default '0',
  weps char(5) not null default '0',
  wepsk char(5) not null default '',
  arb char(250) NOT NULL default '',
  arbk char(5) not null default '',
  arbe mediumint unsigned NOT NULL default '0',
  arbs char(5) not null default '0',
  arbsk char(5) not null default '',
  arh char(250) NOT NULL default '',
  arhk char(5) not null default '',
  arhe mediumint unsigned NOT NULL default '0',
  arhs char(5) not null default '0',
  arhsk char(5) not null default '',
  ara char(250) NOT NULL default '',
  arak char(5) not null default '',
  arae mediumint unsigned NOT NULL default '0',
  aras char(5) not null default '0',
  arask char(5) not null default '',
  arf char(250) NOT NULL default '',
  arfk char(5) not null default '',
  arfe mediumint unsigned NOT NULL default '0',
  arfs char(5) not null default '0',
  arfsk char(5) not null default '',
  art char(250) NOT NULL default '',
  artk char(5) not null default '',
  arte mediumint unsigned NOT NULL default '0',
  arts char(5) not null default '0',
  artsk char(5) not null default '',
  itm0 char(250) NOT NULL default '',
  itmk0 char(5) not null default '',
  itme0 mediumint unsigned NOT NULL default '0',
  itms0 char(5) not null default '0',
  itmsk0 char(5) not null default '',
  itm1 char(250) NOT NULL default '',
  itmk1 char(5) not null default '',
  itme1 mediumint unsigned NOT NULL default '0',
  itms1 char(5) not null default '0',
  itmsk1 char(5) not null default '',
  itm2 char(250) NOT NULL default '',
  itmk2 char(5) not null default '',
  itme2 mediumint unsigned NOT NULL default '0',
  itms2 char(5) not null default '0',
  itmsk2 char(5) not null default '',
  itm3 char(250) NOT NULL default '',
  itmk3 char(5) not null default '',
  itme3 mediumint unsigned NOT NULL default '0',
  itms3 char(5) not null default '0',
  itmsk3 char(5) not null default '',
  itm4 char(250) NOT NULL default '',
  itmk4 char(5) not null default '',
  itme4 mediumint unsigned NOT NULL default '0',
  itms4 char(5) not null default '0',
  itmsk4 char(5) not null default '',
  itm5 char(250) NOT NULL default '',
  itmk5 char(5) not null default '',
  itme5 mediumint unsigned NOT NULL default '0',
  itms5 char(5) not null default '0',
  itmsk5 char(5) not null default '',
  itm6 char(250) NOT NULL default '',
  itmk6 char(5) not null default '',
  itme6 mediumint unsigned NOT NULL default '0',
  itms6 char(5) not null default '0',
  itmsk6 char(5) not null default '',
  flare int(10) NOT NULL default '0',
  dcloak int(10) NOT NULL default '0',
  auraa int(10) NOT NULL default '0',
  aurab int(10) NOT NULL default '0',
  aurac int(10) NOT NULL default '0',
  aurad int(10) NOT NULL default '0',
  aurae int(10) NOT NULL default '0',
  souls int(10) NOT NULL default '0',
  debuffa int(10) NOT NULL default '0',
  debuffb int(10) NOT NULL default '0',
  debuffc int(10) NOT NULL default '0',
  vcode char(1) not null default '',
  gemstate tinyint(3) unsigned NOT NULL DEFAULT '0',
  gemname char(30) NOT NULL default '',
  gempower char(5) not null default '0',
  gemexp smallint unsigned NOT NULL default '0',
  gemlvl tinyint unsigned NOT NULL default '0',
  typls tinyint unsigned NOT NULL default '0',
  tyowner varchar(30) NOT NULL default '',
  statusa int(10) NOT NULL default '0',
  statusb int(10) NOT NULL default '0',
  statusc int(10) NOT NULL default '0',
  statusd int(10) NOT NULL default '0',
  statuse int(10) NOT NULL default '0',
  element0 mediumint unsigned NOT NULL default '0',
  element1 mediumint unsigned NOT NULL default '0',
  element2 mediumint unsigned NOT NULL default '0',
  element3 mediumint unsigned NOT NULL default '0',
  element4 mediumint unsigned NOT NULL default '0',
  element5 mediumint unsigned NOT NULL default '0',

  PRIMARY KEY  (pid),
  INDEX TYPE (type, sNo),
  INDEX NAME (name, type)
	
) ENGINE=MyISAM;



