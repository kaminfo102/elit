DROP TABLE IF EXISTS accounts;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_date` date NOT NULL,
  `account_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES('1','بانک انصار','2020-10-25','5892101026756292','EUR','10000000.00','','1','2020-10-25 20:45:10','2020-10-25 20:45:10');



DROP TABLE IF EXISTS activity_logs;

CREATE TABLE `activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chart_of_accounts VALUES('1','درامد نمونه','income','1','2020-10-25 20:45:27','2020-10-25 20:45:27');



DROP TABLE IF EXISTS chat_group_users;

CREATE TABLE `chat_group_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_groups;

CREATE TABLE `chat_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS chat_messages;

CREATE TABLE `chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` bigint(20) NOT NULL,
  `to` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_email_subscribers;

CREATE TABLE `cm_email_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_email_subscribers VALUES('1','mirzae.uast@gmail.com','::1','2020-10-25 20:42:39','2020-10-25 20:42:39');



DROP TABLE IF EXISTS cm_faqs;

CREATE TABLE `cm_faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS cm_features;

CREATE TABLE `cm_features` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_features VALUES('1','<i class=\'lni lni-package\'></i>','Easy Accounting','Manage Account without any accounting knowledge','','');
INSERT INTO cm_features VALUES('2','<i class=\'lni lni-files\'></i>','Invoice','Create professional Invoice and accept online payments','','');
INSERT INTO cm_features VALUES('3','<i class=\'lni lni-user\'></i>','CRM','Contacts with Contact Group and Rich Customer Portal','','');
INSERT INTO cm_features VALUES('4','<i class=\'lni lni-phone-set\'></i>','Leads','Manage leads from different lead sources with kanban view','','');
INSERT INTO cm_features VALUES('5','<i class=\'lni lni-briefcase\'></i>','Projects','Manage different types of projects with milestone','','');
INSERT INTO cm_features VALUES('6','<i class=\'lni lni-alarm\'></i>','Tasks','Manage tasks with kanban view and assign task to staff','','');
INSERT INTO cm_features VALUES('7','<i class=\'lni lni-empty-file\'></i>','Quotation','Create Professional Quotation for getting customer attention','','');
INSERT INTO cm_features VALUES('8','<i class=\'lni lni-facebook-messenger\'></i>','Live Chat','Real time Chat with staffs, customers and private groups','','');
INSERT INTO cm_features VALUES('9','<i class=\'lni lni-credit-cards\'></i>','Online Payments','Accept Online Payments from Clients','','');



DROP TABLE IF EXISTS companies;

CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) unsigned NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_to` date NOT NULL,
  `last_email` date DEFAULT NULL,
  `staff_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contacts_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_limit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_transaction` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_chat` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_manager` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inventory_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO companies VALUES('1','کودکان هوشمند کردستان','1','1','monthly','member','2020-11-26','','3','10','20','20','No','No','No','No','','','','No','No','2020-10-25 17:24:13','2020-10-26 12:41:54');



DROP TABLE IF EXISTS company_email_template;

CREATE TABLE `company_email_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS company_settings;

CREATE TABLE `company_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO company_settings VALUES('1','base_currency','EUR','1','2020-10-25 20:52:09','2020-10-25 20:52:09');
INSERT INTO company_settings VALUES('2','currency_position','right','1','2020-10-25 20:52:09','2020-10-26 12:14:18');
INSERT INTO company_settings VALUES('3','backend_direction','ltr','1','2020-10-25 20:52:09','2020-10-26 12:14:18');
INSERT INTO company_settings VALUES('4','timezone','Asia/Tehran','1','2020-10-25 20:52:09','2020-10-26 12:14:18');
INSERT INTO company_settings VALUES('5','date_format','Y-m-d','1','2020-10-25 20:52:09','2020-10-26 12:14:18');
INSERT INTO company_settings VALUES('6','time_format','24','1','2020-10-25 20:52:09','2020-10-26 12:14:18');
INSERT INTO company_settings VALUES('7','company_logo','company_logo1603694066.png','1','2020-10-25 20:52:23','2020-10-26 10:04:26');
INSERT INTO company_settings VALUES('8','company_name','کودکان هوشمند کردستان','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('9','phone','09185227309','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('10','vat_id','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('11','reg_no','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('12','email','mirzae.uast@gmail.com','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('13','address','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('14','invoice_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('15','invoice_starting','1002','1','2020-10-26 10:03:00','2020-10-26 10:40:16');
INSERT INTO company_settings VALUES('16','default_account','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('17','default_chart_id','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('18','quotation_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('19','quotation_starting','1001','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('20','invoice_footer','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('21','quotation_footer','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');



DROP TABLE IF EXISTS contact_groups;

CREATE TABLE `contact_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contact_groups VALUES('1','گروه تست','','1','2020-10-25 20:46:10','2020-10-25 20:46:10');



DROP TABLE IF EXISTS contacts;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `contact_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contacts VALUES('1','Individual','کودکان هوشمند کردستان','سیبیبب','mirzae.uasیییt@gmail.com','','','09185227309','Iran','EUR','','','','','','','','','avatar.png','1','','1','','2020-10-25 20:46:50','2020-10-25 20:46:50');



DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency_rates VALUES('1','AED','4.346646','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('2','AFN','91.029054','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('3','ALL','123.893748','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('4','AMD','584.619866','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('5','ANG','2.125335','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('6','AOA','777.529409','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('7','ARS','92.366468','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('8','AUD','1.663755','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('9','AWG','2.130152','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('10','AZN','2.007854','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('11','BAM','1.954786','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('12','BBD','2.390704','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('13','BDT','100.429177','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('14','BGN','1.951468','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('15','BHD','0.446999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('16','BIF','2290.729611','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('17','BMD','1.183418','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('18','BND','1.606577','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('19','BOB','8.163928','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('20','BRL','6.650093','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('21','BSD','1.184062','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('22','BTC','0.000090','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('23','BTN','87.180985','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('24','BWP','13.454891','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('25','BYN','3.003524','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('26','BYR','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('27','BZD','2.386606','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('28','CAD','1.558401','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('29','CDF','2320.681598','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('30','CHF','1.071113','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('31','CLF','0.033311','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('32','CLP','919.162441','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('33','CNY','7.911858','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('34','COP','4484.561332','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('35','CRC','714.175740','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('36','CUC','1.183418','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('37','CUP','31.360569','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('38','CVE','110.215424','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('39','CZK','27.224879','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('40','DJF','210.784297','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('41','DKK','7.441520','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('42','DOP','69.171594','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('43','DZD','152.380458','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('44','EGP','18.601674','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('45','ERN','17.751419','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('46','ETB','44.335670','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('47','EUR','1.000000','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('48','FJD','2.508905','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('49','FKP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('50','GBP','0.908658','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('51','GEL','3.816532','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('52','GGP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('53','GHS','6.879306','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('54','GIP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('55','GMD','61.241358','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('56','GNF','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('57','GTQ','9.211856','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('58','GYD','247.478682','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('59','HKD','9.172375','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('60','HNL','29.116780','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('61','HRK','7.561681','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('62','HTG','74.298580','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('63','HUF','365.463594','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('64','IDR','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('65','ILS','3.999573','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('66','IMP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('67','INR','87.262256','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('68','IQD','1413.514189','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('69','IRR','0.000000','2020-10-26 10:37:05','2020-10-26 12:21:37');
INSERT INTO currency_rates VALUES('70','ISK','164.708219','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('71','JEP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('72','JMD','172.768557','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('73','JOD','0.839088','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('74','JPY','124.163033','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('75','KES','128.815728','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('76','KGS','95.419135','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('77','KHR','4830.827054','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('78','KMF','492.124520','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('79','KPW','1065.138539','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('80','KRW','1335.415543','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('81','KWD','0.361628','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('82','KYD','0.986756','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('83','KZT','506.642108','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('84','LAK','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('85','LBP','1790.479498','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('86','LKR','218.157949','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('87','LRD','226.032897','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('88','LSL','19.206604','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('89','LTL','3.494325','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('90','LVL','0.715837','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('91','LYD','1.612368','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('92','MAD','10.851619','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('93','MDL','20.163960','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('94','MGA','4659.164584','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('95','MKD','61.587298','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('96','MMK','1523.849821','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('97','MNT','3353.532965','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('98','MOP','9.451649','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('99','MRO','422.480724','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('100','MUR','47.159091','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('101','MVR','18.215424','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('102','MWK','891.997004','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('103','MXN','24.828928','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('104','MYR','4.928697','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('105','MZN','86.365789','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('106','NAD','19.207072','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('107','NGN','450.882485','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('108','NIO','41.263439','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('109','NOK','10.983376','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('110','NPR','139.488667','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('111','NZD','1.770203','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('112','OMR','0.456433','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('113','PAB','1.184067','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('114','PEN','4.265545','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('115','PGK','4.142837','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('116','PHP','57.276816','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('117','PKR','191.073246','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('118','PLN','4.572430','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('119','PYG','8329.718030','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('120','QAR','4.308528','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('121','RON','4.869882','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('122','RSD','117.323937','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('123','RUB','90.636794','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('124','RWF','1158.454023','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('125','SAR','4.438527','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('126','SBD','9.579850','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('127','SCR','22.857718','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('128','SDG','65.413399','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('129','SEK','10.385307','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('130','SGD','1.608466','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('131','SHP','0.908655','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('132','SLL','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('133','SOS','687.565759','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('134','SRD','16.750149','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('135','STD','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('136','SVC','10.360340','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('137','SYP','606.655827','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('138','SZL','19.215076','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('139','THB','37.052682','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('140','TJS','12.219304','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('141','TMT','4.141962','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('142','TND','3.253812','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('143','TOP','2.737541','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('144','TRY','9.499527','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('145','TTD','8.036085','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('146','TWD','33.834505','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('147','TZS','2744.344876','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('148','UAH','33.505188','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('149','UGX','4412.915034','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('150','USD','1.183418','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('151','UYU','50.552261','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('152','UZS','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('153','VEF','11.819384','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('154','VND','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('155','VUV','134.562375','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('156','WST','3.087431','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('157','XAF','655.659309','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('158','XAG','0.048882','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('159','XAU','0.000623','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('160','XCD','3.198245','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('161','XDR','0.834621','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('162','XOF','655.659309','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('163','XPF','119.767475','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('164','YER','296.342402','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('165','ZAR','19.280262','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('166','ZMK','9999.999999','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('167','ZMW','23.989007','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO currency_rates VALUES('168','ZWL','381.060426','2020-10-26 10:37:05','2020-10-26 10:37:05');



DROP TABLE IF EXISTS current_stocks;

CREATE TABLE `current_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO current_stocks VALUES('1','1','0.00','1','2020-10-25 20:48:42','2020-10-25 20:48:42');
INSERT INTO current_stocks VALUES('2','2','-5.00','1','2020-10-26 10:06:20','2020-10-26 10:43:28');



DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES('1','registration','Registration Sucessfully','<div style=\"padding: 15px 30px;\">
						 <h2 style=\"color: #555555;\">Registration Successful</h2>
						 <p style=\"color: #555555;\">Hi {name},<br /><span style=\"color: #555555;\">Welcome to ElitKit and thank you for joining with us. You can now sign in to your account using your email and password.<br /><br />Regards<br />Tricky Code<br /></span></p>
						 </div>','','');
INSERT INTO email_templates VALUES('2','premium_membership','Premium Membership','<div style=\"padding: 15px 30px;\">
						<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">ElitKit Premium Subscription</h2>
						<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
						<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>Congratulations</strong> your paymnet was made sucessfully. Your current membership is valid <strong>until</strong> <strong>{valid_to}</strong></span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>.</strong>&nbsp;</span></p>
						<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
						</div>','','');
INSERT INTO email_templates VALUES('3','alert_notification','ElitKit Renewals','<div style=\"padding: 15px 30px;\">
							<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Account Renew Notification</h2>
							<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
							<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Your package is due to <strong>expire on {valid_to}</strong> s</span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">o you will need to renew by then to keep your account active.</span></p>
							<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Regards</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
							</div>','','');



DROP TABLE IF EXISTS file_manager;

CREATE TABLE `file_manager` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_dir` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS files;

CREATE TABLE `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_message_status;

CREATE TABLE `group_chat_message_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` bigint(20) NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS group_chat_messages;

CREATE TABLE `group_chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `sender_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoice_items;

CREATE TABLE `invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoice_items VALUES('2','1','2','','5.00','900000.00','0.00','','','0.00','4500000.00','1','2020-10-26 10:43:28','2020-10-26 10:43:28');



DROP TABLE IF EXISTS invoice_templates;

CREATE TABLE `invoice_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS invoices;

CREATE TABLE `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_date` date NOT NULL,
  `due_date` date NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoices VALUES('1','1001','2020-10-26','2020-10-26','4500000.00','0.00','4500000.00','4500000.00','Paid','modern','','contacts','1','1','1','2020-10-26 10:40:16','2020-10-26 12:15:35');



DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO items VALUES('2','بستهآموزشی ترم اول','product','1','2020-10-26 10:06:20','2020-10-26 10:06:20');



DROP TABLE IF EXISTS lead_sources;

CREATE TABLE `lead_sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS lead_statuses;

CREATE TABLE `lead_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS leads;

CREATE TABLE `leads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_lead` int(11) DEFAULT NULL,
  `lead_status_id` bigint(20) NOT NULL,
  `lead_source_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) NOT NULL,
  `created_user_id` bigint(20) NOT NULL,
  `contact_date` date NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('1','2014_10_12_000000_create_users_table','1');
INSERT INTO migrations VALUES('2','2014_10_12_100000_create_password_resets_table','1');
INSERT INTO migrations VALUES('3','2018_06_01_080940_create_settings_table','1');
INSERT INTO migrations VALUES('4','2018_08_29_084110_create_permissions_table','1');
INSERT INTO migrations VALUES('5','2018_10_28_101819_create_contact_groups_table','1');
INSERT INTO migrations VALUES('6','2018_10_28_104344_create_contacts_table','1');
INSERT INTO migrations VALUES('7','2018_10_28_151911_create_taxs_table','1');
INSERT INTO migrations VALUES('8','2018_10_29_095644_create_items_table','1');
INSERT INTO migrations VALUES('9','2018_10_29_100449_create_products_table','1');
INSERT INTO migrations VALUES('10','2018_10_29_101301_create_services_table','1');
INSERT INTO migrations VALUES('11','2018_10_29_101756_create_suppliers_table','1');
INSERT INTO migrations VALUES('12','2018_11_12_152015_create_email_templates_table','1');
INSERT INTO migrations VALUES('13','2018_11_13_063551_create_accounts_table','1');
INSERT INTO migrations VALUES('14','2018_11_13_082226_create_chart_of_accounts_table','1');
INSERT INTO migrations VALUES('15','2018_11_13_082512_create_payment_methods_table','1');
INSERT INTO migrations VALUES('16','2018_11_13_141249_create_transactions_table','1');
INSERT INTO migrations VALUES('17','2018_11_14_134254_create_repeating_transactions_table','1');
INSERT INTO migrations VALUES('18','2018_11_17_142037_create_payment_histories_table','1');
INSERT INTO migrations VALUES('19','2019_03_07_084028_create_purchase_orders_table','1');
INSERT INTO migrations VALUES('20','2019_03_07_085537_create_purchase_order_items_table','1');
INSERT INTO migrations VALUES('21','2019_03_19_070903_create_current_stocks_table','1');
INSERT INTO migrations VALUES('22','2019_03_19_123527_create_company_settings_table','1');
INSERT INTO migrations VALUES('23','2019_03_19_133922_create_product_units_table','1');
INSERT INTO migrations VALUES('24','2019_03_20_113605_create_invoices_table','1');
INSERT INTO migrations VALUES('25','2019_03_20_113618_create_invoice_items_table','1');
INSERT INTO migrations VALUES('26','2019_05_11_080519_create_purchase_return_table','1');
INSERT INTO migrations VALUES('27','2019_05_11_080546_create_purchase_return_items_table','1');
INSERT INTO migrations VALUES('28','2019_05_27_153656_create_quotations_table','1');
INSERT INTO migrations VALUES('29','2019_05_27_153712_create_quotation_items_table','1');
INSERT INTO migrations VALUES('30','2019_06_22_062221_create_sales_return_table','1');
INSERT INTO migrations VALUES('31','2019_06_22_062233_create_sales_return_items_table','1');
INSERT INTO migrations VALUES('32','2019_06_23_055645_create_company_email_template_table','1');
INSERT INTO migrations VALUES('33','2019_10_31_172912_create_social_google_accounts_table','1');
INSERT INTO migrations VALUES('34','2019_11_04_133151_create_chat_messages_table','1');
INSERT INTO migrations VALUES('35','2019_11_07_105822_create_chat_groups_table','1');
INSERT INTO migrations VALUES('36','2019_11_08_063856_create_chat_group_users','1');
INSERT INTO migrations VALUES('37','2019_11_08_143329_create_group_chat_messages_table','1');
INSERT INTO migrations VALUES('38','2019_11_08_143607_create_group_chat_message_status_table','1');
INSERT INTO migrations VALUES('39','2019_11_11_170656_create_file_manager_table','1');
INSERT INTO migrations VALUES('40','2020_03_15_154649_create_currency_rates_table','1');
INSERT INTO migrations VALUES('41','2020_03_21_052934_create_companies_table','1');
INSERT INTO migrations VALUES('42','2020_03_21_070022_create_packages_table','1');
INSERT INTO migrations VALUES('43','2020_04_02_155956_create_cm_features_table','1');
INSERT INTO migrations VALUES('44','2020_04_02_160209_create_cm_faqs_table','1');
INSERT INTO migrations VALUES('45','2020_04_02_160249_create_cm_email_subscribers_table','1');
INSERT INTO migrations VALUES('46','2020_05_18_104400_create_invoice_templates_table','1');
INSERT INTO migrations VALUES('47','2020_05_24_152947_create_lead_statuses_table','1');
INSERT INTO migrations VALUES('48','2020_05_24_153000_create_lead_sources_table','1');
INSERT INTO migrations VALUES('49','2020_05_24_153224_create_leads_table','1');
INSERT INTO migrations VALUES('50','2020_06_03_112519_create_files_table','1');
INSERT INTO migrations VALUES('51','2020_06_03_112538_create_notes_table','1');
INSERT INTO migrations VALUES('52','2020_06_03_112553_create_activity_logs_table','1');
INSERT INTO migrations VALUES('53','2020_06_22_083001_create_projects_table','1');
INSERT INTO migrations VALUES('54','2020_06_22_095143_create_project_members_table','1');
INSERT INTO migrations VALUES('55','2020_06_23_083455_create_project_milestones_table','1');
INSERT INTO migrations VALUES('56','2020_06_23_112159_create_task_statuses_table','1');
INSERT INTO migrations VALUES('57','2020_06_23_144512_create_tasks_table','1');
INSERT INTO migrations VALUES('58','2020_06_25_065937_create_timesheets_table','1');
INSERT INTO migrations VALUES('59','2020_06_27_152210_create_notifications_table','1');
INSERT INTO migrations VALUES('60','2020_08_21_063443_add_related_to_company_email_template','1');
INSERT INTO migrations VALUES('61','2020_10_19_082621_create_staff_roles_table','1');
INSERT INTO migrations VALUES('62','2020_10_20_080849_add_description_to_invoice_items','1');



DROP TABLE IF EXISTS notes;

CREATE TABLE `notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS packages;

CREATE TABLE `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `package_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost_per_month` decimal(10,2) NOT NULL,
  `cost_per_year` decimal(10,2) NOT NULL,
  `staff_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_limit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_transaction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `live_chat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_manager` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inventory_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hrm_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_management_module` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `others` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO packages VALUES('1','Basic','10.00','99.00','a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','','','','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','','');
INSERT INTO packages VALUES('2','Standard','25.00','199.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','','');
INSERT INTO packages VALUES('3','Business Plus','40.00','399.00','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','0','','','');
INSERT INTO packages VALUES('4','پک تست','120000.00','1200000.00','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','1','','2020-10-25 13:12:20','2020-10-26 12:52:25');



DROP TABLE IF EXISTS password_resets;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS payment_histories;

CREATE TABLE `payment_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_histories VALUES('2','1','Buy Basic Package','','Ria','10.00','1','monthly','pending','2020-10-26 11:21:54','2020-10-26 11:21:54');
INSERT INTO payment_histories VALUES('3','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:56:32','2020-10-26 11:56:32');
INSERT INTO payment_histories VALUES('4','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 11:57:06','2020-10-26 11:57:06');
INSERT INTO payment_histories VALUES('5','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:58:26','2020-10-26 11:58:26');
INSERT INTO payment_histories VALUES('6','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:00:58','2020-10-26 12:00:58');
INSERT INTO payment_histories VALUES('7','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:07:23','2020-10-26 12:07:23');
INSERT INTO payment_histories VALUES('8','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:20:40','2020-10-26 12:20:40');
INSERT INTO payment_histories VALUES('9','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:41:54','2020-10-26 12:41:54');



DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_methods VALUES('1','شیشیس','1','2020-10-25 20:47:02','2020-10-25 20:47:02');
INSERT INTO payment_methods VALUES('2','سیسشیسیس','1','2020-10-25 20:47:05','2020-10-25 20:47:05');



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS product_units;

CREATE TABLE `product_units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO product_units VALUES('1','عدد','1','2020-10-25 20:48:17','2020-10-25 20:48:17');
INSERT INTO product_units VALUES('2','بسته','1','2020-10-25 20:48:22','2020-10-25 20:48:22');
INSERT INTO product_units VALUES('3','جلد','1','2020-10-25 20:48:28','2020-10-25 20:48:28');



DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `product_cost` decimal(10,2) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES('2','2','1','750000.00','900000.00','عدد','exclusive','','','2020-10-26 10:06:20','2020-10-26 10:06:20');



DROP TABLE IF EXISTS project_members;

CREATE TABLE `project_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS project_milestones;

CREATE TABLE `project_milestones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_date` date NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS projects;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `progress` int(11) DEFAULT NULL,
  `billing_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fixed_rate` decimal(10,2) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_order_items;

CREATE TABLE `purchase_order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_orders;

CREATE TABLE `purchase_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `supplier_id` bigint(20) NOT NULL,
  `order_status` tinyint(4) NOT NULL,
  `order_tax_id` bigint(20) DEFAULT NULL,
  `order_tax` decimal(10,2) DEFAULT NULL,
  `order_discount` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return;

CREATE TABLE `purchase_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `supplier_id` bigint(20) DEFAULT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS purchase_return_items;

CREATE TABLE `purchase_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_return_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotation_items;

CREATE TABLE `quotation_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(10,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS quotations;

CREATE TABLE `quotations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quotation_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quotation_date` date NOT NULL,
  `template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `tax_total` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `related_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS repeating_transactions;

CREATE TABLE `repeating_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `trans_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return;

CREATE TABLE `sales_return` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `product_total` decimal(10,2) NOT NULL,
  `grand_total` decimal(10,2) NOT NULL,
  `converted_total` decimal(10,2) DEFAULT NULL,
  `attachemnt` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS sales_return_items;

CREATE TABLE `sales_return_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sales_return_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `quantity` decimal(8,2) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `tax_amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS services;

CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `tax_method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS settings;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES('1','mail_type','mail','','');
INSERT INTO settings VALUES('2','backend_direction','rtl','','2020-10-26 12:06:12');
INSERT INTO settings VALUES('3','membership_system','enabled','','2020-10-26 11:55:33');
INSERT INTO settings VALUES('4','trial_period','7','','2020-10-26 11:55:33');
INSERT INTO settings VALUES('5','allow_singup','yes','','2020-10-26 11:55:33');
INSERT INTO settings VALUES('6','email_verification','disabled','','2020-10-26 11:55:33');
INSERT INTO settings VALUES('7','hero_title','a:2:{s:7:\"English\";s:67:\"شروع موفق کسب و کار با فناوران هوشمند\";s:7:\"Spanish\";s:33:\"Start Your Business With Elit Kit\";}','','2020-10-26 14:36:06');
INSERT INTO settings VALUES('8','hero_sub_title','a:2:{s:7:\"English\";s:279:\"یک پلت فرم تجاری ساده ، آسان برای شخصی سازی و قدرتمند برای مدیریت و ردیابی پروژه ها ، وظایف ، فاکتورها ، قیمت ها ، آگهی ها ، مشتریان ، معاملات و بسیاری دیگر!\";s:7:\"Spanish\";s:170:\"A simple, easy to customize, and powerful business platform for managing and tracking Projects, Tasks, Invoices, Quotations, Leads, Customers, Transactions and many more!\";}','','2020-10-26 14:36:06');
INSERT INTO settings VALUES('9','meta_keywords','کسب و کار، مدیریت کسب و کار های کوچک، مدیریت هزدینه ها،مدیریت کارها،','','2020-10-26 14:39:41');
INSERT INTO settings VALUES('10','meta_description','یک پلت فرم تجاری ساده ، آسان برای شخصی سازی و قدرتمند برای مدیریت و ردیابی پروژه ها ، وظایف ، فاکتورها ، قیمت ها ، آگهی ها ، مشتریان ، معاملات و بسیاری دیگر!
','','2020-10-26 14:39:41');
INSERT INTO settings VALUES('11','company_name','واران فناوران هوشمند','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('12','site_title','فناوران هوشمند کردستان','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('13','phone','087-91002848','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('14','email','info@kaminfo.ir','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('15','timezone','Asia/Tehran','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('16','language','English','2020-10-25 13:10:12','2020-10-25 13:10:12');
INSERT INTO settings VALUES('17','address','کردستان دیواندره خ شهید محمدی بالاتر از مسجد خاتم الانبیاء','2020-10-25 13:10:12','2020-10-25 13:10:12');
INSERT INTO settings VALUES('18','website_enable','yes','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('19','website_language_dropdown','yes','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('20','currency_converter','manual','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('21','fixer_api_key','d3aca0b092e64294d7f0f21d86ac2442','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('22','date_format','Y-m-d','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('23','time_format','24','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('24','file_manager_file_type_supported','png,jpg,jpeg','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('25','file_manager_max_upload_size','2','2020-10-25 13:10:31','2020-10-26 12:06:12');
INSERT INTO settings VALUES('26','promo_video_url','','2020-10-25 13:15:15','2020-10-26 14:33:54');
INSERT INTO settings VALUES('27','contact_email','','2020-10-25 13:15:15','2020-10-26 14:33:54');
INSERT INTO settings VALUES('28','paypal_active','Yes','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('29','paypal_email','mirzae.uast@gmail.com','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('30','paypal_currency','USD','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('31','stripe_active','Yes','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('32','stripe_secret_key','54657635464','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('33','stripe_publishable_key','354787564354','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('34','stripe_currency','USD','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('35','razorpay_active','No','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('36','razorpay_key_id','','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('37','razorpay_secret_key','','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('38','razorpay_currency','INR','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('39','paystack_active','No','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('40','paystack_public_key','','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('41','paystack_secret_key','','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('42','paystack_currency','GHS','2020-10-26 07:31:45','2020-10-26 07:31:45');
INSERT INTO settings VALUES('43','live_chat','enabled','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('44','PUSHER_APP_ID','','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('45','PUSHER_KEY','','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('46','PUSHER_SECRET','','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('47','PUSHER_CLUSTER','','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('48','chat_max_upload_size','','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('49','chat_file_type_supported','png,jpg,jpeg,doc,pdf','2020-10-26 07:32:42','2020-10-26 07:32:42');
INSERT INTO settings VALUES('50','favicon','file_1603685000.png','2020-10-26 07:33:20','2020-10-26 07:33:20');
INSERT INTO settings VALUES('51','logo','logo.png','2020-10-26 07:33:25','2020-10-26 10:01:31');
INSERT INTO settings VALUES('52','currency_update_time','2020-10-26 10:37:05','2020-10-26 10:37:05','2020-10-26 10:37:05');
INSERT INTO settings VALUES('53','currency','IRR','2020-10-26 10:55:37','2020-10-26 11:55:33');
INSERT INTO settings VALUES('54','currency_position','right','2020-10-26 10:55:37','2020-10-26 11:55:33');
INSERT INTO settings VALUES('55','home_banner_image','file_1603710234.jpg','2020-10-26 14:32:41','2020-10-26 14:33:54');
INSERT INTO settings VALUES('56','sub_banner_image','file_1603710161.jpeg','2020-10-26 14:32:41','2020-10-26 14:32:41');
INSERT INTO settings VALUES('57','website_copyright','a:2:{s:7:\"English\";s:77:\"تمامی حقوق فناوران هوشمند محفوظ می باشد.1399\";s:7:\"Spanish\";s:0:\"\";}','2020-10-26 14:36:06','2020-10-26 14:36:06');
INSERT INTO settings VALUES('58','about_content','a:2:{s:7:\"English\";s:571:\"<p style=\"text-align: right;\">وقتی ثروت&zwnj; های بزرگ به دست برخی مردم می&zwnj;افتد در پرتو آن نیرومند می&zwnj;شوند و در سایهٔ نیرومندی و ثروت خیال می&zwnj; کنند که می&zwnj;توانند در خارج از وطن خود زندگی نمایند و خوشبخت و سرافراز باشند ولی به زودی می&zwnj; فهمند که اشتباه کرده&zwnj; اند و عظمت هر ملتی بر روی خرابه&zwnj; های وطن خودش می&zwnj;باشد و بس!</p>\";s:7:\"Spanish\";s:0:\"\";}','2020-10-26 14:37:43','2020-10-26 14:37:59');
INSERT INTO settings VALUES('59','about_image','file_1603710479.png','2020-10-26 14:37:59','2020-10-26 14:37:59');
INSERT INTO settings VALUES('60','terms_condition_content','','2020-10-26 14:38:36','2020-10-26 14:42:09');
INSERT INTO settings VALUES('61','website_title','فناوران هوشمند','2020-10-26 14:39:41','2020-10-26 14:39:41');
INSERT INTO settings VALUES('62','facebook_link','#','2020-10-26 14:39:56','2020-10-26 14:39:56');
INSERT INTO settings VALUES('63','twitter_link','#','2020-10-26 14:39:56','2020-10-26 14:39:56');
INSERT INTO settings VALUES('64','instagram_link','#','2020-10-26 14:39:56','2020-10-26 14:39:56');
INSERT INTO settings VALUES('65','linkedin_link','#','2020-10-26 14:39:56','2020-10-26 14:39:56');
INSERT INTO settings VALUES('66','custom_css_code','direction:rtl;
float:right;
','2020-10-26 14:40:45','2020-10-26 14:40:45');



DROP TABLE IF EXISTS social_google_accounts;

CREATE TABLE `social_google_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS staff_roles;

CREATE TABLE `staff_roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO staff_roles VALUES('1','کارشناس فروش','','1','2020-10-26 10:38:28','2020-10-26 10:38:28');



DROP TABLE IF EXISTS suppliers;

CREATE TABLE `suppliers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO suppliers VALUES('1','شسیسشیسشی','کودکان هوشمند کردستان','','infسیسیo@kaminfo.ir','0918522730','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','Iran','دیواندره','کردستان','6641913719','1','2020-10-25 20:47:54','2020-10-25 20:47:54');



DROP TABLE IF EXISTS task_statuses;

CREATE TABLE `task_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS tasks;

CREATE TABLE `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `project_id` bigint(20) NOT NULL,
  `milestone_id` bigint(20) DEFAULT NULL,
  `priority` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status_id` bigint(20) NOT NULL,
  `assigned_user_id` bigint(20) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS taxs;

CREATE TABLE `taxs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS timesheets;

CREATE TABLE `timesheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `total_hour` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS transactions;

CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trans_date` date NOT NULL,
  `account_id` bigint(20) NOT NULL,
  `chart_id` bigint(20) NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dr_cr` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `base_amount` decimal(10,2) DEFAULT NULL,
  `payer_payee_id` bigint(20) DEFAULT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `purchase_id` bigint(20) DEFAULT NULL,
  `purchase_return_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) NOT NULL,
  `reference` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transactions VALUES('1','2020-10-25','1','1','income','cr','150000.00','167481.75','1','','','','','2','شسیسیسش','1603646238کپی شناسنامه.jpg','شسیس شسی ضصی صی','1','2020-10-25 20:47:18','2020-10-25 20:47:18');
INSERT INTO transactions VALUES('2','2020-10-26','1','1','income','cr','100000.00','100000.00','1','1','','','','2','','1603696288PAMA.png','','1','2020-10-26 10:41:28','2020-10-26 10:41:28');
INSERT INTO transactions VALUES('3','2020-10-26','1','1','income','cr','4400000.00','4400000.00','1','1','','','','2','','','','1','2020-10-26 12:15:35','2020-10-26 12:15:35');



DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','کامیل میرزایی','info@kaminfo.ir','2020-10-25 09:38:20','$2y$10$X6q.78iaT0dCuNCen9eXG.5vcbNDJHP02sj7HGtRQAN7JVqFVFc5G','admin','','default.png','1','','','','2020-10-25 09:38:20','2020-10-25 09:38:20');
INSERT INTO users VALUES('2','کامیل میرزایی','mirzae.uast@gmail.com','2020-10-25 17:24:13','$2y$10$SUrYV9olp5jnwyZh65jLYOzWAxjR7svwb6Oveqi4LDM/S3yWhl5Wa','user','','profile_1603634053.jpg','1','','1','','2020-10-25 17:24:13','2020-10-25 17:24:13');



