LOAD DATA LOCAL INFILE 'CA.txt' INTO TABLE geo_names CHARACTER SET 'UTF8' (geo_name_id, name, ascii_name, alternate_names, latitude, longitude, fclass, fcode, country, cc2, admin1, admin2, admin3, admin4, population, elevation, gtopo30, timezone, mod_date);

LOAD DATA LOCAL INFILE 'US.txt' INTO TABLE geo_names CHARACTER SET 'UTF8' (geo_name_id, name, ascii_name, alternate_names, latitude, longitude, fclass, fcode, country, cc2, admin1, admin2, admin3, admin4, population, elevation, gtopo30, timezone, mod_date);

LOAD DATA LOCAL INFILE 'alternateNames.txt' INTO TABLE alternate_names CHARACTER SET 'UTF8' (alternate_name_id, geo_name_id, iso_language, alternate_name, is_preferred_name, is_short_name, is_colloquial, is_historic);

LOAD DATA LOCAL INFILE 'iso-languagecodes.txt' INTO TABLE language_codes CHARACTER SET 'UTF8' IGNORE 1 LINES (iso_639_3, iso_639_2, iso_639_1, language_name);

LOAD DATA LOCAL INFILE 'admin1CodesASCII.txt' INTO TABLE admin1_codes CHARACTER SET 'UTF8' (code, name, name_ascii, geo_name_id);

LOAD DATA LOCAL INFILE 'admin2Codes.txt' INTO TABLE admin2_codes CHARACTER SET 'UTF8' (code, name, name_ascii, geo_name_id);

LOAD DATA LOCAL INFILE 'hierarchy.txt' INTO TABLE hierarchies CHARACTER SET 'UTF8' (parent_id, child_id, type);

LOAD DATA LOCAL INFILE 'featureCodes_en.txt' INTO TABLE feature_codes CHARACTER SET 'UTF8' (code, name, description);

LOAD DATA LOCAL INFILE 'timeZones.txt' INTO TABLE timezones CHARACTER SET 'UTF8' IGNORE 1 LINES (timezone_id, gmt_offset, dst_offset);

LOAD DATA LOCAL INFILE 'countryInfo.txt' INTO TABLE countries CHARACTER SET 'UTF8' IGNORE 51 LINES (iso_alpha2, iso_alpha3, iso_numeric, fips_code, name, capital, area_in_sqkm, population, continent, tld, currency, currency_name, phone, post_code_format, post_code_regex, languages, geo_name_id, neighbours, equivalent_fips_code);

LOAD DATA LOCAL INFILE 'continentCodes.txt' INTO TABLE continents CHARACTER SET 'UTF8' FIELDS TERMINATED BY ',' (code, name, geo_name_id);

LOAD DATA LOCAL INFILE 'zip/CA.txt' INTO TABLE post_codes CHARACTER SET 'UTF8' (`country`, `post_code`, `name`, `admin1_name`, `admin1_code`, `admin2_name`, `admin2_code`, `admin3_name`, `admin3_code`, `latitude`, `longitude`, `accuracy`);

LOAD DATA LOCAL INFILE 'zip/US.txt' INTO TABLE post_codes CHARACTER SET 'UTF8' (`country`, `post_code`, `name`, `admin1_name`, `admin1_code`, `admin2_name`, `admin2_code`, `admin3_name`, `admin3_code`, `latitude`, `longitude`, `accuracy`);
