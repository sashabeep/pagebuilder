CREATE TABLE IF NOT EXISTS `{PREFIX}pagebuilder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_id` int(10) unsigned NOT NULL,
  `container` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `config` varchar(255) NOT NULL,
  `values` mediumtext NOT NULL,
  `visible` tinyint(1) unsigned DEFAULT 1,
  `index` smallint(5) unsigned NOT NULL,
  `container` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `document_id` (`document_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ;


# Upgrading to v1.1.0

# adding column for sections container

# ALTER TABLE {PREFIX}pagebuilder ADD COLUMN container varchar(255) DEFAULT NULL AFTER document_id;
ALTER TABLE {PREFIX}pagebuilder DROP INDEX `document_id`;
ALTER TABLE {PREFIX}pagebuilder ADD INDEX `document_id` (`document_id`, `container`);
