-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: sustage.sagresearch.de    Database: sustage
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `ListLatestAverageRestHR300`
--

DROP TABLE IF EXISTS `ListLatestAverageRestHR300`;
/*!50001 DROP VIEW IF EXISTS `ListLatestAverageRestHR300`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `ListLatestAverageRestHR300` (
  `userid` tinyint NOT NULL,
  `AverageRestHR300` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OLD_replay_heartrate`
--

DROP TABLE IF EXISTS `OLD_replay_heartrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OLD_replay_heartrate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` double NOT NULL,
  `payload` varchar(10000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Surname` varchar(100) DEFAULT NULL,
  `Username` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Role` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Id` int(100) NOT NULL,
  `companyName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `configurations`
--

DROP TABLE IF EXISTS `configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurations` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `companyId` int(11) DEFAULT NULL,
  `ecategoryId` int(11) NOT NULL,
  `metricName` varchar(50) NOT NULL,
  `metricType` varchar(50) NOT NULL,
  `metricValue` varchar(100) NOT NULL,
  `operator` varchar(10) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`Id`),
  KEY `FK_configurations_user` (`userId`),
  KEY `FK_configurations_place` (`companyId`),
  CONSTRAINT `FK_configurations_place` FOREIGN KEY (`companyId`) REFERENCES `company` (`Id`),
  CONSTRAINT `FK_configurations_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `db_game_performance`
--

DROP TABLE IF EXISTS `db_game_performance`;
/*!50001 DROP VIEW IF EXISTS `db_game_performance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `db_game_performance` (
  `time` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `gameId` tinyint NOT NULL,
  `score` tinyint NOT NULL,
  `duration` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `db_game_performance_group`
--

DROP TABLE IF EXISTS `db_game_performance_group`;
/*!50001 DROP VIEW IF EXISTS `db_game_performance_group`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `db_game_performance_group` (
  `userId` tinyint NOT NULL,
  `games_num` tinyint NOT NULL,
  `score_sum` tinyint NOT NULL,
  `score_min` tinyint NOT NULL,
  `score_max` tinyint NOT NULL,
  `duration_min` tinyint NOT NULL,
  `duration_max` tinyint NOT NULL,
  `duration_avg` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `db_recommendations_rectype_7d`
--

DROP TABLE IF EXISTS `db_recommendations_rectype_7d`;
/*!50001 DROP VIEW IF EXISTS `db_recommendations_rectype_7d`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `db_recommendations_rectype_7d` (
  `time_unix` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `timediff` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `recType_count` tinyint NOT NULL,
  `recFullEng` tinyint NOT NULL,
  `recFullHPA` tinyint NOT NULL,
  `recShort` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `db_recommendations_user_reaction`
--

DROP TABLE IF EXISTS `db_recommendations_user_reaction`;
/*!50001 DROP VIEW IF EXISTS `db_recommendations_user_reaction`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `db_recommendations_user_reaction` (
  `createdDateTime` tinyint NOT NULL,
  `responseDatetime` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `rec_id` tinyint NOT NULL,
  `recomType` tinyint NOT NULL,
  `answer` tinyint NOT NULL,
  `responseTime` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `device_action`
--

DROP TABLE IF EXISTS `device_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `time` double NOT NULL,
  `msgtype` varchar(200) NOT NULL,
  `deviceActionType` varchar(200) NOT NULL,
  `confidence` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_device_action_user` (`userId`),
  CONSTRAINT `FK_device_action_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10402 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_performance`
--

DROP TABLE IF EXISTS `game_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_performance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(200) NOT NULL,
  `time` double NOT NULL,
  `userId` int(11) NOT NULL,
  `gameId` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `results` mediumtext NOT NULL,
  `duration` int(11) NOT NULL,
  `accurancy` float NOT NULL,
  `confidence` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_game_performance_user` (`userId`),
  CONSTRAINT `FK_game_performance_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4266 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `game_stats`
--

DROP TABLE IF EXISTS `game_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_stats` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(50) DEFAULT NULL,
  `time` double DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `confidence` float DEFAULT NULL,
  `daysPlayed` int(11) DEFAULT NULL,
  `completedChallenges` int(11) DEFAULT NULL,
  `challengesThisWeek` int(11) DEFAULT NULL,
  `gameResultsStats` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4175 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_environment`
--

DROP TABLE IF EXISTS `kb_environment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_environment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `sensorId` int(11) NOT NULL,
  `dust` double NOT NULL,
  `windSpeed` double NOT NULL,
  `humidity` double NOT NULL,
  `oxygen` double NOT NULL,
  `illumination` double NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_KB_Environment_company` (`companyId`),
  KEY `FK_KB_Environment_user` (`userId`),
  CONSTRAINT `FK_KB_Environment_company` FOREIGN KEY (`companyId`) REFERENCES `company` (`Id`),
  CONSTRAINT `FK_KB_Environment_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_event`
--

DROP TABLE IF EXISTS `kb_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(200) NOT NULL,
  `episodetype` varchar(200) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_event_capture`
--

DROP TABLE IF EXISTS `kb_event_capture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_event_capture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `time` double NOT NULL,
  `areaId` int(11) NOT NULL,
  `value` float NOT NULL,
  `measurement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_KB_MM_capture_kb_micromoment` (`event_id`),
  KEY `FK_KB_MM_capture_user` (`userid`),
  KEY `FK_kb_event_capture_kb_measurement` (`measurement_id`),
  KEY `FK_kb_event_capture_place` (`areaId`),
  CONSTRAINT `FK_KB_MM_capture_kb_micromoment` FOREIGN KEY (`event_id`) REFERENCES `kb_event` (`id`),
  CONSTRAINT `FK_KB_MM_capture_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_kb_event_capture_kb_measurement` FOREIGN KEY (`measurement_id`) REFERENCES `kb_measurement` (`id`),
  CONSTRAINT `FK_kb_event_capture_place` FOREIGN KEY (`areaId`) REFERENCES `place` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_events`
--

DROP TABLE IF EXISTS `kb_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(100) NOT NULL,
  `episodeType` varchar(100) NOT NULL,
  `time` double NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_KB_MM_capture_user` (`userid`),
  KEY `FK_kb_event_capture_place` (`areaId`),
  CONSTRAINT `kb_events_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `kb_events_ibfk_4` FOREIGN KEY (`areaId`) REFERENCES `place` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3405635 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_events_post`
--

DROP TABLE IF EXISTS `kb_events_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_events_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(50) NOT NULL,
  `timestamp` double NOT NULL,
  `userId` int(11) NOT NULL,
  `stationId` int(11) NOT NULL,
  `areaId` int(11) NOT NULL,
  `periodTimestamp` double DEFAULT NULL,
  `bodyPart` varchar(200) DEFAULT NULL,
  `countEpisodes` varchar(200) DEFAULT NULL,
  `posturePartStressSum` varchar(200) DEFAULT NULL,
  `posturePartStressCount` varchar(200) DEFAULT NULL,
  `posturePartStressFilteredAvg` varchar(200) DEFAULT NULL,
  `avgStressPerBodyPart` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1326 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kb_measurement`
--

DROP TABLE IF EXISTS `kb_measurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kb_measurement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `metricName` varchar(100) NOT NULL,
  `metricType` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msgtype` varchar(200) NOT NULL,
  `created` double NOT NULL,
  `userId` int(11) NOT NULL,
  `rec_id` int(11) NOT NULL,
  `recomType` varchar(100) NOT NULL DEFAULT '',
  `recommendationMessage` varchar(1000) NOT NULL,
  `recommendationPath` varchar(1000) NOT NULL,
  `messageExplicitAcceptance` varchar(1000) NOT NULL,
  `vibration` tinyint(4) NOT NULL DEFAULT '0',
  `recomCluster` varchar(50) DEFAULT 'LP',
  PRIMARY KEY (`Id`),
  KEY `FK_notifications_user` (`userId`),
  KEY `FK_notifications_recommendation` (`rec_id`),
  CONSTRAINT `FK_notifications_recommendation` FOREIGN KEY (`rec_id`) REFERENCES `recommendation` (`id`),
  CONSTRAINT `FK_notifications_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223055 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `place`
--

DROP TABLE IF EXISTS `place`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `place` (
  `id` int(100) NOT NULL,
  `locationName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` float NOT NULL DEFAULT '0',
  `longtitude` float NOT NULL DEFAULT '0',
  `iswork` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rec_type`
--

DROP TABLE IF EXISTS `rec_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rec_type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `recType` varchar(100) NOT NULL,
  `recShort` varchar(256) NOT NULL,
  `recFullEng` varchar(2056) NOT NULL,
  `recFullCRF` varchar(2056) NOT NULL,
  `recFullHPA` varchar(2056) NOT NULL,
  `ExpilicitAcc` varchar(2056) NOT NULL,
  `ExplicitAccCRF` varchar(2056) NOT NULL,
  `ExplicitAccHPA` varchar(2056) NOT NULL,
  `recomCluster` varchar(4) NOT NULL DEFAULT 'LP',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Code` (`recType`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recchannel`
--

DROP TABLE IF EXISTS `recchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recchannel` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recmonitoring`
--

DROP TABLE IF EXISTS `recmonitoring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recmonitoring` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `deviceActionType` varchar(100) NOT NULL,
  `audioPath` varchar(500) NOT NULL,
  `responseDatetime` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_recmonitoring_recommendation` (`recId`),
  KEY `FK_recmonitoring_user` (`userId`),
  CONSTRAINT `FK_recmonitoring_recommendation` FOREIGN KEY (`recId`) REFERENCES `recommendation` (`id`),
  CONSTRAINT `FK_recmonitoring_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2969 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recommendation`
--

DROP TABLE IF EXISTS `recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommendation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` double NOT NULL,
  `userId` int(11) NOT NULL,
  `recType` varchar(100) NOT NULL,
  `parameters` varchar(100) NOT NULL,
  `timeframeToaccept` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_recommendation_user` (`userId`),
  KEY `FK_recommendation_rec_type` (`recType`),
  CONSTRAINT `FK_recommendation_rec_type` FOREIGN KEY (`recType`) REFERENCES `rec_type` (`recType`),
  CONSTRAINT `FK_recommendation_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2078084299 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `recschedule`
--

DROP TABLE IF EXISTS `recschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `scheduledDatetime` datetime NOT NULL,
  `channelId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_recSchedule_recommendation` (`recId`),
  KEY `FK_recSchedule_user` (`userId`),
  KEY `FK_recschedule_recchannel` (`channelId`),
  CONSTRAINT `FK_recSchedule_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_recschedule_recchannel` FOREIGN KEY (`channelId`) REFERENCES `recchannel` (`id`),
  CONSTRAINT `FK_recschedule_recommendation` FOREIGN KEY (`recId`) REFERENCES `recommendation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rectranslation`
--

DROP TABLE IF EXISTS `rectranslation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rectranslation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_type` varchar(100) NOT NULL,
  `langCode` varchar(5) NOT NULL,
  `recFull` varchar(1000) NOT NULL,
  `labelYes` varchar(100) NOT NULL,
  `labelNo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_rectranslation_recommendation` (`rec_type`),
  CONSTRAINT `FK_rectranslation_recommendation` FOREIGN KEY (`rec_type`) REFERENCES `rec_type` (`recType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `replay_environmental`
--

DROP TABLE IF EXISTS `replay_environmental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_environmental` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` double NOT NULL,
  `payload` varchar(10000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=230477 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `replay_location`
--

DROP TABLE IF EXISTS `replay_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replay_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` double NOT NULL,
  `payload` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `Id` int(100) NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `roleId` int(100) NOT NULL,
  `companyId` int(100) NOT NULL,
  `alias` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deviceId` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `beaconId` int(11) DEFAULT NULL,
  `wristwid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deviceToken` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Union` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_company` (`companyId`),
  KEY `FK_user_role` (`roleId`),
  CONSTRAINT `FK_user_company` FOREIGN KEY (`companyId`) REFERENCES `company` (`Id`),
  CONSTRAINT `FK_user_role` FOREIGN KEY (`roleId`) REFERENCES `role` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `userHR_low`
--

DROP TABLE IF EXISTS `userHR_low`;
/*!50001 DROP VIEW IF EXISTS `userHR_low`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `userHR_low` (
  `userid` tinyint NOT NULL,
  `value` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `userLocation`
--

DROP TABLE IF EXISTS `userLocation`;
/*!50001 DROP VIEW IF EXISTS `userLocation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `userLocation` (
  `username` tinyint NOT NULL,
  `companyId` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `latitude` tinyint NOT NULL,
  `longtitude` tinyint NOT NULL,
  `iswork` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `userWorkLocation`
--

DROP TABLE IF EXISTS `userWorkLocation`;
/*!50001 DROP VIEW IF EXISTS `userWorkLocation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `userWorkLocation` (
  `username` tinyint NOT NULL,
  `companyId` tinyint NOT NULL,
  `userId` tinyint NOT NULL,
  `latitude` tinyint NOT NULL,
  `longtitude` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `userplaces`
--

DROP TABLE IF EXISTS `userplaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userplaces` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userId` int(100) NOT NULL,
  `latitude` float(10,8) NOT NULL,
  `longitude` float(10,8) NOT NULL,
  `locationId` int(10) NOT NULL,
  `companyId` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `userId` int(100) NOT NULL,
  `height` decimal(10,2) NOT NULL,
  `alias` varchar(256) NOT NULL DEFAULT '',
  `age` int(3) NOT NULL,
  `weight` int(3) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL DEFAULT 'EN',
  PRIMARY KEY (`id`),
  KEY `FK_userprofile_user` (`userId`),
  CONSTRAINT `FK_userprofile_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workplaceHierarchy`
--

DROP TABLE IF EXISTS `workplaceHierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workplaceHierarchy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `sm_userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`),
  KEY `FK__user_2` (`sm_userid`),
  CONSTRAINT `FK__user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  CONSTRAINT `FK__user_2` FOREIGN KEY (`sm_userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workschedule`
--

DROP TABLE IF EXISTS `workschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `startTime` double NOT NULL,
  `endTime` double NOT NULL,
  `category` int(11) NOT NULL DEFAULT '1',
  `workDescription` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_workschedule_user` (`userId`),
  CONSTRAINT `FK_workschedule_user` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workschedule_new`
--

DROP TABLE IF EXISTS `workschedule_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workschedule_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `minute` int(11) NOT NULL DEFAULT '0',
  `hour` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `duration` float NOT NULL,
  `category` int(11) NOT NULL DEFAULT '1',
  `workDescription` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `FK_workschedule_user` (`userId`),
  CONSTRAINT `workschedule_new_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `workschedule_today`
--

DROP TABLE IF EXISTS `workschedule_today`;
/*!50001 DROP VIEW IF EXISTS `workschedule_today`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `workschedule_today` (
  `userId` tinyint NOT NULL,
  `hour` tinyint NOT NULL,
  `minute` tinyint NOT NULL,
  `duration` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'sustage'
--

--
-- Final view structure for view `ListLatestAverageRestHR300`
--

/*!50001 DROP TABLE IF EXISTS `ListLatestAverageRestHR300`*/;
/*!50001 DROP VIEW IF EXISTS `ListLatestAverageRestHR300`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `ListLatestAverageRestHR300` AS select `kb_events`.`userid` AS `userid`,`kb_events`.`value` AS `AverageRestHR300` from `kb_events` where `kb_events`.`id` in (select max(`kb_events`.`id`) from `kb_events` where (`kb_events`.`episodeType` = 'AverageRestHR300') group by `kb_events`.`userid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `db_game_performance`
--

/*!50001 DROP TABLE IF EXISTS `db_game_performance`*/;
/*!50001 DROP VIEW IF EXISTS `db_game_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `db_game_performance` AS select from_unixtime((`game_performance`.`time` / 1000)) AS `time`,`game_performance`.`userId` AS `userId`,`game_performance`.`gameId` AS `gameId`,`game_performance`.`score` AS `score`,`game_performance`.`duration` AS `duration` from `game_performance` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `db_game_performance_group`
--

/*!50001 DROP TABLE IF EXISTS `db_game_performance_group`*/;
/*!50001 DROP VIEW IF EXISTS `db_game_performance_group`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `db_game_performance_group` AS select `game_performance`.`userId` AS `userId`,count(`game_performance`.`gameId`) AS `games_num`,sum(`game_performance`.`score`) AS `score_sum`,min(`game_performance`.`score`) AS `score_min`,max(`game_performance`.`score`) AS `score_max`,min(`game_performance`.`duration`) AS `duration_min`,max(`game_performance`.`duration`) AS `duration_max`,avg(`game_performance`.`duration`) AS `duration_avg` from `game_performance` group by `game_performance`.`userId` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `db_recommendations_rectype_7d`
--

/*!50001 DROP TABLE IF EXISTS `db_recommendations_rectype_7d`*/;
/*!50001 DROP VIEW IF EXISTS `db_recommendations_rectype_7d`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `db_recommendations_rectype_7d` AS select `recommendation`.`created` AS `time_unix`,from_unixtime((`recommendation`.`created` / 1000)) AS `time`,(to_days(now()) - to_days(from_unixtime((`recommendation`.`created` / 1000)))) AS `timediff`,`recommendation`.`userId` AS `userId`,count(`rec_type`.`recType`) AS `recType_count`,`rec_type`.`recFullEng` AS `recFullEng`,`rec_type`.`recFullHPA` AS `recFullHPA`,`rec_type`.`recShort` AS `recShort` from (`recommendation` left join `rec_type` on((`recommendation`.`recType` = `rec_type`.`recType`))) where ((to_days(now()) - to_days(from_unixtime((`recommendation`.`created` / 1000)))) <= 7) group by `rec_type`.`recType` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `db_recommendations_user_reaction`
--

/*!50001 DROP TABLE IF EXISTS `db_recommendations_user_reaction`*/;
/*!50001 DROP VIEW IF EXISTS `db_recommendations_user_reaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `db_recommendations_user_reaction` AS select from_unixtime((`notifications`.`created` / 1000)) AS `createdDateTime`,from_unixtime((`recmonitoring`.`responseDatetime` / 1000)) AS `responseDatetime`,`notifications`.`userId` AS `userId`,`notifications`.`rec_id` AS `rec_id`,`notifications`.`recomType` AS `recomType`,`recmonitoring`.`answer` AS `answer`,round(((`recmonitoring`.`responseDatetime` - `notifications`.`created`) / 1000),0) AS `responseTime` from (`notifications` left join `recmonitoring` on((`notifications`.`rec_id` = `recmonitoring`.`recId`))) where (`notifications`.`rec_id` > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userHR_low`
--

/*!50001 DROP TABLE IF EXISTS `userHR_low`*/;
/*!50001 DROP VIEW IF EXISTS `userHR_low`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`frank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `userHR_low` AS select `kb_events`.`userid` AS `userid`,`kb_events`.`value` AS `value` from `kb_events` where ((`kb_events`.`msgtype` = 'userheartRateLowAP') and (`kb_events`.`episodeType` = 'HR_Low')) group by `kb_events`.`userid` order by `kb_events`.`time` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userLocation`
--

/*!50001 DROP TABLE IF EXISTS `userLocation`*/;
/*!50001 DROP VIEW IF EXISTS `userLocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `userLocation` AS select `user`.`username` AS `username`,`user`.`companyId` AS `companyId`,`user`.`id` AS `userId`,`place`.`latitude` AS `latitude`,`place`.`longtitude` AS `longtitude`,`place`.`iswork` AS `iswork` from (`user` left join `place` on((`user`.`companyId` = `place`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `userWorkLocation`
--

/*!50001 DROP TABLE IF EXISTS `userWorkLocation`*/;
/*!50001 DROP VIEW IF EXISTS `userWorkLocation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`sustage`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `userWorkLocation` AS select `user`.`username` AS `username`,`user`.`companyId` AS `companyId`,`user`.`id` AS `userId`,`place`.`latitude` AS `latitude`,`place`.`longtitude` AS `longtitude` from (`user` left join `place` on((`user`.`companyId` = `place`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `workschedule_today`
--

/*!50001 DROP TABLE IF EXISTS `workschedule_today`*/;
/*!50001 DROP VIEW IF EXISTS `workschedule_today`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`frank`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `workschedule_today` AS select `workschedule_new`.`userId` AS `userId`,`workschedule_new`.`hour` AS `hour`,`workschedule_new`.`minute` AS `minute`,`workschedule_new`.`duration` AS `duration` from `workschedule_new` where ((`workschedule_new`.`category` = 1) and (`workschedule_new`.`month` = month(curdate())) and (`workschedule_new`.`day` = dayofmonth(curdate()))) */
/*!50002 WITH LOCAL CHECK OPTION */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 11:41:13
