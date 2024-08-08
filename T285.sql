/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t285`;
CREATE DATABASE IF NOT EXISTS `t285` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t285`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/fangdicanxiaoshou/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/fangdicanxiaoshou/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/fangdicanxiaoshou/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'fangchan_types', '房产户型', 1, '房产户型1', NULL, NULL, '2022-03-08 08:35:42'),
	(2, 'fangchan_types', '房产户型', 2, '房产户型2', NULL, NULL, '2022-03-08 08:35:42'),
	(3, 'fangchan_types', '房产户型', 3, '房产户型3', NULL, NULL, '2022-03-08 08:35:42'),
	(4, 'fangchan_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-08 08:35:42'),
	(5, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-08 08:35:44'),
	(6, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-08 08:35:44'),
	(7, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-08 08:35:44'),
	(8, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-08 08:35:44'),
	(9, 'news_types', '公告类型', 3, '公告类型3', NULL, NULL, '2022-03-08 08:35:44'),
	(10, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-08 08:35:44'),
	(11, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-08 08:35:44');

DROP TABLE IF EXISTS `fangchan`;
CREATE TABLE IF NOT EXISTS `fangchan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangchan_uuid_number` varchar(200) DEFAULT NULL COMMENT '房产编号',
  `fangchan_name` varchar(200) DEFAULT NULL COMMENT '房产名 Search111 ',
  `fangchan_types` int DEFAULT NULL COMMENT '房产户型 Search111',
  `fangchan_photo` varchar(200) DEFAULT NULL COMMENT '房产图片',
  `fangchan_money` decimal(10,2) DEFAULT NULL COMMENT '房产价格',
  `fangchan_address` varchar(200) DEFAULT NULL COMMENT '房产地址',
  `fangchan_mianjis` int DEFAULT NULL COMMENT '房屋面积',
  `fangchan_quyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `fangchan_content` text COMMENT '房产详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='房产信息';

DELETE FROM `fangchan`;
INSERT INTO `fangchan` (`id`, `fangchan_uuid_number`, `fangchan_name`, `fangchan_types`, `fangchan_photo`, `fangchan_money`, `fangchan_address`, `fangchan_mianjis`, `fangchan_quyu`, `fangchan_content`, `insert_time`, `create_time`) VALUES
	(1, '16467285476532', '房产名1', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan1.jpg', 10000.00, '房产地址1', 8, '所在区域1', '房产详情1', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(2, '164672854765319', '房产名2', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan2.jpg', 20000.00, '房产地址2', 50, '所在区域2', '房产详情2', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(3, '16467285476538', '房产名3', 1, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan3.jpg', 30000.00, '房产地址3', 332, '所在区域3', '房产详情3', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, '16467285476531', '房产名4', 2, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan4.jpg', 40000.00, '房产地址4', 53, '所在区域4', '房产详情4', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, '16467285476533', '房产名5', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan5.jpg', 50000.00, '房产地址5', 142, '所在区域5', '房产详情5', '2022-03-08 08:35:47', '2022-03-08 08:35:47');

DROP TABLE IF EXISTS `fangchan_collection`;
CREATE TABLE IF NOT EXISTS `fangchan_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangchan_id` int DEFAULT NULL COMMENT '房产',
  `yonghu_id` int DEFAULT NULL COMMENT '客户',
  `fangchan_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='房产收藏';

DELETE FROM `fangchan_collection`;
INSERT INTO `fangchan_collection` (`id`, `fangchan_id`, `yonghu_id`, `fangchan_collection_types`, `insert_time`, `create_time`) VALUES
	(2, 2, 1, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(3, 3, 3, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, 4, 2, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, 5, 1, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(6, 4, 1, 1, '2022-03-08 08:54:48', '2022-03-08 08:54:48'),
	(7, 1, 1, 1, '2024-07-24 02:44:51', '2024-07-24 02:44:51');

DROP TABLE IF EXISTS `fangchan_yuyue`;
CREATE TABLE IF NOT EXISTS `fangchan_yuyue` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangchan_id` int DEFAULT NULL COMMENT '房产',
  `yonghu_id` int DEFAULT NULL COMMENT '客户',
  `fangchan_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='预约看房';

DELETE FROM `fangchan_yuyue`;
INSERT INTO `fangchan_yuyue` (`id`, `fangchan_id`, `yonghu_id`, `fangchan_yuyue_time`, `insert_time`, `create_time`) VALUES
	(3, 3, 2, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, 4, 2, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, 5, 2, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(7, 4, 1, '2022-03-08 16:00:00', '2022-03-08 08:54:44', '2022-03-08 08:54:44');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '客户',
  `yuangong_id` int DEFAULT NULL COMMENT '销售经理',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `yuangong_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 1, NULL, NULL, '发布内容1', NULL, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(2, '帖子标题2', 2, NULL, NULL, '发布内容2', NULL, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(3, '帖子标题3', 1, NULL, NULL, '发布内容3', NULL, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, '帖子标题4', 1, NULL, NULL, '发布内容4', NULL, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, '帖子标题5', 1, NULL, NULL, '发布内容5', NULL, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(6, NULL, 1, NULL, NULL, '客户评论', 5, 2, '2022-03-08 08:55:08', NULL, '2022-03-08 08:55:08'),
	(7, NULL, NULL, 1, NULL, '销售回复', 5, 2, '2022-03-08 08:56:35', NULL, '2022-03-08 08:56:35'),
	(8, NULL, NULL, NULL, 1, '管理回复', 5, 2, '2022-03-08 08:57:14', NULL, '2022-03-08 08:57:14');

DROP TABLE IF EXISTS `gouzhifangcan`;
CREATE TABLE IF NOT EXISTS `gouzhifangcan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gouzhifangcan_name` varchar(200) DEFAULT NULL COMMENT '房产名 Search111 ',
  `fangchan_types` int DEFAULT NULL COMMENT '房产户型 Search111',
  `gouzhifangcan_photo` varchar(200) DEFAULT NULL COMMENT '房产图片',
  `gouzhifangcan_address` varchar(200) DEFAULT NULL COMMENT '房产地址',
  `gouzhifangcan_mianjis` int DEFAULT NULL COMMENT '房屋面积',
  `gouzhifangcan_jiage` int DEFAULT NULL COMMENT '房产购价',
  `gouzhifangcan_quyu` varchar(200) DEFAULT NULL COMMENT '所在区域',
  `yonghu_id` int DEFAULT NULL COMMENT '客户',
  `yuangong_id` int DEFAULT NULL COMMENT '销售经理',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购置房产';

DELETE FROM `gouzhifangcan`;
INSERT INTO `gouzhifangcan` (`id`, `gouzhifangcan_name`, `fangchan_types`, `gouzhifangcan_photo`, `gouzhifangcan_address`, `gouzhifangcan_mianjis`, `gouzhifangcan_jiage`, `gouzhifangcan_quyu`, `yonghu_id`, `yuangong_id`, `insert_time`, `create_time`) VALUES
	(1, '房产名1', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan1.jpg', '房产地址1', 105, 4250000, '所在区域1', 1, 2, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(2, '房产名2', 1, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan2.jpg', '房产地址2', 132, 1620000, '所在区域2', 3, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(3, '房产名3', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan3.jpg', '房产地址3', 222, 960000, '所在区域3', 2, 2, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, '房产名4', 2, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan4.jpg', '房产地址4', 356, 850000, '所在区域4', 2, 1, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, '房产名5', 3, 'http://localhost:8080/fangdicanxiaoshou/upload/fangchan5.jpg', '房产地址5', 367, 1780000, '所在区域5', 2, 3, '2022-03-08 08:35:47', '2022-03-08 08:35:47');

DROP TABLE IF EXISTS `kehudafen`;
CREATE TABLE IF NOT EXISTS `kehudafen` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yuangong_id` int DEFAULT NULL COMMENT '销售经理',
  `yonghu_id` int DEFAULT NULL COMMENT '客户',
  `kehudafen_number` int DEFAULT NULL COMMENT '分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='客户打分';

DELETE FROM `kehudafen`;
INSERT INTO `kehudafen` (`id`, `yuangong_id`, `yonghu_id`, `kehudafen_number`, `insert_time`, `create_time`) VALUES
	(1, 2, 3, 470, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(2, 1, 1, 435, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(3, 1, 3, 154, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(4, 1, 1, 226, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(5, 3, 3, 342, '2022-03-08 08:35:47', '2022-03-08 08:35:47'),
	(6, 2, 1, 999, '2022-03-08 08:56:05', '2022-03-08 08:56:05');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 2, 'http://localhost:8080/fangdicanxiaoshou/upload/news1.jpg', '2022-03-08 08:35:47', '公告详情1', '2022-03-08 08:35:47'),
	(2, '公告标题2', 2, 'http://localhost:8080/fangdicanxiaoshou/upload/news2.jpg', '2022-03-08 08:35:47', '公告详情2', '2022-03-08 08:35:47'),
	(3, '公告标题3', 1, 'http://localhost:8080/fangdicanxiaoshou/upload/news3.jpg', '2022-03-08 08:35:47', '公告详情3', '2022-03-08 08:35:47'),
	(4, '公告标题4', 1, 'http://localhost:8080/fangdicanxiaoshou/upload/news4.jpg', '2022-03-08 08:35:47', '公告详情4', '2022-03-08 08:35:47'),
	(5, '公告标题5', 1, 'http://localhost:8080/fangdicanxiaoshou/upload/news5.jpg', '2022-03-08 08:35:47', '公告详情5', '2022-03-08 08:35:47');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'hbssf9lfv8isb7xouuhvhv1i5tsgctpz', '2022-03-08 08:30:35', '2024-07-24 03:42:57'),
	(2, 1, 'a1', 'yonghu', '客户', '0xtk4az57q9wp1g3x3dujvwl81w0150c', '2022-03-08 08:43:21', '2024-07-24 03:44:42'),
	(3, 1, 'a1', 'yuangong', '销售经理', 'vmvlp1lzmir7q3r95kn8hlav6sv15lcx', '2022-03-08 08:56:15', '2024-07-24 03:44:16');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '客户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='客户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_delete`, `create_time`) VALUES
	(1, '客户1', '123456', '客户姓名1', 'http://localhost:8080/fangdicanxiaoshou/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', 1, '2022-03-08 08:35:47'),
	(2, '客户2', '123456', '客户姓名2', 'http://localhost:8080/fangdicanxiaoshou/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', 1, '2022-03-08 08:35:47'),
	(3, '客户3', '123456', '客户姓名3', 'http://localhost:8080/fangdicanxiaoshou/upload/yonghu3.jpg', 1, '17703786903', '410224199610232003', '3@qq.com', 1, '2022-03-08 08:35:47');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '销售经理姓名 Search111 ',
  `yuangong_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yuangong_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='销售经理';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_name`, `yuangong_photo`, `sex_types`, `yuangong_phone`, `yuangong_email`, `yuangong_delete`, `create_time`) VALUES
	(1, '销售经理1', '123456', '销售经理姓名1', 'http://localhost:8080/fangdicanxiaoshou/upload/yuangong1.jpg', 2, '17703786901', '1@qq.com', 1, '2022-03-08 08:35:47'),
	(2, '销售经理2', '123456', '销售经理姓名2', 'http://localhost:8080/fangdicanxiaoshou/upload/yuangong2.jpg', 1, '17703786902', '2@qq.com', 1, '2022-03-08 08:35:47'),
	(3, '销售经理3', '123456', '销售经理姓名3', 'http://localhost:8080/fangdicanxiaoshou/upload/yuangong3.jpg', 2, '17703786903', '3@qq.com', 1, '2022-03-08 08:35:47');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
