-- DROP DATABASE IF EXISTS geonames; 
-- CREATE DATABASE geonames DEFAULT CHARACTER SET utf8;
-- USE geonames;

-- Create syntax for TABLE 'admin1CodesAscii'
CREATE TABLE `admin1_codes` (
  `code` char(15) DEFAULT NULL,
  `name` text,
  `name_ascii` text,
  `geo_name_id` int(11) DEFAULT NULL,
  KEY `code` (`code`),
  KEY `name` (`name`(20)),
  KEY `name_ascii` (`name_ascii`(20)),
  KEY `geo_name_id` (`geo_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'admin2Codes'
CREATE TABLE `admin2_codes` (
  `code` char(15) DEFAULT NULL,
  `name` text,
  `name_ascii` text,
  `geo_name_id` int(11) DEFAULT NULL,
  KEY `code` (`code`),
  KEY `name` (`name`(80)),
  KEY `name_ascii` (`name_ascii`(80)),
  KEY `geo_name_id` (`geo_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'alternatename'
CREATE TABLE `alternate_names` (
  `alternate_name_id` int(11) NOT NULL,
  `geo_name_id` int(11) DEFAULT NULL,
  `iso_language` varchar(7) DEFAULT NULL,
  `alternate_name` varchar(200) DEFAULT NULL,
  `is_preferred_name` tinyint(1) DEFAULT NULL,
  `is_short_name` tinyint(1) DEFAULT NULL,
  `is_colloquial` tinyint(1) DEFAULT NULL,
  `is_historic` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`alternatename_id`),
  KEY `geo_name_id` (`geo_name_id`),
  KEY `iso_language` (`iso_language`),
  KEY `alternate_name` (`alternate_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'continentCodes'
CREATE TABLE `continents` (
  `code` char(2) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `geo_name_id` int(11) DEFAULT NULL,
  KEY `code` (`code`),
  KEY `name` (`name`),
  KEY `geo_name_id` (`geo_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'countryinfo'
CREATE TABLE `countries` (
  `iso_alpha2` char(2) DEFAULT NULL,
  `iso_alpha3` char(3) DEFAULT NULL,
  `iso_numeric` int(11) DEFAULT NULL,
  `fips_code` varchar(3) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `capital` varchar(200) DEFAULT NULL,
  `area_in_sqkm` double DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `continent` char(2) DEFAULT NULL,
  `tld` char(3) DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_name` char(20) DEFAULT NULL,
  `phone` char(10) DEFAULT NULL,
  `postal_code_format` varchar(100) DEFAULT NULL,
  `postal_code_regex` varchar(255) DEFAULT NULL,
  `geo_name_id` int(11) DEFAULT NULL,
  `languages` varchar(200) DEFAULT NULL,
  `neighbours` char(100) DEFAULT NULL,
  `equivalent_fips_code` char(10) DEFAULT NULL,
  KEY `iso_alpha2` (`iso_alpha2`),
  KEY `iso_alpha3` (`iso_alpha3`),
  KEY `iso_numeric` (`iso_numeric`),
  KEY `fips_code` (`fips_code`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'featureCodes'
CREATE TABLE `feature_codes` (
  `code` char(7) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` text,
  KEY `code` (`code`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'geoname'
CREATE TABLE `geo_names` (
  `geo_name_id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `ascii_name` varchar(200) DEFAULT NULL,
  `alternate_names` varchar(4000) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `fclass` char(1) DEFAULT NULL,
  `fcode` varchar(10) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `cc2` varchar(60) DEFAULT NULL,
  `admin1` varchar(20) DEFAULT NULL,
  `admin2` varchar(80) DEFAULT NULL,
  `admin3` varchar(20) DEFAULT NULL,
  `admin4` varchar(20) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `elevation` int(11) DEFAULT NULL,
  `gtopo30` int(11) DEFAULT NULL,
  `timezone` varchar(40) DEFAULT NULL,
  `mod_date` date DEFAULT NULL,
  PRIMARY KEY (`geo_name_id`),
  KEY `name` (`name`),
  KEY `asciiname` (`ascii_name`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `fclass` (`fclass`),
  KEY `fcode` (`fcode`),
  KEY `country` (`country`),
  KEY `cc2` (`cc2`),
  KEY `admin1` (`admin1`),
  KEY `population` (`population`),
  KEY `elevation` (`elevation`),
  KEY `timezone` (`timezone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'hierarchy'
CREATE TABLE `hierarchies` (
  `parent_id` int(11) DEFAULT NULL,
  `child_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  KEY `parent_id` (`parent_id`),
  KEY `child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'iso_languagecodes'
CREATE TABLE `language_codes` (
  `iso_639_3` char(4) DEFAULT NULL,
  `iso_639_2` varchar(50) DEFAULT NULL,
  `iso_639_1` varchar(50) DEFAULT NULL,
  `language_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'timeZones'
CREATE TABLE `timezones` (
  `timezone_id` varchar(200) DEFAULT NULL,
  `gmt_offset` decimal(3,1) DEFAULT NULL,
  `dst_offset` decimal(3,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'postalCodes'
CREATE TABLE `post_codes` (
  `country` char(2) DEFAULT NULL,
  `post_code` varchar(20) DEFAULT NULL,
  `name` varchar(180) DEFAULT NULL,
  `admin1_name` varchar(100) DEFAULT NULL,
  `admin1_code` varchar(20) DEFAULT NULL,
  `admin2_name` varchar(100) DEFAULT NULL,
  `admin2_code` varchar(20) DEFAULT NULL,
  `admin3_name` varchar(100) DEFAULT NULL,
  `admin3_code` varchar(20) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `accuracy` tinyint(2) DEFAULT NULL,
  KEY `admin1_code` (`admin1_code`),
  KEY `country` (`country`),
  KEY `name` (`name`),
  KEY `post_code` (`post_code`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `admin1_name` (`admin1_name`),
  KEY `admin1_code_2` (`admin1_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
