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

INSERT INTO accounts VALUES('1','بانک انصار','2020-10-25','5892101026756292','EUR','10000000.00','','1','2020-10-25 20:45:10','2020-10-28 16:50:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO activity_logs VALUES('1','projects','1','Created Project','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('2','projects','1','Assign To کامیل میرزایی','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('3','projects','1','Assign To کارمند نمونه','2','1','2020-10-26 20:35:40','2020-10-26 20:35:40');
INSERT INTO activity_logs VALUES('4','projects','1','Create New Task','2','1','2020-10-26 20:36:19','2020-10-26 20:36:19');
INSERT INTO activity_logs VALUES('5','projects','1','Removed کارمند نمونه From Project','2','1','2020-10-26 20:40:35','2020-10-26 20:40:35');
INSERT INTO activity_logs VALUES('6','leads','1','Created Lead','2','1','2020-10-27 02:38:46','2020-10-27 02:38:46');
INSERT INTO activity_logs VALUES('7','leads','1','Assign To کامیل میرزایی','2','1','2020-10-27 02:38:46','2020-10-27 02:38:46');
INSERT INTO activity_logs VALUES('8','leads','2','پیگیری ساخته شد','2','1','2020-10-27 18:07:19','2020-10-27 18:07:19');
INSERT INTO activity_logs VALUES('9','leads','2','مربوط به کامیل میرزایی','2','1','2020-10-27 18:07:19','2020-10-27 18:07:19');
INSERT INTO activity_logs VALUES('10','leads','2','بارگذاری فایل','2','1','2020-10-27 18:08:57','2020-10-27 18:08:57');
INSERT INTO activity_logs VALUES('11','leads','2','یادداشت جدید','2','1','2020-10-27 18:09:19','2020-10-27 18:09:19');
INSERT INTO activity_logs VALUES('12','leads','2','یادداشت جدید','2','1','2020-10-27 18:09:32','2020-10-27 18:09:32');
INSERT INTO activity_logs VALUES('13','leads','2','یادداشت جدید','2','1','2020-10-27 18:09:44','2020-10-27 18:09:44');
INSERT INTO activity_logs VALUES('14','leads','2','پیگیری بروزرسانی شد','2','1','2020-10-27 18:10:08','2020-10-27 18:10:08');
INSERT INTO activity_logs VALUES('15','leads','1','پیگیری بروزرسانی شد','2','1','2020-10-27 18:14:07','2020-10-27 18:14:07');
INSERT INTO activity_logs VALUES('16','leads','3','پیگیری ساخته شد','2','1','2020-10-27 18:24:03','2020-10-27 18:24:03');
INSERT INTO activity_logs VALUES('17','leads','3','مربوط به سروه  میرزائی(کارشناس فروش)','2','1','2020-10-27 18:24:03','2020-10-27 18:24:03');
INSERT INTO activity_logs VALUES('18','projects','1','ساختن وظیفه جدید','2','1','2020-10-27 18:26:47','2020-10-27 18:26:47');
INSERT INTO activity_logs VALUES('19','projects','1','بروز رسانی وظیفه - 2# تماس با فراگیران مریوان','5','1','2020-10-27 18:31:56','2020-10-27 18:31:56');
INSERT INTO activity_logs VALUES('20','projects','1','حذف وظیفه - 1# سیبیسب','2','1','2020-10-28 10:31:41','2020-10-28 10:31:41');
INSERT INTO activity_logs VALUES('21','projects','1','حذف وظیفه - 2# تماس با فراگیران مریوان','2','1','2020-10-28 10:31:47','2020-10-28 10:31:47');
INSERT INTO activity_logs VALUES('22','projects','1','پروژه ایجاد شده','2','1','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO activity_logs VALUES('23','projects','1','مربوط به کامیل میرزایی','2','1','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO activity_logs VALUES('24','projects','1','مربوط به سروه  میرزائی(کارشناس فروش)','2','1','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO activity_logs VALUES('25','projects','1','ساختن وظیفه جدید','2','1','2020-10-31 11:42:03','2020-10-31 11:42:03');
INSERT INTO activity_logs VALUES('26','projects','1','گزارش جدول زمانی جدید','2','1','2020-10-31 11:42:29','2020-10-31 11:42:29');
INSERT INTO activity_logs VALUES('27','projects','1','گزارش جدول زمانی جدید','2','1','2020-10-31 11:43:03','2020-10-31 11:43:03');
INSERT INTO activity_logs VALUES('28','projects','1','حذف جدول زمانی - #2','2','1','2020-10-31 11:43:18','2020-10-31 11:43:18');
INSERT INTO activity_logs VALUES('29','projects','1','پروژه به روز شده','2','1','2020-10-31 12:37:11','2020-10-31 12:37:11');
INSERT INTO activity_logs VALUES('30','projects','1','نقطه عطف پروژه جدید ایجاد کنید','2','1','2020-10-31 15:04:20','2020-10-31 15:04:20');
INSERT INTO activity_logs VALUES('31','projects','1','بروزرسانی وظیفه - 1# پیگیری 1','2','1','2020-10-31 15:31:21','2020-10-31 15:31:21');
INSERT INTO activity_logs VALUES('32','projects','1','حذف وظیفه - 1# پیگیری 1','2','1','2020-10-31 15:31:30','2020-10-31 15:31:30');
INSERT INTO activity_logs VALUES('33','projects','2','پروژه ساخته شد','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO activity_logs VALUES('34','projects','2','مربوط به کامیل میرزایی','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO activity_logs VALUES('35','projects','2','مربوط به سروه  میرزائی(کارشناس فروش)','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO activity_logs VALUES('36','projects','2','مربوط به خانم قادری','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO activity_logs VALUES('37','projects','2','مربوط به خانم قادری2','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO activity_logs VALUES('38','projects','2','حذف شد خانم قادری2 از پروژه','2','1','2020-10-31 19:20:07','2020-10-31 19:20:07');
INSERT INTO activity_logs VALUES('39','projects','1','وظیفه جدید','2','1','2020-11-03 12:41:56','2020-11-03 12:41:56');
INSERT INTO activity_logs VALUES('40','projects','1','بروزرسانی جدول زمانی - #1','2','1','2020-11-03 12:42:20','2020-11-03 12:42:20');
INSERT INTO activity_logs VALUES('41','projects','1','نقطه عطف پروژه را به روز کنید','2','1','2020-11-03 12:42:37','2020-11-03 12:42:37');
INSERT INTO activity_logs VALUES('42','leads','4','لید ساخته شد','2','1','2020-11-04 17:04:34','2020-11-04 17:04:34');
INSERT INTO activity_logs VALUES('43','leads','4','مربوط به کامیل میرزایی','2','1','2020-11-04 17:04:34','2020-11-04 17:04:34');
INSERT INTO activity_logs VALUES('44','projects','1','یادداشت اضافه شد','2','1','2020-11-04 21:00:14','2020-11-04 21:00:14');
INSERT INTO activity_logs VALUES('45','projects','1','یادداشت اضافه شد','2','1','2020-11-04 21:00:18','2020-11-04 21:00:18');
INSERT INTO activity_logs VALUES('46','projects','1','یادداشت اضافه شد','2','1','2020-11-04 21:00:20','2020-11-04 21:00:20');
INSERT INTO activity_logs VALUES('47','projects','1','یادداشت اضافه شد','2','1','2020-11-04 21:00:24','2020-11-04 21:00:24');
INSERT INTO activity_logs VALUES('48','projects','4','یادداشت حذف شد','2','1','2020-11-04 21:00:27','2020-11-04 21:00:27');
INSERT INTO activity_logs VALUES('49','projects','1','یادداشت اضافه شد','2','1','2020-11-04 21:00:36','2020-11-04 21:00:36');
INSERT INTO activity_logs VALUES('50','projects','2','یادداشت اضافه شد','2','1','2020-11-04 21:00:55','2020-11-04 21:00:55');
INSERT INTO activity_logs VALUES('51','projects','2','یادداشت اضافه شد','2','1','2020-11-04 21:00:57','2020-11-04 21:00:57');
INSERT INTO activity_logs VALUES('52','projects','2','یادداشت اضافه شد','2','1','2020-11-04 21:01:00','2020-11-04 21:01:00');
INSERT INTO activity_logs VALUES('53','projects','2','یادداشت اضافه شد','2','1','2020-11-04 21:01:01','2020-11-04 21:01:01');
INSERT INTO activity_logs VALUES('54','projects','2','یادداشت اضافه شد','2','1','2020-11-04 21:01:04','2020-11-04 21:01:04');
INSERT INTO activity_logs VALUES('55','projects','9','یادداشت حذف شد','2','1','2020-11-04 21:01:12','2020-11-04 21:01:12');
INSERT INTO activity_logs VALUES('56','projects','10','یادداشت حذف شد','2','1','2020-11-04 21:01:14','2020-11-04 21:01:14');
INSERT INTO activity_logs VALUES('57','projects','11','یادداشت حذف شد','2','1','2020-11-04 21:01:16','2020-11-04 21:01:16');
INSERT INTO activity_logs VALUES('58','projects','12','یادداشت حذف شد','2','1','2020-11-04 21:01:23','2020-11-04 21:01:23');
INSERT INTO activity_logs VALUES('59','projects','13','یادداشت حذف شد','2','1','2020-11-04 21:01:26','2020-11-04 21:01:26');
INSERT INTO activity_logs VALUES('60','projects','1','حذف شد کامیل میرزایی از پروژه','2','1','2020-11-04 21:02:11','2020-11-04 21:02:11');



DROP TABLE IF EXISTS chart_of_accounts;

CREATE TABLE `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chart_of_accounts VALUES('1','درامد نمونه','income','1','2020-10-25 20:45:27','2020-10-25 20:45:27');
INSERT INTO chart_of_accounts VALUES('2','باربری اقلام','expense','1','2020-10-27 18:37:18','2020-10-27 18:37:18');



DROP TABLE IF EXISTS chat_group_users;

CREATE TABLE `chat_group_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chat_group_users VALUES('1','1','2','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_group_users VALUES('2','1','1','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_group_users VALUES('3','1','5','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_group_users VALUES('4','1','6','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_group_users VALUES('5','1','7','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_group_users VALUES('7','2','2','2020-11-05 00:27:59','2020-11-05 00:27:59');
INSERT INTO chat_group_users VALUES('8','2','6','2020-11-05 00:27:59','2020-11-05 00:27:59');
INSERT INTO chat_group_users VALUES('9','2','7','2020-11-05 00:27:59','2020-11-05 00:27:59');
INSERT INTO chat_group_users VALUES('10','3','8','2020-11-05 00:41:39','2020-11-05 00:41:39');
INSERT INTO chat_group_users VALUES('11','3','2','2020-11-05 00:41:39','2020-11-05 00:41:39');
INSERT INTO chat_group_users VALUES('12','3','7','2020-11-05 00:41:39','2020-11-05 00:41:39');



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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO chat_groups VALUES('1','گروه کارمندان','این گروه برای .... ساخته شده است','1','2','2020-11-04 23:39:01','2020-11-04 23:39:01');
INSERT INTO chat_groups VALUES('2','sadfsaf','','1','2','2020-11-05 00:27:59','2020-11-05 00:27:59');
INSERT INTO chat_groups VALUES('3','wd','','1','8','2020-11-05 00:41:39','2020-11-05 00:41:39');



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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO chat_messages VALUES('16','5','2','سلام','','1','1','2020-10-27 18:24:43','2020-10-27 18:25:01');
INSERT INTO chat_messages VALUES('17','2','6','ضصصثص','','1','1','2020-11-04 23:41:58','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('18','2','7','ضصصثضصضصص','','1','1','2020-11-04 23:42:04','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('19','2','7','نتلاسینتشنتیسش','','1','1','2020-11-04 23:42:06','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('20','2','7','شتسیایسیسش','','1','1','2020-11-04 23:42:07','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('21','2','8','شسیلسیناسشی','','1','1','2020-11-04 23:42:11','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('22','2','8','نشستیلانستیلسنشتی','','1','1','2020-11-04 23:42:12','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('23','2','8','نشسیلایلسایلس','','1','1','2020-11-04 23:42:14','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('24','2','7','awwewqew','','1','1','2020-11-05 00:00:00','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('25','2','7','asdasdasd','','1','1','2020-11-05 00:06:57','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('26','2','8','سلام','','1','1','2020-11-05 00:07:05','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('27','2','8','rffrerewr','','1','1','2020-11-05 00:27:01','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('28','2','5','awsdsad','','1','1','2020-11-05 00:30:00','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('29','2','5','شسانیلایس','','1','1','2020-11-05 00:30:04','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('30','2','8','صییسی','','1','1','2020-11-05 00:30:37','2020-11-05 00:32:24');
INSERT INTO chat_messages VALUES('31','8','2','qwqewew','','1','1','2020-11-05 00:39:35','2020-11-05 00:42:53');
INSERT INTO chat_messages VALUES('32','8','2','<a target=\'_blank\' href=\'http://localhost/elit/public/uploads/chat_files/Attachment_1604524182.jpg\'>Child-painting-class.jpg</a>','Attachment_1604524182.jpg','1','1','2020-11-05 00:39:42','2020-11-05 00:42:53');



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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO cm_features VALUES('1','a:2:{s:7:\"English\";s:31:\"<i class=\'lni lni-package\'></i>\";s:7:\"Spanish\";s:31:\"<i class=\'lni lni-package\'></i>\";}','a:2:{s:7:\"English\";s:25:\"حسابداری آسان\";s:7:\"Spanish\";s:15:\"Easy Accounting\";}','a:2:{s:7:\"English\";s:97:\"بدون هیچ گونه دانش حسابداری حساب هایتان را کنترل کنید\";s:7:\"Spanish\";s:47:\"Manage Account without any accounting knowledge\";}','0000-00-00 00:00:00','2020-10-26 17:13:10');
INSERT INTO cm_features VALUES('2','a:2:{s:7:\"English\";s:29:\"<i class=\'lni lni-files\'></i>\";s:7:\"Spanish\";s:29:\"<i class=\'lni lni-files\'></i>\";}','a:2:{s:7:\"English\";s:12:\"فاکتور\";s:7:\"Spanish\";s:7:\"Invoice\";}','a:2:{s:7:\"English\";s:102:\"فاکتور حرفه ای ایجاد کنید و پرداخت های آنلاین را بپذیرید\";s:7:\"Spanish\";s:54:\"Create professional Invoice and accept online payments\";}','0000-00-00 00:00:00','2020-10-26 17:12:11');
INSERT INTO cm_features VALUES('3','a:2:{s:7:\"English\";s:28:\"<i class=\'lni lni-user\'></i>\";s:7:\"Spanish\";s:28:\"<i class=\'lni lni-user\'></i>\";}','a:2:{s:7:\"English\";s:47:\"مدیریت ارتباط با مشتری (CRM)\";s:7:\"Spanish\";s:3:\"CRM\";}','a:2:{s:7:\"English\";s:66:\"ارتباط موثر با مخاطبان و مشتریان خود\";s:7:\"Spanish\";s:52:\"Contacts with Contact Group and Rich Customer Portal\";}','0000-00-00 00:00:00','2020-10-26 17:11:46');
INSERT INTO cm_features VALUES('4','a:2:{s:7:\"English\";s:33:\"<i class=\'lni lni-phone-set\'></i>\";s:7:\"Spanish\";s:33:\"<i class=\'lni lni-phone-set\'></i>\";}','a:2:{s:7:\"English\";s:13:\"سرنخ ها\";s:7:\"Spanish\";s:5:\"Leads\";}','a:2:{s:7:\"English\";s:117:\"با استفاده از کانبان ، سرنخ ها را از منابع مختلف سربی مدیریت کنید\";s:7:\"Spanish\";s:57:\"Manage leads from different lead sources with kanban view\";}','0000-00-00 00:00:00','2020-10-26 17:09:21');
INSERT INTO cm_features VALUES('5','a:2:{s:7:\"English\";s:33:\"<i class=\'lni lni-briefcase\'></i>\";s:7:\"Spanish\";s:33:\"<i class=\'lni lni-briefcase\'></i>\";}','a:2:{s:7:\"English\";s:15:\"پروژه ها\";s:7:\"Spanish\";s:8:\"Projects\";}','a:2:{s:7:\"English\";s:76:\"پروژه های مختلف را با نقطه عطف مدیریت کنید\";s:7:\"Spanish\";s:49:\"Manage different types of projects with milestone\";}','0000-00-00 00:00:00','2020-10-26 17:08:19');
INSERT INTO cm_features VALUES('6','a:2:{s:7:\"English\";s:29:\"<i class=\'lni lni-alarm\'></i>\";s:7:\"Spanish\";s:29:\"<i class=\'lni lni-alarm\'></i>\";}','a:2:{s:7:\"English\";s:10:\"وظایف\";s:7:\"Spanish\";s:5:\"Tasks\";}','a:2:{s:7:\"English\";s:127:\"کارها را با نمای کانبان مدیریت کنید و وظیفه را به کارمندان اختصاص دهید\";s:7:\"Spanish\";s:54:\"Manage tasks with kanban view and assign task to staff\";}','0000-00-00 00:00:00','2020-10-26 17:07:46');
INSERT INTO cm_features VALUES('7','a:2:{s:7:\"English\";s:34:\"<i class=\'lni lni-empty-file\'></i>\";s:7:\"Spanish\";s:34:\"<i class=\'lni lni-empty-file\'></i>\";}','a:2:{s:7:\"English\";s:19:\"پیش فاکتور\";s:7:\"Spanish\";s:9:\"Quotation\";}','a:2:{s:7:\"English\";s:81:\"برای جلب توجه مشتری ، قیمت حرفه ای ایجاد کنید\";s:7:\"Spanish\";s:60:\"Create Professional Quotation for getting customer attention\";}','0000-00-00 00:00:00','2020-10-26 17:06:56');
INSERT INTO cm_features VALUES('8','a:2:{s:7:\"English\";s:42:\"<i class=\'lni lni-facebook-messenger\'></i>\";s:7:\"Spanish\";s:42:\"<i class=\'lni lni-facebook-messenger\'></i>\";}','a:2:{s:7:\"English\";s:21:\"گفتگوی زنده\";s:7:\"Spanish\";s:9:\"Live Chat\";}','a:2:{s:7:\"English\";s:104:\"گفتگو در زمان واقعی با کارمندان ، مشتریان و گروههای خصوصی\";s:7:\"Spanish\";s:56:\"Real time Chat with staffs, customers and private groups\";}','0000-00-00 00:00:00','2020-10-26 17:06:25');
INSERT INTO cm_features VALUES('9','a:2:{s:7:\"English\";s:36:\"<i class=\'lni lni-credit-cards\'></i>\";s:7:\"Spanish\";s:36:\"<i class=\'lni lni-credit-cards\'></i>\";}','a:2:{s:7:\"English\";s:25:\"پرداخت آنلاین\";s:7:\"Spanish\";s:15:\"Online Payments\";}','a:2:{s:7:\"English\";s:65:\"پرداخت آنلاین از مشتریان را بپذیرید\";s:7:\"Spanish\";s:35:\"Accept Online Payments from Clients\";}','0000-00-00 00:00:00','2020-10-26 17:05:50');
INSERT INTO cm_features VALUES('10','a:1:{s:7:\"English\";s:30:\"<i class=\"lni lni-layout\"></i>\";}','a:1:{s:7:\"English\";s:24:\"نمونه تست شده\";}','a:1:{s:7:\"English\";s:68:\"لورم ایپسون لورم ایپسون یک متن ساختگی\";}','2020-11-03 12:40:27','2020-11-03 12:40:27');



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
INSERT INTO company_settings VALUES('2','currency_position','right','1','2020-10-25 20:52:09','2020-10-28 16:16:30');
INSERT INTO company_settings VALUES('3','backend_direction','rtl','1','2020-10-25 20:52:09','2020-10-28 16:16:30');
INSERT INTO company_settings VALUES('4','timezone','Asia/Tehran','1','2020-10-25 20:52:09','2020-10-28 16:16:30');
INSERT INTO company_settings VALUES('5','date_format','Y-m-d','1','2020-10-25 20:52:09','2020-10-28 16:16:30');
INSERT INTO company_settings VALUES('6','time_format','24','1','2020-10-25 20:52:09','2020-10-28 16:16:30');
INSERT INTO company_settings VALUES('7','company_logo','company_logo1603694066.png','1','2020-10-25 20:52:23','2020-10-26 10:04:26');
INSERT INTO company_settings VALUES('8','company_name','کودکان هوشمند کردستان','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('9','phone','09185227309','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('10','vat_id','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('11','reg_no','','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('12','email','mirzae.uast@gmail.com','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('13','address','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','1','2020-10-26 10:02:23','2020-10-26 10:02:23');
INSERT INTO company_settings VALUES('14','invoice_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('15','invoice_starting','1005','1','2020-10-26 10:03:00','2020-11-04 21:23:51');
INSERT INTO company_settings VALUES('16','default_account','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('17','default_chart_id','1','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('18','quotation_prefix','','1','2020-10-26 10:03:00','2020-10-26 10:03:00');
INSERT INTO company_settings VALUES('19','quotation_starting','1005','1','2020-10-26 10:03:00','2020-11-04 17:04:52');
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

INSERT INTO contacts VALUES('1','Individual','کودکان هوشمند کردستان','سیبیبب','mirzae.uasیییt@gmail.com','','','09185227309','Iran','IRR','','','','','','','','','contact_image1603871039.jpg','1','0','1','','2020-10-25 20:46:50','2020-10-28 11:13:59');
INSERT INTO contacts VALUES('2','Individual','','مشتری1','moshatri@gmail.com','1234567','765456','09181731143','Iran','IRR','دیواندره','کردستان','6641913719','خ شهید محمدی بالاتر از مسجد خاتم الانبیاء دفتر اینترنت شاتل','#','#','#','','contact_image1603753524.jpg','1','0','1','','2020-10-27 02:35:24','2020-10-27 02:35:24');



DROP TABLE IF EXISTS currency_rates;

CREATE TABLE `currency_rates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency_rates VALUES('1','AED','4.303042','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('2','AFN','90.148824','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('3','ALL','123.827785','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('4','AMD','578.149430','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('5','ANG','2.101467','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('6','AOA','774.375098','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('7','ARS','92.580108','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('8','AUD','1.631191','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('9','AWG','2.108753','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('10','AZN','1.977861','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('11','BAM','1.956121','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('12','BBD','2.363813','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('13','BDT','99.282030','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('14','BGN','1.956261','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('15','BHD','0.441721','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('16','BIF','2272.767211','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('17','BMD','1.171529','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('18','BND','1.593871','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('19','BOB','8.072009','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('20','BRL','6.635897','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('21','BSD','1.170704','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('22','BTC','0.000083','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('23','BTN','87.360949','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('24','BWP','13.296021','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('25','BYN','3.089960','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('26','BYR','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('27','BZD','2.359812','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('28','CAD','1.538195','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('29','CDF','2302.055034','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('30','CHF','1.069460','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('31','CLF','0.032017','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('32','CLP','883.448011','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('33','CNY','7.794773','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('34','COP','4469.396721','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('35','CRC','714.984801','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('36','CUC','1.171529','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('37','CUP','31.045531','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('38','CVE','110.686176','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('39','CZK','26.861413','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('40','DJF','208.204380','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('41','DKK','7.445632','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('42','DOP','68.511248','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('43','DZD','151.246188','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('44','EGP','18.416329','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('45','ERN','17.572800','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('46','ETB','44.036192','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('47','EUR','1.000000','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('48','FJD','2.510006','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('49','FKP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('50','GBP','0.902119','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('51','GEL','3.918727','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('52','GGP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('53','GHS','6.842060','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('54','GIP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('55','GMD','60.626956','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('56','GNF','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('57','GTQ','9.116891','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('58','GYD','244.932753','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('59','HKD','9.087144','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('60','HNL','28.784274','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('61','HRK','7.553439','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('62','HTG','74.750048','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('63','HUF','363.208922','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('64','IDR','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('65','ILS','3.977213','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('66','IMP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('67','INR','86.946586','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('68','IQD','1395.291623','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('69','IRR','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('70','ISK','163.698081','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('71','JEP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('72','JMD','171.356910','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('73','JOD','0.830598','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('74','JPY','122.385580','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('75','KES','127.579215','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('76','KGS','98.270699','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('77','KHR','4764.610204','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('78','KMF','492.716011','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('79','KPW','1054.469238','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('80','KRW','1321.321204','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('81','KWD','0.358570','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('82','KYD','0.975670','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('83','KZT','506.195394','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('84','LAK','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('85','LBP','1772.666342','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('86','LKR','215.878782','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('87','LRD','209.119260','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('88','LSL','18.803533','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('89','LTL','3.459222','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('90','LVL','0.708646','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('91','LYD','1.599172','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('92','MAD','10.783974','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('93','MDL','20.135699','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('94','MGA','4574.822684','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('95','MKD','61.575553','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('96','MMK','1506.690132','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('97','MNT','3314.807103','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('98','MOP','9.349592','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('99','MRO','418.236631','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('100','MUR','46.861442','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('101','MVR','18.053556','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('102','MWK','890.361834','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('103','MXN','24.599742','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('104','MYR','4.882937','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('105','MZN','85.902440','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('106','NAD','18.814942','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('107','NGN','448.695808','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('108','NIO','40.650686','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('109','NOK','10.925620','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('110','NPR','139.777398','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('111','NZD','1.750699','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('112','OMR','0.451016','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('113','PAB','1.170804','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('114','PEN','4.207550','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('115','PGK','4.109136','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('116','PHP','56.649894','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('117','PKR','187.152258','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('118','PLN','4.540790','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('119','PYG','8222.335208','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('120','QAR','4.265536','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('121','RON','4.865949','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('122','RSD','117.645174','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('123','RUB','90.883396','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('124','RWF','1151.027724','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('125','SAR','4.394023','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('126','SBD','9.483981','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('127','SCR','22.692441','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('128','SDG','64.779240','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('129','SEK','10.297961','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('130','SGD','1.591283','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('131','SHP','0.902256','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('132','SLL','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('133','SOS','683.002174','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('134','SRD','16.581781','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('135','STD','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('136','SVC','10.244788','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('137','SYP','600.398930','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('138','SZL','18.838289','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('139','THB','36.329535','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('140','TJS','12.099002','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('141','TMT','4.100353','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('142','TND','3.246897','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('143','TOP','2.715723','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('144','TRY','9.851743','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('145','TTD','7.937285','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('146','TWD','33.489332','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('147','TZS','2714.827499','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('148','UAH','33.311762','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('149','UGX','4375.951764','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('150','USD','1.171529','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('151','UYU','50.363791','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('152','UZS','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('153','VEF','11.700655','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('154','VND','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('155','VUV','133.035310','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('156','WST','3.073669','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('157','XAF','656.063116','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('158','XAG','0.049105','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('159','XAU','0.000617','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('160','XCD','3.166117','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('161','XDR','0.828634','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('162','XOF','660.742565','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('163','XPF','120.022954','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('164','YER','293.350088','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('165','ZAR','18.583265','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('166','ZMK','9999.999999','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('167','ZMW','24.262935','2020-11-04 23:38:17','2020-11-04 23:38:17');
INSERT INTO currency_rates VALUES('168','ZWL','377.232427','2020-11-04 23:38:17','2020-11-04 23:38:17');



DROP TABLE IF EXISTS current_stocks;

CREATE TABLE `current_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO current_stocks VALUES('1','1','0.00','1','2020-10-25 20:48:42','2020-10-25 20:48:42');
INSERT INTO current_stocks VALUES('2','2','-5.00','1','2020-10-26 10:06:20','2020-10-31 19:13:35');
INSERT INTO current_stocks VALUES('3','3','0.00','1','2020-10-27 13:52:37','2020-10-27 13:52:37');
INSERT INTO current_stocks VALUES('4','4','0.00','1','2020-10-27 14:01:09','2020-10-27 14:01:09');
INSERT INTO current_stocks VALUES('5','5','0.00','1','2020-10-27 14:02:54','2020-10-27 14:02:54');
INSERT INTO current_stocks VALUES('6','6','0.00','1','2020-10-27 14:04:29','2020-10-27 14:04:29');
INSERT INTO current_stocks VALUES('7','7','-2.00','1','2020-10-27 14:05:51','2020-11-04 21:23:51');



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
INSERT INTO file_manager VALUES('4','تست','','yes','','0','1','2','2020-10-27 02:44:17','2020-10-27 02:44:17');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO files VALUES('1','leads','2','1603809537سفارش اقلام قادری 98.11.11.jpg','2','1','2020-10-27 18:08:57','2020-10-27 18:08:57');



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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO group_chat_message_status VALUES('1','3','1','8','1','2020-11-05 00:38:51','2020-11-05 00:38:51');
INSERT INTO group_chat_message_status VALUES('2','4','1','8','1','2020-11-05 00:38:51','2020-11-05 00:38:51');
INSERT INTO group_chat_message_status VALUES('3','5','1','8','1','2020-11-05 00:38:51','2020-11-05 00:38:51');
INSERT INTO group_chat_message_status VALUES('4','8','3','2','1','2020-11-05 00:43:01','2020-11-05 00:43:01');
INSERT INTO group_chat_message_status VALUES('5','9','3','2','1','2020-11-05 00:43:01','2020-11-05 00:43:01');
INSERT INTO group_chat_message_status VALUES('6','10','3','2','1','2020-11-05 00:43:01','2020-11-05 00:43:01');
INSERT INTO group_chat_message_status VALUES('7','7','1','2','1','2020-11-05 00:43:13','2020-11-05 00:43:13');



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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO group_chat_messages VALUES('1','2','sasas','','2','1','2020-11-05 00:35:54','2020-11-05 00:35:54');
INSERT INTO group_chat_messages VALUES('2','2','sssss','','2','1','2020-11-05 00:35:57','2020-11-05 00:35:57');
INSERT INTO group_chat_messages VALUES('3','1','awewqeqew','','2','1','2020-11-05 00:37:33','2020-11-05 00:37:33');
INSERT INTO group_chat_messages VALUES('4','1','<a target=\'_blank\' href=\'http://localhost/elit/public/uploads/chat_files/Attachment_1604524059.jpg\'>e6.jpg</a>','Attachment_1604524059.jpg','2','1','2020-11-05 00:37:39','2020-11-05 00:37:39');
INSERT INTO group_chat_messages VALUES('5','1','<a target=\'_blank\' href=\'http://localhost/elit/public/uploads/chat_files/Attachment_1604524077.jpg\'>کلاس+مجازی.jpg</a>','Attachment_1604524077.jpg','2','1','2020-11-05 00:37:57','2020-11-05 00:37:57');
INSERT INTO group_chat_messages VALUES('6','2','<a target=\'_blank\' href=\'http://localhost/elit/public/uploads/chat_files/Attachment_1604524099.jpg\'>424108_288.jpg</a>','Attachment_1604524099.jpg','2','1','2020-11-05 00:38:19','2020-11-05 00:38:19');
INSERT INTO group_chat_messages VALUES('7','1','<b style=\'color:#EA2027\'>پویا ترک گروه</b>','','8','1','2020-11-05 00:40:59','2020-11-05 00:40:59');
INSERT INTO group_chat_messages VALUES('8','3','adwsewe','','8','1','2020-11-05 00:41:51','2020-11-05 00:41:51');
INSERT INTO group_chat_messages VALUES('9','3','wewewq','','8','1','2020-11-05 00:41:54','2020-11-05 00:41:54');
INSERT INTO group_chat_messages VALUES('10','3','<a target=\'_blank\' href=\'http://localhost/elit/public/uploads/chat_files/Attachment_1604524328.jpg\'>Child-painting-class.jpg</a>','Attachment_1604524328.jpg','8','1','2020-11-05 00:42:08','2020-11-05 00:42:08');



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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoice_items VALUES('2','1','2','','5.00','900000.00','0.00','','0','0.00','4500000.00','1','2020-10-26 10:43:28','2020-10-26 10:43:28');
INSERT INTO invoice_items VALUES('5','2','7','','1.00','900000.00','0.00','ندارد','0','0.00','900000.00','1','2020-10-31 19:13:35','2020-10-31 19:13:35');
INSERT INTO invoice_items VALUES('6','3','7','','1.00','900000.00','0.00','ندارد','0','0.00','900000.00','1','2020-11-04 21:23:51','2020-11-04 21:23:51');
INSERT INTO invoice_items VALUES('7','3','8','','1.00','700000.00','0.00','inclusive','0','0.00','700000.00','1','2020-11-04 21:23:51','2020-11-04 21:23:51');



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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO invoices VALUES('1','1001','2020-10-26','2020-10-26','4500000.00','0.00','4500000.00','4500000.00','Paid','modern','','contacts','1','1','1','2020-10-26 10:40:16','2020-10-26 12:15:35');
INSERT INTO invoices VALUES('2','1003','2020-10-31','2020-10-31','900000.00','0.00','1000000.00','99999999.99','Paid','classic-red','','projects','1','2','1','2020-10-31 19:11:26','2020-10-31 19:13:03');
INSERT INTO invoices VALUES('3','1004','2020-11-04','2020-11-20','1600000.00','0.00','0.00','99999999.99','Canceled','modern','','contacts','2','2','1','2020-11-04 21:23:51','2020-11-04 21:24:15');



DROP TABLE IF EXISTS items;

CREATE TABLE `items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO items VALUES('7','بسته ترم اول','product','1','2020-10-27 14:05:51','2020-10-27 14:05:51');
INSERT INTO items VALUES('8','شهریه','service','1','2020-11-03 20:41:34','2020-11-03 20:41:34');



DROP TABLE IF EXISTS lead_sources;

CREATE TABLE `lead_sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO lead_sources VALUES('1','منبع سرب','0','1','2020-10-27 02:37:55','2020-10-27 02:37:55');
INSERT INTO lead_sources VALUES('2','مشتریان','0','1','2020-10-27 18:07:00','2020-10-27 18:07:00');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO lead_statuses VALUES('1','وضعیت','#4a55ca','3','1','2020-10-27 02:37:29','2020-10-27 18:18:05');
INSERT INTO lead_statuses VALUES('2','شروع و راهنمایی','#3be622','1','1','2020-10-27 18:06:30','2020-10-27 18:06:30');
INSERT INTO lead_statuses VALUES('3','تماس میگیرند','#de0678','2','1','2020-10-27 18:13:27','2020-10-27 18:18:05');
INSERT INTO lead_statuses VALUES('4','مزاکره','#000000','450','1','2020-11-04 17:03:34','2020-11-04 17:03:34');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO leads VALUES('1','مخاطب اول','','','0','1','2','2','2','2020-10-25','','','Iran','IRR','','','','','','','','1','2020-10-27 02:38:46','2020-11-04 17:56:43');
INSERT INTO leads VALUES('2','امیر میرزایی','نام شرکت','amir@gmail.com','0','3','2','2','2','2020-10-27','','','','IRR','','','','','','','','1','2020-10-27 18:07:19','2020-10-27 18:18:37');
INSERT INTO leads VALUES('3','اولیا فراگیر','نام شرکت','','0','2','2','5','2','2020-10-27','','','','IRR','','','','','','','','1','2020-10-27 18:24:03','2020-10-27 18:24:03');
INSERT INTO leads VALUES('4','پویا','نام شرکت','','','1','2','2','2','2020-11-04','','','','IRR','','','','','','','','1','2020-11-04 17:04:34','2020-11-04 17:56:46');



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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO notes VALUES('1','leads','2','یادداشت جدید','2','1','2020-10-27 18:09:19','2020-10-27 18:09:19');
INSERT INTO notes VALUES('2','leads','2','یادداشت دیگر و دومی','2','1','2020-10-27 18:09:32','2020-10-27 18:09:32');
INSERT INTO notes VALUES('3','leads','2','یادداشت دیگر به عبارتی یادداشت سومی','2','1','2020-10-27 18:09:44','2020-10-27 18:09:44');
INSERT INTO notes VALUES('5','projects','1','sadssddsadsa','2','1','2020-11-04 21:00:18','2020-11-04 21:00:18');
INSERT INTO notes VALUES('6','projects','1','asdsdsdsadsa','2','1','2020-11-04 21:00:20','2020-11-04 21:00:20');
INSERT INTO notes VALUES('7','projects','1','adsdsadsa','2','1','2020-11-04 21:00:24','2020-11-04 21:00:24');
INSERT INTO notes VALUES('8','projects','1','aksjdhkdjs','2','1','2020-11-04 21:00:36','2020-11-04 21:00:36');



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
INSERT INTO notifications VALUES('16f48bb4-d1cb-43e4-89cb-37c52d5b25f5','App\\Notifications\\ProjectCreated','App\\User','2','{\"id\":2,\"url\":\"projects\\/2\",\"client_url\":\"client\\/projects\\/2\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 2# \\u0641\\u0642\\u063a\\u0641\"}','2','0000-00-00 00:00:00','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO notifications VALUES('19ac6e1d-b433-419c-80aa-8b641784ec3c','App\\Notifications\\TaskCreated','App\\User','2','{\"id\":2,\"url\":\"tasks\\/2\",\"client_url\":\"\",\"title\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 2# \\u0648\\u0638\\u06cc\\u0641\\u0647 \\u062c\\u062f\\u06cc\\u062f\"}','2','2020-11-03 20:41:46','2020-11-03 12:41:57','2020-11-03 20:41:46');
INSERT INTO notifications VALUES('1eb944b9-4092-4198-85e2-2c66f63d087e','App\\Notifications\\TaskUpdated','App\\User','5','{\"id\":1,\"url\":\"tasks\\/1\",\"client_url\":\"\",\"title\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 \\u0628\\u0631\\u0648\\u0632\\u0631\\u0633\\u0627\\u0646\\u06cc\",\"content\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 1# \\u067e\\u06cc\\u06af\\u06cc\\u0631\\u06cc 1\"}','2','0000-00-00 00:00:00','2020-10-31 15:31:21','2020-10-31 15:31:21');
INSERT INTO notifications VALUES('22e1f2b2-7573-4eea-baac-04c7aeb8e559','App\\Notifications\\ProjectCreated','App\\User','5','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','0000-00-00 00:00:00','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO notifications VALUES('256b1e0e-9b93-47b7-814c-7fe908171389','App\\Notifications\\ProjectCreated','App\\User','5','{\"id\":2,\"url\":\"projects\\/2\",\"client_url\":\"client\\/projects\\/2\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 2# \\u0641\\u0642\\u063a\\u0641\"}','2','0000-00-00 00:00:00','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO notifications VALUES('5d864274-d074-466b-ae1f-c59c879e9e05','App\\Notifications\\ProjectCreated','App\\User','6','{\"id\":2,\"url\":\"projects\\/2\",\"client_url\":\"client\\/projects\\/2\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 2# \\u0641\\u0642\\u063a\\u0641\"}','2','0000-00-00 00:00:00','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO notifications VALUES('643adcd7-25f9-4813-8a15-38474a69a70f','App\\Notifications\\ProjectCreated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"Created New Project\",\"content\":\"Project 1# \\u0632\\u0631\\u0631\\u0632\\u0631\\u0632\\u0631\"}','2','2020-10-26 20:40:28','2020-10-26 20:35:40','2020-10-26 20:40:28');
INSERT INTO notifications VALUES('74060efa-ebd7-4519-b5e2-d2ae8303cb56','App\\Notifications\\TaskUpdated','App\\User','5','{\"id\":2,\"url\":\"tasks\\/2\",\"client_url\":\"\",\"title\":\"\\u0628\\u0631\\u0648\\u0632\\u0631\\u0633\\u0627\\u0646\\u06cc \\u0648\\u0638\\u06cc\\u0641\\u0647\",\"content\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647\\/\\u06a9\\u0627\\u0631 2# \\u062a\\u0645\\u0627\\u0633 \\u0628\\u0627 \\u0641\\u0631\\u0627\\u06af\\u06cc\\u0631\\u0627\\u0646 \\u0645\\u0631\\u06cc\\u0648\\u0627\\u0646\"}','5','2020-10-27 18:32:25','2020-10-27 18:31:56','2020-10-27 18:32:25');
INSERT INTO notifications VALUES('814e8370-a948-489c-852f-47b0c3ad7298','App\\Notifications\\ProjectCreated','App\\User','7','{\"id\":2,\"url\":\"projects\\/2\",\"client_url\":\"client\\/projects\\/2\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 2# \\u0641\\u0642\\u063a\\u0641\"}','2','0000-00-00 00:00:00','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO notifications VALUES('afa066dc-55e1-4e15-8556-d4a73be155c2','App\\Notifications\\TaskCreated','App\\User','2','{\"id\":1,\"url\":\"tasks\\/1\",\"client_url\":\"\",\"title\":\"Created New Task\",\"content\":\"Task 1# \\u0633\\u06cc\\u0628\\u06cc\\u0633\\u0628\"}','2','2020-10-26 20:40:24','2020-10-26 20:36:19','2020-10-26 20:40:24');
INSERT INTO notifications VALUES('b0fdd89c-7aee-47a2-872d-893e3c572ad2','App\\Notifications\\TaskCreated','App\\User','5','{\"id\":1,\"url\":\"tasks\\/1\",\"client_url\":\"\",\"title\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647 1# \\u067e\\u06cc\\u06af\\u06cc\\u0631\\u06cc 1\"}','2','0000-00-00 00:00:00','2020-10-31 11:42:03','2020-10-31 11:42:03');
INSERT INTO notifications VALUES('b7e02a28-538f-40ac-b6e0-82cf57e2f55a','App\\Notifications\\ProjectCreated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','2020-10-31 11:41:20','2020-10-31 11:40:38','2020-10-31 11:41:20');
INSERT INTO notifications VALUES('c6ffedd8-2bf3-4530-9ce5-f35f5a9d3875','App\\Notifications\\ProjectUpdated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u0628\\u0631\\u0648\\u0632\\u0631\\u0633\\u0627\\u0646\\u06cc \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','2020-10-31 17:53:01','2020-10-31 12:37:11','2020-10-31 17:53:01');
INSERT INTO notifications VALUES('c97ab215-0421-421b-8bb4-31a36c295eda','App\\Notifications\\ProjectCreated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u062c\\u062f\\u06cc\\u062f \\u0627\\u06cc\\u062c\\u0627\\u062f \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','2020-10-31 11:41:24','2020-10-31 11:40:38','2020-10-31 11:41:24');
INSERT INTO notifications VALUES('f562f8eb-972c-4470-857e-d8dacd568306','App\\Notifications\\ProjectUpdated','App\\User','5','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u0628\\u0631\\u0648\\u0632\\u0631\\u0633\\u0627\\u0646\\u06cc \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','0000-00-00 00:00:00','2020-10-31 12:37:11','2020-10-31 12:37:11');
INSERT INTO notifications VALUES('f569e3b8-7af7-4708-990a-dd72d1659ca5','App\\Notifications\\ProjectUpdated','App\\User','2','{\"id\":1,\"url\":\"projects\\/1\",\"client_url\":\"client\\/projects\\/1\",\"title\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 \\u0628\\u0631\\u0648\\u0632\\u0631\\u0633\\u0627\\u0646\\u06cc \\u0634\\u062f\",\"content\":\"\\u067e\\u0631\\u0648\\u0698\\u0647 1# \\u067e\\u0631\\u0648\\u0698\\u0647 1\"}','2','2020-10-31 17:52:57','2020-10-31 12:37:11','2020-10-31 17:52:57');
INSERT INTO notifications VALUES('f9d635db-a87f-4d16-8692-a2ff422c9a3b','App\\Notifications\\TaskCreated','App\\User','5','{\"id\":2,\"url\":\"tasks\\/2\",\"client_url\":\"\",\"title\":\"\\u0633\\u0627\\u062e\\u062a\\u0646 \\u0648\\u0638\\u06cc\\u0641\\u0647 \\u062c\\u062f\\u06cc\\u062f\",\"content\":\"\\u0648\\u0638\\u06cc\\u0641\\u0647\\/\\u06a9\\u0627\\u0631 2# \\u062a\\u0645\\u0627\\u0633 \\u0628\\u0627 \\u0641\\u0631\\u0627\\u06af\\u06cc\\u0631\\u0627\\u0646 \\u0645\\u0631\\u06cc\\u0648\\u0627\\u0646\"}','2','2020-10-27 18:27:35','2020-10-27 18:26:47','2020-10-27 18:27:35');



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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO packages VALUES('1','Basic','10.00','99.00','a:2:{s:7:\"monthly\";s:1:\"3\";s:6:\"yearly\";s:2:\"10\";}','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"30\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"20\";s:6:\"yearly\";s:3:\"300\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','','','','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO packages VALUES('2','Standard','25.00','199.00','a:2:{s:7:\"monthly\";s:2:\"10\";s:6:\"yearly\";s:2:\"20\";}','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:2:\"50\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:3:\"500\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:2:\"No\";s:6:\"yearly\";s:2:\"No\";}','1','','0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO packages VALUES('3','Business Plus','40.00','399.00','a:2:{s:7:\"monthly\";s:2:\"30\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:9:\"Unlimited\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"300\";s:6:\"yearly\";s:9:\"Unlimited\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','','','','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','a:2:{s:7:\"monthly\";s:3:\"Yes\";s:6:\"yearly\";s:3:\"Yes\";}','0','','0000-00-00 00:00:00','0000-00-00 00:00:00');



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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_histories VALUES('3','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:56:32','2020-10-26 11:56:32');
INSERT INTO payment_histories VALUES('4','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 11:57:06','2020-10-26 11:57:06');
INSERT INTO payment_histories VALUES('5','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 11:58:26','2020-10-26 11:58:26');
INSERT INTO payment_histories VALUES('6','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:00:58','2020-10-26 12:00:58');
INSERT INTO payment_histories VALUES('7','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:07:23','2020-10-26 12:07:23');
INSERT INTO payment_histories VALUES('8','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 12:20:40','2020-10-26 12:20:40');
INSERT INTO payment_histories VALUES('9','1','Buy Basic Package','Offline','IRR','10.00','1','monthly','paid','2020-10-26 12:41:54','2020-10-26 12:41:54');
INSERT INTO payment_histories VALUES('10','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 18:45:29','2020-10-26 18:45:29');
INSERT INTO payment_histories VALUES('11','1','Buy Basic Package','Offline','IRR','99.00','1','yearly','paid','2020-10-26 20:27:30','2020-10-26 20:27:30');
INSERT INTO payment_histories VALUES('12','1','Buy Business Plus Package','','IRR','399.00','3','yearly','pending','2020-10-27 14:12:37','2020-10-27 14:12:37');
INSERT INTO payment_histories VALUES('13','1','Buy Business Plus Package','','IRR','399.00','3','yearly','pending','2020-10-27 14:12:57','2020-10-27 14:12:57');
INSERT INTO payment_histories VALUES('14','1','Buy Business Plus Package','','IRR','399.00','3','yearly','pending','2020-10-27 18:41:03','2020-10-27 18:41:03');
INSERT INTO payment_histories VALUES('15','1','Buy Business Plus Package','','IRR','399.00','3','yearly','pending','2020-10-31 19:25:07','2020-10-31 19:25:07');
INSERT INTO payment_histories VALUES('16','1','Buy Business Plus Package','','IRR','399.00','3','yearly','pending','2020-10-31 19:25:14','2020-10-31 19:25:14');



DROP TABLE IF EXISTS payment_methods;

CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_methods VALUES('4','نقدی','1','2020-10-27 18:37:53','2020-10-27 18:37:53');



DROP TABLE IF EXISTS permissions;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES('151','1','contact_groups.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('152','1','contact_groups.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('153','1','contact_groups.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('154','1','contacts.import','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('155','1','contacts.send_email','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('156','1','contacts.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('157','1','contacts.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('158','1','contacts.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('159','1','contacts.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('160','1','tasks.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('161','1','tasks.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('162','1','tasks.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('163','1','tasks.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('164','1','accounts.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('165','1','accounts.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('166','1','accounts.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('167','1','accounts.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('168','1','income.income_calendar','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('169','1','income.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('170','1','income.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('171','1','income.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('172','1','income.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('173','1','expense.expense_calendar','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('174','1','expense.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('175','1','expense.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('176','1','expense.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('177','1','expense.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('178','1','transfer.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('179','1','chart_of_accounts.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('180','1','chart_of_accounts.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('181','1','payment_methods.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('182','1','payment_methods.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('183','1','payment_methods.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('184','1','payment_methods.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('185','1','suppliers.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('186','1','suppliers.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('187','1','suppliers.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('188','1','suppliers.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('189','1','services.import','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('190','1','services.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('191','1','services.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('192','1','services.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('193','1','services.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('194','1','purchase_returns.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('195','1','purchase_returns.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('196','1','purchase_returns.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('197','1','purchase_returns.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('198','1','invoices.create_payment','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('199','1','invoices.mark_as_cancelled','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('200','1','invoices.view_payment','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('201','1','invoices.send_email','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('202','1','invoices.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('203','1','invoices.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('204','1','invoices.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('205','1','invoices.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('206','1','quotations.convert_invoice','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('207','1','quotations.send_email','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('208','1','quotations.index','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('209','1','quotations.create','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('210','1','quotations.show','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('211','1','quotations.edit','2020-11-04 17:09:19','2020-11-04 17:09:19');
INSERT INTO permissions VALUES('221','2','accounts.index','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('222','2','accounts.create','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('223','2','accounts.show','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('224','2','accounts.edit','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('225','2','income.income_calendar','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('226','2','income.index','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('227','2','income.create','2020-11-04 17:14:39','2020-11-04 17:14:39');
INSERT INTO permissions VALUES('228','2','income.show','2020-11-04 17:14:39','2020-11-04 17:14:39');



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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO products VALUES('7','7','1','710000.00','900000.00','عدد','ندارد','0','','2020-10-27 14:05:51','2020-10-27 14:10:39');



DROP TABLE IF EXISTS project_members;

CREATE TABLE `project_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO project_members VALUES('2','1','2','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO project_members VALUES('3','1','5','2020-10-31 11:40:38','2020-10-31 11:40:38');
INSERT INTO project_members VALUES('4','2','2','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO project_members VALUES('5','2','5','2020-10-31 19:14:59','2020-10-31 19:14:59');
INSERT INTO project_members VALUES('6','2','6','2020-10-31 19:14:59','2020-10-31 19:14:59');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO project_milestones VALUES('1','رویداد مهم1','توضیح رویداد مهم1','2020-11-02','completed','5500000.00','1','2','1','2020-10-31 15:04:20','2020-11-03 12:42:37');



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO projects VALUES('1','پروژه 1','2','23','fixed','in_progress','1000000.00','0.00','2020-10-31','2020-11-07','<p>توضیحات پروژه</p>','','2','1','2020-10-31 11:40:38','2020-10-31 12:37:11');
INSERT INTO projects VALUES('2','فقغف','2','0','hourly','in_progress','0.00','150000.00','2020-10-31','2020-11-02','<p>فغفغغ</p>','','2','1','2020-10-31 19:14:59','2020-10-31 19:14:59');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotation_items VALUES('1','1','2','','2.00','900000.00','0.00','exclusive','0','0.00','1800000.00','2020-10-26 15:51:18','2020-10-26 15:51:18');
INSERT INTO quotation_items VALUES('2','2','7','','2.00','900000.00','0.00','ندارد','0','0.00','1800000.00','2020-10-27 18:08:03','2020-10-27 18:08:03');
INSERT INTO quotation_items VALUES('3','3','7','','1.00','900000.00','0.00','ندارد','0','0.00','900000.00','2020-10-31 19:15:44','2020-10-31 19:15:44');
INSERT INTO quotation_items VALUES('4','4','7','','1.00','900000.00','0.00','ندارد','0','0.00','900000.00','2020-11-04 17:04:52','2020-11-04 17:04:52');



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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO quotations VALUES('1','1001','2020-10-26','classic-red','1800000.00','1800000.00','0.00','','contacts','1','1','2020-10-26 15:51:18','2020-10-26 15:51:18');
INSERT INTO quotations VALUES('2','1002','2020-10-27','classic','1800000.00','99999999.99','0.00','','leads','2','1','2020-10-27 18:08:03','2020-10-27 18:08:03');
INSERT INTO quotations VALUES('3','1003','2020-10-31','classic-red','900000.00','99999999.99','0.00','','leads','3','1','2020-10-31 19:15:44','2020-10-31 19:15:44');
INSERT INTO quotations VALUES('4','1004','2020-11-04','classic','900000.00','99999999.99','0.00','','leads','4','1','2020-11-04 17:04:52','2020-11-04 17:04:52');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO repeating_transactions VALUES('1','2020-10-27','2','2','expense','dr','100000.00','10.00','2','4','','','1','0','0','2020-10-27 18:39:33','2020-10-27 18:39:33');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO services VALUES('1','8','700000.00','inclusive','','','2020-11-03 20:41:34','2020-11-03 20:41:34');



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
INSERT INTO settings VALUES('26','promo_video_url','','2020-10-25 13:15:15','2020-10-28 17:47:03');
INSERT INTO settings VALUES('27','contact_email','','2020-10-25 13:15:15','2020-10-28 17:47:03');
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
INSERT INTO settings VALUES('43','live_chat','enabled','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('44','PUSHER_APP_ID','1072663','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('45','PUSHER_KEY','b789d84d93d546f70bbf','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('46','PUSHER_SECRET','451304f85ea8d117cd16','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('47','PUSHER_CLUSTER','ap1','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('48','chat_max_upload_size','1024','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('49','chat_file_type_supported','png,jpg,jpeg,doc,pdf','2020-10-26 07:32:42','2020-11-05 00:35:08');
INSERT INTO settings VALUES('50','favicon','file_1603896913.png','2020-10-26 07:33:20','2020-10-28 18:25:13');
INSERT INTO settings VALUES('51','logo','logo.png','2020-10-26 07:33:25','2020-10-28 18:25:14');
INSERT INTO settings VALUES('52','currency_update_time','2020-11-04 23:38:17','2020-10-26 10:37:05','2020-11-04 23:38:17');
INSERT INTO settings VALUES('53','currency','IRR','2020-10-26 10:55:37','2020-10-26 21:56:10');
INSERT INTO settings VALUES('54','currency_position','right','2020-10-26 10:55:37','2020-10-26 21:56:10');
INSERT INTO settings VALUES('55','home_banner_image','file_1603894623.jpg','2020-10-26 14:32:41','2020-10-28 17:47:03');
INSERT INTO settings VALUES('56','sub_banner_image','file_1603894623.jpg','2020-10-26 14:32:41','2020-10-28 17:47:03');
INSERT INTO settings VALUES('57','website_copyright','a:2:{s:7:\"English\";s:77:\"تمامی حقوق فناوران هوشمند محفوظ می باشد.1399\";s:7:\"Spanish\";s:0:\"\";}','2020-10-26 14:36:06','2020-10-26 14:36:06');
INSERT INTO settings VALUES('58','about_content','a:1:{s:7:\"English\";s:571:\"<p style=\"text-align: right;\">وقتی ثروت&zwnj; های بزرگ به دست برخی مردم می&zwnj;افتد در پرتو آن نیرومند می&zwnj;شوند و در سایهٔ نیرومندی و ثروت خیال می&zwnj; کنند که می&zwnj;توانند در خارج از وطن خود زندگی نمایند و خوشبخت و سرافراز باشند ولی به زودی می&zwnj; فهمند که اشتباه کرده&zwnj; اند و عظمت هر ملتی بر روی خرابه&zwnj; های وطن خودش می&zwnj;باشد و بس!</p>\";}','2020-10-26 14:37:43','2020-10-28 17:47:17');
INSERT INTO settings VALUES('59','about_image','file_1603894637.jpg','2020-10-26 14:37:59','2020-10-28 17:47:17');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO staff_roles VALUES('1','کارشناس فروش','','1','2020-10-26 10:38:28','2020-10-26 10:38:28');
INSERT INTO staff_roles VALUES('2','حسابدار','','1','2020-11-04 17:11:00','2020-11-04 17:11:00');



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO task_statuses VALUES('1','سیبیسب','#000000','2','1','2020-10-26 20:34:42','2020-10-26 20:34:42');
INSERT INTO task_statuses VALUES('2','پیگیری','#c5b513','5','1','2020-10-27 18:25:51','2020-10-27 18:25:51');



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO tasks VALUES('2','وظیفه جدید','','1','1','high','2','2','2020-11-03','2020-11-25','','2','1','2020-11-03 12:41:56','2020-11-03 12:41:56');



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO timesheets VALUES('1','2020-10-31 00:00:00','2020-11-01 00:00:00','24:00:00','2','1','2','نیتبیب','1','2020-10-31 11:42:29','2020-11-03 12:42:20');



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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO transactions VALUES('1','2020-10-25','1','1','income','cr','150000.00','167481.75','1','0','0','0','0','2','شسیسیسش','1603646238کپی شناسنامه.jpg','شسیس شسی ضصی صی','1','2020-10-25 20:47:18','2020-10-25 20:47:18');
INSERT INTO transactions VALUES('2','2020-10-26','1','1','income','cr','100000.00','100000.00','1','1','0','0','0','2','','1603696288PAMA.png','','1','2020-10-26 10:41:28','2020-10-26 10:41:28');
INSERT INTO transactions VALUES('3','2020-10-26','1','1','income','cr','4400000.00','4400000.00','1','1','0','0','0','2','','','','1','2020-10-26 12:15:35','2020-10-26 12:15:35');
INSERT INTO transactions VALUES('4','2020-10-26','1','2','expense','dr','1000000.00','1000000.00','2','0','0','0','0','4','','1603811314یارانه خودم.jpg','یادداشت','1','2020-10-27 18:38:34','2020-10-27 18:38:34');
INSERT INTO transactions VALUES('5','2020-10-31','1','1','income','cr','1000000.00','1000000.00','2','2','0','0','0','4','','','','1','2020-10-31 19:13:03','2020-10-31 19:13:03');



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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('1','کامیل میرزایی','info@kaminfo.ir','2020-10-25 09:38:20','$2y$10$X6q.78iaT0dCuNCen9eXG.5vcbNDJHP02sj7HGtRQAN7JVqFVFc5G','admin','0','کامیل میرزایی1603893181.jpg','1','','0','','2020-10-25 09:38:20','2020-10-28 17:23:01');
INSERT INTO users VALUES('2','کامیل میرزایی','mirzae.uast@gmail.com','2020-10-25 17:24:13','$2y$10$SUrYV9olp5jnwyZh65jLYOzWAxjR7svwb6Oveqi4LDM/S3yWhl5Wa','user','0','کامیل میرزایی1603889149.jpg','1','','1','','2020-10-25 17:24:13','2020-10-28 16:15:49');
INSERT INTO users VALUES('4','موسسه مرکزی - تهران','info2@kaminfo.ir','2020-10-26 20:02:01','$2y$10$7oGh6rITf3CfatWW7IS5IOHhOP6TvteJbGELmN9fCNytAPnOlUIUi','user','0','موسسه مرکزی - تهران1603891926.png','1','','2','','2020-10-26 20:02:01','2020-10-28 17:02:06');
INSERT INTO users VALUES('5','سروه  میرزائی','soro@gmail.com','2020-10-27 18:21:19','$2y$10$ud.VOjORObWL/ySeeSlZ1O78aryrlLkrlpb64hiEaYoAg9IlWjRVm','staff','1','profile_1604132373.jpg','1','','1','','2020-10-27 18:21:19','2020-11-04 23:56:53');
INSERT INTO users VALUES('6','خانم قادری','ghaderi@gmail.com','2020-10-27 19:46:40','$2y$10$p8U2.eY.4qnZbBpuAzq5/eU3GnkVNRasRX4sc.oksyE14yn4QJaZG','staff','1','profile_1604132386.jpg','1','','1','','2020-10-27 19:46:40','2020-10-31 11:49:46');
INSERT INTO users VALUES('7','خانم قادری2','ghaderi2@gmail.com','2020-10-27 19:53:39','$2y$10$6X4.D1K0hTo/UYh.k79wceRy3WKk2cTzmC0CvZflTRZHLelfbg/Oi','staff','1','profile_1604132399.jpg','1','','1','','2020-10-27 19:53:39','2020-10-31 11:49:59');
INSERT INTO users VALUES('8','پویا','poya@poya.com','2020-11-04 17:12:26','$2y$10$Um/gLKI4MmmlUXvK5Z5EJu55TRW3S/vvLTb2Wl4ZuLxL.L4pvHUmO','staff','2','profile_1604497346.png','1','','1','','2020-11-04 17:12:27','2020-11-04 17:12:27');



