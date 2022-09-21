/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : douyin

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2022-09-19 15:10:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `watch_id` bigint DEFAULT NULL,
  `be_watch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_attention_watch` (`watch_id`),
  KEY `fk_attention_be_watch` (`be_watch_id`),
  CONSTRAINT `fk_attention_be_watch` FOREIGN KEY (`be_watch_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_attention_watch` FOREIGN KEY (`watch_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES ('1', null, null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `video_id` bigint DEFAULT NULL,
  `content` longtext,
  `favorite_count` bigint DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `create_date` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_comment_deleted_at` (`deleted_at`),
  KEY `fk_comment_user` (`user_id`),
  KEY `fk_comment_video` (`video_id`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_comment_video` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for favorite
-- ----------------------------
DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `video_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_favorite_user` (`user_id`),
  KEY `fk_favorite_video` (`video_id`),
  CONSTRAINT `fk_favorite_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_favorite_video` FOREIGN KEY (`video_id`) REFERENCES `video` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of favorite
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `follow_count` bigint DEFAULT NULL,
  `follower_count` bigint DEFAULT NULL,
  `is_follow` tinyint(1) DEFAULT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `username` varchar(191) DEFAULT NULL,
  `password` longtext,
  `followCount` bigint DEFAULT NULL,
  `followerCount` bigint DEFAULT NULL,
  `isfollow` tinyint(1) DEFAULT NULL,
  `online` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `idx_user_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lrd', '12', '12', '1', '2022-09-08 13:57:08.000', '2022-09-13 13:57:12.000', null, 'gun', '1234', '56', '56', '1', '1');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `author_id` bigint DEFAULT NULL,
  `play_url` longtext,
  `cover_url` longtext,
  `favorite_count` bigint DEFAULT NULL,
  `comment_count` bigint DEFAULT NULL,
  `is_favorite` tinyint(1) DEFAULT NULL,
  `title` longtext,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_video_author` (`author_id`),
  KEY `idx_video_deleted_at` (`deleted_at`),
  CONSTRAINT `fk_video_author` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
