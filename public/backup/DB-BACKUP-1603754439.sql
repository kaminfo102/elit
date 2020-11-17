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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES('1','بانک انصار','2020-10-25','5892101026756292','EUR','10000000.00','','1','2020-10-25 20:45:10','2020-10-26 22:07:53');
INSERT INTO accounts VALUES('2','بانک مهر ایران','2020-10-20','6063731049461800','IRR','1000000.00','یادداشت در مورد حساب بانک مهر ایران','1','2020-10-26 22:09:24','2020-10-26 22:09:24');



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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO activity_logs VALUES('1','projects','1','Created Project','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('2','projects','1','Assign To کامیل میرزایی','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('3','projects','1','Assign To کارمند نمونه','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('4','projects','1','Create New Task','2','1','2020-10-26 20:36:19','2020-10-26 20:36:19');
INSERT INTO activity_logs VALUES('5','projects','1','Removed کارمند نمونه From Project','2','1','2020-10-26 20:40:35','2020-10-26 20:40:35');
INSERT INTO activity_logs VALUES('6','leads','1','Created Lead','2','1','2020-10-27 02:38:46','2020-10-27 02:38:46');
INSERT INTO activity_logs VALUES('7','leads','1','Assign To کامیل میرزایی','2','1','2020-10-27 02:38:46','2020-10-27 02:38:46');



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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chat_messages VALUES('1','2','3','سلام','','1','1','2020-10-26 20:29:40','2020-10-26 20:32:11');
INSERT INTO chat_messages VALUES('2','2','3','خوبی','','1','1','2020-10-26 20:29:46','2020-10-26 20:32:11');
INSERT INTO chat_messages VALUES('3','2','3','چه خبر؟','','1','1','2020-10-26 20:29:51','2020-10-26 20:32:11');
INSERT INTO chat_messages VALUES('4','2','3','سبب','','1','1','2020-10-26 20:31:31','2020-10-26 20:32:11');
INSERT INTO chat_messages VALUES('5','3','2','سلام','','1','1','2020-10-26 20:32:35','2020-10-26 20:33:00');
INSERT INTO chat_messages VALUES('6','3','2','ممنون','','1','1','2020-10-26 20:32:39','2020-10-26 20:33:00');
INSERT INTO chat_messages VALUES('7','2','3','بلب','','1','1','2020-10-26 20:33:29','2020-10-26 20:37:37');
INSERT INTO chat_messages VALUES('8','3','2','sghl','','1','1','2020-10-26 20:37:47','2020-10-26 20:37:54');
INSERT INTO chat_messages VALUES('9','2','3','sghl','','1','1','2020-10-26 20:38:06','2020-10-26 20:39:02');
INSERT INTO chat_messages VALUES('10','3','2','asdsdasds','','1','1','2020-10-26 20:38:24','2020-10-26 20:39:16');
INSERT INTO chat_messages VALUES('11','2','3','sdsdsd','','1','1','2020-10-26 20:38:37','2020-10-26 20:39:02');
INSERT INTO chat_messages VALUES('12','3','2','fgdfg','','1','1','2020-10-26 20:39:06','2020-10-26 20:39:16');
INSERT INTO chat_messages VALUES('13','2','3','dfgfdg','','1','1','2020-10-26 20:39:18','2020-10-26 20:39:53');
INSERT INTO chat_messages VALUES('14','2','3','یببلبی','','1','1','2020-10-26 20:39:32','2020-10-26 20:39:53');
INSERT INTO chat_messages VALUES('15','3','2','یبلبل','','1','1','2020-10-26 20:39:41','2020-10-26 20:41:56');



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

INSERT INTO cm_features VALUES('1','a:2:{s:7:\"English\";s:31:\"<i class=\'lni lni-package\'></i>\";s:7:\"Spanish\";s:31:\"<i class=\'lni lni-package\'></i>\";}','a:2:{s:7:\"English\";s:25:\"حسابداری آسان\";s:7:\"Spanish\";s:15:\"Easy Accounting\";}','a:2:{s:7:\"English\";s:97:\"بدون هیچ گونه دانش حسابداری حساب هایتان را کنترل کنید\";s:7:\"Spanish\";s:47:\"Manage Account without any accounting knowledge\";}','0000-00-00 00:00:00','2020-10-26 17:13:10');
INSERT INTO cm_features VALUES('2','a:2:{s:7:\"English\";s:29:\"<i class=\'lni lni-files\'></i>\";s:7:\"Spanish\";s:29:\"<i class=\'lni lni-files\'></i>\";}','a:2:{s:7:\"English\";s:12:\"فاکتور\";s:7:\"Spanish\";s:7:\"Invoice\";}','a:2:{s:7:\"English\";s:102:\"فاکتور حرفه ای ایجاد کنید و پرداخت های آنلاین را بپذیرید\";s:7:\"Spanish\";s:54:\"Create professional Invoice and accept online payments\";}','0000-00-00 00:00:00','2020-10-26 17:12:11');
INSERT INTO cm_features VALUES('3','a:2:{s:7:\"English\";s:28:\"<i class=\'lni lni-user\'></i>\";s:7:\"Spanish\";s:28:\"<i class=\'lni lni-user\'></i>\";}','a:2:{s:7:\"English\";s:47:\"مدیریت ارتباط با مشتری (CRM)\";s:7:\"Spanish\";s:3:\"CRM\";}','a:2:{s:7:\"English\";s:66:\"ارتباط موثر با مخاطبان و مشتریان خود\";s:7:\"Spanish\";s:52:\"Contacts with Contact Group and Rich Customer Portal\";}','0000-00-00 00:00:00','2020-10-26 17:11:46');
INSERT INTO cm_features VALUES('4','a:2:{s:7:\"English\";s:33:\"<i class=\'lni lni-phone-set\'></i>\";s:7:\"Spanish\";s:33:\"<i class=\'lni lni-phone-set\'></i>\";}','a:2:{s:7:\"English\";s:13:\"سرنخ ها\";s:7:\"Spanish\";s:5:\"Leads\";}','a:2:{s:7:\"English\";s:117:\"با استفاده از کانبان ، سرنخ ها را از منابع مختلف سربی مدیریت کنید\";s:7:\"Spanish\";s:57:\"Manage leads from different lead sources with kanban view\";}','0000-00-00 00:00:00','2020-10-26 17:09:21');
INSERT INTO cm_features VALUES('5','a:2:{s:7:\"English\";s:33:\"<i class=\'lni lni-briefcase\'></i>\";s:7:\"Spanish\";s:33:\"<i class=\'lni lni-briefcase\'></i>\";}','a:2:{s:7:\"English\";s:15:\"پروژه ها\";s:7:\"Spanish\";s:8:\"Projects\";}','a:2:{s:7:\"English\";s:76:\"پروژه های مختلف را با نقطه عطف مدیریت کنید\";s:7:\"Spanish\";s:49:\"Manage different types of projects with milestone\";}','0000-00-00 00:00:00','2020-10-26 17:08:19');
INSERT INTO cm_features VALUES('6','a:2:{s:7:\"English\";s:29:\"<i class=\'lni lni-alarm\'></i>\";s:7:\"Spanish\";s:29:\"<i class=\'lni lni-alarm\'></i>\";}','a:2:{s:7:\"English\";s:10:\"وظایف\";s:7:\"Spanish\";s:5:\"Tasks\";}','a:2:{s:7:\"English\";s:127:\"کارها را با نمای کانبان مدیریت کنید و وظیفه را به کارمندان اختصاص دهید\";s:7:\"Spanish\";s:54:\"Manage tasks with kanban view and assign task to staff\";}','0000-00-00 00:00:00','2020-10-26 17:07:46');
INSERT INTO cm_features VALUES('7','a:2:{s:7:\"English\";s:34:\"<i class=\'lni lni-empty-file\'></i>\";s:7:\"Spanish\";s:34:\"<i class=\'lni lni-empty-file\'></i>\";}','a:2:{s:7:\"English\";s:19:\"پیش فاکتور\";s:7:\"Spanish\";s:9:\"Quotation\";}','a:2:{s:7:\"English\";s:81:\"برای جلب توجه مشتری ، قیمت حرفه ای ایجاد کنید\";s:7:\"Spanish\";s:60:\"Create Professional Quotation for getting customer attention\";}','0000-00-00 00:00:00','2020-10-26 17:06:56');
INSERT INTO cm_features VALUES('8','a:2:{s:7:\"English\";s:42:\"<i class=\'lni lni-facebook-messenger\'></i>\";s:7:\"Spanish\";s:42:\"<i class=\'lni lni-facebook-messenger\'></i>\";}','a:2:{s:7:\"English\";s:21:\"گفتگوی زنده\";s:7:\"Spanish\";s:9:\"Live Chat\";}','a:2:{s:7:\"English\";s:104:\"گفتگو در زمان واقعی با کارمندان ، مشتریان و گروههای خصوصی\";s:7:\"Spanish\";s:56:\"Real time Chat with staffs, customers and private groups\";}','0000-00-00 00:00:00','2020-10-26 17:06:25');
INSERT INTO cm_features VALUES('9','a:2:{s:7:\"English\";s:36:\"<i class=\'lni lni-credit-cards\'></i>\";s:7:\"Spanish\";s:36:\"<i class=\'lni lni-credit-cards\'></i>\";}','a:2:{s:7:\"English\";s:25:\"پرداخت آنلاین\";s:7:\"Spanish\";s:15:\"Online Payments\";}','a:2:{s:7:\"English\";s:65:\"پرداخت آنلاین از مشتریان را بپذیرید\";s:7:\"Spanish\";s:35:\"Accept Online Payments from Clients\";}','0000-00-00 00:00:00','2020-10-26 17:05:50');



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO companies VALUES('1','کودکان هوشمند کردستان','1','3','yearly','member','2021-10-26','0000-00-00','Unlimited','Unlimited','Unlimited','Unlimited','Yes','Yes','Yes','Yes','','','','Yes','Yes','2020-10-25 17:24:13','2020-10-26 20:28:42');
INSERT INTO companies VALUES('2','کودکان هوشمند خلاق','1','3','monthly','member','2020-11-26','0000-00-00','30','Unlimited','300','300','Yes','Yes','Yes','Yes','','','','Yes','Yes','2020-10-26 20:02:01','2020-10-26 20:02:01');



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
INSERT INTO company_settings VALUES('2','currency_position','right','1','2020-10-25 20:52:09','2020-10-26 15:41:37');
INSERT INTO company_settings VALUES('3','backend_direction','rtl','1','2020-10-25 20:52:09','2020-10-26 15:41:37');
INSERT INTO company_settings VALUES('4','timezone','Asia/Tehran','1','2020-10-25 20:52:09','2020-10-26 15:41:37');
INSERT INTO company_settings VALUES('5','date_format','Y-m-d','1','2020-10-25 20:52:09','2020-10-26 15:41:37');
INSERT INTO company_settings VALUES('6','time_format','24','1','2020-10-25 20:52:09','2020-10-26 15:41:37');
INSERT INTO company_settings VALUES('7','company_logo','company_logo1603694066.png','1','2020-10-25 20:52:23','2020-10-26 10:04:26');
INSERT INTO company_settings VALUES('8','company_name','کودکان هوشمند کردستان','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('9','phone','09185227309','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('10','vat_id','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('11','reg_no','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('12','email','mirzae.uast@gmail.com','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('13','address','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('14','invoice_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('15','invoice_starting','1003','1','2020-10-26 10:03:00','2020-10-26 20:41:02');
INSERT INTO company_settings VALUES('16','default_account','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('17','default_chart_id','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('18','quotation_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('19','quotation_starting','1002','1','2020-10-26 10:03:00','2020-10-26 15:51:18');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO contacts VALUES('1','Individual','کودکان هوشمند کردستان','سیبیبب','mirzae.uasیییt@gmail.com','','','09185227309','Iran','EUR','','','','','','','','','avatar.png','1','0','1','','2020-10-25 20:46:50','2020-10-25 20:46:50');
INSERT INTO contacts VALUES('2','Individual','','مشتری1','moshatri@gmail.com','1234567','765456','09181731143','Iran','IRR','دیواندره','کردستان','6641913719','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','#','#','#','','contact_image1603753524.jpg','1','','1','','2020-10-27 02:35:24','2020-10-27 02:35:24');



DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency_rates VALUES('1','AED','4.338765','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('2','AFN','90.843393','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('3','ALL','123.853887','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('4','AMD','582.640596','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('5','ANG','2.120115','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('6','AOA','777.646738','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('7','ARS','92.433795','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('8','AUD','1.657198','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('9','AWG','2.126251','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('10','AZN','2.005684','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('11','BAM','1.954201','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('12','BBD','2.365508','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('13','BDT','100.084337','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('14','BGN','1.954408','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('15','BHD','0.445325','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('16','BIF','2286.900936','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('17','BMD','1.181250','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('18','BND','1.607047','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('19','BOB','8.155833','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('20','BRL','6.645009','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('21','BSD','1.181106','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('22','BTC','0.000091','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('23','BTN','87.395220','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('24','BWP','13.452674','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('25','BYN','3.002872','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('26','BYR','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('27','BZD','2.368206','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('28','CAD','1.559558','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('29','CDF','2315.250837','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('30','CHF','1.071867','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('31','CLF','0.033203','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('32','CLP','916.175021','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('33','CNY','7.928784','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('34','COP','4506.293407','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('35','CRC','713.319443','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('36','CUC','1.181250','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('37','CUP','31.303138','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('38','CVE','110.600099','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('39','CZK','27.282873','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('40','DJF','209.931675','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('41','DKK','7.440226','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('42','DOP','68.984457','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('43','DZD','152.050858','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('44','EGP','18.544808','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('45','ERN','17.719012','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('46','ETB','44.238259','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('47','EUR','1.000000','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('48','FJD','2.516033','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('49','FKP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('50','GBP','0.907017','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('51','GEL','3.809503','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('52','GGP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('53','GHS','6.886808','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('54','GIP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('55','GMD','61.130073','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('56','GNF','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('57','GTQ','9.189263','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('58','GYD','247.042011','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('59','HKD','9.154986','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('60','HNL','28.942235','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('61','HRK','7.578545','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('62','HTG','74.057650','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('63','HUF','364.985184','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('64','IDR','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('65','ILS','4.005632','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('66','IMP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('67','INR','87.370605','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('68','IQD','1407.459951','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('69','IRR','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('70','ISK','165.008542','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('71','JEP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('72','JMD','172.482784','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('73','JOD','0.837494','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('74','JPY','123.869437','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('75','KES','128.556049','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('76','KGS','95.251790','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('77','KHR','4813.595542','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('78','KMF','492.521963','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('79','KPW','1063.179773','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('80','KRW','1338.191344','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('81','KWD','0.361110','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('82','KYD','0.984371','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('83','KZT','507.702556','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('84','LAK','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('85','LBP','1787.174721','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('86','LKR','217.744177','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('87','LRD','221.189259','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('88','LSL','19.195849','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('89','LTL','3.487926','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('90','LVL','0.714527','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('91','LYD','1.606551','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('92','MAD','10.832159','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('93','MDL','20.116663','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('94','MGA','4636.408278','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('95','MKD','61.589738','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('96','MMK','1520.134371','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('97','MNT','3372.077817','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('98','MOP','9.428462','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('99','MRO','421.707031','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('100','MUR','47.072049','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('101','MVR','18.203013','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('102','MWK','893.025826','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('103','MXN','24.733271','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('104','MYR','4.920497','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('105','MZN','86.260829','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('106','NAD','19.195668','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('107','NGN','450.056365','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('108','NIO','41.024974','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('109','NOK','10.918340','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('110','NPR','139.832273','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('111','NZD','1.767116','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('112','OMR','0.454713','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('113','PAB','1.181206','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('114','PEN','4.258999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('115','PGK','4.140273','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('116','PHP','57.136497','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('117','PKR','190.418668','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('118','PLN','4.579000','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('119','PYG','8315.299197','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('120','QAR','4.300982','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('121','RON','4.873006','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('122','RSD','117.599424','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('123','RUB','90.256870','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('124','RWF','1152.900472','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('125','SAR','4.430307','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('126','SBD','9.556930','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('127','SCR','22.772154','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('128','SDG','65.293619','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('129','SEK','10.331843','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('130','SGD','1.607788','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('131','SHP','0.907057','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('132','SLL','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('133','SOS','688.669197','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('134','SRD','16.719385','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('135','STD','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('136','SVC','10.335386','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('137','SYP','605.389571','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('138','SZL','19.195340','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('139','THB','36.901859','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('140','TJS','12.207123','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('141','TMT','4.146189','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('142','TND','3.241938','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('143','TOP','2.732528','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('144','TRY','9.555099','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('145','TTD','8.016451','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('146','TWD','33.800892','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('147','TZS','2739.319472','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('148','UAH','33.471020','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('149','UGX','4409.225119','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('150','USD','1.181250','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('151','UYU','50.405563','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('152','UZS','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('153','VEF','11.797740','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('154','VND','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('155','VUV','134.214959','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('156','WST','3.087828','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('157','XAF','655.405202','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('158','XAG','0.048597','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('159','XAU','0.000621','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('160','XCD','3.192388','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('161','XDR','0.832000','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('162','XOF','654.412735','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('163','XPF','119.749315','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('164','YER','295.788798','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('165','ZAR','19.154508','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('166','ZMK','9999.999999','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('167','ZMW','23.987508','2020-10-26 22:55:12','2020-10-26 22:55:12');
INSERT INTO currency_rates VALUES('168','ZWL','380.362586','2020-10-26 22:55:12','2020-10-26 22:55:12');



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
INSERT INTO current_stocks VALUES('2','2','-6.00','1','2020-10-26 10:06:20','2020-10-26 20:41:02');



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
						 </div>','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO email_templates VALUES('2','premium_membership','Premium Membership','<div style=\"padding: 15px 30px;\">
						<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">ElitKit Premium Subscription</h2>
						<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
						<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>Congratulations</strong> your paymnet was made sucessfully. Your current membership is valid <strong>until</strong> <strong>{valid_to}</strong></span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\"><strong>.</strong>&nbsp;</span></p>
						<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Thank You</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
						</div>','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO email_templates VALUES('3','alert_notification','ElitKit Renewals','<div style=\"padding: 15px 30px;\">
							<h2 style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Account Renew Notification</h2>
							<p style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Hi {name},<br>
							<span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Your package is due to <strong>expire on {valid_to}</strong> s</span><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">o you will need to renew by then to keep your account active.</span></p>
							<p><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Regards</span><br style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\" /><span style=\"color: #555555; font-family: \"PT Sans\", sans-serif;\">Tricky Code</span></p>
							</div>','0000-00-00 00:00:00','0000-00-00 00:00:00');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO file_manager VALUES('3','عکس خودم','image/png','no','1603731344brain-01.png','2','2','4','2020-10-26 20:25:44','2020-10-26 20:25:44');
INSERT INTO file_manager VALUES('4','تست','','yes','','','1','2','2020-10-27 02:44:17','2020-10-27 02:44:17');



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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoice_items VALUES('2','1','2','','5.00','900000.00','0.00','','0','0.00','4500000.00','1','2020-10-26 10:43:28','2020-10-26 10:43:28');
INSERT INTO invoice_items VALUES('3','2','2','','1.00','900000.00','0.00','exclusive','0','0.00','900000.00','1','2020-10-26 20:41:02','2020-10-26 20:41:02');



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoices VALUES('1','1001','2020-10-26','2020-10-26','4500000.00','0.00','4500000.00','4500000.00','Paid','modern','','contacts','1','1','1','2020-10-26 10:40:16','2020-10-26 12:15:35');
INSERT INTO invoices VALUES('2','1002','2020-10-26','2020-10-31','900000.00','0.00','0.00','900000.00','Unpaid','classic','','projects','1','1','1','2020-10-26 20:41:02','2020-10-26 20:41:02');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO lead_sources VALUES('1','منبع سرب','','1','2020-10-27 02:37:55','2020-10-27 02:37:55');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO lead_statuses VALUES('1','وضعیت','#4a55ca','2','1','2020-10-27 02:37:29','2020-10-27 02:37:29');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO leads VALUES('1','هدایت 1','','','','1','1','2','2','2020-10-26','','','Iran','IRR','','','','','','','','1','2020-10-27 02:38:46','2020-10-27 02:38:46');



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

INSERT INTO notifications VALUES('0b9175e0-92d3-41bc-af0c-43d844beb1b3','App\\Notifications\\ProjectCreated','App\\User','3','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"Created New Project\",\"content\":\"Project 1# \\u0632\\u0631\\u0631\\u0632\\u0631\\u0632\\u0631\"}','2','0000-00-00 00:00:00','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO notifications VALUES('643adcd7-25f9-4813-8a15-38474a69a70f','App\\Notifications\\ProjectCreated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"Created New Project\",\"content\":\"Project 1# \\u0632\\u0631\\u0631\\u0632\\u0631\\u0632\\u0631\"}','2','2020-10-26 20:40:28','2020-10-26 20:35:40','2020-10-26 20:40:28');
INSERT INTO notifications VALUES('afa066dc-55e1-4e15-8556-d4a73be155c2','App\\Notifications\\TaskCreated','App\\User','2','{\"id\":1,\"url\":\"tasks\\/1\",\"client_url\":\"\",\"title\":\"Created New Task\",\"content\":\"Task 1# \\u0633\\u06cc\\u0628\\u06cc\\u0633\\u0628\"}','2','2020-10-26 20:40:24','2020-10-26 20:36:19','2020-10-26 20:40:24');



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

INSERT INTO packages VALUES('1','Basic','10.00','99.00','a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','','','','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO packages VALUES('2','Standard','25.00','199.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO packages VALUES('3','Business Plus','40.00','399.00','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_histories VALUES('3','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:56:32','2020-10-26 11:56:32');
INSERT INTO payment_histories VALUES('4','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 11:57:06','2020-10-26 11:57:06');
INSERT INTO payment_histories VALUES('5','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:58:26','2020-10-26 11:58:26');
INSERT INTO payment_histories VALUES('6','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:00:58','2020-10-26 12:00:58');
INSERT INTO payment_histories VALUES('7','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:07:23','2020-10-26 12:07:23');
INSERT INTO payment_histories VALUES('8','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:20:40','2020-10-26 12:20:40');
INSERT INTO payment_histories VALUES('9','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:41:54','2020-10-26 12:41:54');
INSERT INTO payment_histories VALUES('10','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 18:45:29','2020-10-26 18:45:29');
INSERT INTO payment_histories VALUES('11','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 20:27:30','2020-10-26 20:27:30');



DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_methods VALUES('1','شیشیس','1','2020-10-25 20:47:02','2020-10-25 20:47:02');
INSERT INTO payment_methods VALUES('2','سیسشیسیس','1','2020-10-25 20:47:05','2020-10-25 20:47:05');
INSERT INTO payment_methods VALUES('3','صثثیث','1','2020-10-27 02:47:01','2020-10-27 02:47:01');



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES('1','1','contact_groups.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('2','1','contact_groups.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('3','1','contact_groups.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('4','1','contact_groups.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('5','1','contact_groups.destroy','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('6','1','contacts.import','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('7','1','contacts.send_email','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('8','1','contacts.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('9','1','contacts.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('10','1','contacts.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('11','1','contacts.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('12','1','accounts.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('13','1','accounts.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('14','1','accounts.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('15','1','accounts.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('16','1','income.income_calendar','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('17','1','income.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('18','1','income.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('19','1','income.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('20','1','income.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('21','1','expense.expense_calendar','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('22','1','expense.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('23','1','expense.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('24','1','expense.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('25','1','expense.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('26','1','transfer.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('27','1','chart_of_accounts.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('28','1','chart_of_accounts.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('29','1','payment_methods.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('30','1','payment_methods.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('31','1','payment_methods.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('32','1','payment_methods.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('33','1','suppliers.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('34','1','suppliers.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('35','1','suppliers.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('36','1','suppliers.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('37','1','products.import','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('38','1','products.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('39','1','products.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('40','1','products.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('41','1','products.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('42','1','services.import','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('43','1','services.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('44','1','services.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('45','1','services.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('46','1','services.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('47','1','purchase_returns.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('48','1','purchase_returns.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('49','1','purchase_returns.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('50','1','purchase_returns.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('51','1','invoices.create_payment','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('52','1','invoices.mark_as_cancelled','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('53','1','invoices.view_payment','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('54','1','invoices.send_email','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('55','1','invoices.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('56','1','invoices.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('57','1','invoices.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('58','1','invoices.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('59','1','quotations.convert_invoice','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('60','1','quotations.send_email','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('61','1','quotations.index','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('62','1','quotations.create','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('63','1','quotations.show','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('64','1','quotations.edit','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('65','1','reports.account_statement','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('66','1','reports.day_wise_income','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('67','1','reports.date_wise_income','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('68','1','reports.day_wise_expense','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('69','1','reports.date_wise_expense','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('70','1','reports.transfer_report','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('71','1','reports.income_vs_expense','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('72','1','reports.report_by_payer','2020-10-26 15:49:16','2020-10-26 15:49:16');
INSERT INTO permissions VALUES('73','1','reports.report_by_payee','2020-10-26 15:49:16','2020-10-26 15:49:16');



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

INSERT INTO products VALUES('2','2','1','750000.00','900000.00','عدد','exclusive','0','','2020-10-26 10:06:20','2020-10-26 10:06:20');



DROP TABLE IF EXISTS project_members;

CREATE TABLE `project_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO project_members VALUES('1','1','2','2020-10-26 20:35:40','2020-10-26 20:35:40');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO projects VALUES('1','زررزرزر','1','0','hourly','in_progress','0.00','343.00','2020-10-26','2020-10-26','<p>زرززرزرز</p>','','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotation_items VALUES('1','1','2','','2.00','900000.00','0.00','exclusive','0','0.00','1800000.00','2020-10-26 15:51:18','2020-10-26 15:51:18');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES('1','1001','2020-10-26','classic-red','1800000.00','1800000.00','0.00','','contacts','1','1','2020-10-26 15:51:18','2020-10-26 15:51:18');



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

INSERT INTO settings VALUES('1','mail_type','mail','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO settings VALUES('2','backend_direction','rtl','0000-00-00 00:00:00','2020-10-26 15:43:15');
INSERT INTO settings VALUES('3','membership_system','enabled','0000-00-00 00:00:00','2020-10-26 21:56:10');
INSERT INTO settings VALUES('4','trial_period','7','0000-00-00 00:00:00','2020-10-26 21:56:10');
INSERT INTO settings VALUES('5','allow_singup','yes','0000-00-00 00:00:00','2020-10-26 21:56:10');
INSERT INTO settings VALUES('6','email_verification','disabled','0000-00-00 00:00:00','2020-10-26 21:56:10');
INSERT INTO settings VALUES('7','hero_title','a:2:{s:7:\"English\";s:67:\"شروع موفق کسب و کار با فناوران هوشمند\";s:7:\"Spanish\";s:33:\"Start Your Business With Elit Kit\";}','0000-00-00 00:00:00','2020-10-26 14:36:06');
INSERT INTO settings VALUES('8','hero_sub_title','a:2:{s:7:\"English\";s:279:\"یک پلت فرم تجاری ساده ، آسان برای شخصی سازی و قدرتمند برای مدیریت و ردیابی پروژه ها ، وظایف ، فاکتورها ، قیمت ها ، آگهی ها ، مشتریان ، معاملات و بسیاری دیگر!\";s:7:\"Spanish\";s:170:\"A simple, easy to customize, and powerful business platform for managing and tracking Projects, Tasks, Invoices, Quotations, Leads, Customers, Transactions and many more!\";}','0000-00-00 00:00:00','2020-10-26 14:36:06');
INSERT INTO settings VALUES('9','meta_keywords','کسب و کار، مدیریت کسب و کار های کوچک، مدیریت هزدینه ها،مدیریت کارها،','0000-00-00 00:00:00','2020-10-26 14:39:41');
INSERT INTO settings VALUES('10','meta_description','یک پلت فرم تجاری ساده ، آسان برای شخصی سازی و قدرتمند برای مدیریت و ردیابی پروژه ها ، وظایف ، فاکتورها ، قیمت ها ، آگهی ها ، مشتریان ، معاملات و بسیاری دیگر!
','0000-00-00 00:00:00','2020-10-26 14:39:41');
INSERT INTO settings VALUES('11','company_name','واران فناوران هوشمند','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('12','site_title','فناوران هوشمند کردستان','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('13','phone','087-91002848','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('14','email','info@kaminfo.ir','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('15','timezone','Asia/Tehran','2020-10-25 09:38:56','2020-10-25 13:10:12');
INSERT INTO settings VALUES('16','language','English','2020-10-25 13:10:12','2020-10-25 13:10:12');
INSERT INTO settings VALUES('17','address','کردستان دیواندره خ شهید محمدی بالاتر از مسجد خاتم الانبیاء','2020-10-25 13:10:12','2020-10-25 13:10:12');
INSERT INTO settings VALUES('18','website_enable','yes','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('19','website_language_dropdown','yes','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('20','currency_converter','manual','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('21','fixer_api_key','d3aca0b092e64294d7f0f21d86ac2442','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('22','date_format','Y-m-d','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('23','time_format','24','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('24','file_manager_file_type_supported','png,jpg,jpeg','2020-10-25 13:10:31','2020-10-26 15:43:15');
INSERT INTO settings VALUES('25','file_manager_max_upload_size','2','2020-10-25 13:10:31','2020-10-26 15:43:15');
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
INSERT INTO settings VALUES('52','currency_update_time','2020-10-26 22:55:12','2020-10-26 10:37:05','2020-10-26 22:55:12');
INSERT INTO settings VALUES('53','currency','IRR','2020-10-26 10:55:37','2020-10-26 21:56:10');
INSERT INTO settings VALUES('54','currency_position','right','2020-10-26 10:55:37','2020-10-26 21:56:10');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO task_statuses VALUES('1','سیبیسب','#000000','2','1','2020-10-26 20:34:42','2020-10-26 20:34:42');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO tasks VALUES('1','سیبیسب','سیبیسبی','1','0','high','1','2','2020-10-26','2020-10-26','','2','1','2020-10-26 20:36:19','2020-10-26 20:36:19');



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

INSERT INTO transactions VALUES('1','2020-10-25','1','1','income','cr','150000.00','167481.75','1','0','0','0','0','2','شسیسیسش','1603646238کپی شناسنامه.jpg','شسیس شسی ضصی صی','1','2020-10-25 20:47:18','2020-10-25 20:47:18');
INSERT INTO transactions VALUES('2','2020-10-26','1','1','income','cr','100000.00','100000.00','1','1','0','0','0','2','','1603696288PAMA.png','','1','2020-10-26 10:41:28','2020-10-26 10:41:28');
INSERT INTO transactions VALUES('3','2020-10-26','1','1','income','cr','4400000.00','4400000.00','1','1','0','0','0','2','','','','1','2020-10-26 12:15:35','2020-10-26 12:15:35');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','کامیل میرزایی','info@kaminfo.ir','2020-10-25 09:38:20','$2y$10$X6q.78iaT0dCuNCen9eXG.5vcbNDJHP02sj7HGtRQAN7JVqFVFc5G','admin','0','default.png','1','','0','','2020-10-25 09:38:20','2020-10-25 09:38:20');
INSERT INTO users VALUES('2','کامیل میرزایی','mirzae.uast@gmail.com','2020-10-25 17:24:13','$2y$10$SUrYV9olp5jnwyZh65jLYOzWAxjR7svwb6Oveqi4LDM/S3yWhl5Wa','user','0','profile_1603634053.jpg','1','','1','','2020-10-25 17:24:13','2020-10-25 17:24:13');
INSERT INTO users VALUES('3','کارمند نمونه','info1@kaminfo.ir','2020-10-26 15:45:51','$2y$10$RAOpri2iimgydFYKYtNUaeDMjZu6y4DZzsi4/ubmQjoY7eeO3zeSO','staff','1','profile_1603714551.png','1','English','1','','2020-10-26 15:45:51','2020-10-26 16:50:07');
INSERT INTO users VALUES('4','موسسه مرکزی - تهران','info2@kaminfo.ir','2020-10-26 20:02:01','$2y$10$7oGh6rITf3CfatWW7IS5IOHhOP6TvteJbGELmN9fCNytAPnOlUIUi','user','0','profile_1603729921.jpg','1','','2','','2020-10-26 20:02:01','2020-10-26 20:02:01');



