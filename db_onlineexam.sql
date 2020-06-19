/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : db_onlineexam

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 19/06/2020 16:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer`  (
  `answerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '答题情况Id（唯一）',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `exerciseId` int(11) DEFAULT NULL COMMENT '试卷题目编号',
  `score` int(11) DEFAULT NULL COMMENT '分值',
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
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `paperId` int(11) DEFAULT NULL COMMENT '试卷编号',
  `paperDetailId` int(11) UNSIGNED ZEROFILL DEFAULT 00000000000 COMMENT '试题编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_connect
-- ----------------------------
INSERT INTO `t_connect` VALUES (1, 1, 00000000025);
INSERT INTO `t_connect` VALUES (2, 1, 00000000026);
INSERT INTO `t_connect` VALUES (3, 1, 00000000010);
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
INSERT INTO `t_connect` VALUES (18, 1, 00000000010);
INSERT INTO `t_connect` VALUES (19, 1, 00000000010);
INSERT INTO `t_connect` VALUES (20, 1, 00000000010);
INSERT INTO `t_connect` VALUES (21, 1, 00000000010);
INSERT INTO `t_connect` VALUES (22, 1, 00000000010);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告Id（唯一）',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `createTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`noticeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `paperId` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷编号Id（唯一）',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  `status` int(255) DEFAULT 0 COMMENT '是否发布(0：未发布，1：已发布)',
  `beginTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布时间',
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '做题时长',
  PRIMARY KEY (`paperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (2, '2018年秋季学期17级JavaEE期末考试题', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (4, '测试', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (8, '测试增加试卷', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (9, 'test', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (10, 'test2', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (12, '2020年春季学期软件质量保证与测试考试', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (19, 'test3', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (20, '增加试卷', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (27, '增加试卷testtest', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (28, '增加试卷名称测试', 0, NULL, NULL);
INSERT INTO `t_paper` VALUES (31, '增加试卷名称测试', 0, NULL, NULL);

-- ----------------------------
-- Table structure for t_paperdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_paperdetail`;
CREATE TABLE `t_paperdetail`  (
  `paperDetailId` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷详细表Id（唯一）',
  `paperId` int(11) DEFAULT 0 COMMENT '试卷编号Id',
  `exerciseId` int(11) DEFAULT 0 COMMENT '题目编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目内容',
  `typeA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项A',
  `typeB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项B',
  `typeC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项C',
  `typeD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '选项D',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '正确答案或关键字1',
  `answer2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '关键字2',
  `answer3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '关键字3',
  `exerciseType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目类型',
  `score` int(11) DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`paperDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paperdetail
-- ----------------------------
INSERT INTO `t_paperdetail` VALUES (2, 2, 2, 'JSP程序运行在客户端浏览器中？', '对', '错', '', '', '错', NULL, NULL, '判断题', 2);
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
INSERT INTO `t_paperdetail` VALUES (14, 1, 4, '下面哪些测试属于白盒测试？', '基本路径测试', '等价类划分', '逻辑覆盖测试', '边界值分析', 'AC', NULL, NULL, '选择题', 6);
INSERT INTO `t_paperdetail` VALUES (15, 2, 10, '测试增加题目内容2', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (16, 2, 11, '测试增加题目内容3', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (22, 2, 12, '测试增加题目内容4', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (23, 2, 1, '测试增加题目内容5', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', NULL, NULL, '选择题', 120);
INSERT INTO `t_paperdetail` VALUES (35, 0, 0, 'testtest', NULL, NULL, NULL, NULL, 'testAnswer', 'testAnswer2', 'testAnswer3', '简答题', 150);
INSERT INTO `t_paperdetail` VALUES (37, 0, 0, 'testhello', NULL, NULL, NULL, NULL, 'testAnswer', 'testAnswer2', 'testAnswer3', '简答题', 100);
INSERT INTO `t_paperdetail` VALUES (48, 0, 0, '增加题目内容', '', '', '', '', '测试增加正确答案', '', '', '简答题', 12);
INSERT INTO `t_paperdetail` VALUES (50, 0, 0, '增加题目内容', '', '', '', '', '测试增加正确答案', '', '', '简答题', 12);

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩Id（唯一）',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `paperId` int(11) DEFAULT NULL COMMENT '试卷编号',
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
INSERT INTO `t_score` VALUES (17, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (18, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (19, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (20, 2, 1, 99, '测试增加试卷名称');
INSERT INTO `t_score` VALUES (21, 2, 1, 99, '测试增加试卷名称');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `userId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户Id（唯一）',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名不允许重复',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户密码',
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '出生日期',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `power` int(11) DEFAULT NULL COMMENT '权限（0为用户，1为管理员）',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123', '19990316', '男', 1, 'http://47.103.10.220:8010/img/1.jpg');
INSERT INTO `t_user` VALUES (2, 'hello', '123', '19990316', '女', 0, 'aaaaaaa');
INSERT INTO `t_user` VALUES (3, '梁莉莉', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/3.jpg');
INSERT INTO `t_user` VALUES (4, '测试用户', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/bg.jpg');
INSERT INTO `t_user` VALUES (17, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (18, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (19, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (20, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (21, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (22, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');
INSERT INTO `t_user` VALUES (23, '测试注册', '123', '19990316', '女', 1, 'aaaaaaa');

-- ----------------------------
-- Table structure for t_wrong
-- ----------------------------
DROP TABLE IF EXISTS `t_wrong`;
CREATE TABLE `t_wrong`  (
  `wrongId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key',
  `userId` int(11) DEFAULT NULL COMMENT '用户id',
  `paperId` int(11) DEFAULT NULL COMMENT '试卷id',
  `paperDetailId` int(11) DEFAULT NULL COMMENT '试题在数据库中的id',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户的答案',
  `right` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '这道题正确的答案',
  `score` int(11) DEFAULT NULL COMMENT '这道题的分值',
  `nowScore` int(11) DEFAULT NULL COMMENT '用户得分',
  PRIMARY KEY (`wrongId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_wrong
-- ----------------------------
INSERT INTO `t_wrong` VALUES (1, 1, 2, 24, '后置双摄', '关键字为：HUAWEI 后置 ', 12, 6);
INSERT INTO `t_wrong` VALUES (2, 1, 2, 11, 'A', 'C', 4, 0);
INSERT INTO `t_wrong` VALUES (3, 1, 2, 24, '后置双摄', '关键字为：HUAWEI 后置 ', 12, 6);
INSERT INTO `t_wrong` VALUES (6, 1, 2, 11, 'A', 'C', 4, 0);
INSERT INTO `t_wrong` VALUES (7, 1, 2, 3, '对', '错', 2, 0);

SET FOREIGN_KEY_CHECKS = 1;
