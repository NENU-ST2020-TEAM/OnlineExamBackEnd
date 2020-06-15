/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50619
 Source Host           : localhost:3306
 Source Schema         : db_onlineexam

 Target Server Type    : MySQL
 Target Server Version : 50619
 File Encoding         : 65001

 Date: 10/06/2019 21:23:09
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
  `score` int(255) DEFAULT NULL COMMENT '分值',
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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, 2, '测试修改通告标题', '测试修改通告内容', 'Mon Jun 10 21:12:22 CST 2019');
INSERT INTO `t_notice` VALUES (3, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 01:15:18 CST 2019');
INSERT INTO `t_notice` VALUES (4, 4, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 01:16:08 CST 2019');
INSERT INTO `t_notice` VALUES (5, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 03 14:08:49 CST 2019');
INSERT INTO `t_notice` VALUES (9, 2, '测试增加通告标题', '测试增加通告内容', 'Mon Jun 10 21:12:22 CST 2019');

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper`  (
  `paperId` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷编号Id（唯一）',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  PRIMARY KEY (`paperId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES (2, '2018年秋季学期17级JavaEE期末考试题');
INSERT INTO `t_paper` VALUES (3, '测试修改试卷');
INSERT INTO `t_paper` VALUES (4, '测试');
INSERT INTO `t_paper` VALUES (8, '测试增加试卷');

-- ----------------------------
-- Table structure for t_paperdetail
-- ----------------------------
DROP TABLE IF EXISTS `t_paperdetail`;
CREATE TABLE `t_paperdetail`  (
  `paperDetailId` int(11) NOT NULL AUTO_INCREMENT COMMENT '试卷详细表Id（唯一）',
  `paperId` int(255) DEFAULT NULL COMMENT '试卷编号Id',
  `exerciseId` int(11) DEFAULT NULL COMMENT '题目编号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目内容',
  `typeA` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项A',
  `typeB` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项B',
  `typeC` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项C',
  `typeD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '选项D',
  `answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '正确答案',
  `exerciseType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '题目类型',
  `score` int(255) DEFAULT NULL COMMENT '分值',
  PRIMARY KEY (`paperDetailId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_paperdetail
-- ----------------------------
INSERT INTO `t_paperdetail` VALUES (2, 2, 1, '程序中的语法错误可以在编译时立即发现？', '对', '错', '', '', '对', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (3, 2, 2, 'JSP程序运行在客户端浏览器中？', '对', '错', '', '', '错', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (4, 2, 3, 'Servlet程序运行在服务器Web容器中？', '对', '错', '', '', '对', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (5, 2, 4, 'Applet运行在客户端浏览器中？', '对', '错', '', '', '对', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (6, 2, 5, 'Tomcat是一款免费、开源且全面支持Java EE规范的应用服务器？', '对', '错', '', '', '错', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (7, 2, 6, '数据库连接池是由应用程序创建和管理的？', '对', '错', NULL, NULL, '对', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (8, 2, 7, '编译好的Servlet应该与JSP文件放在同一个文件夹下？', '对', '错', NULL, NULL, '错', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (9, 2, 8, '使用response的sendRedirect()方法页面跳转会导致地址栏改变？', '对', '错', NULL, NULL, '对', '判断题', 2);
INSERT INTO `t_paperdetail` VALUES (10, 1, 1, '模块的内聚性最高的是？', '逻辑内聚', '时间内聚', '偶然内聚', '功能内聚', 'D', '单选题', 4);
INSERT INTO `t_paperdetail` VALUES (11, 1, 2, '结构化程序设计的一种基本方法是？', '筛选法', '迭代法', '逐步求精法', '递归法', 'C', '单选题', 4);
INSERT INTO `t_paperdetail` VALUES (12, 2, 9, '测试增加题目内容', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', '测试增加题目内容', 120);
INSERT INTO `t_paperdetail` VALUES (13, 1, 3, '下列属于度量效益方法的是？', '货币的时间价值 ', '投资回收期', '收入', '投资回报率', 'ABC', '多选题', 6);
INSERT INTO `t_paperdetail` VALUES (14, 1, 4, '下面哪些测试属于白盒测试？', '基本路径测试', '等价类划分', '逻辑覆盖测试', '边界值分析', 'AC', '多选题', 6);
INSERT INTO `t_paperdetail` VALUES (15, 2, 10, '测试增加题目内容', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', '测试增加题目内容', 120);
INSERT INTO `t_paperdetail` VALUES (16, 2, 11, '测试增加题目内容', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', '测试增加题目内容', 120);
INSERT INTO `t_paperdetail` VALUES (22, 2, 12, '测试增加题目内容', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', '测试增加题目内容', 120);
INSERT INTO `t_paperdetail` VALUES (23, 2, 1, '测试增加题目内容', '测试A', '测试B', '测试C', '测试D', '测试增加正确答案', '测试增加题目内容', 120);

-- ----------------------------
-- Table structure for t_score
-- ----------------------------
DROP TABLE IF EXISTS `t_score`;
CREATE TABLE `t_score`  (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩Id（唯一）',
  `userId` int(11) DEFAULT NULL COMMENT '用户编号',
  `paperId` int(11) DEFAULT NULL COMMENT '试卷编号',
  `mark` int(255) DEFAULT NULL COMMENT '成绩',
  `paperName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '试卷名称',
  PRIMARY KEY (`scoreId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

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
  `power` int(255) DEFAULT NULL COMMENT '权限（0为用户，1为管理员）',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', '123', '19990316', '男', 1, 'http://47.103.10.220:8010/img/1.jpg');
INSERT INTO `t_user` VALUES (2, 'student', '123', '19990316', '女', 0, 'http://47.103.10.220:8010/img/2.jpg');
INSERT INTO `t_user` VALUES (3, '梁莉莉', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/3.jpg');
INSERT INTO `t_user` VALUES (4, '测试用户', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/bg.jpg');
INSERT INTO `t_user` VALUES (5, '测试注册', '123', '19990316', '女', 1, 'http://47.103.10.220:8010/img/1.jpg');

SET FOREIGN_KEY_CHECKS = 1;
