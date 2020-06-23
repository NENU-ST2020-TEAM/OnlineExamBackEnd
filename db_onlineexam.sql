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

 Date: 23/06/2020 21:36:57
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
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_connect
-- ----------------------------
INSERT INTO `t_connect` VALUES (1, 3, 00000000023);
INSERT INTO `t_connect` VALUES (2, 3, 00000000035);
INSERT INTO `t_connect` VALUES (3, 3, 00000000006);
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
INSERT INTO `t_connect` VALUES (92, 83, 00000000000);
INSERT INTO `t_connect` VALUES (93, 83, 00000000091);
INSERT INTO `t_connect` VALUES (94, 83, 00000000092);
INSERT INTO `t_connect` VALUES (95, 83, 00000000093);
INSERT INTO `t_connect` VALUES (96, 84, 00000000000);
INSERT INTO `t_connect` VALUES (97, 84, 00000000094);
INSERT INTO `t_connect` VALUES (98, 100000, 00000000095);
INSERT INTO `t_connect` VALUES (99, 85, 00000000000);
INSERT INTO `t_connect` VALUES (100, 85, 00000000097);
INSERT INTO `t_connect` VALUES (101, 86, 00000000000);
INSERT INTO `t_connect` VALUES (102, 87, 00000000000);
INSERT INTO `t_connect` VALUES (103, 88, 00000000000);
INSERT INTO `t_connect` VALUES (104, 89, 00000000000);
INSERT INTO `t_connect` VALUES (105, 89, 00000000004);
INSERT INTO `t_connect` VALUES (106, 89, 00000000005);
INSERT INTO `t_connect` VALUES (107, 89, 00000000007);
INSERT INTO `t_connect` VALUES (108, 89, 00000000010);
INSERT INTO `t_connect` VALUES (109, 90, 00000000000);
INSERT INTO `t_connect` VALUES (110, 90, 00000000004);
INSERT INTO `t_connect` VALUES (111, 90, 00000000005);
INSERT INTO `t_connect` VALUES (112, 90, 00000000090);
INSERT INTO `t_connect` VALUES (113, 90, 00000000096);
INSERT INTO `t_connect` VALUES (114, 90, 00000000092);
INSERT INTO `t_connect` VALUES (115, 90, 00000000093);
INSERT INTO `t_connect` VALUES (116, 91, 00000000000);
INSERT INTO `t_connect` VALUES (117, 91, 00000000013);
INSERT INTO `t_connect` VALUES (118, 91, 00000000006);
INSERT INTO `t_connect` VALUES (119, 91, 00000000004);
INSERT INTO `t_connect` VALUES (120, 91, 00000000097);
INSERT INTO `t_connect` VALUES (121, 91, 00000000092);
INSERT INTO `t_connect` VALUES (122, 92, 00000000000);
INSERT INTO `t_connect` VALUES (123, 92, 00000000093);
INSERT INTO `t_connect` VALUES (124, 92, 00000000094);
INSERT INTO `t_connect` VALUES (125, 92, 00000000095);
INSERT INTO `t_connect` VALUES (126, 92, 00000000096);
INSERT INTO `t_connect` VALUES (127, 92, 00000000097);
INSERT INTO `t_connect` VALUES (128, 93, 00000000000);
INSERT INTO `t_connect` VALUES (129, 94, 00000000000);
INSERT INTO `t_connect` VALUES (130, -1, 00000000098);
INSERT INTO `t_connect` VALUES (131, 95, 00000000000);
INSERT INTO `t_connect` VALUES (132, 95, 00000000099);
INSERT INTO `t_connect` VALUES (133, 96, 00000000000);
INSERT INTO `t_connect` VALUES (134, 96, 00000000100);
INSERT INTO `t_connect` VALUES (135, 96, 00000000101);
INSERT INTO `t_connect` VALUES (136, 97, 00000000000);
INSERT INTO `t_connect` VALUES (137, 97, 00000000004);
INSERT INTO `t_connect` VALUES (138, 97, 00000000007);
INSERT INTO `t_connect` VALUES (139, 97, 00000000010);
INSERT INTO `t_connect` VALUES (140, 98, 00000000000);
INSERT INTO `t_connect` VALUES (141, 98, 00000000004);
INSERT INTO `t_connect` VALUES (142, 98, 00000000091);
INSERT INTO `t_connect` VALUES (143, 98, 00000000098);
INSERT INTO `t_connect` VALUES (144, 99, 00000000000);
INSERT INTO `t_connect` VALUES (145, 99, 00000000004);
INSERT INTO `t_connect` VALUES (146, 99, 00000000091);
INSERT INTO `t_connect` VALUES (147, 99, 00000000098);

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
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `t_notice` VALUES (21, 1, '133', '123', 'Mon Jun 22 15:59:17 CST 2020');
INSERT INTO `t_notice` VALUES (22, 1, '111', '111', 'Tue Jun 23 13:15:02 CST 2020');

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `paperId` int(0) NOT NULL AUTO_INCREMENT COMMENT '试卷编号Id（唯一）',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  `status` int(0) DEFAULT 0 COMMENT '是否发布(0：未发布，1：已发布)',
  `beginTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布时间',
  `endTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '结束时间',
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '做题时长',
  PRIMARY KEY (`paperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (3, '2017年秋季学期17级高等数学期末考试题', 1, '开始:2020年06月08日15时00分00秒', '结束:2020年6月30日23时59分59秒', '90');
INSERT INTO `t_paper` VALUES (10, 'test2', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (12, '2020年春季学期软件质量保证与测试考试', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (38, '12345678考试了！', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (40, '考考考考', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (65, '手动录入题目', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (66, '考考111', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (67, 'lurutimu', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (74, 'shoiasdfokj', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (96, 'eee', 0, NULL, NULL, NULL);
INSERT INTO `t_paper` VALUES (99, 'rrr', 0, NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `t_paperdetail` VALUES (90, 0, 0, 'sdoajshdoiahhiquwhivasdasdasd', 'dui', 'cuo', NULL, NULL, 'A', NULL, NULL, '判断题', 3);
INSERT INTO `t_paperdetail` VALUES (91, 0, 0, 'meinuxiaojie', 'A', 'B', 'C', 'D', 'D', NULL, NULL, '选择题', 10);
INSERT INTO `t_paperdetail` VALUES (92, 0, 0, 'JISOIJDOAIHFEUKS', 'null', NULL, NULL, NULL, 'SAD', NULL, NULL, '简答题', 100);
INSERT INTO `t_paperdetail` VALUES (93, 0, 0, 'SDASDHFGFGRXZVAAFS', 'undefined', NULL, NULL, NULL, 'GFG', NULL, NULL, '填空题', 6);
INSERT INTO `t_paperdetail` VALUES (94, 0, 0, 'FHDFDFGDFG', 'undefined', NULL, NULL, NULL, 'FGFG', NULL, NULL, '填空题', 6);
INSERT INTO `t_paperdetail` VALUES (95, 0, 0, '的花费话费', 'A', 'B', NULL, NULL, 'A', NULL, NULL, '判断题', 19);
INSERT INTO `t_paperdetail` VALUES (96, 0, 0, '的花费话费', 'A', 'B', NULL, NULL, 'A', NULL, NULL, '判断题', 19);
INSERT INTO `t_paperdetail` VALUES (97, 0, 0, 'SDFSDGAWE', 'null', NULL, NULL, NULL, 'S', NULL, NULL, '简答题', 24);
INSERT INTO `t_paperdetail` VALUES (98, 0, 0, 'asdasfasasdasd', 'null', NULL, NULL, NULL, 'SDFS', NULL, NULL, '简答题', 16);
INSERT INTO `t_paperdetail` VALUES (99, 0, 0, 'ggggggg', 'null', NULL, NULL, NULL, 'g', NULL, NULL, '简答题', 19);
INSERT INTO `t_paperdetail` VALUES (100, 0, 0, 'wedwefw', 'A', 'B', 'C', 'D', 'A', NULL, NULL, '选择题', 30);

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
INSERT INTO `t_score` VALUES (16, 2, 3, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (17, 2, 3, 15, '测试增加试卷名称');
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
INSERT INTO `t_user` VALUES (5, 'aaa', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (17, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (18, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (21, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');

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
