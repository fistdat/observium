CREATE TABLE IF NOT EXISTS `config` ( `config_key` varchar(255) NOT NULL, `config_value` TEXT NOT NULL,  UNIQUE KEY `config_key` (`config_key`)) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
