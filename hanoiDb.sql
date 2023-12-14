-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: .hanoidb
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `registration_code` varchar(6) NOT NULL,
  `login_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (1,'Horacio','Yakovich','attendee1','hyakovich0@va.gov','35DGZX',''),(2,'Nanon','Darthe','attendee2','ndarthe1@list-manage.com','UP243M',''),(3,'Rutter','Wauchope','rwauchope2','rwauchope2@yolasite.com','B35B6T',''),(4,'Lizette','Caroll','lcaroll3','lcaroll3@icq.com','6F7TRJ',''),(5,'Margit','Alvar','malvar4','malvar4@woothemes.com','YZ4U26',''),(6,'Cosme','Minogue','cminogue5','cminogue5@techcrunch.com','WA322T',''),(7,'Cal','Penton','cpenton6','cpenton6@weibo.com','9CY9AR',''),(8,'Corbet','Penton','cleamon7','cleamon7@pen.io','7BDK38',''),(9,'Cacilie','O\'Calleran','cocalleran8','cocalleran8@wunderground.com','38NTEF',''),(10,'Ephrem','Healey','ehealey9','ehealey9@dailymail.co.uk','CNXW26',''),(11,'Averil','Arnson','aarnsona','aarnsona@princeton.edu','36PQWG',''),(12,'Albertina','Dunk','adunkb','adunkb@ifeng.com','36PQWG',''),(13,'Dwain','Wharlton','dwharltonc','dwharltonc@telegraph.co.uk','52425V',''),(14,'Cassondra','Doxey','cdoxeyd','cdoxeyd@statcounter.com','14FCDF',''),(15,'Cybil','Lethibridge','clethibridgee','clethibridgee@marriott.com','YS48D2',''),(16,'Ardelis','Keinrat','akeinratf','akeinratf@live.com','E22ARB',''),(17,'Celestyna','Andresen','candreseng','candreseng@example.com','QZHKHS',''),(18,'Rosamond','Walkinshaw','rwalkinshawh','rwalkinshawh@canalblog.com','8ND9MB',''),(19,'Jody','Balbeck','jbalbecki','jbalbecki@dion.ne.jp','XA5ENK',''),(20,'Dieter','Curneen','dcurneenj','dcurneenj@netscape.com','KJ7FW3',''),(21,'Mendy','Oland','molandk','molandk@joomla.org','7YTD4C',''),(22,'Otho','Muddicliffe','omuddicliffel','omuddicliffel@360.cn','NMJ2C7',''),(23,'Lela','Beardsall','lbeardsallm','lbeardsallm@arstechnica.com','H6PZAS',''),(24,'Elvis','Grocutt','egrocuttn','egrocuttn@etsy.com','ABYZT7',''),(25,'Robbert','Dering','rderingo','rderingo@github.com','116E2H',''),(26,'Joseph','Welham','jwelhamp','jwelhamp@unesco.org','16FCNU',''),(27,'Gianna','Lantuffe','glantuffeq','glantuffeq@forbes.com','13JY5X',''),(28,'Keenan','Agney','kagneyr','kagneyr@cnbc.com','8J3DUE',''),(29,'Hamilton','Cortnay','hcortnays','hcortnays@java.com','JF3J6Q',''),(30,'Maury','Gaymar','mgaymart','mgaymart@so-net.ne.jp','XDRNBH',''),(31,'Timothea','','tryleu','tryleu@e-recht24.de','HEZC55',''),(32,'Gianna','Eallis','geallisv','geallisv@istockphoto.com','PGWA3A',''),(33,'Lew','Skeats','lskeatsw','lskeatsw@blogger.com','HXUQ6N',''),(34,'Ulrich','Mackrill','umackrillx','umackrillx@noaa.gov','569BAJ',''),(35,'Emelda','Nash','enashy','enashy@themeforest.net','XY88A5',''),(36,'Perl','Markos','pmarkosz','pmarkosz@plala.or.jp','RTWGXZ',''),(37,'Jessica','Newnham','jnewnham10','jnewnham10@qq.com','2T699N',''),(38,'Mathe','Colman','mcolman11','mcolman11@jiathis.com','QK9UUV',''),(39,'Calhoun','Flamank','cflamank12','cflamank12@desdev.cn','575JTN',''),(40,'Carly','Sawday','csawday13','csawday13@amazon.co.jp','TDV4V3',''),(41,'Westley','Pontin','wpontin14','wpontin14@chron.com','4MP83M',''),(42,'Evered','Donativo','edonativo15','edonativo15@youtube.com','CKN7VY',''),(43,'Bonny','Oldridge','boldridge16','boldridge16@de.vu','9AHQ3U',''),(44,'Beverlee','Fernando','bfernando17','bfernando17@youtu.be','PW67GY',''),(45,'Darbee','Bovaird','dbovaird18','dbovaird18@mysql.com','SR5GXU',''),(46,'Codi','Dumelow','cdumelow19','cdumelow19@hexun.com','VR11S9',''),(47,'Joycelin','Boston','jboston1a','jboston1a@ed.gov','KNN25J',''),(48,'Terrance','Tyrrell','ttyrrell1b','ttyrrell1b@noaa.gov','U7XT92',''),(49,'Rodolphe','Caird','rcaird1c','rcaird1c@ustream.tv','3GFX1S',''),(50,'Karry','Coysh','kcoysh1d','kcoysh1d@tuttocitta.it','MN7TNY',''),(51,'Elizabeth','Tamas','etamas1e','etamas1e@npr.org','5KYK1U',''),(52,'Claudius','Pennetti','cpennetti1f','cpennetti1f@mac.com','ZDQEF4',''),(53,'Teddie','MacRury','tmacrury1g','tmacrury1g@marketwatch.com','ZX64B6',''),(54,'Denys','Harteley','dharteley1h','dharteley1h@elpais.com','8SDA34',''),(55,'Moises','Satch','msatch1i','msatch1i@google.es','X99PFB',''),(56,'Cassandra','Fairfull','cfairfull1j','cfairfull1j@bandcamp.com','ST7J7Y',''),(57,'Cody','Tureville','ctureville1k','ctureville1k@tuttocitta.it','CRF7MS',''),(58,'Kate','Petranek','kpetranek1l','kpetranek1l@youtube.com','NWYTXB',''),(59,'Austen','Pobjoy','apobjoy1m','apobjoy1m@google.pl','HW88CJ',''),(60,'Orville','Oliver','ooliver1n','ooliver1n@sbwire.com','F8J8G6',''),(61,'Ab','McNalley','amcnalley1o','amcnalley1o@blogtalkradio.com','9UHJDW',''),(62,'Toddy','Blight','tblight1p','tblight1p@cyberchimps.com','NUHA6B',''),(63,'Laureen','Zarfai','lzarfai1q','lzarfai1q@wired.com','NS4UF1',''),(64,'Dulciana','Sylvaine','dsylvaine1r','dsylvaine1r@engadget.com','C9VYMS',''),(65,'Elisabeth','Swanwick','eswanwick1s','eswanwick1s@hibu.com','U4BSTQ',''),(66,'Elliott','Cullerne','ecullerne1t','ecullerne1t@hc360.com','9CP98W',''),(67,'Lynnett','Hassell','lhassell1u','lhassell1u@loc.gov','JE5BDY',''),(68,'Lenka','McOmish','lmcomish1v','lmcomish1v@ocn.ne.jp','RN7M68',''),(69,'Gisela','Jorger','gjorger1w','gjorger1w@google.co.jp','QCWXHS',''),(70,'Shoshana','Usherwood','susherwood1x','susherwood1x@google.es','JT198X',''),(71,'Florrie','Metcalf','fmetcalf1y','fmetcalf1y@bbc.co.uk','T4UVFX',''),(72,'Kellina','Reims','kreims1z','kreims1z@apache.org','DTC86N',''),(73,'Sybille','Kehoe','skehoe20','skehoe20@mlb.com','W5GAJB',''),(74,'Mabel','Carwithan','mcarwithan21','mcarwithan21@yolasite.com','AG5Z69',''),(75,'Deane','Haydn','dhaydn22','dhaydn22@netvibes.com','TV3KHN',''),(76,'Archy','Earngy','aearngy23','aearngy23@typepad.com','86KPG5',''),(77,'Clareta','Jesteco','cjesteco24','cjesteco24@ucoz.ru','U5AWGG',''),(78,'Delinda','Barrell','dbarrell25','dbarrell25@globo.com','SJGNWV',''),(79,'Theresina','Rummins','trummins26','trummins26@marketwatch.com','TM3AQB',''),(80,'Carine','Garwill','cgarwill27','cgarwill27@icq.com','THYSQE',''),(81,'Mercedes','Boncore','mboncore28','mboncore28@phoca.cz','W5ZYMV',''),(82,'Sauveur','Schutt','sschutt29','sschutt29@craigslist.org','CCGXZN',''),(83,'Kalila','Balnave','kbalnave2a','kbalnave2a@webeden.co.uk','UZX4QB',''),(84,'Elsie','Pasque','epasque2b','epasque2b@ehow.com','NXVM5A',''),(85,'Omar','Kimmons','okimmons2c','okimmons2c@huffingtonpost.com','38WZ3U',''),(86,'Theresita','Mara','tmara2d','tmara2d@youtu.be','2DN8B2',''),(87,'Dina','McGoldrick','dmcgoldrick2e','dmcgoldrick2e@go.com','NAW3V7',''),(88,'Ertha','Moynihan','emoynihan2f','emoynihan2f@issuu.com','4M5QVU',''),(89,'Averell','Perocci','aperocci2g','aperocci2g@rakuten.co.jp','CNTMS8',''),(90,'Rosalind','Osgarby','rosgarby2h','rosgarby2h@mlb.com','UPU53U',''),(91,'Nichole','Ingre','ningre2i','ningre2i@geocities.com','YERUD9',''),(92,'Jonah','Servant','jservant2j','jservant2j@people.com.cn','X1GFCD',''),(93,'Carmella','Allmann','callmann2k','callmann2k@infoseek.co.jp','H2USV6',''),(94,'Dru','Hathorn','dhathorn2l','dhathorn2l@smh.com.au','GB9MTW',''),(95,'Kory','D\'Alesco','kdalesco2m','kdalesco2m@netlog.com','1EHX7V',''),(96,'Orella','Pollastrone','opollastrone2n','opollastrone2n@biblegateway.com','445VMJ',''),(97,'Noella','Gopsall','ngopsall2o','ngopsall2o@geocities.jp','2TUFJH',''),(98,'Elyssa','Le Cornu','elecornu2p','elecornu2p@ebay.com','MN5S89',''),(99,'Bruno','Linkin','blinkin2q','blinkin2q@ocn.ne.jp','NR9PN5',''),(100,'Staffard','Kamienski','skamienski2r','skamienski2r@wp.com','W6QKP3',''),(101,'Elliott','Seppey','eseppey0','eseppey0@icio.us','AWLEV2',''),(102,'Veronike','Heyworth','vheyworth1','vheyworth1@cargocollective.com','2T67NH',''),(103,'Barbara','Gauntlett','bgauntlett2','bgauntlett2@webmd.com','TTKUU0',''),(104,'Alphard','Abramovic','aabramovic3','aabramovic3@apache.org','PC9XMT',''),(105,'Arlen','Lymbourne','alymbourne4','alymbourne4@scientificamerican.com','4KG2OQ',''),(106,'Thadeus','Lemm','tlemm5','tlemm5@squidoo.com','WJBO8C',''),(107,'Cooper','Cordero','ccordero6','ccordero6@loc.gov','S77FXU',''),(108,'Janel','Gelling','jgelling7','jgelling7@reuters.com','2TIIN8',''),(109,'Angy','Yoell','ayoell8','ayoell8@theglobeandmail.com','017OVA',''),(110,'Montague','Dahill','mdahill9','mdahill9@zimbio.com','1AYTEX',''),(111,'Briny','McAlester','bmcalestera','bmcalestera@goodreads.com','07RP55',''),(112,'Travers','Dowyer','tdowyerb','tdowyerb@ow.ly','4U2HZ4',''),(113,'Grantley','Chalice','gchalicec','gchalicec@go.com','DVI7LY',''),(114,'Cleon','Klinck','cklinckd','cklinckd@whitehouse.gov','39FVFX',''),(115,'Freddy','Gravestone','fgravestonee','fgravestonee@state.tx.us','MKXX2I',''),(116,'Guglielmo','Bruggeman','gbruggemanf','gbruggemanf@bigcartel.com','D0FT2P',''),(117,'Legra','Briat','lbriatg','lbriatg@bloglines.com','82VTBG',''),(118,'Christoph','Vardey','cvardeyh','cvardeyh@soup.io','TWF9S2',''),(119,'Nicolina','Greated','ngreatedi','ngreatedi@walmart.com','HOMPX2',''),(120,'Jerrie','Goacher','jgoacherj','jgoacherj@purevolume.com','2J0E6O',''),(121,'Alvie','Dello','adellok','adellok@vk.com','8JB7O5',''),(122,'Genia','Maylor','gmaylorl','gmaylorl@cloudflare.com','06AUEO',''),(123,'Annalise','Marty','amartym','amartym@answers.com','JD53JK',''),(124,'Maia','Gridley','mgridleyn','mgridleyn@4shared.com','612A8N',''),(125,'Zolly','O\'Deoran','zodeorano','zodeorano@hibu.com','RD4P3B',''),(126,'Adelind','Feander','afeanderp','afeanderp@g.co','I5V3CG',''),(127,'Melisa','Spillman','mspillmanq','mspillmanq@seattletimes.com','VZ65P4',''),(128,'Aurora','Ourry','aourryr','aourryr@cnbc.com','UHJZ6L',''),(129,'Ricoriki','Crosio','rcrosios','rcrosios@amazon.com','BNNV5D',''),(130,'Millard','Timmens','mtimmenst','mtimmenst@google.nl','WB13UW',''),(131,'Colet','Medwell','cmedwellu','cmedwellu@gravatar.com','KYN0OZ',''),(132,'Karly','Mosconi','kmosconiv','kmosconiv@icio.us','6ESIHL',''),(133,'Lotti','Walicki','lwalickiw','lwalickiw@chicagotribune.com','CBXERI',''),(134,'Alejandrina','Ege','aegex','aegex@usnews.com','6GSD4Z',''),(135,'Hamish','Reffe','hreffey','hreffey@t.co','2AHTPV',''),(136,'Ilysa','Kirtlan','ikirtlanz','ikirtlanz@t-online.de','JR6ZHP',''),(137,'Franchot','Gounot','fgounot10','fgounot10@mapquest.com','2UT25Y',''),(138,'Eduino','Owers','eowers11','eowers11@wisc.edu','UK0U08',''),(139,'Latrina','Smylie','lsmylie12','lsmylie12@intel.com','QHBUSR',''),(140,'Grannie','Scane','gscane13','gscane13@amazon.com','OFLD2M',''),(141,'Leyla','McKinn','lmckinn14','lmckinn14@acquirethisname.com','RYNFQV',''),(142,'Tiphany','Thomsen','tthomsen15','tthomsen15@apple.com','FVAWDX',''),(143,'Olga','Spera','ospera16','ospera16@ox.ac.uk','OOLAR7',''),(144,'Lesly','Haighton','lhaighton17','lhaighton17@purevolume.com','6PWUVR',''),(145,'Maressa','Budd','mbudd18','mbudd18@ezinearticles.com','E201WI',''),(146,'Kennedy','Burnyate','kburnyate19','kburnyate19@ycombinator.com','OO1QW3',''),(147,'Timotheus','Skupinski','tskupinski1a','tskupinski1a@people.com.cn','BQ699Y',''),(148,'Birdie','Rase','brase1b','brase1b@ft.com','XRSBNI',''),(149,'Orelie','Lamberton','olamberton1c','olamberton1c@aboutads.info','NKFTLI',''),(150,'Aleece','Champney','achampney1d','achampney1d@sciencedirect.com','3OF96G',''),(151,'Duke','Wethey','dwethey1e','dwethey1e@nationalgeographic.com','WS5GJ4',''),(152,'Colline','Jako','cjako1f','cjako1f@netscape.com','RH39JQ',''),(153,'Benjamen','Walak','bwalak1g','bwalak1g@unicef.org','U56D8I',''),(154,'Gannie','Chippendale','gchippendale1h','gchippendale1h@wikimedia.org','PY3C9L',''),(155,'Prue','Lowther','plowther1i','plowther1i@buzzfeed.com','2GD2YD',''),(156,'Kenneth','Ellsworthe','kellsworthe1j','kellsworthe1j@privacy.gov.au','YVSTHM',''),(157,'Myca','Wigfall','mwigfall1k','mwigfall1k@wufoo.com','OC8GWR',''),(158,'Alphard','Mosten','amosten1l','amosten1l@sitemeter.com','ILC3YR',''),(159,'Merna','Biggs','mbiggs1m','mbiggs1m@webs.com','VPQ0SI',''),(160,'Norri','Francklyn','nfrancklyn1n','nfrancklyn1n@lycos.com','B8QHOW',''),(161,'Stewart','Yesenin','syesenin1o','syesenin1o@dion.ne.jp','QW21I9',''),(162,'Maggee','Penni','mpenni1p','mpenni1p@ocn.ne.jp','Q6XBTW',''),(163,'Netti','Capnerhurst','ncapnerhurst1q','ncapnerhurst1q@weibo.com','A51GMF',''),(164,'Ross','Agate','ragate1r','ragate1r@dion.ne.jp','R8WZ29',''),(165,'Colas','Amthor','camthor1s','camthor1s@usatoday.com','A3LCGE',''),(166,'Kylila','Artis','kartis1t','kartis1t@ezinearticles.com','ASNTOH',''),(167,'Arie','Symcox','asymcox1u','asymcox1u@squarespace.com','MJY3SS',''),(168,'Desiree','Strand','dstrand1v','dstrand1v@angelfire.com','36USDT',''),(169,'Verine','Alabastar','valabastar1w','valabastar1w@harvard.edu','TK5D2N',''),(170,'Ranna','Abbott','rabbott1x','rabbott1x@usgs.gov','NE6GPK',''),(171,'Cobbie','Minger','cminger1y','cminger1y@guardian.co.uk','F7IVR1',''),(172,'Lorelle','Cuvley','lcuvley1z','lcuvley1z@pbs.org','OD3LHV',''),(173,'Sorcha','MacCracken','smaccracken20','smaccracken20@tinyurl.com','B2N8C8',''),(174,'Prentice','Whitear','pwhitear21','pwhitear21@fastcompany.com','173XB6',''),(175,'Engracia','Burkin','eburkin22','eburkin22@blinklist.com','50FZKO',''),(176,'Anitra','Skirvin','askirvin23','askirvin23@yolasite.com','2USOJG',''),(177,'Giorgi','Guiraud','gguiraud24','gguiraud24@xinhuanet.com','M1SH4M',''),(178,'Christiana','Skene','cskene25','cskene25@dion.ne.jp','5IDFIM',''),(179,'Kandy','Sacks','ksacks26','ksacks26@last.fm','T627UE',''),(180,'Cleavland','Jowitt','cjowitt27','cjowitt27@technorati.com','VN8HWD',''),(181,'Florina','Bruckenthal','fbruckenthal28','fbruckenthal28@friendfeed.com','2DGK91',''),(182,'Phil','Isacoff','pisacoff29','pisacoff29@pinterest.com','574XNL',''),(183,'Darill','Spencer','dspencer2a','dspencer2a@hugedomains.com','BH5XL3',''),(184,'Emiline','Minico','eminico2b','eminico2b@dell.com','0QMMAZ',''),(185,'Chaddie','Sackur','csackur2c','csackur2c@sciencedirect.com','T6C0A1',''),(186,'Sindee','Woolfall','swoolfall2d','swoolfall2d@dagondesign.com','6680YX',''),(187,'Dulci','Kingdom','dkingdom2e','dkingdom2e@umn.edu','HV4WDS',''),(188,'Ermanno','Searson','esearson2f','esearson2f@freewebs.com','FPLVYR',''),(189,'Max','Rainbird','mrainbird2g','mrainbird2g@dailymotion.com','VRPD03',''),(190,'Alexander','Marusyak','amarusyak2h','amarusyak2h@chron.com','JWY6WJ',''),(191,'Gino','Matura','gmatura2i','gmatura2i@globo.com','EFFU83',''),(192,'Quent','Ragborne','qragborne2j','qragborne2j@google.co.jp','E21O8Y',''),(193,'Lauraine','Smithyman','lsmithyman2k','lsmithyman2k@samsung.com','WRGF38',''),(194,'Shirl','Tabbernor','stabbernor2l','stabbernor2l@posterous.com','J4EI3H',''),(195,'Aridatha','Hateley','ahateley2m','ahateley2m@desdev.cn','6RG0VT',''),(196,'Archibaldo','Boanas','aboanas2n','aboanas2n@google.com.au','DPBYBP',''),(197,'Dorisa','Heminsley','dheminsley2o','dheminsley2o@photobucket.com','PRGKEV',''),(198,'Benton','Jesson','bjesson2p','bjesson2p@comcast.net','ZEQCXQ',''),(199,'Billie','Windrus','bwindrus2q','bwindrus2q@istockphoto.com','HTPE2X',''),(200,'Silvie','Kaye','skaye2r','skaye2r@adobe.com','35UWIU','');
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_channels_events1_idx` (`event_id`),
  CONSTRAINT `fk_channels_events1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,1,'Lộ trình hướng tới xã hội thịnh vượng'),(2,1,'Kỹ năng cho nền kinh tế đang phát triển'),(3,1,'Hướng tới hệ sinh thái tự duy trì'),(4,2,'Có gì mới'),(5,2,'React cơ ản'),(6,3,'Có gì mới trong React'),(7,3,'General React'),(8,4,'Basics'),(9,4,'Deep dive'),(10,5,'General Angular'),(11,5,'Testing'),(12,5,'User Experience');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_tickets`
--

DROP TABLE IF EXISTS `event_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `cost` decimal(9,2) DEFAULT NULL,
  `special_validity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tickets_events_idx` (`event_id`),
  CONSTRAINT `fk_tickets_events` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_tickets`
--

LOCK TABLES `event_tickets` WRITE;
/*!40000 ALTER TABLE `event_tickets` DISABLE KEYS */;
INSERT INTO `event_tickets` VALUES (1,1,'TEST CREATE',123123.00,'abcdef'),(2,1,'Đặt sớm',110.00,'{\"type\":\"date\",\"date\":\"2019-06-01\"}'),(3,1,'VIP',550.00,'{\"type\":\"amount\",\"amount\":50}'),(4,2,'Thường',399.99,NULL),(5,2,'Học bổng',100.00,'{\"type\":\"amount\",\"amount\":30}'),(6,3,'Thường',450.00,NULL),(7,3,'Học bổng',100.00,'{\"type\":\"amount\",\"amount\":35}'),(8,4,'Thường',399.00,NULL),(9,4,'Đặt sớm',149.00,'{\"type\":\"date\",\"date\":\"2019-10-01\"}'),(10,4,'Tài trợ',599.00,NULL),(11,5,'Thường',450.00,NULL),(12,5,'Ghế hàng đầu',550.00,'{\"type\":\"amount\",\"amount\":60}');
/*!40000 ALTER TABLE `event_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizer_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_events_organizers1_idx` (`organizer_id`),
  CONSTRAINT `fk_events_organizers1` FOREIGN KEY (`organizer_id`) REFERENCES `organizers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,1,'Hội thảo2017','còn-2017','2023-01-01'),(2,1,'Hội thảo React 2018','react-conf-2018','2018-06-12'),(3,1,'Hội thảo React 2019','react-conf-2019','2019-10-24'),(4,2,'Vuejs Amsterdam','vuejs-2019','2020-02-14'),(5,2,'ng conf','ng-2019','2019-09-30'),(8,1,'New York','new-york','2023-01-01'),(9,1,'New York','new-york','2023-01-01'),(10,1,'new york','new-york','2023-01-01'),(11,1,'New York','new-york','2023-01-01'),(12,1,'New York','new-york','2023-01-01'),(13,1,'New York','new-york','2023-01-01'),(14,1,'New York 1','new-york','2023-01-01'),(15,1,'New York 1','new-york','2023-01-01'),(17,1,'Su kien uong tra cung Binz','uong-tra-cung-binz','2023-12-20'),(18,1,'An toi voi Imbra','an-toi-voi-imbra','2023-12-24');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizers`
--

DROP TABLE IF EXISTS `organizers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `slug` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizers`
--

LOCK TABLES `organizers` WRITE;
/*!40000 ALTER TABLE `organizers` DISABLE KEYS */;
INSERT INTO `organizers` VALUES (1,'Organizerdemo1','demo1','demo1@hanoiskills.org','7c4a8d09ca3762af61e59520943dc26494f8941b'),(2,'Organizerdemo2','demo2','demo2@hanoiskills.org','7c4a8d09ca3762af61e59520943dc26494f8941b');
/*!40000 ALTER TABLE `organizers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendee_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `registration_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registrations_attendees1_idx` (`attendee_id`),
  KEY `fk_registrations_tickets1_idx` (`ticket_id`),
  CONSTRAINT `fk_registrations_attendees1` FOREIGN KEY (`attendee_id`) REFERENCES `attendees` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_registrations_tickets1` FOREIGN KEY (`ticket_id`) REFERENCES `event_tickets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=703 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrations`
--

LOCK TABLES `registrations` WRITE;
/*!40000 ALTER TABLE `registrations` DISABLE KEYS */;
INSERT INTO `registrations` VALUES (1,51,5,'2019-03-11 11:37:12'),(2,31,5,'2019-06-28 23:33:25'),(3,62,5,'2019-05-24 21:46:26'),(4,13,5,'2019-05-21 11:37:52'),(5,77,5,'2019-02-09 04:30:16'),(6,82,5,'2019-05-14 07:50:21'),(7,68,5,'2019-04-02 21:12:11'),(8,27,5,'2019-01-16 07:54:35'),(9,49,5,'2019-01-03 11:07:43'),(10,16,5,'2019-04-08 16:27:38'),(11,45,5,'2019-03-08 05:47:44'),(12,63,5,'2019-05-11 11:15:30'),(13,30,5,'2019-02-01 20:30:43'),(14,78,5,'2019-04-05 18:22:24'),(15,67,5,'2019-04-14 20:25:45'),(16,40,5,'2019-05-12 00:59:58'),(17,83,5,'2019-03-12 05:54:22'),(18,79,5,'2019-03-21 01:36:47'),(19,17,5,'2019-06-21 05:01:50'),(20,81,5,'2019-02-04 05:33:33'),(21,75,5,'2019-05-10 18:20:30'),(22,8,5,'2019-05-18 20:59:44'),(23,46,5,'2019-03-13 14:09:22'),(24,64,5,'2019-03-07 16:28:14'),(25,80,5,'2019-06-19 15:24:30'),(26,25,5,'2019-03-06 21:06:00'),(27,53,5,'2019-03-08 18:17:24'),(28,48,5,'2019-04-30 18:03:42'),(29,84,5,'2019-03-19 12:03:45'),(30,69,5,'2019-05-06 02:31:14'),(31,100,7,'2019-02-22 15:24:17'),(32,28,7,'2019-05-25 04:29:21'),(33,5,7,'2019-07-22 16:22:22'),(34,9,7,'2019-02-15 15:17:17'),(35,23,7,'2019-03-16 05:11:31'),(36,72,7,'2019-02-26 00:29:48'),(37,84,7,'2019-07-26 07:48:31'),(38,80,7,'2019-05-02 23:22:58'),(39,3,7,'2019-06-10 10:34:35'),(40,51,7,'2019-06-14 08:36:37'),(41,22,7,'2019-01-10 00:38:04'),(42,8,7,'2019-03-01 15:22:13'),(43,98,7,'2019-01-09 13:03:25'),(44,41,7,'2019-04-15 03:12:24'),(45,77,7,'2019-06-12 16:34:34'),(46,70,7,'2019-03-02 17:24:41'),(47,38,7,'2019-02-13 16:55:27'),(48,78,7,'2019-02-11 04:11:51'),(49,83,7,'2019-06-24 11:50:52'),(50,65,7,'2019-05-07 10:37:13'),(51,92,7,'2019-05-23 18:24:45'),(52,67,7,'2019-04-18 03:20:42'),(53,53,7,'2019-02-23 16:22:41'),(54,74,7,'2019-02-14 00:04:15'),(55,50,7,'2019-03-17 10:10:28'),(56,33,7,'2019-04-07 05:32:26'),(57,55,7,'2019-07-26 03:49:28'),(58,39,7,'2019-04-15 11:39:16'),(59,82,7,'2019-07-18 16:47:10'),(60,52,7,'2019-05-15 17:53:53'),(61,95,7,'2019-01-04 07:19:41'),(62,37,7,'2019-06-20 23:39:05'),(63,76,7,'2019-05-02 18:27:19'),(64,15,7,'2019-04-23 22:36:26'),(65,2,1,'2019-04-11 11:33:19'),(66,2,11,'2019-02-23 13:45:17'),(67,15,12,'2019-04-01 13:49:53'),(68,42,12,'2019-04-11 15:30:02'),(69,44,12,'2019-03-19 16:30:34'),(70,50,12,'2019-07-26 18:33:12'),(71,45,12,'2019-06-20 01:50:34'),(72,93,12,'2019-01-16 06:37:14'),(73,58,12,'2019-06-04 20:42:56'),(74,41,12,'2019-06-09 10:02:44'),(75,29,12,'2019-02-24 15:17:26'),(76,54,12,'2019-05-26 10:50:12'),(77,56,12,'2019-06-26 17:47:52'),(78,31,12,'2019-02-02 01:23:53'),(79,20,12,'2019-07-18 22:38:54'),(80,9,12,'2019-06-20 00:57:53'),(81,83,12,'2019-02-04 01:44:21'),(82,8,12,'2019-01-02 22:05:50'),(83,60,12,'2019-06-25 16:34:38'),(84,11,12,'2019-02-16 16:05:47'),(85,94,12,'2019-03-16 00:07:03'),(86,43,12,'2019-03-14 09:57:38'),(87,85,12,'2019-04-28 08:50:45'),(88,48,12,'2019-01-18 14:05:21'),(89,66,12,'2019-03-16 19:38:12'),(90,49,12,'2019-03-13 08:00:25'),(91,28,12,'2019-05-07 10:35:55'),(92,14,12,'2019-03-17 08:44:43'),(93,10,12,'2019-02-18 08:56:51'),(94,12,12,'2019-06-01 15:55:28'),(95,70,12,'2019-05-25 10:09:31'),(96,46,12,'2019-05-01 11:10:45'),(97,63,12,'2019-02-10 18:22:26'),(98,62,12,'2019-05-11 14:58:29'),(99,67,12,'2019-07-16 03:46:20'),(100,13,12,'2019-05-06 09:36:50'),(101,17,12,'2019-04-06 01:24:10'),(102,33,2,'2019-05-15 20:04:15'),(103,18,2,'2019-05-14 06:03:06'),(104,76,1,'2019-06-14 06:39:24'),(105,79,2,'2019-01-18 18:48:06'),(106,59,2,'2019-02-06 04:21:32'),(107,52,2,'2019-02-18 22:26:49'),(108,69,2,'2019-01-14 04:19:11'),(109,99,2,'2019-04-16 11:47:38'),(110,84,2,'2019-04-09 19:41:45'),(111,88,2,'2019-01-18 03:18:20'),(112,49,2,'2019-04-02 09:00:30'),(113,98,3,'2019-04-20 20:36:25'),(114,39,2,'2019-03-26 08:13:15'),(115,60,2,'2019-05-28 04:58:18'),(116,6,1,'2019-06-14 08:04:34'),(117,48,2,'2019-02-22 13:07:13'),(118,46,2,'2019-03-27 08:26:57'),(119,30,1,'2019-04-28 15:41:15'),(120,85,2,'2019-02-21 21:15:30'),(121,9,1,'2019-06-23 12:14:45'),(122,80,1,'2019-04-07 00:01:55'),(123,50,2,'2019-01-26 08:15:58'),(124,62,2,'2019-03-21 13:47:39'),(125,54,2,'2019-04-15 17:43:26'),(126,199,1,'2019-05-26 08:27:51'),(127,7,2,'2019-01-05 14:35:39'),(128,89,2,'2019-03-16 04:19:37'),(129,53,1,'2019-06-28 00:01:34'),(130,51,2,'2019-05-04 14:33:07'),(131,4,1,'2019-06-27 00:43:56'),(132,94,2,'2019-04-25 08:43:48'),(133,95,3,'2019-05-23 15:21:41'),(134,31,2,'2019-01-23 07:20:26'),(135,65,2,'2019-04-21 01:27:42'),(136,96,2,'2019-04-10 01:41:21'),(137,42,2,'2019-04-13 02:18:00'),(138,78,1,'2019-05-18 09:48:03'),(139,26,2,'2019-04-18 17:39:53'),(140,34,1,'2019-05-27 21:51:13'),(141,91,1,'2019-06-12 17:55:32'),(142,24,1,'2019-05-03 16:55:32'),(143,93,2,'2019-03-05 12:39:08'),(144,67,1,'2019-06-21 02:05:11'),(145,57,2,'2019-04-23 16:39:32'),(146,11,1,'2019-06-18 04:51:31'),(147,19,1,'2019-06-14 10:23:52'),(148,56,3,'2019-05-24 07:26:45'),(149,86,1,'2019-06-05 17:07:57'),(150,71,1,'2019-05-04 21:32:34'),(151,58,2,'2019-04-01 11:50:55'),(152,70,2,'2019-04-10 14:15:58'),(153,68,2,'2019-04-26 07:29:03'),(154,8,1,'2019-05-27 01:52:31'),(155,87,2,'2019-02-03 03:41:34'),(156,16,3,'2019-04-01 07:46:03'),(157,29,2,'2019-02-20 07:55:16'),(158,40,2,'2019-03-07 11:21:35'),(159,74,2,'2019-04-12 11:38:14'),(160,17,2,'2019-03-27 12:27:24'),(161,13,2,'2019-05-10 09:50:46'),(162,20,2,'2019-01-28 05:20:50'),(163,47,2,'2019-02-14 01:26:38'),(164,77,2,'2019-03-16 19:36:01'),(165,10,3,'2019-05-07 03:23:16'),(166,97,2,'2019-03-28 00:34:04'),(167,28,2,'2019-04-26 03:28:14'),(168,22,1,'2019-06-17 21:45:55'),(169,36,2,'2019-04-16 15:48:51'),(170,43,2,'2019-04-25 16:38:16'),(171,21,1,'2019-06-02 21:02:45'),(172,14,3,'2019-03-28 11:11:46'),(173,27,1,'2019-06-19 06:10:37'),(174,32,2,'2019-01-10 12:39:16'),(175,81,2,'2019-03-24 21:16:53'),(176,90,1,'2019-04-14 06:25:17'),(177,66,1,'2019-06-25 03:44:10'),(178,75,3,'2019-01-01 03:33:49'),(179,35,2,'2019-04-22 05:03:20'),(180,45,2,'2019-03-12 17:33:40'),(181,37,2,'2019-01-22 12:20:30'),(182,44,3,'2019-04-19 21:37:31'),(183,41,2,'2019-01-26 19:02:11'),(184,82,2,'2019-01-04 14:42:30'),(185,72,2,'2019-03-11 17:33:15'),(186,25,2,'2019-04-07 01:00:00'),(187,15,2,'2019-02-15 12:53:06'),(188,63,2,'2019-01-14 17:58:42'),(189,92,1,'2019-04-03 13:33:52'),(190,83,2,'2019-01-03 14:43:33'),(191,73,2,'2019-02-04 18:14:01'),(192,64,2,'2019-03-23 16:31:45'),(193,55,2,'2019-01-15 12:40:41'),(194,5,2,'2019-04-27 09:17:51'),(195,61,1,'2019-05-07 15:21:54'),(196,23,1,'2019-05-26 04:38:15'),(197,172,2,'2019-02-20 11:38:01'),(198,157,1,'2019-05-21 12:50:58'),(199,113,2,'2019-01-04 01:13:32'),(200,196,2,'2019-02-09 19:39:15'),(201,186,2,'2019-03-21 22:45:01'),(202,189,2,'2019-02-02 21:46:48'),(203,148,2,'2019-02-11 14:49:20'),(204,135,2,'2019-02-09 20:27:04'),(205,174,2,'2019-01-18 07:49:42'),(206,122,3,'2019-05-04 19:17:21'),(207,162,2,'2019-01-20 16:50:03'),(208,120,2,'2019-03-11 02:43:40'),(209,175,2,'2019-02-12 09:49:27'),(210,159,2,'2019-04-23 16:00:57'),(211,198,2,'2019-01-13 20:00:29'),(212,178,2,'2019-03-13 05:52:31'),(213,103,1,'2019-05-07 06:03:23'),(214,105,2,'2019-03-03 03:02:34'),(215,184,2,'2019-01-27 04:07:49'),(216,187,1,'2019-01-27 08:04:47'),(217,115,3,'2019-05-21 18:29:13'),(218,121,2,'2019-02-18 05:51:35'),(219,133,1,'2019-04-06 02:04:28'),(220,108,1,'2019-05-23 10:18:40'),(221,109,1,'2019-04-02 11:58:13'),(222,107,2,'2019-01-17 03:57:16'),(223,110,2,'2019-01-16 03:04:21'),(224,188,2,'2019-01-28 02:24:12'),(225,177,3,'2019-06-11 11:19:13'),(226,182,1,'2019-05-14 12:22:25'),(227,192,3,'2019-05-18 05:09:50'),(228,197,1,'2019-06-13 22:35:33'),(229,123,2,'2019-04-25 18:43:05'),(230,171,1,'2019-04-22 10:54:18'),(231,153,1,'2019-06-22 02:03:40'),(232,165,2,'2019-01-22 19:16:41'),(233,164,1,'2019-04-09 14:19:46'),(234,147,2,'2019-02-03 15:26:20'),(235,143,2,'2019-02-21 13:07:01'),(236,195,2,'2019-02-16 01:53:51'),(237,145,1,'2019-06-08 10:09:53'),(238,117,2,'2019-01-23 17:29:05'),(239,170,3,'2019-03-10 05:15:12'),(240,144,1,'2019-03-18 19:31:44'),(241,136,2,'2019-01-23 16:05:02'),(242,141,2,'2019-03-23 13:17:35'),(243,176,1,'2019-06-19 11:25:07'),(244,155,3,'2019-05-07 12:18:27'),(245,154,1,'2019-05-04 04:26:00'),(246,151,2,'2019-04-26 03:09:35'),(247,146,1,'2019-06-26 14:47:05'),(248,129,2,'2019-03-28 14:03:04'),(249,130,2,'2019-01-05 12:37:36'),(250,183,2,'2019-01-21 10:43:40'),(251,131,1,'2019-06-07 16:32:46'),(252,140,3,'2019-03-09 16:32:37'),(253,119,2,'2019-01-08 01:02:46'),(254,158,1,'2019-06-12 11:52:19'),(255,102,3,'2019-06-13 03:16:56'),(256,179,1,'2019-04-25 11:53:10'),(257,116,2,'2019-03-20 17:34:16'),(258,161,2,'2019-01-15 11:37:07'),(259,156,3,'2019-06-28 17:50:23'),(260,180,2,'2019-02-25 08:25:57'),(261,152,2,'2019-02-05 07:41:04'),(262,169,2,'2019-02-25 14:44:33'),(263,160,2,'2019-02-22 12:38:37'),(264,190,1,'2019-06-06 12:57:23'),(265,106,1,'2019-05-11 12:26:40'),(266,118,2,'2019-02-05 17:13:14'),(267,114,3,'2019-05-06 11:07:50'),(268,139,1,'2019-05-23 06:37:23'),(269,173,1,'2019-05-07 02:00:35'),(270,185,3,'2019-04-17 08:49:17'),(271,191,1,'2019-06-01 16:13:52'),(272,124,2,'2019-04-21 20:07:44'),(273,138,2,'2019-03-14 01:53:24'),(274,167,1,'2019-04-11 09:10:50'),(275,101,2,'2019-01-20 22:40:28'),(276,168,2,'2019-03-26 00:12:55'),(277,134,2,'2019-02-25 13:23:06'),(278,132,3,'2019-05-14 07:44:17'),(279,128,1,'2019-06-17 02:09:44'),(280,193,1,'2019-05-14 09:08:55'),(281,190,4,'2019-05-17 18:08:53'),(282,176,4,'2019-04-26 15:28:10'),(283,100,4,'2019-03-19 19:52:49'),(284,104,4,'2019-06-16 04:27:34'),(285,133,4,'2019-05-10 09:44:54'),(286,146,4,'2019-03-19 22:15:05'),(287,119,4,'2019-05-27 09:11:24'),(288,173,4,'2019-06-28 09:19:09'),(289,169,4,'2019-04-11 07:32:48'),(290,111,4,'2019-06-24 08:45:03'),(291,99,4,'2019-03-10 10:38:31'),(292,152,4,'2019-03-22 08:11:26'),(293,85,4,'2019-03-23 11:41:47'),(294,170,4,'2019-05-18 21:03:17'),(295,182,4,'2019-05-02 12:14:27'),(296,93,4,'2019-06-06 06:08:09'),(297,138,4,'2019-05-27 16:38:52'),(298,135,4,'2019-04-26 20:36:03'),(299,153,4,'2019-04-25 11:26:34'),(300,174,4,'2019-04-11 03:43:12'),(301,181,4,'2019-03-18 08:08:12'),(302,175,4,'2019-05-24 12:16:26'),(303,101,4,'2019-02-09 18:48:20'),(304,134,4,'2019-02-23 06:44:16'),(305,163,4,'2019-04-12 06:11:57'),(306,167,4,'2019-06-09 14:36:01'),(307,156,4,'2019-02-27 17:23:52'),(308,183,4,'2019-04-09 09:03:38'),(309,185,4,'2019-03-28 21:48:16'),(310,154,4,'2019-02-14 16:51:18'),(311,103,4,'2019-01-23 11:56:13'),(312,124,4,'2019-03-18 02:57:22'),(313,90,4,'2019-03-28 07:26:31'),(314,193,4,'2019-01-19 09:20:14'),(315,180,4,'2019-05-20 21:01:15'),(316,164,4,'2019-06-14 14:03:55'),(317,127,4,'2019-03-23 19:48:53'),(318,128,4,'2019-03-24 22:12:31'),(319,108,4,'2019-04-27 16:09:11'),(320,143,4,'2019-02-11 03:54:10'),(321,141,4,'2019-01-27 17:17:33'),(322,118,4,'2019-06-21 20:06:50'),(323,91,4,'2019-01-26 00:48:57'),(324,144,4,'2019-01-06 07:37:19'),(325,199,4,'2019-03-10 04:35:00'),(326,98,4,'2019-01-28 12:19:21'),(327,114,4,'2019-04-04 13:48:07'),(328,192,4,'2019-05-27 03:50:14'),(329,120,4,'2019-01-10 20:35:57'),(330,142,4,'2019-01-09 01:44:40'),(331,196,4,'2019-05-13 00:54:53'),(332,155,4,'2019-01-07 06:11:24'),(333,96,4,'2019-03-23 06:09:12'),(334,137,4,'2019-02-25 12:07:49'),(335,116,4,'2019-01-09 08:10:25'),(336,110,4,'2019-01-21 03:26:34'),(337,186,4,'2019-05-22 17:25:05'),(338,88,4,'2019-03-19 04:29:07'),(339,113,4,'2019-03-07 22:41:17'),(340,117,4,'2019-01-21 05:00:04'),(341,139,4,'2019-03-16 10:09:21'),(342,105,4,'2019-06-21 06:04:32'),(343,168,4,'2019-04-07 22:07:48'),(344,122,4,'2019-05-09 20:21:52'),(345,115,4,'2019-06-03 15:46:04'),(346,151,4,'2019-01-13 17:19:31'),(347,198,4,'2019-04-01 16:13:21'),(348,187,4,'2019-02-06 16:36:05'),(349,136,4,'2019-04-02 01:26:08'),(350,161,4,'2019-06-05 20:58:55'),(351,89,4,'2019-04-03 00:27:25'),(352,166,4,'2019-01-19 09:04:50'),(353,121,4,'2019-01-04 11:56:40'),(354,191,4,'2019-02-10 01:01:09'),(355,147,4,'2019-03-01 19:19:28'),(356,125,4,'2019-06-24 02:39:09'),(357,132,4,'2019-04-09 15:26:06'),(358,95,4,'2019-06-24 02:48:07'),(359,177,4,'2019-02-15 00:19:28'),(360,106,4,'2019-02-19 10:31:54'),(361,160,4,'2019-04-25 13:58:55'),(362,130,4,'2019-02-09 12:15:39'),(363,178,4,'2019-06-22 07:40:49'),(364,197,4,'2019-02-02 12:26:09'),(365,94,4,'2019-04-14 15:03:57'),(366,188,4,'2019-04-24 06:25:57'),(367,123,4,'2019-06-20 16:19:25'),(368,184,4,'2019-04-04 07:04:05'),(369,131,4,'2019-01-16 03:13:06'),(370,165,4,'2019-02-14 11:36:57'),(371,145,4,'2019-05-16 18:06:36'),(372,126,4,'2019-01-23 20:53:28'),(373,171,4,'2019-03-18 13:56:45'),(374,140,4,'2019-05-19 13:16:34'),(375,109,4,'2019-03-20 01:00:16'),(376,112,4,'2019-02-19 06:15:19'),(377,179,4,'2019-01-04 13:21:19'),(378,149,4,'2019-04-02 15:42:16'),(379,172,4,'2019-03-06 16:19:52'),(380,159,4,'2019-02-01 07:15:57'),(381,195,4,'2019-06-27 15:43:27'),(382,194,4,'2019-03-01 14:33:06'),(383,150,4,'2019-02-09 00:57:20'),(384,158,6,'2019-04-26 15:51:42'),(385,156,6,'2019-03-01 11:33:44'),(386,199,6,'2019-02-21 13:26:16'),(387,189,6,'2019-01-22 19:13:47'),(388,193,6,'2019-03-14 01:34:09'),(389,159,6,'2019-04-07 22:12:43'),(390,106,6,'2019-01-07 21:04:50'),(391,137,6,'2019-05-03 19:09:21'),(392,121,6,'2019-05-07 02:26:19'),(393,198,6,'2019-03-16 17:11:19'),(394,143,6,'2019-06-08 13:50:55'),(395,146,6,'2019-03-18 18:39:02'),(396,101,6,'2019-04-14 05:07:33'),(397,139,6,'2019-02-02 02:53:44'),(398,136,6,'2019-01-11 07:28:23'),(399,190,6,'2019-06-16 04:49:02'),(400,127,6,'2019-05-22 08:19:46'),(401,119,6,'2019-03-09 08:23:07'),(402,126,6,'2019-05-04 22:54:53'),(403,181,6,'2019-03-14 20:41:19'),(404,194,6,'2019-01-12 09:18:55'),(405,134,6,'2019-01-24 09:06:16'),(406,142,6,'2019-04-12 21:48:40'),(407,180,6,'2019-03-12 04:33:54'),(408,108,6,'2019-06-08 03:42:51'),(409,157,6,'2019-04-12 20:47:24'),(410,167,6,'2019-05-12 17:42:05'),(411,122,6,'2019-04-19 19:35:56'),(412,197,6,'2019-03-17 12:44:44'),(413,144,6,'2019-01-05 15:10:41'),(414,178,6,'2019-05-16 04:39:12'),(415,196,6,'2019-03-13 20:27:11'),(416,152,6,'2019-05-03 15:03:34'),(417,123,6,'2019-06-20 10:22:21'),(418,150,6,'2019-04-01 10:02:43'),(419,161,6,'2019-02-02 19:36:33'),(420,172,6,'2019-03-01 14:33:19'),(421,176,6,'2019-02-02 20:22:28'),(422,107,6,'2019-04-18 18:49:49'),(423,112,6,'2019-05-13 00:53:56'),(424,147,6,'2019-03-03 22:58:35'),(425,182,6,'2019-04-22 09:22:18'),(426,124,6,'2019-05-13 21:28:13'),(427,148,6,'2019-02-19 12:05:39'),(428,154,6,'2019-02-10 11:30:15'),(429,183,6,'2019-01-16 07:28:02'),(430,135,6,'2019-02-09 09:11:50'),(431,133,6,'2019-05-24 14:31:08'),(432,140,6,'2019-03-14 15:44:46'),(433,171,6,'2019-06-02 18:41:45'),(434,125,6,'2019-02-09 12:29:48'),(435,177,6,'2019-04-15 06:33:24'),(436,110,6,'2019-06-22 16:43:40'),(437,118,6,'2019-05-26 10:18:20'),(438,184,6,'2019-03-01 20:01:07'),(439,115,6,'2019-01-09 09:49:34'),(440,129,6,'2019-02-22 06:23:04'),(441,116,6,'2019-06-21 11:20:00'),(442,169,6,'2019-04-25 21:26:15'),(443,170,6,'2019-02-18 12:15:47'),(444,131,6,'2019-01-06 13:52:13'),(445,164,6,'2019-05-17 12:49:38'),(446,130,6,'2019-03-20 17:01:35'),(447,186,6,'2019-01-12 02:42:46'),(448,138,6,'2019-02-20 07:41:30'),(449,162,6,'2019-05-19 19:53:22'),(450,145,6,'2019-02-10 08:46:17'),(451,114,6,'2019-04-11 04:40:28'),(452,132,6,'2019-02-02 03:13:07'),(453,185,6,'2019-05-18 04:06:07'),(454,102,6,'2019-01-02 12:26:12'),(455,111,6,'2019-06-14 17:33:58'),(456,149,6,'2019-02-15 03:56:46'),(457,160,6,'2019-04-04 20:33:13'),(458,151,6,'2019-06-17 02:10:24'),(459,155,6,'2019-06-10 17:22:04'),(460,120,6,'2019-06-27 09:43:42'),(461,163,6,'2019-03-10 15:11:29'),(462,168,6,'2019-02-16 17:34:20'),(463,166,6,'2019-01-20 03:58:36'),(464,153,6,'2019-04-09 04:45:48'),(465,117,6,'2019-03-03 09:11:20'),(466,179,6,'2019-03-03 07:47:05'),(467,188,6,'2019-03-26 10:24:17'),(468,103,6,'2019-05-23 09:39:46'),(469,187,6,'2019-03-12 01:04:26'),(470,175,6,'2019-01-03 08:06:05'),(471,173,6,'2019-01-04 02:22:44'),(472,191,6,'2019-02-17 17:11:18'),(473,113,6,'2019-03-07 17:36:15'),(474,195,6,'2019-05-19 06:25:49'),(475,141,6,'2019-05-04 13:46:53'),(476,105,6,'2019-05-21 13:34:26'),(477,165,6,'2019-06-10 01:56:58'),(478,174,6,'2019-02-02 01:45:54'),(479,109,11,'2019-06-07 18:39:09'),(480,129,11,'2019-06-04 00:01:24'),(481,134,11,'2019-04-25 09:00:47'),(482,107,11,'2019-04-15 17:20:32'),(483,184,11,'2019-01-12 15:50:49'),(484,161,11,'2019-06-07 15:15:08'),(485,157,11,'2019-05-02 07:34:27'),(486,95,11,'2019-04-24 09:32:12'),(487,114,11,'2019-01-16 02:12:06'),(488,145,11,'2019-01-24 00:25:45'),(489,123,11,'2019-02-22 14:22:42'),(490,199,11,'2019-02-12 17:23:04'),(491,102,11,'2019-02-24 01:44:05'),(492,172,11,'2019-06-05 19:51:06'),(493,136,11,'2019-03-16 02:50:06'),(494,177,11,'2019-05-10 13:42:07'),(495,151,11,'2019-04-02 13:01:06'),(496,158,11,'2019-01-19 18:58:22'),(497,126,11,'2019-03-25 02:21:14'),(498,190,11,'2019-03-05 08:06:25'),(499,146,11,'2019-05-24 12:04:49'),(500,131,11,'2019-02-17 12:18:49'),(501,133,11,'2019-03-20 06:45:41'),(502,147,11,'2019-05-02 12:34:06'),(503,135,11,'2019-02-01 02:57:00'),(504,197,11,'2019-02-23 05:47:56'),(505,171,11,'2019-03-14 20:09:44'),(506,176,11,'2019-01-01 10:48:10'),(507,196,11,'2019-03-26 07:19:03'),(508,153,11,'2019-04-14 04:20:38'),(509,150,11,'2019-06-26 17:37:46'),(510,189,11,'2019-05-17 07:02:45'),(511,112,11,'2019-02-06 07:56:18'),(512,187,11,'2019-03-08 02:49:45'),(513,164,11,'2019-05-07 15:36:01'),(514,148,11,'2019-05-09 07:39:31'),(515,103,11,'2019-06-15 14:20:50'),(516,121,11,'2019-04-27 06:29:27'),(517,191,11,'2019-04-19 02:10:44'),(518,101,11,'2019-04-04 16:18:01'),(519,122,11,'2019-06-06 00:55:38'),(520,173,11,'2019-03-05 02:33:03'),(521,198,11,'2019-03-10 16:12:57'),(522,186,11,'2019-01-18 17:49:29'),(523,192,11,'2019-04-09 07:08:10'),(524,111,11,'2019-06-01 15:26:02'),(525,137,11,'2019-04-27 06:45:41'),(526,139,11,'2019-02-10 12:23:26'),(527,115,11,'2019-01-28 20:42:38'),(528,117,11,'2019-04-04 12:43:31'),(529,116,11,'2019-04-13 22:12:44'),(530,144,11,'2019-06-24 09:29:58'),(531,127,11,'2019-05-01 13:11:56'),(532,193,11,'2019-04-17 09:19:28'),(533,195,11,'2019-03-20 01:36:09'),(534,113,11,'2019-01-03 07:47:35'),(535,168,11,'2019-05-09 18:06:46'),(536,154,11,'2019-02-11 11:45:03'),(537,96,11,'2019-03-01 16:53:38'),(538,120,11,'2019-06-08 06:04:48'),(539,166,11,'2019-06-22 22:44:10'),(540,182,11,'2019-02-25 20:58:35'),(541,143,11,'2019-01-11 13:11:43'),(542,163,11,'2019-01-27 06:10:17'),(543,167,11,'2019-01-13 04:21:28'),(544,140,11,'2019-03-24 18:39:46'),(545,119,11,'2019-04-24 13:10:45'),(546,98,11,'2019-01-13 01:51:01'),(547,183,11,'2019-05-15 13:35:08'),(548,178,11,'2019-04-25 08:15:30'),(549,106,11,'2019-06-25 07:06:29'),(550,125,11,'2019-06-11 18:25:35'),(551,155,11,'2019-03-16 15:02:11'),(552,100,11,'2019-01-20 16:53:38'),(553,165,11,'2019-04-18 17:42:41'),(554,179,11,'2019-01-19 04:51:42'),(555,130,11,'2019-05-11 22:57:50'),(556,128,11,'2019-02-28 06:54:09'),(557,97,11,'2019-05-28 03:56:22'),(558,105,11,'2019-01-13 15:03:14'),(559,142,11,'2019-02-19 15:05:05'),(560,181,11,'2019-01-03 16:37:31'),(561,160,11,'2019-01-28 04:55:33'),(562,180,11,'2019-02-28 14:18:54'),(563,118,11,'2019-05-06 17:39:36'),(564,162,11,'2019-03-09 09:54:25'),(565,149,11,'2019-04-18 06:14:36'),(566,170,11,'2019-04-22 12:33:04'),(567,174,11,'2019-01-22 06:47:36'),(568,110,11,'2019-04-23 20:07:13'),(569,99,11,'2019-02-06 14:25:45'),(570,188,11,'2019-02-17 06:10:56'),(571,194,11,'2019-04-25 04:14:09'),(572,185,11,'2019-05-14 19:42:34'),(573,169,11,'2019-03-06 04:36:58'),(574,108,11,'2019-04-04 04:42:09'),(575,152,11,'2019-01-01 13:51:54'),(576,124,11,'2019-06-10 02:00:14'),(577,104,11,'2019-02-19 16:35:39'),(578,175,11,'2019-05-09 15:30:00'),(579,169,9,'2019-04-27 10:57:50'),(580,126,9,'2019-04-06 18:31:23'),(581,115,9,'2019-05-27 08:46:36'),(582,176,9,'2019-01-08 16:05:56'),(583,36,9,'2019-01-16 17:02:53'),(584,175,8,'2019-03-05 19:21:07'),(585,161,9,'2019-03-25 01:09:25'),(586,42,9,'2019-02-16 11:24:08'),(587,83,10,'2019-05-15 18:22:37'),(588,80,9,'2019-06-22 05:45:42'),(589,77,9,'2019-04-04 21:49:46'),(590,121,9,'2019-05-03 00:46:45'),(591,181,9,'2019-04-12 00:54:57'),(592,32,8,'2019-04-08 06:00:51'),(593,134,9,'2019-05-13 19:46:48'),(594,129,9,'2019-06-07 06:05:57'),(595,136,9,'2019-01-02 13:27:15'),(596,40,9,'2019-05-09 10:08:11'),(597,124,9,'2019-05-04 15:57:31'),(598,44,9,'2019-04-20 12:00:01'),(599,180,9,'2019-03-27 05:42:00'),(600,86,9,'2019-05-22 16:29:26'),(601,150,9,'2019-03-26 16:26:03'),(602,15,8,'2019-02-11 07:45:33'),(603,156,9,'2019-06-18 13:07:14'),(604,13,9,'2019-02-12 01:11:05'),(605,22,9,'2019-01-20 06:44:48'),(606,116,9,'2019-04-13 17:03:21'),(607,74,9,'2019-02-23 00:44:43'),(608,64,9,'2019-01-26 14:38:44'),(609,109,9,'2019-04-26 05:24:39'),(610,104,10,'2019-01-22 19:16:09'),(611,66,9,'2019-01-28 22:11:28'),(612,113,9,'2019-04-24 08:31:09'),(613,20,9,'2019-01-21 12:42:47'),(614,137,9,'2019-05-15 00:23:31'),(615,110,9,'2019-02-23 18:00:52'),(616,177,9,'2019-01-26 22:52:32'),(617,119,8,'2019-04-25 05:03:46'),(618,118,9,'2019-03-02 12:18:21'),(619,151,9,'2019-03-01 11:15:46'),(620,154,9,'2019-02-15 14:58:06'),(621,153,8,'2019-06-23 00:12:02'),(622,53,9,'2019-05-21 10:09:24'),(623,112,9,'2019-05-23 00:27:55'),(624,84,9,'2019-03-21 03:33:31'),(625,54,9,'2019-01-11 08:09:02'),(626,51,9,'2019-04-17 17:23:33'),(627,170,9,'2019-06-24 00:15:48'),(628,71,9,'2019-02-24 20:40:41'),(629,61,9,'2019-04-12 03:03:56'),(630,67,9,'2019-01-18 07:47:53'),(631,89,9,'2019-01-02 08:17:07'),(632,65,9,'2019-05-15 05:10:06'),(633,167,9,'2019-05-06 11:52:53'),(634,76,9,'2019-04-11 14:26:05'),(635,120,8,'2019-02-28 04:24:33'),(636,155,9,'2019-01-17 17:02:23'),(637,182,9,'2019-01-22 13:10:06'),(638,190,10,'2019-03-11 04:27:55'),(639,178,9,'2019-03-25 14:18:35'),(640,108,9,'2019-05-02 19:39:31'),(641,106,9,'2019-02-09 21:50:36'),(642,159,9,'2019-02-02 21:27:49'),(643,90,9,'2019-03-09 08:20:08'),(644,60,9,'2019-02-14 10:16:47'),(645,56,9,'2019-03-07 20:30:22'),(646,148,9,'2019-02-01 22:07:26'),(647,25,9,'2019-06-22 19:30:51'),(648,62,9,'2019-01-28 13:14:18'),(649,168,8,'2019-06-25 14:55:43'),(650,85,9,'2019-05-23 18:10:04'),(651,138,9,'2019-01-27 15:43:49'),(652,184,9,'2019-04-20 08:52:32'),(653,31,9,'2019-01-02 13:17:37'),(654,57,9,'2019-06-11 20:06:30'),(655,72,9,'2019-01-24 21:41:33'),(656,46,9,'2019-05-10 20:55:20'),(657,45,9,'2019-06-25 12:43:48'),(658,133,9,'2019-06-21 14:09:36'),(659,101,9,'2019-04-15 13:12:33'),(660,59,10,'2019-04-10 00:21:34'),(661,114,9,'2019-03-06 21:47:06'),(662,123,8,'2019-03-14 10:09:14'),(663,163,8,'2019-05-27 18:48:33'),(664,52,9,'2019-01-12 20:30:14'),(665,105,8,'2019-06-10 09:49:08'),(666,37,9,'2019-03-27 22:14:52'),(667,103,9,'2019-06-11 03:26:45'),(668,98,9,'2019-02-26 02:30:43'),(669,28,9,'2019-06-26 12:42:45'),(670,117,9,'2019-02-14 13:58:52'),(671,47,9,'2019-03-22 14:17:02'),(672,10,9,'2019-03-08 02:54:39'),(673,55,9,'2019-02-18 08:06:34'),(674,147,9,'2019-05-01 20:52:23'),(675,21,9,'2019-05-14 18:31:10'),(676,19,9,'2019-06-27 06:31:47'),(677,174,9,'2019-02-09 04:51:22'),(678,198,9,'2019-06-02 16:16:53'),(679,131,9,'2019-03-17 08:44:31'),(680,160,10,'2019-03-21 05:16:27'),(681,158,9,'2019-02-28 09:48:44'),(682,95,9,'2019-06-03 04:41:50'),(683,127,9,'2019-05-09 06:54:54'),(684,63,8,'2019-03-01 01:12:18'),(685,97,9,'2019-01-27 14:08:35'),(686,11,9,'2019-05-09 09:39:38'),(687,186,9,'2019-01-08 10:26:00'),(688,195,9,'2019-01-08 07:13:07'),(689,189,9,'2019-06-13 01:04:16'),(690,142,9,'2019-03-13 15:47:42'),(691,149,9,'2019-02-17 06:25:36'),(692,162,9,'2019-04-24 08:35:22'),(693,81,10,'2019-04-18 03:33:43'),(694,35,9,'2019-06-06 15:35:43'),(695,141,9,'2019-02-27 02:45:02'),(696,192,8,'2019-04-01 10:49:32'),(697,122,9,'2019-01-05 17:29:40'),(698,58,9,'2019-05-24 21:24:45'),(699,18,9,'2019-06-23 11:30:00'),(700,41,9,'2019-06-04 17:09:37'),(701,38,9,'2019-06-26 17:42:32'),(702,87,10,'2019-01-16 06:51:07');
/*!40000 ALTER TABLE `registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rooms_channels1_idx` (`channel_id`),
  CONSTRAINT `fk_rooms_channels1` FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,'Hội trường',380),(2,1,'Phòng 1.1',220),(3,2,'Phòng 1.3',210),(4,2,'Phòng 2.1',60),(5,3,'Phòng 3.1',190),(6,4,'Phòng chính',250),(7,5,'Phòng phụ',150),(8,6,'Sân khấu',350),(9,7,'Phòng 3',250),(10,8,'Phòng 1',214),(11,8,'Phòng 2',185),(12,9,'Phòng 3',73),(13,10,'Phòng chính',268),(14,10,'Phòng 1.2',106),(15,11,'Phòng 1.3',115),(16,12,'Phòng 1.4',167),(17,3,'TEST CREATE',234),(18,3,'TEST',234);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_registrations`
--

DROP TABLE IF EXISTS `session_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registration_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_registrations_has_sessions_sessions1_idx` (`session_id`),
  KEY `fk_registrations_has_sessions_registrations1_idx` (`registration_id`),
  CONSTRAINT `fk_registrations_has_sessions_registrations1` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_registrations_has_sessions_sessions1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=875 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_registrations`
--

LOCK TABLES `session_registrations` WRITE;
/*!40000 ALTER TABLE `session_registrations` DISABLE KEYS */;
INSERT INTO `session_registrations` VALUES (1,65,6),(2,65,11),(3,249,4),(4,120,4),(5,155,4),(6,251,4),(7,257,4),(8,179,4),(9,110,4),(10,163,4),(11,240,4),(12,216,4),(13,169,4),(14,111,4),(15,274,4),(16,200,4),(17,132,4),(18,136,4),(19,237,4),(20,253,4),(21,160,4),(22,121,4),(23,157,4),(24,180,4),(25,275,4),(26,116,4),(27,148,4),(28,214,4),(29,190,4),(30,146,4),(31,247,4),(32,229,4),(33,267,4),(34,195,4),(35,208,4),(36,258,4),(37,199,4),(38,194,4),(39,113,4),(40,234,4),(41,182,4),(42,210,4),(43,191,4),(44,226,4),(45,222,4),(46,172,4),(47,142,4),(48,198,4),(49,129,4),(50,235,4),(51,276,4),(52,162,4),(53,126,4),(54,189,4),(55,269,4),(56,114,4),(57,109,4),(58,206,4),(59,227,4),(60,114,11),(61,112,11),(62,174,11),(63,184,11),(64,252,11),(65,195,11),(66,262,11),(67,164,11),(68,263,11),(69,137,11),(70,139,11),(71,209,11),(72,132,11),(73,257,11),(74,236,11),(75,144,11),(76,115,11),(77,126,11),(78,186,11),(79,222,11),(80,280,11),(81,183,11),(82,151,11),(83,276,11),(84,246,11),(85,239,11),(86,113,11),(87,210,11),(88,267,11),(89,175,11),(90,214,11),(91,232,11),(92,237,11),(93,134,11),(94,272,11),(95,207,11),(96,261,11),(97,254,11),(98,208,11),(99,105,11),(100,219,11),(101,162,11),(102,247,11),(103,241,11),(104,127,11),(105,127,9),(106,111,11),(107,216,11),(108,269,11),(109,123,11),(110,256,11),(111,157,11),(112,271,11),(113,163,11),(114,218,11),(115,253,11),(116,152,11),(117,198,11),(118,245,11),(119,204,11),(120,225,11),(121,242,11),(122,270,11),(123,147,11),(124,104,11),(125,180,11),(126,122,11),(127,160,11),(128,226,11),(129,185,11),(130,125,11),(131,212,11),(132,156,11),(133,168,11),(134,158,11),(135,167,11),(136,140,11),(137,259,11),(138,161,11),(139,103,11),(140,238,11),(141,278,11),(142,149,11),(143,224,11),(144,251,11),(145,153,11),(146,131,11),(147,200,11),(148,203,11),(149,221,11),(150,169,11),(151,171,11),(152,193,11),(153,173,11),(154,136,11),(155,179,11),(156,124,11),(157,155,11),(158,150,11),(159,187,11),(160,206,11),(161,274,9),(162,176,9),(163,144,9),(164,230,9),(165,142,9),(166,124,9),(167,178,9),(168,269,9),(169,225,9),(170,175,9),(171,201,9),(172,108,9),(173,203,9),(174,235,9),(175,210,9),(176,258,9),(177,139,9),(178,223,9),(179,217,9),(180,200,9),(181,164,9),(182,165,9),(183,265,9),(184,122,9),(185,167,9),(186,182,9),(187,126,9),(188,199,9),(189,123,9),(190,118,9),(191,133,9),(192,104,9),(193,280,9),(194,113,9),(195,248,9),(196,177,9),(197,205,9),(198,197,9),(199,216,9),(200,238,9),(201,189,9),(202,180,9),(203,149,9),(204,279,9),(205,181,9),(206,174,9),(207,251,9),(208,193,9),(209,111,9),(210,232,9),(211,110,9),(212,166,9),(213,219,9),(214,236,9),(215,209,9),(216,179,9),(217,246,9),(218,267,9),(219,252,9),(220,160,9),(221,204,9),(222,120,9),(223,250,9),(224,250,11),(225,194,9),(226,198,9),(227,192,9),(228,255,9),(229,153,9),(230,136,9),(231,134,9),(232,221,9),(233,114,9),(234,196,9),(235,196,6),(236,234,6),(237,109,6),(238,211,6),(239,221,6),(240,142,6),(241,203,6),(242,199,6),(243,161,6),(244,212,6),(245,113,6),(246,218,6),(247,260,6),(248,186,6),(249,127,6),(250,103,6),(251,278,6),(252,268,6),(253,153,6),(254,198,6),(255,230,6),(256,200,6),(257,257,6),(258,235,6),(259,182,6),(260,184,6),(261,146,6),(262,156,6),(263,233,6),(264,104,6),(265,267,6),(266,116,6),(267,266,6),(268,253,6),(269,204,6),(270,192,6),(271,262,6),(272,105,6),(273,185,6),(274,188,6),(275,117,6),(276,132,6),(277,214,6),(278,319,18),(279,15,18),(280,22,18),(281,339,18),(282,321,18),(283,360,18),(284,325,18),(285,293,18),(286,330,18),(287,290,18),(288,318,18),(289,23,18),(290,374,18),(291,294,18),(292,28,18),(293,347,18),(294,381,18),(295,3,18),(296,331,18),(297,336,18),(298,288,18),(299,306,18),(300,328,18),(301,286,18),(302,302,18),(303,372,18),(304,26,18),(305,355,18),(306,365,18),(307,369,18),(308,296,18),(309,289,18),(310,345,18),(311,9,18),(312,353,18),(313,299,18),(314,380,18),(315,295,18),(316,313,18),(317,350,18),(318,282,18),(319,351,18),(320,27,18),(321,21,18),(322,315,18),(323,332,18),(324,370,18),(325,19,18),(326,285,18),(327,4,18),(328,8,18),(329,305,18),(330,13,18),(331,301,18),(332,308,18),(333,375,18),(334,361,18),(335,376,18),(336,11,18),(337,338,18),(338,309,18),(339,10,18),(340,356,18),(341,352,18),(342,307,18),(343,383,18),(344,329,18),(345,316,18),(346,359,18),(347,366,18),(348,25,18),(349,348,18),(350,323,18),(351,303,18),(352,20,18),(353,358,18),(354,45,24),(355,450,24),(356,405,24),(357,458,24),(358,397,24),(359,417,24),(360,400,24),(361,456,24),(362,402,24),(363,467,24),(364,389,24),(365,428,24),(366,387,24),(367,414,24),(368,462,24),(369,392,24),(370,457,24),(371,42,24),(372,432,24),(373,61,24),(374,446,24),(375,419,24),(376,449,24),(377,464,24),(378,38,24),(379,56,24),(380,443,24),(381,62,24),(382,64,24),(383,50,24),(384,429,24),(385,465,24),(386,448,24),(387,403,24),(388,477,24),(389,468,24),(390,452,24),(391,422,24),(392,406,24),(393,399,24),(394,447,24),(395,461,24),(396,476,24),(397,438,24),(398,423,24),(399,39,24),(400,451,24),(401,404,24),(402,49,24),(403,444,24),(404,411,24),(405,426,24),(406,424,24),(407,410,24),(408,401,24),(409,472,24),(410,420,24),(411,445,24),(412,393,24),(413,478,24),(414,442,24),(415,454,24),(416,44,24),(417,60,24),(418,47,24),(419,473,24),(420,59,24),(421,53,24),(422,408,24),(423,421,24),(424,385,24),(425,63,24),(426,386,24),(427,46,24),(428,469,24),(429,37,24),(430,571,39),(431,559,39),(432,570,39),(433,531,39),(434,100,39),(435,76,39),(436,564,39),(437,558,39),(438,502,39),(439,566,39),(440,551,39),(441,88,39),(442,513,39),(443,70,39),(444,493,39),(445,556,39),(446,567,39),(447,488,39),(448,526,39),(449,510,39),(450,497,39),(451,565,39),(452,569,39),(453,514,39),(454,575,39),(455,547,39),(456,512,39),(457,93,39),(458,484,39),(459,560,39),(460,486,39),(461,562,39),(462,520,39),(463,480,39),(464,95,39),(465,557,39),(466,69,39),(467,535,39),(468,509,39),(469,487,39),(470,99,39),(471,479,39),(472,516,39),(473,490,39),(474,538,39),(475,86,39),(476,577,39),(477,552,39),(478,576,39),(479,92,39),(480,483,39),(481,96,39),(482,563,39),(483,546,39),(484,505,39),(485,555,39),(486,548,39),(487,550,39),(488,525,39),(489,485,39),(490,87,39),(491,568,39),(492,573,39),(493,67,39),(494,94,39),(495,97,39),(496,521,39),(497,495,39),(498,71,39),(499,79,39),(500,75,39),(501,85,39),(502,74,39),(503,528,39),(504,101,39),(505,482,39),(506,495,42),(507,516,42),(508,548,42),(509,578,42),(510,68,42),(511,485,42),(512,515,42),(513,498,42),(514,540,42),(515,85,42),(516,512,42),(517,518,42),(518,91,42),(519,530,42),(520,493,42),(521,552,42),(522,539,42),(523,537,42),(524,517,42),(525,96,42),(526,576,42),(527,79,42),(528,532,42),(529,71,42),(530,89,42),(531,550,42),(532,525,42),(533,566,42),(534,70,42),(535,558,42),(536,81,42),(537,553,42),(538,77,42),(539,528,42),(540,555,42),(541,574,42),(542,546,42),(543,573,42),(544,499,42),(545,571,42),(546,87,42),(547,545,42),(548,73,42),(549,551,42),(550,560,42),(551,481,42),(552,479,42),(553,94,42),(554,67,42),(555,562,42),(556,519,42),(557,86,42),(558,95,42),(559,567,42),(560,502,42),(561,575,42),(562,98,42),(563,484,42),(564,506,42),(565,93,42),(566,542,42),(567,88,42),(568,100,42),(569,80,42),(570,534,42),(571,101,42),(572,72,42),(573,483,42),(574,533,42),(575,480,42),(576,76,42),(577,538,42),(578,66,42),(579,570,42),(580,501,42),(581,536,42),(582,559,42),(583,82,42),(584,563,42),(585,543,42),(586,524,42),(587,564,42),(588,496,42),(589,75,42),(590,547,42),(591,527,42),(592,488,42),(593,482,42),(594,504,42),(595,503,42),(596,544,42),(597,521,42),(598,565,42),(599,510,42),(600,541,42),(601,535,42),(602,513,42),(603,531,42),(604,549,40),(605,493,40),(606,547,40),(607,95,40),(608,568,40),(609,563,40),(610,572,40),(611,522,40),(612,80,40),(613,546,40),(614,96,40),(615,483,40),(616,81,40),(617,539,40),(618,516,40),(619,531,40),(620,512,40),(621,99,40),(622,562,40),(623,542,40),(624,83,40),(625,78,40),(626,513,40),(627,98,40),(628,100,40),(629,76,40),(630,490,40),(631,101,40),(632,518,40),(633,492,40),(634,558,40),(635,538,40),(636,88,40),(637,541,40),(638,534,40),(639,528,40),(640,557,40),(641,530,40),(642,482,40),(643,523,40),(644,71,40),(645,564,40),(646,486,40),(647,555,40),(648,517,41),(649,492,41),(650,86,41),(651,575,41),(652,70,41),(653,504,41),(654,551,41),(655,576,41),(656,75,41),(657,514,41),(658,486,41),(659,566,41),(660,548,41),(661,570,41),(662,82,41),(663,88,41),(664,565,41),(665,493,41),(666,67,41),(667,479,41),(668,530,41),(669,513,41),(670,87,41),(671,540,41),(672,100,41),(673,499,41),(674,537,41),(675,544,41),(676,491,41),(677,84,41),(678,527,41),(679,560,41),(680,96,41),(681,507,41),(682,526,41),(683,502,41),(684,74,41),(685,76,41),(686,488,41),(687,561,41),(688,81,41),(689,489,41),(690,487,41),(691,509,41),(692,77,41),(693,483,41),(694,577,41),(695,497,41),(696,522,41),(697,94,41),(698,518,41),(699,85,41),(700,578,41),(701,516,41),(702,95,41),(703,80,41),(704,534,41),(705,552,41),(706,90,41),(707,558,41),(708,559,41),(709,524,41),(710,505,41),(711,71,41),(712,541,41),(713,562,41),(714,99,41),(715,536,41),(716,93,41),(717,572,41),(718,523,41),(719,83,41),(720,101,41),(721,568,41),(722,498,41),(723,482,41),(724,503,41),(725,72,41),(726,539,41),(727,481,41),(728,533,41),(729,691,31),(730,594,31),(731,595,31),(732,684,31),(733,670,31),(734,650,31),(735,672,31),(736,696,31),(737,662,31),(738,633,31),(739,700,31),(740,689,31),(741,614,31),(742,608,31),(743,641,31),(744,587,31),(745,657,31),(746,679,31),(747,602,31),(748,683,31),(749,688,31),(750,619,31),(751,612,31),(752,638,31),(753,613,31),(754,596,31),(755,597,31),(756,598,31),(757,692,31),(758,648,31),(759,593,31),(760,677,31),(761,645,31),(762,580,31),(763,615,31),(764,687,31),(765,702,31),(766,583,31),(767,626,31),(768,632,31),(769,610,31),(770,674,31),(771,586,31),(772,651,31),(773,698,31),(774,695,31),(775,701,31),(776,585,31),(777,673,31),(778,637,31),(779,620,31),(780,680,31),(781,694,31),(782,592,31),(783,649,31),(784,642,31),(785,685,31),(786,622,31),(787,579,31),(788,600,31),(789,629,31),(790,603,31),(791,682,31),(792,647,31),(793,646,31),(794,589,31),(795,666,31),(796,697,31),(797,607,31),(798,616,31),(799,644,31),(800,606,31),(801,699,31),(802,659,31),(803,609,31),(804,635,31),(805,624,31),(806,669,31),(807,628,31),(808,601,31),(809,588,31),(810,663,32),(811,586,32),(812,649,32),(813,666,32),(814,680,32),(815,654,32),(816,623,32),(817,687,32),(818,613,32),(819,640,32),(820,675,32),(821,622,32),(822,597,32),(823,607,32),(824,677,32),(825,659,32),(826,580,32),(827,692,32),(828,661,32),(829,651,32),(830,594,32),(831,658,32),(832,611,32),(833,655,32),(834,612,32),(835,691,32),(836,610,32),(837,685,32),(838,683,32),(839,695,32),(840,657,32),(841,700,32),(842,693,32),(843,636,32),(844,653,32),(845,591,32),(846,581,32),(847,601,32),(848,671,32),(849,629,32),(850,694,32),(851,656,32),(852,604,32),(853,614,32),(854,615,32),(855,616,32),(856,595,32),(857,652,32),(858,662,32),(859,672,32),(860,584,32),(861,624,32),(862,583,32),(863,647,32),(864,643,32),(865,674,32),(866,621,32),(867,590,32),(868,642,32),(869,645,32),(870,690,32),(871,702,32),(872,588,32),(873,589,32),(874,699,32);
/*!40000 ALTER TABLE `session_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `speaker` varchar(45) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `type` enum('talk','workshop') NOT NULL,
  `cost` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sessions_rooms1_idx` (`room_id`),
  CONSTRAINT `fk_sessions_rooms1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,1,'Vị trí khác nhau, kỹ năng giống nhau','Trong nền kinh tế ngày càng toàn cầu hóa, dòng người di cư đang góp phần tạo ra những thay đổi sâu sắc về nhân khẩu học và sự thay đổi trong công việc. Nhu cầu tạo ra các tiêu chuẩn quốc tế mới để phát triển và ứng dụng kỹ năng tại nơi làm việc toàn cầu, lấy con người làm trung tâm đang trở nên cấp bách hơn bao giờ hết. Làm thế nào các quốc gia có thể khai thác những xu hướng này để xây dựng một thị trường lao động toàn cầu hòa nhập, đồng thời nhận ra sự đa dạng và đặc thù của địa phương?','Nguyễn Văn A','2019-09-23 09:00:00','2019-09-23 09:45:00','talk',NULL),(2,1,'Làm cho công việc có ý nghĩa','Sự thay đổi ngày càng tăng về các giá trị và văn hóa trong xã hội của chúng ta, cũng như sự bất bình đẳng về kinh tế và xã hội ngày càng tăng mang lại những kỳ vọng mới ở nơi làm việc. Làm thế nào chúng ta chuyển từ bất mãn sang thỏa mãn? Hội thảo này sẽ xem xét các phương pháp hay nhất từ các ngành tương ứng và chia sẻ bài học kinh nghiệm hướng tới các cá nhân và cộng đồng thịnh vượng hơn.','Nguyễn Văn B','2019-09-23 10:00:00','2019-09-23 11:30:00','talk',NULL),(3,2,'Kỹ năng và tính bền vững','By 2050, 66 percent of the world’s population is projected to be urban. Moreover, the rapid expansion of human settlements is changing social dynamics and the lifestyle of city-dwellers, especially in megacities. What will be their role as key stakeholders in our globalized world? And how does this affect skilled (and re-skilled) people to achieve sustainable urbanization?','Sebastien Turbot','2019-09-23 10:00:00','2019-09-23 11:30:00','talk',NULL),(4,2,'Thiết kế lộ trình kỹ năng','During this workshop, we summarize trends and challenges within three tracks: economy, society, and environment. Participants will exchange views on what skills, best practices, and solutions they need for their specific regions to meet demands and close their skills gap.','Dmitry Zabirov','2019-09-23 13:00:00','2019-09-23 15:00:00','workshop',50.00),(5,1,'Kỹ năng thay đổi cuộc sống','Through a series of five short inspiring speeches, changemakers will share solutions through skills to the most pressing social challenges we face, leading the way to an inclusive society.','Crispin Thorold','2019-09-23 13:00:00','2019-09-23 13:45:00','talk',NULL),(6,2,'Hệ sinh thái giáo dục cho tương lai','In our fast-changing world, traditional forms of education are becoming outdated. We need to redesign our education systems. What are approaches to learning work in this new world?','Pavel Luksha','2019-09-23 15:00:00','2019-09-23 17:00:00','workshop',30.00),(7,3,'Tương lai của công việc','What are young people’s expectations and concerns for their professional future? WorldSkills and the OECD have joined efforts to listen to the youth and provide them with a platform for action.','Shayne Maclachlan','2019-09-23 11:00:00','2019-09-23 11:45:00','talk',NULL),(8,3,'Làn sóng kỹ năng số','Technological progress and the advent of the digital economy have created new business models and a demand for a more skilled workforce. However, uneven digital penetration across socio-economic landscapes results in a digital skills divide, with many people unable to catch up to the fast-paced digital workforce. What are the cutting-edge, promising skills of this field?','Jordan Shapiro','2019-09-23 13:00:00','2019-09-23 13:45:00','talk',NULL),(9,4,'Đào tạo và đổi mới','In this rapidly evolving technological and digital world, adopting and maintaining the “right” skills can often feel like an impossible task. What are the skills missing in your industry? How can we collaborate to find solutions to close the skills gap? This workshop will explore new ways to train workforces to better adapt to our evolving economies.','Jayshree Seth','2019-09-23 14:00:00','2019-09-23 16:00:00','workshop',45.00),(10,5,'Kỹ năng xanh là gì?','The sustainability issues faced by our societies require a new kind of growth that guarantees that future generations will enjoy the high standards of living that we expect today. With this deepening collective conscience comes a need to explore and develop “green skills” that not only focus on sustainable production and frugal living, but also help us overcome environmental challenges in a systemic way.','Denise Amyot','2019-09-23 10:00:00','2019-09-23 10:45:00','talk',NULL),(11,5,'Greening your workforce','This hands-on session will explore the green skills necessary for creating self-sustaining work ecosystems. How can sustainability be integrated into your industry\'s skills standards? What type of technologies and innovations will allow different industries to face the ecological transition and tackle climate change?','Nader Imani','2019-09-23 13:00:00','2019-09-23 14:30:00','workshop',25.00),(12,5,'Our planet in 2050','Five young adults take to the stage to share inspiring stories about leveraging skills to overcome environmental challenges, to more effectively incorporate climate change awareness into education and, more generally, to create solutions for a self-sustaining ecosystem.','Kehkashan Basu','2019-09-23 15:00:00','2019-09-23 16:00:00','talk',NULL),(13,6,'React today and tomorrow','Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.','Dan Abramov','2018-06-12 09:00:00','2018-06-12 09:45:00','talk',NULL),(14,6,'Concurrent rendering','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.','Brian Vaughn','2018-06-12 10:00:00','2018-06-12 10:45:00','talk',NULL),(15,6,'React suspense','Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.','Jared Palmer','2018-06-12 11:00:00','2018-06-12 11:45:00','talk',NULL),(16,7,'90% Cleaner React','In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.','Ryan Florence','2018-06-12 13:00:00','2018-06-12 13:45:00','talk',NULL),(17,7,'GraphQL in react','Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem. Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.','Conor Hastings','2018-06-12 14:00:00','2018-06-12 14:45:00','talk',NULL),(18,7,'Building a todo app','Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.','Christina Holland','2018-06-12 15:00:00','2018-06-12 16:30:00','workshop',25.00),(19,8,'React in 2019','Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum.','Brian Vaughn','2019-10-24 09:00:00','2019-10-24 09:45:00','talk',NULL),(20,8,'Hooks','Nullam varius.','Dan Abramov','2019-10-24 10:00:00','2019-10-24 10:45:00','talk',NULL),(21,8,'Beyond react','Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.','Jared Palmer','2019-10-24 11:00:00','2019-10-24 11:45:00','talk',NULL),(22,9,'Next.js: Universal React','Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero.','Guillermo Rauch','2019-10-24 13:00:00','2019-10-24 13:45:00','talk',NULL),(23,9,'Realtime Apps','Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.','Robert Zhu','2019-10-24 14:00:00','2019-10-24 14:45:00','talk',NULL),(24,9,'Developing AR Apps','Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat.','Pulkit Kakkar','2019-10-24 15:00:00','2019-10-24 16:30:00','workshop',25.00),(25,10,'State of the Vuenion','Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','Evan You','2020-02-14 09:30:00','2020-02-14 10:15:00','talk',NULL),(26,11,'Modern Web Apps','Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.','Filip Rakowski','2020-02-14 10:30:00','2020-02-14 11:15:00','talk',NULL),(27,12,'Advanced Animations','Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.','Sarah Drasner','2020-02-14 10:30:00','2020-02-14 11:15:00','talk',NULL),(28,12,'NativeScript-Vue + ML','Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.','Jen Looper','2020-02-14 11:30:00','2020-02-14 12:15:00','talk',NULL),(29,10,'GraphQL + Apollo','Curabitur in libero ut massa volutpat convallis.','Sara Vieira','2020-02-14 13:30:00','2020-02-14 14:15:00','talk',NULL),(30,11,'Media for everyone','Aliquam erat volutpat. In congue. Etiam justo.','Maya Shavin','2020-02-14 13:30:00','2020-02-14 14:15:00','talk',NULL),(31,10,'Designing Components','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.','Damian Dulisz','2020-02-14 15:00:00','2020-02-14 16:30:00','workshop',30.00),(32,12,'Next Level Jest Testing','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.','Roman Kuba','2020-02-14 15:00:00','2020-02-14 16:30:00','workshop',30.00),(33,13,'Progressive Angular','Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.','Maxim Salnikov','2019-09-30 09:00:00','2019-09-30 09:45:00','talk',NULL),(34,15,'Unit Testing Angular','Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat. Nulla nisl. Nunc nisl.','Joe Eames','2019-09-30 09:00:00','2019-09-30 09:45:00','talk',NULL),(35,14,'Advanced NGRX','Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat.','Jesse Sanders','2019-09-30 10:00:00','2019-09-30 10:45:00','talk',NULL),(36,11,'Testing with Cypress.io','In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh.','Joe Eames','2019-09-30 10:00:00','2019-09-30 10:45:00','talk',NULL),(37,13,'Web Components','Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo. In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.','Manfred Steyer','2019-09-30 11:00:00','2019-09-30 11:45:00','talk',NULL),(38,16,'Not Every App is a SPA','Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','Rob Wormald','2019-09-30 11:00:00','2019-09-30 11:45:00','talk',NULL),(39,14,'Using RxJS','Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.','Deborah Kurata','2019-09-30 13:00:00','2019-09-30 14:30:00','workshop',75.50),(40,14,'Angular Playground','Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','Brian Love','2019-09-30 15:00:00','2019-09-30 16:00:00','workshop',50.00),(41,15,'Advanced Cypress.io','Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.','Joe Eames','2019-09-30 15:00:00','2019-09-30 16:00:00','workshop',50.00),(42,16,'UX in 2019','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.','Rivkah Di Ruggero','2019-09-30 13:00:00','2019-09-30 14:30:00','workshop',75.50),(43,5,'TEST CREATE','test create','abcdef','2023-01-01 00:00:00','2023-01-03 00:00:00','talk',234.00);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database '.hanoidb'
--
/*!50003 DROP PROCEDURE IF EXISTS `updateUserpassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUserpassword`(IN param1 varchar(100))
BEGIN
    -- Thân stored procedure
    -- Bạn có thể sử dụng param1 và param2 như là các biến trong stored procedure
    
    -- Ví dụ:
    update organizers set password_hash = param1;
    
    -- Hoặc thực hiện các thao tác khác...
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Channal_GetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`` PROCEDURE `usp_Channal_GetAll`()
begin
	select * from channels ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Event_CreateOrUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_CreateOrUpdate`(in p_id int, 
 in p_organizer_id int, 
 in p_name varchar(255), 
 in p_slug varchar(255), 
 in p_date datetime)
begin
	if p_id = 0 THEN
		insert into events (organizer_id, name, slug, date) values (p_organizer_id, p_name, p_slug, p_date);
	end if;
	if p_id > 0 then
		update events
		set 
			organizer_id = p_organizer_id,
			name = p_name,
			slug = p_slug,
			date = p_date
		where id = p_id;
	end if;
	
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Event_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_Delete`(in p_id int)
begin
	delete from events where id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Event_GetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_GetAll`()
begin
	select * from events;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Event_GetEventByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_GetEventByEventId`(in p_id int)
begin 
	select * from events e where e.id = p_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Event_GetEventByOrganizer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Event_GetEventByOrganizer`(in p_orgainzer_id int)
begin
	
	select e.id, e.name , e.organizer_id , e.slug , e.`date` , count(r.id) as count_member
	from events e 
	left join event_tickets et on e.id = et.event_id 
	left join registrations r on r.ticket_id = et.id 
	where e.organizer_id  =  p_orgainzer_id
	group by e.id, e.name , e.organizer_id , e.slug , e.`date` ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_CreateOrUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_CreateOrUpdate`(
in p_id int,
in p_channel_id int,
in p_name varchar(255),
in p_capacity int
)
begin
	if p_id = 0 THEN
		insert into rooms (channel_id, name, capacity) values (p_channel_id, p_name, p_capacity);
	end if;
	if p_id > 0 then
		update rooms 
		set 
			channel_id = p_channel_id,
			name = p_name,
			capacity = p_capacity
		where id = p_id;
	end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_Delete`()
begin
	delete  from rooms where id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_GetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_GetAll`()
begin
	select * from rooms ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_Getcapacity_ByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_Getcapacity_ByEventId`(in p_eventId int)
begin
select s.title ,r.capacity , e.name  , e.date  , count(sr.session_id) as count_registrations
from events e 
join channels c on e.id  = c.event_id 
join rooms r on r.channel_id  = c.id  
join sessions s on s.room_id = r.id 
join session_registrations sr on s.id = sr.session_id 
where event_id = p_eventId
group by s.title , r.capacity , e.name , e.date;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_GetRoomByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_GetRoomByEventId`(in p_event_id int)
begin
	
	select q1.channel_id, q1.event_id, q1.channel_name, count(s.id) as count_session, q1.count_room
	from (
		select c.id as channel_id, e.id as event_id , c.name as channel_name , count(r.id) as count_room
		from events e 
		join channels c on e.id  = c.event_id 
		join rooms r on r.channel_id  = c.id 
		where e.id = p_event_id
		group by c.id, e.id , c.name
	) as q1
	join rooms r2 on r2.channel_id = q1.channel_id
	join sessions s on r2.id = s.room_id
	group by q1.channel_id, q1.event_id, q1.channel_name, q1.count_room;
	
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Room_GetRooms_ByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Room_GetRooms_ByEventId`(in p_event_id int)
begin
select r.name ,r.capacity
from events e 
	join channels c on e.id = c.event_id 
	join rooms r on r.channel_id = c.id 
	where e.id = p_event_id;
	end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Sessions_CreateOrUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Sessions_CreateOrUpdate`(
in p_id int, 
 in p_room_id int, 
 in p_title varchar(255), 
 in p_description varchar(255), 
 in p_speaker varchar(225),
 in p_start datetime,
 in p_end datetime,
 in p_type varchar(225),
 in p_cost decimal)
begin
	if p_id = 0 then
	insert  into sessions (room_id, title, description, speaker, start, end, type, cost) values(p_room_id, p_title, p_description, p_speaker, p_start, p_end, p_type, p_cost);
end if;
if p_id > 0 then
update sessions 
set 
room_id = p_room_id,
title = p_title,
description = p_description,
speaker = p_speaker,
start = p_start,
end = p_end,
type = p_type,
cost = p_cost
where id = p_id;
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Sessions_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Sessions_Delete`()
begin
	delete from sessions where id=p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Sessions_GetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Sessions_GetAll`()
begin
	select * from sessions ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Session_GetSessions_ByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Session_GetSessions_ByEventId`(in p_event_id int)
begin
	select s.title , s.`start` , s.`end` , s.speaker , c.name as channel_name, r.name as room_name, s.`type`
	from events e 
	join channels c on e.id = c.event_id 
	join rooms r on r.channel_id = c.id 
	join sessions s on s.room_id = r.id 
	where e.id = p_event_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Ticket_CreatOrUpdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Ticket_CreatOrUpdate`(
in p_id int,
in p_event_id int,
in p_name varchar(255),
in p_cost varchar(255),
in p_special_validity varchar(255))
begin
	if p_id = 0 then
	insert into event_tickets (event_id, name, cost, special_validity) values(p_event_id, p_name, p_cost, p_special_validity);
end if;
if p_id >0 then
update event_tickets
set 
event_id = p_event_id,
name = p_name,
cost = p_cost,
special_validity = p_special_validity
where id = p_id;
end if;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Ticket_Delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Ticket_Delete`()
begin
	delete from event_tickets  where id = p_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Ticket_GetAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Ticket_GetAll`()
begin
	select *from event_tickets ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_Ticket_GetTickets_ByEventId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_Ticket_GetTickets_ByEventId`(in p_eventId int)
begin
	select * from event_tickets where event_id=p_eventId ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_User_doLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_User_doLogin`(IN p_email VARCHAR(255), IN p_password VARCHAR(255))
BEGIN

    SELECT * FROM organizers WHERE email LIKE CONCAT('%', p_email, '%') AND password_hash LIKE CONCAT('%', p_password, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 12:15:45
