/*
 Navicat Premium Data Transfer

 Source Server         : 120.26.186.88_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 120.26.186.88:3306
 Source Schema         : db_onlineexam

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 22/06/2020 15:43:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer`  (
  `answerId` int(0) NOT NULL AUTO_INCREMENT COMMENT '答题情况Id（唯一）',
  `userId` int(0) DEFAULT NULL COMMENT '用户编号',
  `exerciseId` int(0) DEFAULT NULL COMMENT '试卷题目编号',
  `score` int(0) DEFAULT NULL COMMENT '分值',
  `checked` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所选答案',
  PRIMARY KEY (`answerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_answer
-- ----------------------------
INSERT INTO `t_answer` VALUES (1, 1, 1, 1, '1');
INSERT INTO `t_answer` VALUES (2, 2, 2, 6, '0');
INSERT INTO `t_answer` VALUES (4, 2, 2, 6, '0');
INSERT INTO `t_answer` VALUES (5, 2, 2, 6, '0');
INSERT INTO `t_answer` VALUES (6, 2, 2, 6, '0');
INSERT INTO `t_answer` VALUES (7, 2, 2, 6, '0');

-- ----------------------------
-- Table structure for t_connect
-- ----------------------------
DROP TABLE IF EXISTS `t_connect`;
CREATE TABLE `t_connect`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paperId` int(0) DEFAULT NULL COMMENT '试卷编号',
  `paperDetailId` int(11) UNSIGNED ZEROFILL DEFAULT 00000000000 COMMENT '试题编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_connect
-- ----------------------------
INSERT INTO `t_connect` VALUES (1, 1, 00000000023);
INSERT INTO `t_connect` VALUES (2, 1, 00000000035);
INSERT INTO `t_connect` VALUES (3, 1, 00000000006);
INSERT INTO `t_connect` VALUES (4, 2, 00000000000);
INSERT INTO `t_connect` VALUES (5, 2, 00000000009);
INSERT INTO `t_connect` VALUES (6, 2, 00000000010);
INSERT INTO `t_connect` VALUES (7, 2, 00000000024);
INSERT INTO `t_connect` VALUES (8, 2, 00000000025);
INSERT INTO `t_connect` VALUES (11, 12, 00000000000);
INSERT INTO `t_connect` VALUES (12, 12, 00000000035);
INSERT INTO `t_connect` VALUES (13, 18, 00000000035);
INSERT INTO `t_connect` VALUES (14, 18, 00000000035);
INSERT INTO `t_connect` VALUES (15, 18, 00000000035);
INSERT INTO `t_connect` VALUES (17, 18, 00000000035);
INSERT INTO `t_connect` VALUES (18, 36, 00000000010);
INSERT INTO `t_connect` VALUES (19, 36, 00000000010);
INSERT INTO `t_connect` VALUES (20, 36, 00000000010);
INSERT INTO `t_connect` VALUES (21, 36, 00000000010);
INSERT INTO `t_connect` VALUES (22, 36, 00000000010);
INSERT INTO `t_connect` VALUES (23, 35, 00000000000);
INSERT INTO `t_connect` VALUES (24, 36, 00000000000);
INSERT INTO `t_connect` VALUES (25, 37, 00000000000);
INSERT INTO `t_connect` VALUES (26, 38, 00000000000);
INSERT INTO `t_connect` VALUES (27, 39, 00000000000);
INSERT INTO `t_connect` VALUES (28, 40, 00000000000);
INSERT INTO `t_connect` VALUES (29, 41, 00000000000);
INSERT INTO `t_connect` VALUES (30, 42, 00000000000);
INSERT INTO `t_connect` VALUES (31, 43, 00000000000);
INSERT INTO `t_connect` VALUES (32, 44, 00000000000);
INSERT INTO `t_connect` VALUES (33, 45, 00000000000);
INSERT INTO `t_connect` VALUES (34, 46, 00000000000);
INSERT INTO `t_connect` VALUES (35, 47, 00000000000);
INSERT INTO `t_connect` VALUES (36, 48, 00000000000);
INSERT INTO `t_connect` VALUES (37, 49, 00000000000);
INSERT INTO `t_connect` VALUES (38, 50, 00000000000);
INSERT INTO `t_connect` VALUES (39, 51, 00000000000);
INSERT INTO `t_connect` VALUES (40, 52, 00000000000);
INSERT INTO `t_connect` VALUES (41, 53, 00000000000);
INSERT INTO `t_connect` VALUES (42, 54, 00000000000);
INSERT INTO `t_connect` VALUES (43, 55, 00000000000);
INSERT INTO `t_connect` VALUES (44, 56, 00000000000);
INSERT INTO `t_connect` VALUES (45, 57, 00000000000);
INSERT INTO `t_connect` VALUES (46, 58, 00000000000);
INSERT INTO `t_connect` VALUES (47, 59, 00000000000);
INSERT INTO `t_connect` VALUES (48, 60, 00000000000);
INSERT INTO `t_connect` VALUES (49, 61, 00000000000);
INSERT INTO `t_connect` VALUES (50, 62, 00000000000);
INSERT INTO `t_connect` VALUES (51, 63, 00000000000);
INSERT INTO `t_connect` VALUES (52, 64, 00000000000);
INSERT INTO `t_connect` VALUES (53, 65, 00000000000);
INSERT INTO `t_connect` VALUES (54, 65, 00000000067);
INSERT INTO `t_connect` VALUES (55, 66, 00000000000);
INSERT INTO `t_connect` VALUES (56, 67, 00000000000);
INSERT INTO `t_connect` VALUES (57, 67, 00000000068);
INSERT INTO `t_connect` VALUES (58, 68, 00000000000);
INSERT INTO `t_connect` VALUES (59, 69, 00000000000);
INSERT INTO `t_connect` VALUES (60, 70, 00000000000);
INSERT INTO `t_connect` VALUES (61, 71, 00000000000);
INSERT INTO `t_connect` VALUES (62, 72, 00000000000);
INSERT INTO `t_connect` VALUES (63, 73, 00000000000);
INSERT INTO `t_connect` VALUES (64, 73, 00000000069);
INSERT INTO `t_connect` VALUES (65, 74, 00000000000);
INSERT INTO `t_connect` VALUES (66, 74, 00000000070);
INSERT INTO `t_connect` VALUES (67, 75, 00000000000);
INSERT INTO `t_connect` VALUES (68, 75, 00000000071);
INSERT INTO `t_connect` VALUES (69, 75, 00000000072);
INSERT INTO `t_connect` VALUES (70, 75, 00000000073);
INSERT INTO `t_connect` VALUES (71, 76, 00000000000);
INSERT INTO `t_connect` VALUES (72, 76, 00000000074);
INSERT INTO `t_connect` VALUES (73, 77, 00000000000);
INSERT INTO `t_connect` VALUES (74, 77, 00000000075);
INSERT INTO `t_connect` VALUES (75, 77, 00000000076);
INSERT INTO `t_connect` VALUES (76, 78, 00000000000);
INSERT INTO `t_connect` VALUES (77, 78, 00000000077);
INSERT INTO `t_connect` VALUES (78, 78, 00000000078);
INSERT INTO `t_connect` VALUES (79, 78, 00000000079);
INSERT INTO `t_connect` VALUES (80, 78, 00000000080);
INSERT INTO `t_connect` VALUES (81, 79, 00000000000);
INSERT INTO `t_connect` VALUES (82, 79, 00000000081);
INSERT INTO `t_connect` VALUES (83, 79, 00000000082);
INSERT INTO `t_connect` VALUES (84, 79, 00000000083);
INSERT INTO `t_connect` VALUES (85, 80, 00000000000);
INSERT INTO `t_connect` VALUES (86, 80, 00000000084);
INSERT INTO `t_connect` VALUES (87, 80, 00000000085);
INSERT INTO `t_connect` VALUES (88, 81, 00000000000);
INSERT INTO `t_connect` VALUES (89, 81, 00000000086);
INSERT INTO `t_connect` VALUES (90, 81, 00000000087);
INSERT INTO `t_connect` VALUES (91, 82, 00000000000);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `noticeId` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告Id（唯一）',
  `userId` int(0) DEFAULT NULL COMMENT '用户编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`noticeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, 2, '测试修改通告标题', '测试修改通告内容', 'Fri Jun 19 15:25:46 CST 2020');
INSERT INTO `t_notice` VALUES (3, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 01:15:18 CST 2019');
INSERT INTO `t_notice` VALUES (4, 4, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 01:16:08 CST 2019');
INSERT INTO `t_notice` VALUES (5, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 14:08:49 CST 2019');
INSERT INTO `t_notice` VALUES (9, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 10 21:12:22 CST 2019');
INSERT INTO `t_notice` VALUES (10, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 12:07:04 CST 2020');
INSERT INTO `t_notice` VALUES (11, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 12:09:08 CST 2020');
INSERT INTO `t_notice` VALUES (12, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 14:52:14 CST 2020');
INSERT INTO `t_notice` VALUES (13, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 14:53:27 CST 2020');
INSERT INTO `t_notice` VALUES (14, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:02:39 CST 2020');
INSERT INTO `t_notice` VALUES (15, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:07:02 CST 2020');
INSERT INTO `t_notice` VALUES (16, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:07:03 CST 2020');
INSERT INTO `t_notice` VALUES (17, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:18:20 CST 2020');
INSERT INTO `t_notice` VALUES (18, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:23:59 CST 2020');
INSERT INTO `t_notice` VALUES (19, 2, '测试增加通告标题', '测试增加通告内容', 'Fri Jun 19 15:25:46 CST 2020');
INSERT INTO `t_notice` VALUES (20, 1, 'test', 'test', 'Sun Jun 21 15:44:42 CST 2020');

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `paperId` int(0) NOT NULL AUTO_INCREMENT COMMENT '试卷编号Id（唯一）',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  `status` int(0) DEFAULT 0 COMMENT '是否发布(0：未发布，1：已发布)',
  `beginTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布时间',
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '做题时长',
  PRIMARY KEY (`paperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (3, '2017年秋季学期17级高等数学期末考试题', 1, '2020-06-08: 15:00', '00:00:05');
INSERT INTO `t_paper` VALUES (10, 'test2', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (12, '2020年春季学期软件质量保证与测试考试', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (38, '12345678考试了！', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (40, '考考考考', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (65, '手动录入题目', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (66, '考考111', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (67, 'lurutimu', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (68, 'nihaoajisuanjishij', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (69, 'dfsdgsdg', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (74, 'shoiasdfokj', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (75, '花蓝棣华尔乡', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (76, '科技示范OISJ', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (77, '金属拉丝就哦哦i就', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (80, '哦i是OAUSH', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (81, '的说法是大苏打', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (82, 'fefff', 0, NULL, NULL);

-- ----------------------------
-- Table structure for t_paperdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_paperdetail`;
CREATE TABLE `t_paperdetail`  (
  `paperDetailId` int(0) NOT NULL AUTO_INCREMENT COMMENT '试卷详细表Id（唯一）',
  `paperId` int(0) DEFAULT 0 COMMENT '试卷编号Id',
  `exerciseId` int(0) DEFAULT 0 COMMENT '题目编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目内容',
  `typeA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项A',
  `typeB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项B',
  `typeC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项C',
  `typeD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项D',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '正确答案或关键字1',
  `answer2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '关键字2',
  `answer3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '关键字3',
  `exerciseType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目类型',
  `score` int(0) DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`paperDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paperdetail
-- ----------------------------
INSERT INTO `t_paperdetail` VALUES (4, 2, 3, 'Servlet程序运行在服务器Web容器中？', '对', '错', '', '', '对', NULL, NULL, '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (5, 2, 4, 'Applet运行在客户端浏览器中？', '对', '错', '', '', '对', NULL, NULL, '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (6, 2, 5, 'Tomcat是一款免费、开源且全面支持Java EE规范的应用服务器？', '对', '错', '', '', '错', NULL, NULL, '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (7, 2, 6, '数据库连接池是由应用程序创建和管理的？', '对', '错', NULL, NULL, '对', NULL, NULL, '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (8, 2, 7, '编译好的Servlet应该与JSP文件放在同一个文件夹下？', '对', '错', NULL, NULL, '错', NULL, NULL, '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (9, 2, 8, '使用response的sendRedirect()方法页面跳转会导致地址栏改变？', '对', '错', NULL, NULL, '对', '', '', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (10, 1, 1, '模块的内聚性最高的是？', '逻辑内聚', '时间内聚', '偶然内聚', '功能内聚', 'D', '', '', '选择题', 4);
INSERT INTO `t_paperdetail` VALUES (11, 1, 2, '结构化程序设计的一种基本方法是？', '筛选法', '迭代法', '逐步求精法', '递归法', 'C', NULL, NULL, '选择题', 4);
INSERT INTO `t_paperdetail` VALUES (12, 2, 9, '测试增加题目内容1', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (13, 1, 3, '下列属于度量效益方法的是？', '货币的时间价值 ', '投资回收期', '收入', '投资回报率', 'ABC', NULL, NULL, '选择题', 6);
INSERT INTO `t_paperdetail` VALUES (16, 2, 11, '测试增加题目内容3', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (22, 2, 12, '测试增加题目内容4', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (23, 2, 1, '测试增加题目内容5', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `scoreId` int(0) NOT NULL AUTO_INCREMENT COMMENT '成绩Id（唯一）',
  `userId` int(0) DEFAULT NULL COMMENT '用户编号',
  `paperId` int(0) DEFAULT NULL COMMENT '试卷编号',
  `mark` int(0) DEFAULT NULL COMMENT '成绩',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_score
-- ----------------------------
INSERT INTO `t_score` VALUES (1, 1, 2, 15, '2018年秋季学期17级JavaEE期末考试题');
INSERT INTO `t_score` VALUES (3, 2, 2, 20, '2018年秋季学期17级JavaEE期末考试题');
INSERT INTO `t_score` VALUES (4, 4, 1, 14, '2015年春季学期14级软件工程导论期末考试题');
INSERT INTO `t_score` VALUES (5, 2, 1, 8, '2015年春季学期14级软件工程导论期末考试题');
INSERT INTO `t_score` VALUES (6, 3, 1, 16, '2015年春季学期14级软件工程导论期末考试题');
INSERT INTO `t_score` VALUES (7, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (8, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (9, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (10, 1, 2, 65, '2018年秋季学期17级JavaEE期末考试题');
INSERT INTO `t_score` VALUES (11, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (12, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (13, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (14, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (15, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (16, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (17, 2, 1, 15, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (18, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (19, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (20, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (21, 2, 1, 99, '测试增加试卷名称');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `userId` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户Id（唯一）',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名不允许重复',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `power` int(0) DEFAULT NULL COMMENT '权限（0为用户，1为管理员）',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123', '19990316', '男', 2, 'http://47.103.10.220:8010/img/1.jpg');
INSERT INTO `t_user` VALUES (2, 'hello', '123', '19990316', '女', 0, 'aaaaaaa');
INSERT INTO `t_user` VALUES (3, '梁莉莉', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/3.jpg');
INSERT INTO `t_user` VALUES (4, '测试用户', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/bg.jpg');
INSERT INTO `t_user` VALUES (17, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (18, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (21, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (23, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');

-- ----------------------------
-- Table structure for t_wrong
-- ----------------------------
DROP TABLE IF EXISTS `t_wrong`;
CREATE TABLE `t_wrong`  (
  `wrongId` int(0) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `userId` int(0) DEFAULT NULL COMMENT '用户id',
  `paperId` int(0) DEFAULT NULL COMMENT '试卷id',
  `paperDetailId` int(0) DEFAULT NULL COMMENT '试题在数据库中的id',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的答案',
  `right` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '这道题正确的答案',
  `score` int(0) DEFAULT NULL COMMENT '这道题的分值',
  `nowScore` int(0) DEFAULT NULL COMMENT '用户得分',
  PRIMARY KEY (`wrongId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_wrong
-- ----------------------------
INSERT INTO `t_wrong` VALUES (1, 1, 2, 24, '后置双摄', '关键字为：HUAWEI 后置 ', 12, 6);
INSERT INTO `t_wrong` VALUES (2, 1, 2, 11, 'A', 'C', 4, 0);
INSERT INTO `t_wrong` VALUES (3, 2, 2, 24, '后置双摄', '关键字为：HUAWEI 后置 ', 12, 6);

SET FOREIGN_KEY_CHECKS = 1;
