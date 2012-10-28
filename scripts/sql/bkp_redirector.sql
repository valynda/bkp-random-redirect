
DROP DATABASE IF EXISTS bkp_redirector;
CREATE DATABASE bkp_redirector;


DROP TABLE IF EXISTS bkp_redirector.redirect;
CREATE TABLE bkp_redirector.redirect (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) DEFAULT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
