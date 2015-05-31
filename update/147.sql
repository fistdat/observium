CREATE TABLE IF NOT EXISTS `eigrp_ports` (  `eigrp_port_id` int(11) NOT NULL AUTO_INCREMENT,  `eigrp_vpn` int(11) NOT NULL,  `eigrp_as` int(11) NOT NULL,  `eigrp_ifIndex` int(11) NOT NULL,  `port_id` int(11) NOT NULL,  `device_id` int(11) NOT NULL,  `eigrp_peer_count` int(11) NOT NULL,  `eigrp_MeanSrtt` int(11) NOT NULL,  `eigrp_authmode` text COLLATE utf8_unicode_ci NOT NULL,  PRIMARY KEY (`eigrp_port_id`),  UNIQUE KEY `eigrp_vpn` (`eigrp_vpn`,`eigrp_as`,`eigrp_ifIndex`,`device_id`)) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ;
