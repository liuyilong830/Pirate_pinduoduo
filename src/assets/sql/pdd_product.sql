/*
 Navicat Premium Data Transfer

 Source Server         : node-sql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : pdd_product

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 25/02/2020 15:37:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `uid` int(0) NOT NULL,
  `rec_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rec_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rec_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rec_detail_add` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `aid` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (9, '刘逸龙', '15073382436', '湖南省-株洲市-茶陵县', '巨田村', 1);
INSERT INTO `address` VALUES (9, '张非', '19562656564', '山西省-大同市-新荣区', '你在哪', 2);
INSERT INTO `address` VALUES (10, '张三', '51616115165', '河北省-邢台市-柏乡县', '沙发', 40);
INSERT INTO `address` VALUES (10, '发电机房', '15161516515', '河北省-邢台市-柏乡县', '撒打飞机', 44);

-- ----------------------------
-- Table structure for classify
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify`  (
  `class_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30068 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES (30000, '热门分类', NULL);
INSERT INTO `classify` VALUES (30001, '本周热门', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30002, '方便速食', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30003, '坚果蜜饯', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30004, '糕点点心', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30005, '牛奶饮料', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30006, '茶', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30007, '饼干膨化', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30008, '肉干/海味', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30009, '粮油/调料', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30010, '传统滋补', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30011, '营养保健', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30012, '中外名酒', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30013, '营养成分', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30014, '纸品湿巾', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30015, '个人清洁', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30016, '家用清洁', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30017, '个人护理', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30018, '箱包配件', NULL);
INSERT INTO `classify` VALUES (30019, '女鞋', NULL);
INSERT INTO `classify` VALUES (30020, '男鞋', NULL);
INSERT INTO `classify` VALUES (30021, '餐具茶具', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30022, '收纳洗晒', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30023, '饰品', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30024, '宠物/绿植', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30025, '厨房烹饪', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30026, '居家日用', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30027, '水杯水壶', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30028, '车用电器', NULL);
INSERT INTO `classify` VALUES (30029, '车内装饰', NULL);
INSERT INTO `classify` VALUES (30030, '清洗养护', NULL);
INSERT INTO `classify` VALUES (30031, '外饰改装', NULL);
INSERT INTO `classify` VALUES (30032, '汽车零配件', NULL);
INSERT INTO `classify` VALUES (30033, '学习用品', NULL);
INSERT INTO `classify` VALUES (30034, '童装', NULL);
INSERT INTO `classify` VALUES (30035, '纸尿裤', NULL);
INSERT INTO `classify` VALUES (30036, '湿巾洗护', NULL);
INSERT INTO `classify` VALUES (30037, '手机配件', NULL);
INSERT INTO `classify` VALUES (30038, '手机', NULL);
INSERT INTO `classify` VALUES (30039, '女士专用', NULL);
INSERT INTO `classify` VALUES (30040, '男士专区', NULL);
INSERT INTO `classify` VALUES (30041, '美妆工具', NULL);
INSERT INTO `classify` VALUES (30042, '彩妆', NULL);
INSERT INTO `classify` VALUES (30043, '面部护理', NULL);
INSERT INTO `classify` VALUES (30044, '美发造型', NULL);
INSERT INTO `classify` VALUES (30045, '香水', NULL);
INSERT INTO `classify` VALUES (30046, '假发', NULL);
INSERT INTO `classify` VALUES (30047, '励志/经管', NULL);
INSERT INTO `classify` VALUES (30048, '考试教辅', NULL);
INSERT INTO `classify` VALUES (30049, '新鲜水果', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30050, '娱乐影音', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30051, '文化用品', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30052, '居家布艺', NULL);
INSERT INTO `classify` VALUES (30053, '日常用药', NULL);
INSERT INTO `classify` VALUES (30054, '户外装备', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30055, '灯具灯饰', NULL);
INSERT INTO `classify` VALUES (30056, '厨房卫浴', NULL);
INSERT INTO `classify` VALUES (30057, '个人护理保健', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30058, '中式厨电', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30059, '上装', NULL);
INSERT INTO `classify` VALUES (30060, '特色服饰', NULL);
INSERT INTO `classify` VALUES (30061, '女裤', NULL);
INSERT INTO `classify` VALUES (30062, '外套', NULL);
INSERT INTO `classify` VALUES (30063, '特色男装', NULL);
INSERT INTO `classify` VALUES (30064, '下装', NULL);
INSERT INTO `classify` VALUES (30065, '充值', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');
INSERT INTO `classify` VALUES (30066, '进口母婴', NULL);
INSERT INTO `classify` VALUES (30067, '美容护肤', NULL);
INSERT INTO `classify` VALUES (30068, '推荐品牌', '//t13img.yangkeduo.com/cart/2020-01-31/0d80848e3103242dc283dd40ce669011.png?imageMogr2/sharpen/1%7CimageView2/2/w/1300/q/70/format/webp');

-- ----------------------------
-- Table structure for coupon_popup
-- ----------------------------
DROP TABLE IF EXISTS `coupon_popup`;
CREATE TABLE `coupon_popup`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `coupon_price` decimal(10, 2) NOT NULL,
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_popup
-- ----------------------------
INSERT INTO `coupon_popup` VALUES ('优惠详情', 2.00, '满58元减2元', '2020.2.2-2020.2.29');
INSERT INTO `coupon_popup` VALUES ('优惠详情', 3.00, '满128元减3元', '2020.1.31-2020.2.28');
INSERT INTO `coupon_popup` VALUES ('优惠详情', 5.00, '满228元减5元', '2020.2.7-2020.2.28');
INSERT INTO `coupon_popup` VALUES ('优惠详情', 5.00, '满228元减5元', '2020.2.2-2020.2.29');

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail`  (
  `icon_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_price` decimal(10, 2) NOT NULL,
  `old_price` decimal(10, 2) NOT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `welfare` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coupon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `welfares` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_seller_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `base_seller` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `base_seller_num` decimal(10, 0) NULL DEFAULT NULL,
  `evaluation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_eval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second_eval` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `iid` int(0) NOT NULL,
  `shop_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `commodity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expensive_price` decimal(10, 2) NOT NULL,
  INDEX `iid`(`iid`) USING BTREE,
  CONSTRAINT `iid` FOREIGN KEY (`iid`) REFERENCES `goods` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 6.80, 11.90, '已拼10万+件', '//t00img.yangkeduo.com/goods/images/2018-12-29/e01ec845d67c3717fd0581da8dbf86bd.png?imageMogr2/quality/70', '【48卷加量装赠毛巾】48卷/12卷竹浆本色卫生纸卷纸批发家用纸巾', '退货包运费', '领券,满58元减2元,满128元减3元,满228元减5元', '退货包运费,极速退款,全场包邮,7天无理由退货', 'https://pinduoduoimg.yangkeduo.com/transaction_process/c1d6ab05fffb4726d8dd09df1c884dfc78acc8cd.png', '「卷筒纸畅销榜」第', 1, '商品评价(1428279)', '亲，我刚收到货就来评价，卫生纸真心不错，比超市便宜还实惠，需要的亲们赶快下手吧！', '喜欢这款本色纸巾。质量很好。店家还送小毛巾。谢谢店家，祝生意兴隆！需要的朋友放心购买，无尘，细腻。好用。', 202001, '//t00img.yangkeduo.com/goods/images/2018-12-25/75f45649940e44b60e62cc42ca350d92.jpeg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '31', '臻木品牌,臻竹系列:臻选品质,诺心如一。臻竹本色竹浆卷纸,独特的超柔加厚设计,柔软丝滑,加倍柔韧。使用更舒适。多一层 省一节,更实惠,更耐用,使用更节省。臻竹愿景:健康生活从一张纸开始,我们通过臻竹用最高的品质 最实惠的价格 收益和影响更多的消费者。【48卷精品装!】精选优质原生竹浆,让纸巾更加厚实坚韧!臻竹本色, 温柔呵护肌肤,湿水依然柔韧,孕婴都适用。 规格:14卷,卷高12.5cm,1000克/提;40卷,卷高11.5cm,6斤/提;48卷【一包用半年】,卷高12.5cm,16卷*3/提;', 12.90);
INSERT INTO `detail` VALUES (NULL, 16.60, 66.00, '已拼1.1万件', NULL, '苹果数据线6/5s/7/6s/8plusSE/iPhoneX快充手机充电线加长xrs闪充', '极速退款', NULL, '极速退款,全场包邮,7天无理由退货,假一赔十', NULL, NULL, NULL, '商品评价(4170)', '收到了商品很满意，马上拿出来试用，效果很好线的质量不错。想买的赶紧下单吧！好评了！', '非常好的产品，充电挺快，看的像原装正品', 202002, '//t00img.yangkeduo.com/goods/images/2019-07-20/a9601517-03c2-472f-8094-2e634004bbc0.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '15', '快充数据线提速99% 90天免费试用,,一年质保,敢质量敢承诺!数据线适用于兼容iPhone6s/5/5s/7/7Plus/8/x8p/SE/6PLUS手机型号充电线充电器头ipad线,现货秒发,如有不懂 联络客服哦', 6.80);
INSERT INTO `detail` VALUES (NULL, 2.99, 9.90, '已拼10万+件', NULL, '垃圾袋家用批发办公厨房黑色加厚手提背心式加厚塑料袋自中大号', '极速退款', NULL, '极速退款,全场包邮,7天无理由退货', NULL, NULL, NULL, '商品评价(315494)', '这次买这个袋子我很满意不管是大还是厚度都有的。质量是没可话说的，超级划算，给你5星好评。', '货收到了 质量很好 我还特意数了一下 八个捆 一个捆五十个 正好四百个 值得信赖的商家', 202003, '//t16img.yangkeduo.com/img_check/2019-07-02/32258b5315ecb76ce4518c0bdde075c1.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '6', '【有拉手不怕脏】手提垃圾袋不脏手,全部黑色保护隐私避免尴尬,超强韧性,拉力好,承重强,不漏水,环保安全无毒无味。尺寸:32*52(高度包含提手,手工测量误差±2CM)。整个打开宽度为46.适用于30厘米以下直径的垃圾桶。多种数量可供选择。多买多优惠!适合家庭,厨房,宾馆酒店,学校,办公室等。【机器生产过程中偶尔会出现少1-2个,属于正常现象。是行业弊端无法避免,介意慎拍!】本店默认发圆通快递。【温馨提示:在您收到货的时候,个别垃圾袋会因为放在快递袋子里面时间长了,可能夹杂快递袋子的味道,属于正常现象,收到货后把每个袋子摊开晾一下,味道就没有了哦!】有任何不满意请联系客服,我们会为您一一解答。您的满意是我们的追求!愿您购物愉快!', 35.90);
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 9.34, 139.00, '已拼10万+件', '//t00img.yangkeduo.com/goods/images/2018-12-29/e01ec845d67c3717fd0581da8dbf86bd.png?imageMogr2/quality/70', '可选usb充电电子称体重秤精准家用健康秤人体秤成人减肥称重计器', '极速退款', NULL, '极速退款,全场包邮,7天无理由退货,假一赔十', 'https://pinduoduoimg.yangkeduo.com/transaction_process/c1d6ab05fffb4726d8dd09df1c884dfc78acc8cd.png', '「体重秤畅销榜」第', 1, '商品评价(653385)', '宝贝收到。好好咯，做工好精致，质量杠杠的。包装盒里面有防损泡沫板，说明书讲的很详细，一看就懂，还有配套赠品，商家想的很周到。客服小姐姐的服务态度非常好。必须给5星好评。同时也祝老板生意兴隆，财源广进。物流也挺快。快递小哥马不停蹄的就给送过来了。真是一次愉快的购物体验。', '这是第二次购买，物流很快，服务态度很好。物美′价廉。', 202004, '//t16img.yangkeduo.com/pdd_ims/8d75e6266d9de7e0d37f9b70dd17d0b2.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '4', '(注意儿童款为21*25尺寸之外,其他产品尺寸均为26*26cm )1.公斤市斤互换,2.夜视测温,防侧翻3.高精准传感器,误差精准到0.05kg,4.,4两起称可以承受180KG(21*25款式5KG起称);5.安全环保,电池款采用普通七号电池【非纽扣电池】;6.节能省电,电池款平均一对电池使用1000次,充电款平均4个月充电一次;7.自动开关机,人站上去自动开机,八秒左右自动关机。8.保修时间长,终身以旧换新(亲,7天无理由退换货,1个月内质量问题包退换哦~1年内运费AA,终身您出运费给您换新;9.赠品丰富,多买多送,电池款送一对电池和一条皮尺 充电款送一条皮尺和一根USB数据线 (儿童款是5KG起称 精确到小数点后面一位 无单位转换功能 无温度显示)', 18.90);
INSERT INTO `detail` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/1a9801d4-e87e-464b-b785-62be72d8672f.jpg', 7.90, 34.00, '已拼1694件', NULL, '食品级一次性手套PVC乳胶橡胶医用洗碗防水耐磨家用胶皮手套加厚', '退货包运费', NULL, '退货包运费,极速退款,全场包邮,7天无理由退货', NULL, NULL, NULL, '商品评价(459)', '数量少了一只，平时买的小号可以穿戴，这一次戴得好辛苦而且还拉不到底。戴着做事没两下就漏水了，下次不来买了', '质量不错满意实惠，带上正好，值得购买，物流也挺快的', 202005, '//t00img.yangkeduo.com/goods/images/2019-12-07/a83a628f-ac71-4789-9b41-fb7a72eb8742.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '2', '【100只抽取式盒装】【不分左右手通用耐用丁晴手套】正品A级一次性耐用丁晴手套,本产品为A级,其工艺经过吊水测试,外观测试,物理指标等测试,均达到医疗食品级要求,已经通过美国FDA认证,欧美CE认证以及国内的lSO9001/2008/lSO13485等各项认证,请您放心使用!防油防过敏,不分左右手,穿戴方便,适用于厨房料理,食品加工,美容美发,居家清洁,医疗护理,护肤SPA,薇整纹身等,有效防护手部,给您的双手健康呵护。随着生产的批次不同,外观包装会有所改变,但产品质量是一样的,本店铺全部商品保质保量,亲放心团购【尺寸:S小号 M中号 L大号】', 10.18);
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 2.74, 21.00, '已拼10万+件', NULL, '挂钩贴免打孔无痕强力胶粘厨房卫生间宿舍墙面壁上钩子门后连粘钩', NULL, '返现,店铺内拼满23元返2元', '全场包邮,7天无理由退货', 'https://pinduoduoimg.yangkeduo.com/transaction_process/c1d6ab05fffb4726d8dd09df1c884dfc78acc8cd.png', '「粘胶式挂钩畅销榜」第', 1, '商品评价(323741)', '收到货了，试用了一下，太好了，还便宜，在家里买成条的八块钱六个勾，比较贵，还没有这个结实，经济实惠，还会购买，祝老板生意兴隆', '质量很好，粘性强，图案也好看，喜欢、有需要的亲们可以入手了!我个人是很满意的！祝福店家生意兴隆！', 202006, '//t00img.yangkeduo.com/goods/images/2019-05-04/e6c1cb27-7acc-4580-8b73-e60bbd2079e6.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '15', '温馨提示:贴之前需要擦干净贴面,再擦干。贴面必须光滑(例如瓷砖,玻璃,大理石等)贴上后从中间到四周按紧,等几个小时后就可以挂东西了。越重的等待时间越长。【特价冲量不好用不满意掉了可货退】(10个20个40个60个透明图案随机可选)', 7.00);
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 4.80, 69.00, '总售10万+件', '//t00img.yangkeduo.com/goods/images/2018-12-29/e01ec845d67c3717fd0581da8dbf86bd.png?imageMogr2/quality/70', '<纯棉柔软>一次性洗脸巾柔洁美容纯棉毛巾卸妆棉无菌擦脸化妆棉', '预售,极速退款,爱逛街', '返现,店铺内拼满26元返2元', '极速退款,全场包邮,7天无理由退货', NULL, NULL, NULL, '商品评价(709792)', '收到用过才来评价的，洗脸巾很柔软，吸水性也很好，很厚实', '无菌棉收到，特殊时期商家发的顺丰包邮，太棒了谢谢商家，谢谢快递小哥，你们辛苦了！无菌棉包装整齐、干净质量不错会回购。祝商家生意兴隆！', 202007, '//t16img.yangkeduo.com/pdd_ims/mainObject/v1/pub_201909177a144be39fcf4a179788b24202e7ff89.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '19', '本产品是纯棉植物纤维无纺布加工而成,柔软而舒适,更容易吸水,可以干湿两用,代替毛巾,一次一张,干净又卫生,宝宝也可以用哦。擦餐具,水果等都可以哦,更加卫生。一卷150克左右加厚款,规格约20*20一片,珍珠纹的50片左右,网纹款的68片左右哦。现在下单多买多送哦(都是送同款)', 13.00);
INSERT INTO `detail` VALUES (NULL, 16.90, 29.90, '已拼2.6万件', NULL, '100片可孚医用75%酒精棉片医用消毒棉球一次性酒精棉伤口消毒棉片', '退货包运费', NULL, '退货包运费,全场包邮,7天无理由退货,假一赔十', NULL, NULL, NULL, '商品评价(1034)', '卖家诚信可靠，值得信赖！快递及时发货，准时到达，在这大环境下，真心谢谢啦！给父母了一盒。', '2合共100片，用起来不错。现在特殊时期能几天快递就到了很好!', 202008, '//t00img.yangkeduo.com/goods/images/2019-04-10/71e82965-2bde-43ec-9292-2d420edf8a4e.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '238', '酒精棉片医用消毒棉球手机消毒湿巾一次性酒精棉伤口消毒', 39.90);
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 5.10, 11.80, '已拼10万+件', NULL, '指纹打火机充电激光刻字高档礼物超薄男士个性防风创意搞怪点烟器', '退货包运费', '返现,店铺内拼满23元返2元', '退货包运费,极速退款,全场包邮,7天无理由退货', 'https://pinduoduoimg.yangkeduo.com/transaction_process/c1d6ab05fffb4726d8dd09df1c884dfc78acc8cd.png', '「打火机畅销榜」第', 1, '商品评价(899822)', '打火机收到了充了电试用了一下很好用，老公很高兴，在外面有风天也不怕点不着火了，太好用了，宝蓝色的高端大气上档次，轻薄小巧不占地方，物流很快，客服耐心详细解答，会介绍给亲戚朋友购买真的很好，祝商家生意兴隆！', '太先进了，原来只用电根本不用气，算算真划算，而且外观漂亮，指纹识别，太爽了，科技太发达了，我们走在科技最前面，谢谢老板，我会介绍我所有朋友来你们店铺买。', 202009, '//t16img.yangkeduo.com/pdd_ims/9cf745fa4c1623ccf18d99185fbe0f0d.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '17', '收藏加够优先发货', 28.00);
INSERT INTO `detail` VALUES ('https://t13img.yangkeduo.com/cart/2020-01-31/0e49a0ff0569ba5378e29e2f99a6904c.png?imageMogr2/strip%7CimageView2/2/w/1300/q/80', 14.80, 52.00, '已拼5.3万件', '//t13img.yangkeduo.com/cart/2019-09-06/aade895021d5ce591bba51aee99f4904.png?imageMogr2/quality/70', '厨房蒜泥神器压捣蒜器手动绞肉机打蒜机姜末蒜泥器小型搅蒜器搅碎【2月27日发完】', '预售,极速退款', NULL, '极速退款,全场包邮,7天无理由退货,假一赔十', 'https://pinduoduoimg.yangkeduo.com/transaction_process/c1d6ab05fffb4726d8dd09df1c884dfc78acc8cd.png', '「剥蒜器畅销榜」第', 1, '商品评价(4851)', '蒜泥神器收到，这个小巧玲珑方便用，质量款式都挺好的，我朋友看到也说好，叫我连接给她也下单买了，这个价格买到这个真不错，值给五星好评', '小巧精致，样式美观，实用的饺蒜器。使用了一下非常好，希望能使用略久一点吧（一年多）。价格便宜经常更换，保证食品安全。好评！', 202010, '//t00img.yangkeduo.com/goods/images/2019-04-12/5c5a75fd-d177-469a-9a28-cb6696513cdb.jpg?imageMogr2/strip%7CimageView2/2/w/1300/q/80', '15', '【收藏下单优先发货】本店合作快递有邮政、韵达、如需指定快递请联系客服。蒜泥神器采用食品级杯体,坚固更耐摔,加固刀片,冰块也不怕,磁性刀柱,自动吸附更安全,金属拉绳口,不磨绳子更耐用。可用于碎蒜/磨姜/碎鲜辣椒/绞肉,等等。本店承诺3个月内损坏包退换。', 16.28);

-- ----------------------------
-- Table structure for gif
-- ----------------------------
DROP TABLE IF EXISTS `gif`;
CREATE TABLE `gif`  (
  `gif_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gif
-- ----------------------------
INSERT INTO `gif` VALUES ('//t00img.yangkeduo.com/goods/2020-02-03/cfb2c2fface9d1f3a2e3110683aa88f8.gif?imageView2/2/w/1300/q/70/format/webp');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `welfare` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NOT NULL,
  `count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sid` int(0) NOT NULL AUTO_INCREMENT,
  `Best_seller` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_fan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `second_fan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202046 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-25/776609fd-1baf-4f0c-a8c0-cc1cd8eb0862.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【48卷加量装赠毛巾】48卷/12卷竹浆本色卫生纸卷纸批发家用纸巾', '臻木官方旗舰店', '退货包运费,极速退款,满58减2', 6.80, '已拼10万+件', 202001, '入选卷筒纸畅销榜', 'false', 'https://t20img.yangkeduo.com/a/39320530dc66bee2157450795bac1adc38c93aff-1558439136?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/7ee190d34cb0ff3e86529aa81e5e876f555be730-1528685023?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-06/a57dc0a6-b660-4ef1-b6ee-174a6efb8679.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '苹果6/5s/7/6s/8plus数据线SE/iPhoneX快充手机充电线加长xrs闪充', '辰楚3C数码旗舰店', '极速退款', 5.80, '已拼10万+件', 202002, '入选充电配件畅销榜', 'false', 'https://t21img.yangkeduo.com/a/d2bddb0f77c94341eb6c83e36dfa10de29d7f7e9-1519948858?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/5c76411b1e8e69df81b86e68c28571cb725ff9b8-1577292236?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-14/c8af0ba5-66aa-4515-b4ce-8144098062d9.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '垃圾袋家用批发办公厨房黑色加厚手提背心式加厚塑料袋自中大号', NULL, '极速退款', 2.99, '已拼10万+件', 202003, NULL, 'false', 'https://t20img.yangkeduo.com/a/a5f3f56b0b060f1d620806a24ef5e43c43a0c743-1580892120?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/932507118ca98504282c37414cb9663aecdc357f-1580869220?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/images/2019-09-20/f0a84f58-6e73-439d-97f2-304abd7dd706.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '可选usb充电电子称体重秤精准家用健康秤人体秤成人减肥称重计器', '沪众家居旗舰店', '极速退款', 9.34, '总售10万+件', 202004, '入选体重秤畅销榜', 'false', 'https://t20img.yangkeduo.com/a/d73d42f58cb0faf83c4069b457163d9a33e9297a-1532828928?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/63ce5e0f4a9eb14ca05116a34c39c2617062aa43-1554523296?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-09-15/a32cc036-1181-4d0d-bcc1-1a2c9babf5d6.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '食品级一次性手套PVC乳胶橡胶医用洗碗防水耐磨家用胶皮手套加厚', '小净士艾诺专卖店', '极速退款', 7.18, '已拼10万+件', 202005, NULL, 'false', 'https://t20img.yangkeduo.com/a/acd10214fcdb6407a5c32b463427259e69a4926d-1580750301?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/032a1c95c8c18d79e8d222f7dbdbd29a81354a11-1580215105?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-20/744654fa7ce63478fca982eaec9bee44.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '挂钩贴免打孔无痕强力胶粘厨房卫生间宿舍墙面壁上钩子门后连粘钩', NULL, '极速退款', 2.74, '已拼10万+件', 202006, '入选粘胶式挂钩畅销榜', 'false', 'https://t20img.yangkeduo.com/a/1e98622059d7b109067831062b0bdb2bf09d839e-1580601614?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/083c08f8e7f08b7ec0b7209595256bef61f7dbf1-1579501517?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-09/fe708b2b87a90ec6ea117bdc53f09954.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '<纯棉柔软>一次性洗脸巾柔洁美容纯棉毛巾卸妆棉无菌擦脸化妆棉', 'KimHome美妆官方旗舰店', '极速退款', 4.80, '总售10万+件', 202007, NULL, 'false', 'https://t20img.yangkeduo.com/a/5fd97c82b4847fd23c477a9775e50be7fb0e8873-1549969034?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t21img.yangkeduo.com/a/ee600455949bfc64eeaec40ec8bf07ceb1ba9e16-1515130765?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-28/def8289b-f1e5-496b-a5fa-cd1e98e5032d.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t12img.yangkeduo.com/social/pincard/1/share.png?imageMogr2/strip%7CimageView2/q/80', '100片可孚医用75%酒精棉片医用消毒棉球一次性酒精棉伤口消毒棉片', '可孚健诺专卖店', '正品险,退货包运费', 16.90, '已拼1.9万件', 202008, NULL, 'false', 'https://t20img.yangkeduo.com/a/4211bce0ba3b68e3d354f6b8cc6c42dc71f19c4c-1573635391?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/dcecdbcf1ce58cd079ef3c784355b05e2fce55d2-1580291208?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-04-13/f2beb551-1a32-4acd-8933-e7239f1b3bb4.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '指纹打火机充电激光刻字高档礼物超薄男士个性防风创意搞怪点烟器', NULL, '退货包运费,极速退款', 5.10, '总售10万+件', 202009, '入选打火机畅销榜', 'false', 'https://t20img.yangkeduo.com/a/462332502bd18f7df649511d54b165f3713442e6-1574433121?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/09ce71ec225492172a61c7aa4506c4ba5ce462ba-1577779662?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-20/5c08c1e1-946f-4471-a6ab-60834721124e.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '厨房蒜泥神器压捣蒜器手动绞肉机打蒜机姜末蒜泥器小型搅蒜器搅碎【2月27日发完】', NULL, '极速退款', 14.80, '已拼4.8万件', 202010, '入选剥蒜器畅销榜', 'false', 'https://t20img.yangkeduo.com/a/5925a9285bff425dcc7456ddc6205712efb81d57-1578140220?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/d4050e9316f78022863574df3ab551166f894c0f-1580702680?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-11-29/c9eb108d6c4e9df5714fd939123990e1.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '心逸40包/24包本色抽纸面巾纸纸抽卫生纸巾家用餐巾纸家庭装整箱', '香约纸品专营店', NULL, 19.90, '已拼10万+件', 202011, '入选抽纸畅销榜', 'false', 'https://t20img.yangkeduo.com/a/53fa7cdd6bda1a717d52ea63eec483e6696feca3-1571532196?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/fd00f91d3f105394de05e9b428dd109449d2a520-1580884829?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-05/843cb4b0b5c85e53dbb0894e32967741.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '居家凉拖鞋女夏季室内防滑男家居软底浴室洗澡家用外穿拖鞋情侣', '极速退款', '极速退款', 3.92, '总售10万+件', 202012, '入选女鞋畅销榜', 'false', 'https://t20img.yangkeduo.com/a/f3120175686df2acd884db295951c3d5bc1c3dd2-1557231609?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t21img.yangkeduo.com/a/7d222ed2b6bb32d943ce51416f9edb83073e5302-1525688187?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-13/03d541e7c1add8a59039c08fff332a18.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【超值led节能灯泡】家用灯泡螺口LED灯泡护眼无频闪节能灯球泡灯', '', '退货包运费,极速退款', 1.37, '已拼10万+件', 202013, '入选灯饰照明畅销榜', 'false', 'https://t20img.yangkeduo.com/a/21ff57b528126c1044c20e0734de25739bb9858b-1579355294?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/f0c17f8a2ff06da6c89dedc6cd131dada34a14f3-1577540731?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-17/e882ce80-bbf2-444e-82d3-43c18fa7b3df.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '洗脸束发带女韩版网红化妆敷面膜发箍甜美可爱头饰简约发捆箍发饰', '季诺家居生活官方旗舰店', '极速退款,满30减2', 2.99, '已拼10万+件', 202014, '入选束发带畅销榜', 'false', 'https://t21img.yangkeduo.com/a/a3f41e466c74c1399553cebc96af8cc0bda6ba63-1508666597?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/efea7a903f504836486288921a1478732683225b-1579508027?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-02/ee7eb932be6d494c3be5f6591125b69d.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '花花公子正品男士皮带软皮跑车自动扣腰带韩版潮休闲青年商务裤带', '', '极速退款,满50减2', 5.01, '已拼4.8万件', 202015, NULL, 'false', 'https://t20img.yangkeduo.com/a/cd4cb420d7cea5d0cfbf730ce0741a6fa6024a6d-1580343539?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/45c8b256ccf477443c5c35e99618976d83faa729-1580814938?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-02-02/26ad87d792eae818649b04feb35a088a.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '多功能无线插座转换器插头一转多插孔面板家用夜灯带usb插排插板', NULL, '退货包运费,极速退款,满29减1', 4.51, '已拼10万+件', 202016, NULL, 'false', 'https://t20img.yangkeduo.com/a/0a482e392ec34e6cd1ec6df65729fd1db0a76631-1580636935?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/49815d33b662a99f5d673448be4fa91a007e6b5e-1544750532?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-10-22/9ad8e1b8-0327-47d7-98e7-98debbff0a63.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '修眉刀片女专用锋利刮眉刀套装化妆师专用初学者刮眉修眉画眉神器', NULL, '极速退款', 1.74, '已拼10万+件', 202017, '入选修眉刀畅销榜', 'false', 'https://t20img.yangkeduo.com/a/c90feab161cda1fd6d644e6ee641d210659fb2b8-1566516120?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/296cbf5efd233b6a80ce02beed6038a1a58b30ac-1580890436?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-02/c222f10359d1d5614639c90e6e0fbe7f.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【厂家直销】空气清新剂家用卧室内香薰厕所除臭卫生间固体清香剂', NULL, '满29减3', 2.90, '已拼10万+件', 202018, NULL, 'false', 'https://t20img.yangkeduo.com/a/c0c4210c462a3b771deda3951a4a434d4546305b-1580177737?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/a95aa037e5d621c5ef32e4627e7a8fba48f9d70f-1527829013?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-31/4b8d6376-9090-4138-a66c-97f16d0197ee.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '雨伞男女全自动折叠大号双人手动三折加固防风学生晴雨两用', NULL, '极速退款', 10.06, '已拼10万+件', 202019, '入选伞类畅销榜', 'false', 'https://t20img.yangkeduo.com/a/95ddd32f7a4c890fae811f27c177fac2742ce4d7-1538722826?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/78aa851ff8dd6728a563c3166a376a74fceffbef-1577790569?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-04/f61cc968f32250ea344611328f82d67d.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '日本进口老花镜男高清树脂中老年老花眼镜防辐射抗疲劳老光花镜', '善缘眼镜专营店', '极速退款', 7.47, '已拼9.8万件', 202020, '入选树脂老花镜畅销榜', 'false', 'https://t21img.yangkeduo.com/a/ff74828811a7114d01736b8c01d71fd005c38092-1527129058?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/0e6f2bfd544d64a64bf31dad85c519306d8767f4-1578022252?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-13/b80325634e02d056555d053ffb038b67.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '快速OPPO充电器R9s/R15/R17/R11s 安卓快充充电器通用闪充数据线', NULL, '极速退款', 6.53, '已拼10万+件', 202021, NULL, 'false', 'https://t20img.yangkeduo.com/a/0e9c010ba194ea4e248f650913dd88bc4c82de7c-1580389663?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/f23b0d36d77229ac9415a05bad779a4f3e63e16b-1573464798?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-02/3174eb2f173583cf36d1edd04abcc275.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '床上书桌笔记本电脑桌学生宿舍写字桌小桌子折叠桌宿舍神器', '谕锋家具官方旗舰店', NULL, 9.80, '已拼10万+件', 202022, NULL, 'false', 'https://t20img.yangkeduo.com/a/ecf956a5a03f64e02010b5619dc6e2a8b8665727-1576384177?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/e6993d2a029e4022449e4a9c6fb87c327daade52-1580753167?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-04/0f394e3e8d97f46a1a9ec1f3e967acbe.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '加厚抽绳垃圾袋自动收口垃圾袋加厚手提家用穿绳厨房塑料袋', '羞涩花旗舰店', '退货包运费', 2.98, '已拼10万+件', 202023, NULL, 'false', 'https://t20img.yangkeduo.com/a/aed3b14d10d4820edc28c5d617dd069f981cd982-1555593376?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', NULL);
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-11-19/2d7e7bb1-a75e-411a-9c17-478f341a0f4d.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '指甲刀套装修脚刀套装指甲剪指甲钳锉刀粉刺针鼻毛剪掏耳勺皮推', '', '退货包运费', 4.57, '已拼10万+件', 202024, '入选指甲刀套装畅销榜', 'false', 'https://t20img.yangkeduo.com/a/9542c1f169730c12601476179c8570849214d4e1-1579787225?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/32ae8718b23d08e479a92aaf925a8d084fc63455-1580214518?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-02-05/4b652708-526a-4c4d-a4ef-c16621015fe6.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '外出防护必备一次性手套女乳胶橡胶家务洗碗防水食品级手套加厚长', '小净士艾科专卖店', '极速退款', 7.18, '已拼10万+件', 202025, NULL, 'false', 'https://t20img.yangkeduo.com/a/aae6953bf6edda744962ba16f97e8f68fe4e4ff9-1580796119?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/fda3ed6980679b14002fb1988dd28fac0a1346c3-1580008671?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-02-02/d75063a48d3fe88aee9a3820e65939c4.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【大桶130g/桶】嗨吃家酸辣粉网红夜宵桶装方便速食重庆粉丝整箱', '', '极速退款,72小时发货,满58减2', 11.73, '已拼1万件', 202026, '入选酸辣粉畅销榜', 'false', 'https://t20img.yangkeduo.com/a/a9b9ce4143a73ab12f0f5c68d2ca8657b2447daa-1564711084?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/f0254c62d267d4674e9b769844966532d5828613-1578846808?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-02/8cbd916c4568fca980e20bf87867f234.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【吃鸡神器】刺激战场辅助按键一体式安卓苹果通用游戏手柄神器', NULL, '极速退款', 2.27, '已拼4737件', 202027, NULL, 'false', 'https://t20img.yangkeduo.com/a/a95cd0baec133056852dd0b2308467f7f9029da7-1580892521?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/9d9157f7807c6fac1f153a01eea3b2d66531116f-1576211693?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-09-10/4b697ddb-468c-4462-981f-8ace27c8fa87.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【底价甩卖】洗衣凝珠持久留香珠洗衣液香味持久洗衣服神器香水味', NULL, '极速退款', 5.28, '已拼10万+件', 202028, NULL, 'false', 'https://t20img.yangkeduo.com/a/496e65436f0991425d157d2e873c722102386ce7-1575786942?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/b0af4ecf77c568abf1b47253798cd89be8ccc3db-1579755669?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-07/d553a32bf80e361271b19e2188a84590.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '正版受益一生的5本书狼道书 墨菲定律鬼谷子人性的弱点羊皮卷书籍', '邺水朱华图书专营店', '正品险,退货包运费', 13.60, '已拼10万+件', 202029, NULL, 'false', 'https://t21img.yangkeduo.com/a/1dab73033fc8912f55d7c7f88c1ab7b177872a9f-1517926757?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/7b894359c483c5e4abdf11478c7d1566e44fecd8-1577290726?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-02-03/e69da3b49c90cc59b074904517a74be7.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '恋普强增压花洒沐浴花洒喷头手持洗澡莲蓬头水龙头通用软管基础款', '恋普旗舰店', '退货包运费,极速退款', 3.80, '已拼10万+件', 202030, NULL, 'false', 'https://t20img.yangkeduo.com/a/285be40140fa0b257aaaf6e2947a959b2651ede0-1564720700?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/0651be55b366fb476e11703af8f83fb082549697-1580229184?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-10-13/9286d6422980ac2fca24b63acb278580.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【30包整箱装】原木纸巾抽纸家庭装300张面巾纸卫生纸批发餐巾纸', '植慕旗舰店', '退货包运费,极速退款', 23.90, '已拼10万+件', 202031, NULL, 'false', 'https://t20img.yangkeduo.com/a/9bae651fdd720c84f90b0fa52e9f14d6174adcbb-1577764402?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/7b0d617cd02cb2796eac5469b6e486eeaedd5b85-1573639710?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-12-09/814869f7e8915d6af6c58a58bdedfe96.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '户外多功能瑞士军刀防身随身迷女小刀野外便携折叠刀钓鱼用品刀具', '曾氏宗道户外官方旗舰店', '极速退款', 19.08, '已拼10万+件', 202032, NULL, 'false', 'https://t20img.yangkeduo.com/a/bdc3e9b6f2e483dc38e15ba1ec0c65a2e6557767-1578282688?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/8ed39d9a5199d783fa1d2aa3912e0f61ff70dbb4-1579816656?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-10-11/06673b44-0f24-49a3-bc17-45d0b8fad49d.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '新款iPhone11手机壳苹果x撞色磨砂全包XsMax/XR套7plus/8p/6s男女', NULL, '极速退款', 3.90, '已拼10万+件', 202033, '入选苹果手机保护套畅销榜', 'false', 'https://t20img.yangkeduo.com/a/c63dff8794ea78cc1f7df9c74c4cbf6965c103ea-1542355827?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/68bfeca04763ba4fc41d67719611a87ce350881f-1542114279?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-08/42ff1b706381047ece11ac699c15d7f3.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '防丢汽车钥匙扣男士情侣迷你锁匙扣挂件钥匙链环圈多功能挂绳子', '一支麦车品旗舰店', NULL, 2.46, '总售10万+件', 202034, '入选车用钥匙扣畅销榜', 'false', 'https://t20img.yangkeduo.com/a/9020b87b275bccac724012bcf2f9fa6ce4df4065-1578355349?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/dec7683c10e711954e024c05d5d4d8bbe8d8edf3-1541069175?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('http://omsproductionimg.yangkeduo.com/images/2017-08-23/2db38af8f69671ce6d9ecde588a1439b.jpeg', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '100支-3000支双头木棒棉签棒棒婴儿美容医用化妆棉棒卫生棉签棉棒', 'XUJIAWU家居旗舰店', '退货包运费,极速退款', 2.12, '总售10万+件', 202035, '入选个人洗...洁用具畅销榜', 'false', 'https://t20img.yangkeduo.com/a/ae2c816d7b6ec1d721378d8a7e8aca4d0558a210-1575541144?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/540a43299c2b6692bd4a0fcc713a4e6e6b46dc01-1575948414?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-13/1398c1339e824da290073f7774808e41.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '真四核双动圈耳机vivo华为OPPO苹果小米通用入耳式耳机线耳塞可爱', '飓风3C数码配件专营店', '极速退款', 2.98, '已拼10万+件', 202036, '入选手机耳机畅销榜', 'false', 'https://t20img.yangkeduo.com/a/8e97f89ee8fbc24549e52d1adde425d5d43449d1-1573467283?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/b9990d79535cd060317a3a718f86dbcda709fa78-1580812425?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2018-07-22/ddcf44e9ebfb5e3ab86bbed34ca7355e.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '扎头发橡皮筋头绳一次性小皮筋儿童黑色头饰女童发圈宝宝皮筋', NULL, '退货包运费,极速退款', 3.82, '已拼10万+件', 202037, '入选童装畅销榜', 'false', 'https://t20img.yangkeduo.com/a/be39f168444b4f17e9986f89d8797196648042d1-1573464957?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/1ac7b9df812bc048aa9346a047e5b8942e3339bd-1580366313?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2018-07-22/ddcf44e9ebfb5e3ab86bbed34ca7355e.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '扎头发橡皮筋头绳一次性小皮筋儿童黑色头饰女童发圈宝宝皮筋', NULL, '退货包运费,极速退款', 3.82, '已拼10万+件', 202038, '入选童装畅销榜', 'false', 'https://t20img.yangkeduo.com/a/be39f168444b4f17e9986f89d8797196648042d1-1573464957?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/1ac7b9df812bc048aa9346a047e5b8942e3339bd-1580366313?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-11-22/b03abcbf-7a5f-4d4c-942d-7e4ba326fe3c.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '洗碗布巾抹布家务清洁厨房用品毛巾去油家用吸水懒人不掉毛不沾油', '承君意清洁用品专营店', '极速退款', 2.17, '已拼4.7万件', 202039, NULL, 'false', 'https://t20img.yangkeduo.com/a/cb932110dbec45a43a54c2e4c3f379d582075b07-1580880732?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/937ac6d953e9edb24519367c22a35f96407840c9-1527472213?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-09-08/a89e5beb-29a7-414c-9d1d-378d9d80dc79.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【即插即听】汽车车载U盘16G/32G抖音款流行音乐优盘MP3汽车用品', NULL, '极速退款', 14.08, '已拼10万+件', 202040, NULL, 'false', 'https://t20img.yangkeduo.com/a/72b9c59308b5e8a7011d5faa1f44e5e00bfb6578-1572948462?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/27830e7a7c786f8c104f0eee9e442186d74f2ebc-1572441538?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-20/24234397-3497-4ca0-a1ba-4771fa94ded0.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '防水透明旅行ins网红女化妆包男士大容量便携洗漱包化妆品收纳袋', NULL, '极速退款,满50减5', 4.50, '已拼10万+件', 202041, '入选洗漱包畅销榜', 'false', 'https://t20img.yangkeduo.com/a/06e3c35baabcd1c315ecedfb486b807089a41250-1576830496?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/d99a3ebc916d20e4a5eb498dc0d695fa4987c76a-1575012760?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-25/776609fd-1baf-4f0c-a8c0-cc1cd8eb0862.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '【48卷加量装赠毛巾】48卷/12卷竹浆本色卫生纸卷纸批发家用纸巾', '臻木官方旗舰店', '退货包运费,极速退款,满58减2', 6.80, '已拼10万+件', 202042, '入选卷筒纸畅销榜', 'false', 'https://t20img.yangkeduo.com/a/7b47a5e2aa29e3acc460ea035ea7cb39b0909eca-1560493992?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/064925f96b13fbb5f1689b1051e51ed7d04e154d-1573630217?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-08-06/a57dc0a6-b660-4ef1-b6ee-174a6efb8679.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '苹果6/5s/7/6s/8plus数据线SE/iPhoneX快充手机充电线加长xrs闪充', '辰楚3C数码旗舰店', '极速退款', 5.80, '已拼10万+件', 202043, '入选充电配件畅销榜', 'false', 'https://t20img.yangkeduo.com/a/ebf96eda2f2ee215ada8f210af85deb7a38afadd-1547635446?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/7f7888012851380107343980281e46cbcc3000cc-1580072229?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/images/2019-09-20/f0a84f58-6e73-439d-97f2-304abd7dd706.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '可选usb充电电子称体重秤精准家用健康秤人体秤成人减肥称重计器', '沪众家居旗舰店', '极速退款', 9.34, '总售10万+件', 202045, '入选体重秤畅销榜', 'false', 'https://t20img.yangkeduo.com/a/96f32d674dd0495ba53748d394c50879692f6260-1576484163?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/75eb2f03644d2e7d98a3417a282e569acc58e047-1572700806?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');
INSERT INTO `goods` VALUES ('https://t00img.yangkeduo.com/goods/images/2019-09-15/a32cc036-1181-4d0d-bcc1-1a2c9babf5d6.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/312/q/80/format/webp', 'https://t13img.yangkeduo.com/cart/2020-01-16/59472e3495b7fb350c40f7ee4968e992.png?imageMogr2/strip%7CimageView2/q/80', '食品级一次性手套PVC乳胶橡胶医用洗碗防水耐磨家用胶皮手套加厚', '小净士艾诺专卖店', '极速退款', 7.18, '已拼10万+件', 202046, NULL, 'false', 'https://t20img.yangkeduo.com/a/aabec339c73dc80d5608bafac54b4e4e470994e7-1580806061?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp', 'https://t20img.yangkeduo.com/a/c81bd6420d8df522e51fd73778763960e1efd049-1566143087?imageMogr2/sharpen/50/strip%7CimageView2/2/w/44/q/80/format/webp');

-- ----------------------------
-- Table structure for home_scroller
-- ----------------------------
DROP TABLE IF EXISTS `home_scroller`;
CREATE TABLE `home_scroller`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `small_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_scroller
-- ----------------------------
INSERT INTO `home_scroller` VALUES ('限时秒杀', 'https://t00img.yangkeduo.com/goods/2019-10-24/9c511fafac04f30eaa86721de738cfa1.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', 'https://t00img.yangkeduo.com/goods/images/2018-11-27/b029799e2af2466305285a445feb13a7.gif?imageMogr2/sharpen/50/strip%7CimageView2/2/w/54/q/80/format/webp');
INSERT INTO `home_scroller` VALUES ('断码清仓', 'https://t00img.yangkeduo.com/goods/images/2018-12-22/b9851773573d1d682aa46d896de7f4fa.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', '');
INSERT INTO `home_scroller` VALUES ('新衣馆', 'https://t00img.yangkeduo.com/goods/images/2019-08-25/6c9660932b94227f1a937d191aeacdf5.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('多多果园', 'https://t00img.yangkeduo.com/goods/images/2019-01-30/5667b3f1eaa8bb379303afb3934d1bc8.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('9块9特卖', 'https://t00img.yangkeduo.com/goods/images/2018-10-07/c671f2c49805658697cc0f72fff87eb3.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('助力享免单', 'https://t00img.yangkeduo.com/goods/images/2019-02-15/b329c4673337e18030f1211df38a543b.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('天天领现金', 'https://t10img.yangkeduo.com/images/2018-05-16/712fc1e7f4f7b0572257ef162b5185a9.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('1分抽大奖', 'https://t05img.yangkeduo.com/images/2018-05-04/c71c9acd8b48203a704f6c0951caddc0.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('省钱月卡', 'https://t00img.yangkeduo.com/goods/images/2019-01-27/76826abcd09fe76657f07a901db83698.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('充值中心', 'https://t05img.yangkeduo.com/images/2018-05-16/801ae189938526cdaf40935d07034c5e.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('品牌特卖', 'https://t00img.yangkeduo.com/goods/2019-10-16/3112fa31581efa603edaa0d8748139f0.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('现金签到', 'https://t01img.yangkeduo.com/images/2018-05-16/c2ba677bcd16ecad6c335e5e04a1cf1e.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', 'https://t00img.yangkeduo.com/goods/images/2018-12-03/6fffdaa9bdef16e5140d46357293e1fa.gif?imageMogr2/sharpen/50/strip%7CimageView2/2/w/54/q/80/format/webp');
INSERT INTO `home_scroller` VALUES ('多多赚大钱', 'https://t00img.yangkeduo.com/goods/2020-01-02/b1e85f595a23526be3bae0233b3fa360.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('电器城', 'https://t00img.yangkeduo.com/goods/images/2018-10-28/27e48ad452991eeb8fd0559a0d3b60ff.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('爱逛街', 'https://t03img.yangkeduo.com/images/2018-05-16/a666ac01e718dd06231a722baa6fa935.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('砍价免费拿', 'https://t00img.yangkeduo.com/goods/images/2019-02-15/1ddd6e21a8281e794dec6ef736867290.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('多多爱消除', 'https://t00img.yangkeduo.com/goods/images/2019-04-12/80f3af132fae04453792464bb837ca02.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);
INSERT INTO `home_scroller` VALUES ('每日好店', 'https://t00img.yangkeduo.com/goods/images/2019-01-20/d36b7af30da354cb2c8ad4ea7bd819cd.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/117/q/80/format/webp', NULL);

-- ----------------------------
-- Table structure for hot_subsidy
-- ----------------------------
DROP TABLE IF EXISTS `hot_subsidy`;
CREATE TABLE `hot_subsidy`  (
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `guarantee` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `all_item_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `base_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hot_subsidy
-- ----------------------------
INSERT INTO `hot_subsidy` VALUES ('https://pinduoduoimg.yangkeduo.com/brand_creation/allowance_icon.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/66/q/80/format/webp', '百亿补贴', '正品保障', '全部补贴品', 'https://t00img.yangkeduo.com/goods/2020-02-03/ff9b0dec6bdbc6490aa22f95225ac4b3.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/webp');

-- ----------------------------
-- Table structure for item_swiper
-- ----------------------------
DROP TABLE IF EXISTS `item_swiper`;
CREATE TABLE `item_swiper`  (
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cid` int(0) NOT NULL,
  INDEX `cid`(`cid`) USING BTREE,
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `goods` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item_swiper
-- ----------------------------
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-25/776609fd-1baf-4f0c-a8c0-cc1cd8eb0862.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-12/23fdbecb-ca1b-4f71-81dd-a37bc14175fd.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/d30a7342-7b68-4d06-86fd-3262929f0237.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/bae2981e-caf0-4b9a-876a-ccd27ce4b625.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-25/5a932ec4-8db5-4d83-b064-d43bf77901f4.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-25/40482844-c70d-4e24-aeeb-0d7d69436975.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-25/a792d323-28bc-4972-aa56-d1afd805d568.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-20/a73566be-b178-402c-93c4-8f27d5a14756.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-12/01bb15ac-f0fe-4e4f-860e-ebc65789d886.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/e7d3ca32-f76e-44a4-8a50-37a22cf4027a.jpg', 202001);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/a57dc0a6-b660-4ef1-b6ee-174a6efb8679.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/5c053e13-fe01-4c70-970f-fe591f7a8c12.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/5113c8c1-1dc4-4e30-8ae9-a0cc65c8b927.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/1c364b5c-a08c-449c-8247-d39891cd1279.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/40b2e833-b334-4a47-b4f8-6be29a649dce.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/c9109419-3849-42f0-bacf-5a1ab929ffc0.jpg', 202002);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/c8af0ba5-66aa-4515-b4ce-8144098062d9.jpg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-05/d7f6a38e-adf6-4d98-a95f-5b34171b1055.jpeg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-05/2f70fe3f-c9a4-418e-bfc3-d140bd787213.jpeg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/ef40be17-5d7d-48a3-a185-71e4754f8221.jpg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-06/1d3dc0fc-fdcc-44c7-a59a-430ec66edd61.jpg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/5f9ecd33-ea1c-4097-9d22-95535f0e7d3d.jpg', 202003);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-20/f0a84f58-6e73-439d-97f2-304abd7dd706.jpg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-08-07/f1bb9f08950d87aae3df91f9d14f498d.jpeg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-08-07/69350825b1fad36fecb453ad58705b29.jpeg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-08-07/3839a842fa8699d0b4cf46300e4ac332.jpeg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-08-07/0ac1fc31179244cc56fc2cc8bc6c5f3d.jpeg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-20/fddcf460-0052-49e4-b33e-9856be86075a.jpg', 202004);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/1a9801d4-e87e-464b-b785-62be72d8672f.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/0be60491-3a84-4e04-a011-13c56872ad72.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/e392abc1-8fe7-4527-a25a-1292b19430f0.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/282071cd-1a67-41a7-98ba-cd8675865a6f.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-04/862309ea-699f-46e0-b6f0-69fbd885f4fd.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/4d82520e-8fe7-4981-a2f0-6e9069f59c72.jpg', 202005);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/bb04fe7f-3755-4c20-af44-a1a8004a8617.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/24ec57ad-b265-47db-9418-bc4cfdca7f4c.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/488f0951-40e7-4548-9149-7cbb47344430.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/dff0abec-e63d-4ad5-878d-88c732c8d09a.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/f0790f08-1f87-4b33-8605-93745b521b08.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/cc0bf176-6886-4be2-b675-780e9ba7f989.jpg', 202006);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-03-27/3692408d-ad7f-4f2a-9b84-0991cc79585a.jpg', 202007);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-15/1dfd3fa5-821d-4c1a-b7f8-f0c4630412a3.jpg', 202007);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-05/36b79f04-bc92-4c28-a1b1-24c028c7f4c8.jpg', 202007);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-21/605c07f6-e212-40ef-ab22-42aeaa6724b5.jpg', 202007);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-21/6e505f43-396c-4ad1-bd34-e0a1edc331d6.jpg', 202007);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-02-05/4564487a-0154-4250-9796-cc26db04bbda.jpg', 202008);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-28/24ec59c1-3484-4d62-86fe-45d4f98629d9.jpg', 202008);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-22/3f75baff-c5d8-4dd1-8e40-006eedde30c7.jpg', 202008);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-28/c31979f3-efad-4dac-88bb-58c91338369f.jpg', 202008);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-28/a54e9569-4af9-4097-85c1-b8af07290828.jpg', 202008);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-04-13/f2beb551-1a32-4acd-8933-e7239f1b3bb4.jpg', 202009);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-04-13/9381a936-2cc8-4223-adc6-61a0d05d6f54.jpg', 202009);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-04-13/35f24b7c-5c82-414f-be2c-b15094218c9f.jpg', 202009);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-04-13/15689ca0-fa4e-4edd-b8a9-e59205dc368b.jpg', 202009);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-04-13/1beefb60-95c7-491f-88ab-975de538dab9.jpg', 202009);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-20/5c08c1e1-946f-4471-a6ab-60834721124e.jpg', 202010);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-21/59dd54b8-389b-457d-83ab-ff0302ddbbbc.jpg', 202010);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-20/a3b3b2f2-58c3-4cca-af1b-8ded9b826245.jpg', 202010);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-20/2e68afc2-3dd2-41ca-84a0-ee392a3de00d.jpg', 202010);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-21/59dd54b8-389b-457d-83ab-ff0302ddbbbc.jpg', 202010);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-29/9e236554-56d2-43af-bf5b-59eb5c2a0029.jpg', 202011);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-25/8bfb8701-4db2-44db-a0df-f8a259f0ecf1.jpg', 202011);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-29/cc73549d-31dc-4966-be46-b785db5bd055.jpg', 202011);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-29/1e7d9f20-fcd1-4c52-81af-2afd33ec0e24.jpg', 202011);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-25/8bfb8701-4db2-44db-a0df-f8a259f0ecf1.jpg', 202011);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-10-02/4950d2b4-2584-466c-9623-4986dd18d509.jpg', 202012);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-02/31d3fd99-afcf-49b5-b640-0167e3a73df4.jpg', 202012);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-06-22/7141e326-ddc2-4a16-9559-37a368e9b3cb.jpg', 202012);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-06-22/7cb9ff58-6518-41f0-ba69-ed54670f97dc.jpg', 202012);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-02/31d3fd99-afcf-49b5-b640-0167e3a73df4.jpg', 202012);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-30/6f2bc0db-e2df-4a2c-9ace-0c0c93d39b48.jpg', 202013);
INSERT INTO `item_swiper` VALUES ('//t07img.yangkeduo.com/images/2018-02-17/b64f79073b705ed22f05f0dd8ff9500a.jpeg', 202013);
INSERT INTO `item_swiper` VALUES ('//omsproductionimg.yangkeduo.com/images/2018-01-19/c9f6aa798f1f412504d4a7561aeda183.jpeg@750w_1l_50Q.src', 202013);
INSERT INTO `item_swiper` VALUES ('//omsproductionimg.yangkeduo.com/images/2018-01-19/a97717f8d1f205e3cf09be24cec23690.jpeg@750w_1l_50Q.src', 202013);
INSERT INTO `item_swiper` VALUES ('//t07img.yangkeduo.com/images/2018-02-17/b64f79073b705ed22f05f0dd8ff9500a.jpeg', 202013);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-17/e882ce80-bbf2-444e-82d3-43c18fa7b3df.jpg', 202014);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-25/35272ea5-2707-44f4-8da4-64ee94bd2e04.jpeg', 202014);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-16/39aec31c-6a28-4e5f-9268-dee166734bc3.jpg', 202014);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-17/37d2acd4-7ef0-42cf-9768-dff2e412fe0b.jpg', 202014);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-25/35272ea5-2707-44f4-8da4-64ee94bd2e04.jpeg', 202014);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/7f4db737-17e0-4707-b219-5b4d74f530e0.jpg', 202015);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/fe8e06d1-af9d-49a5-9717-3d154643b0a0.jpg', 202015);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/1f75f864-abc4-4501-a1f4-bb1733cfcb79.jpg', 202015);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-14/49f4272f-4cab-46df-ba18-c01574df4f38.jpg', 202015);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-10-20/5cae2551fdd9a22dbf13adfa4b4f3494.jpeg', 202016);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-10-20/bef6f699c448d2f1246068c7361dd34a.jpeg', 202016);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-10-20/249a74b9f5ecbc3e00874de55919cef8.jpeg', 202016);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-10-20/46108e462f4e4e26e275f54261c20b38.jpeg', 202016);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-10/5fe37841-c95f-4ba6-bf6f-c4db77d0426b.jpg', 202017);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-10/20c79689-f58e-4a60-bf1b-6d31a3ba4a96.jpg', 202017);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-10/256dec95-6d56-46ab-bc59-c16f94106c6d.jpg', 202017);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-10/914fa3e4-af6e-4017-aee5-79d232872c04.jpg', 202017);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-14/587b19ef5c540eb1df87d1ed16fe29c7.jpeg', 202018);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-14/20c3a889465eedb7c39f14ce4a93c49c.jpeg', 202018);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-06/adc2b665e165dfc1d83f8d89f041b6ed.jpeg', 202018);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-14/9a34d5a5529e1aa9e61f594fb4fe902f.jpeg', 202018);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-31/4b8d6376-9090-4138-a66c-97f16d0197ee.jpg', 202019);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-31/77068c67-ce37-40aa-9785-e829548b15a7.jpg', 202019);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-31/d9fc14ed-288b-40bd-bb5f-a637a1a1e78a.jpg', 202019);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-31/dd5e70a5-28d6-49c4-b523-87525615e6ea.jpg', 202019);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-16/5e78f6b8-9666-49d9-a900-9544a82aa669.jpg', 202020);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-16/f16944e5-3f10-4ffc-b653-1adb0fa66dc6.jpg', 202020);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-16/bd11f26f-ee6c-4a07-b886-c6abddb65fd9.jpg', 202020);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-23/62f1fb43-8bf1-4328-b39a-a1bdfca88ea1.jpg', 202021);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-23/a837882a-7876-4d0e-8d45-46a7ea857e6c.jpg', 202021);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/openapi/images/2019-04-23/6dc749407187b55d5225e8e996930181.jpeg', 202021);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-06-05/a96405b6-b598-4c21-8ca1-7f2022e4b64b.png', 202022);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-18/308f3fb9-a16f-43ca-99cb-154d1ed11407.png', 202022);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-22/53cf18f980e93071b2628be91905869c.jpeg', 202022);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-11/db03025e25a9acf0a532e8fb20b4cd85.jpeg', 202023);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-12-11/3cadd7fb0a9eccd89c8f6ee0ae8cc047.jpeg', 202023);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-14/5baceb24-b8fa-464e-bb59-dee4723224bc.jpg', 202023);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/2d7e7bb1-a75e-411a-9c17-478f341a0f4d.jpg', 202024);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-01-20/01549c3a-1eb9-4b16-b77d-c76c00fc9966.jpg', 202024);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-19/0fe64f51-cb14-4520-8244-4630b908962b.jpg', 202024);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2020-02-05/4b652708-526a-4c4d-a4ef-c16621015fe6.png', 202025);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-07/b255f4d3-3bd2-431f-be19-8f8e0c38a276.png', 202025);
INSERT INTO `item_swiper` VALUES ('//t10img.yangkeduo.com/images/2018-03-06/e0ca55ce48c50675021c41394c07b4f9.jpeg', 202025);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-01/0ced601f-bca2-461a-a855-705587d10946.jpeg', 202026);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-23/3e176c5f-b281-404f-9e25-1904d62635b0.jpg', 202026);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-03/5889c94a-65fe-47ec-bd47-050aa584c3ea.jpg', 202026);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-07/ea0326d7-153b-45c3-858a-aadb47fd9588.jpg', 202027);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-07/43289703-bc9c-40aa-b4a1-27b845eba863.jpg', 202027);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-07/c913714e-9b0f-4b9c-a1ea-76a3603ba2ff.jpg', 202027);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-09-10/4b697ddb-468c-4462-981f-8ace27c8fa87.jpg', 202028);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-07-30/830de064-98fb-4e0a-b7d0-8a9642174343.jpg', 202028);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-03/ee3519eb-11e3-4315-83b8-b2e7eac2b94e.jpg', 202028);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-14/bc615d98-dd5e-4179-a3ba-a986ce3fd221.jpg', 202029);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-14/babfdc4f-a48e-4d9d-8289-3e5f2910493b.jpg', 202029);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-10/8e4ee71c-2738-4adf-a9a0-13679b5ceafb.jpg', 202029);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-05/5928a509-c884-4c4e-b768-5a9a5193336a.jpg', 202030);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-05/9018027a-10ae-44a1-a660-e64e87348244.jpg', 202030);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-05/0b53feff-c63e-46fd-af12-b5859f61748b.jpg', 202030);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-28/66d2fc0c-0790-4717-bee4-f256b12a8722.jpg', 202031);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-28/30e99bb9-f7d7-444d-b15a-7f1d2615b0a2.jpg', 202031);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-28/07c0d4cc-d389-499b-ba53-ed93da44f10b.jpg', 202031);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-03-19/8b602728-259a-4d69-9ed1-0c2b1c25e2d3.jpg', 202032);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-03-19/9fef80e5-c73a-4204-a320-b2e8a7bcbbbf.jpg', 202032);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-03-19/6a2ee116-6e89-4cff-b06e-053aa9641bb3.jpg', 202032);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-11/06673b44-0f24-49a3-bc17-45d0b8fad49d.jpg', 202033);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-23/403b8eba-b6d4-4201-8d37-f77914b68c28.jpg', 202033);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-23/44cafee2-e2f3-4b47-8eb8-6ee4cda260cb.jpg', 202033);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-09-09/f8a0fc91-bf9d-493e-bd0d-3b8b1b15dfd6.jpg', 202034);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-09/5b0f5ee2-82f9-46be-b4bf-a41d71a63a2f.jpg', 202034);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-09-09/87638ab3-9430-420b-bcc9-6bf680b6ee4b.jpg', 202034);
INSERT INTO `item_swiper` VALUES ('//omsproductionimg.yangkeduo.com/images/2017-08-23/2db38af8f69671ce6d9ecde588a1439b.jpeg@750w_1l_50Q.src', 202035);
INSERT INTO `item_swiper` VALUES ('//omsproductionimg.yangkeduo.com/images/2017-08-23/642314f61f6a3c1d2af8a69a4c5f054d.jpeg@750w_1l_50Q.src', 202035);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-06/e4c399f6-1107-43fe-b3f7-3d3ae7eb7fc5.jpg', 202036);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-28/233d5aa5-1a85-4da0-b2ca-493c15489ff1.jpg', 202036);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-07-22/ddcf44e9ebfb5e3ab86bbed34ca7355e.jpeg', 202037);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/t09img/images/2018-06-11/31866f08c5e1f519fad36f3c122dc7bc.jpeg', 202037);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-07-22/ddcf44e9ebfb5e3ab86bbed34ca7355e.jpeg', 202038);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/t10img/images/2018-06-11/cdc80734ed7e1ab6568a7d9568939080.jpeg', 202038);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-22/227f45e1-4897-4448-ba6c-5e584e9a667f.jpg', 202039);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-11-22/b03abcbf-7a5f-4d4c-942d-7e4ba326fe3c.jpg', 202039);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-09-08/a89e5beb-29a7-414c-9d1d-378d9d80dc79.jpg', 202040);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-09-08/2303f3c3-a1c9-4d0b-9dbe-14ce59035e34.jpg', 202040);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-20/24234397-3497-4ca0-a1ba-4771fa94ded0.jpg', 202041);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-22/3213771d-7a99-4e21-b812-d74d63243ae5.jpeg', 202041);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-25/776609fd-1baf-4f0c-a8c0-cc1cd8eb0862.jpg', 202042);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-10-12/23fdbecb-ca1b-4f71-81dd-a37bc14175fd.jpg', 202042);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/a57dc0a6-b660-4ef1-b6ee-174a6efb8679.jpg', 202043);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-08-06/5c053e13-fe01-4c70-970f-fe591f7a8c12.jpg', 202043);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/images/2019-09-20/f0a84f58-6e73-439d-97f2-304abd7dd706.jpg', 202045);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2018-08-07/f1bb9f08950d87aae3df91f9d14f498d.jpeg', 202045);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/1a9801d4-e87e-464b-b785-62be72d8672f.jpg', 202046);
INSERT INTO `item_swiper` VALUES ('//t00img.yangkeduo.com/goods/images/2019-12-24/0be60491-3a84-4e04-a011-13c56872ad72.jpg', 202046);

-- ----------------------------
-- Table structure for pay_price
-- ----------------------------
DROP TABLE IF EXISTS `pay_price`;
CREATE TABLE `pay_price`  (
  `iid` int(0) NOT NULL,
  `tid` int(0) NOT NULL,
  `i_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `t_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `new_price` decimal(10, 2) NOT NULL,
  `old_price` decimal(10, 2) NULL DEFAULT NULL,
  `exp_price` decimal(10, 2) NULL DEFAULT NULL,
  `sid` int(0) NOT NULL,
  INDEX `ii`(`iid`) USING BTREE,
  INDEX `tt`(`tid`) USING BTREE,
  INDEX `ss`(`sid`) USING BTREE,
  CONSTRAINT `ii` FOREIGN KEY (`iid`) REFERENCES `size` (`iid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ss` FOREIGN KEY (`sid`) REFERENCES `goods` (`sid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tt` FOREIGN KEY (`tid`) REFERENCES `type` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_price
-- ----------------------------
INSERT INTO `pay_price` VALUES (1, 1, '无', '容量', 10.50, 13.90, 15.90, 202001);
INSERT INTO `pay_price` VALUES (1, 2, '无', '容量', 6.80, 11.90, 12.90, 202001);
INSERT INTO `pay_price` VALUES (1, 3, '无', '容量', 25.50, 28.90, 29.90, 202001);
INSERT INTO `pay_price` VALUES (1, 4, '无', '容量', 25.40, 28.60, 29.90, 202001);
INSERT INTO `pay_price` VALUES (1, 5, '无', '容量', 25.30, 29.90, 30.90, 202001);
INSERT INTO `pay_price` VALUES (9, 6, '尺寸', '套装', 5.80, NULL, 6.80, 202002);
INSERT INTO `pay_price` VALUES (9, 7, '尺寸', '套装', 7.80, NULL, 8.80, 202002);
INSERT INTO `pay_price` VALUES (9, 8, '尺寸', '套装', 10.80, NULL, 11.80, 202002);
INSERT INTO `pay_price` VALUES (9, 9, '尺寸', '套装', 9.80, NULL, 10.80, 202002);
INSERT INTO `pay_price` VALUES (9, 10, '尺寸', '套装', 11.80, NULL, 12.80, 202002);
INSERT INTO `pay_price` VALUES (9, 11, '尺寸', '套装', 17.80, NULL, 19.80, 202002);
INSERT INTO `pay_price` VALUES (10, 6, '尺寸', '套装', 7.20, NULL, 9.20, 202002);
INSERT INTO `pay_price` VALUES (10, 7, '尺寸', '套装', 9.80, NULL, 11.80, 202002);
INSERT INTO `pay_price` VALUES (10, 8, '尺寸', '套装', 12.80, NULL, 14.80, 202002);
INSERT INTO `pay_price` VALUES (10, 9, '尺寸', '套装', 10.80, NULL, 12.80, 202002);
INSERT INTO `pay_price` VALUES (10, 10, '尺寸', '套装', 13.80, NULL, 15.80, 202002);
INSERT INTO `pay_price` VALUES (10, 11, '尺寸', '套装', 16.80, NULL, 18.80, 202002);
INSERT INTO `pay_price` VALUES (11, 6, '尺寸', '套装', 9.20, NULL, 11.20, 202002);
INSERT INTO `pay_price` VALUES (11, 7, '尺寸', '套装', 11.40, NULL, 13.40, 202002);
INSERT INTO `pay_price` VALUES (11, 8, '尺寸', '套装', 13.80, NULL, 15.80, 202002);
INSERT INTO `pay_price` VALUES (11, 9, '尺寸', '套装', 15.60, NULL, 17.60, 202002);
INSERT INTO `pay_price` VALUES (11, 10, '尺寸', '套装', 16.50, NULL, 18.50, 202002);
INSERT INTO `pay_price` VALUES (11, 11, '尺寸', '套装', 19.90, NULL, 21.90, 202002);
INSERT INTO `pay_price` VALUES (12, 6, '尺寸', '套装', 13.20, NULL, 15.20, 202002);
INSERT INTO `pay_price` VALUES (12, 7, '尺寸', '套装', 15.40, NULL, 17.40, 202002);
INSERT INTO `pay_price` VALUES (12, 8, '尺寸', '套装', 17.60, NULL, 19.80, 202002);
INSERT INTO `pay_price` VALUES (12, 9, '尺寸', '套装', 19.90, NULL, 21.50, 202002);
INSERT INTO `pay_price` VALUES (12, 10, '尺寸', '套装', 21.20, NULL, 23.20, 202002);
INSERT INTO `pay_price` VALUES (12, 11, '尺寸', '套装', 24.50, NULL, 28.60, 202002);
INSERT INTO `pay_price` VALUES (6, 12, '款式', '套餐 ', 6.39, 15.90, 15.90, 202003);
INSERT INTO `pay_price` VALUES (6, 13, '款式', '套餐 ', 7.53, 18.50, 18.50, 202003);
INSERT INTO `pay_price` VALUES (6, 14, '款式', '套餐 ', 8.68, 20.40, 20.40, 202003);
INSERT INTO `pay_price` VALUES (6, 15, '款式', '套餐 ', 9.62, 24.60, 24.60, 202003);
INSERT INTO `pay_price` VALUES (6, 16, '款式', '套餐 ', 12.90, 34.60, 38.80, 202003);
INSERT INTO `pay_price` VALUES (7, 12, '款式', '套餐 ', 8.62, 14.60, 15.90, 202003);
INSERT INTO `pay_price` VALUES (7, 13, '款式', '套餐 ', 14.62, 85.30, 62.43, 202003);
INSERT INTO `pay_price` VALUES (7, 14, '款式', '套餐 ', 25.95, 64.65, 12.64, 202003);
INSERT INTO `pay_price` VALUES (7, 15, '款式', '套餐 ', 34.60, 24.43, 24.90, 202003);
INSERT INTO `pay_price` VALUES (7, 16, '款式', '套餐 ', 40.64, 48.62, 32.64, 202003);
INSERT INTO `pay_price` VALUES (8, 12, '款式', '套餐 ', 8.62, 14.60, 15.90, 202003);
INSERT INTO `pay_price` VALUES (8, 13, '款式', '套餐 ', 12.69, 65.51, 35.61, 202003);
INSERT INTO `pay_price` VALUES (8, 14, '款式', '套餐 ', 26.21, 15.62, 35.61, 202003);
INSERT INTO `pay_price` VALUES (8, 15, '款式', '套餐 ', 62.62, 41.41, 42.42, 202003);
INSERT INTO `pay_price` VALUES (8, 16, '款式', '套餐 ', 35.53, 42.48, 32.64, 202003);
INSERT INTO `pay_price` VALUES (1, 22, '无', '颜色', 25.70, NULL, 26.90, 202004);
INSERT INTO `pay_price` VALUES (1, 18, '无', '颜色', 20.90, NULL, 24.90, 202004);
INSERT INTO `pay_price` VALUES (1, 19, '无', '颜色', 21.90, NULL, 22.90, 202004);
INSERT INTO `pay_price` VALUES (1, 20, '无', '颜色', 23.40, NULL, 26.40, 202004);
INSERT INTO `pay_price` VALUES (1, 21, '无', '颜色', 24.90, NULL, 25.90, 202004);
INSERT INTO `pay_price` VALUES (1, 17, '无', '颜色', 19.90, NULL, 23.90, 202004);
INSERT INTO `pay_price` VALUES (1, 23, '无', '颜色', 26.10, NULL, 27.60, 202004);
INSERT INTO `pay_price` VALUES (3, 29, '尺寸', '颜色', 40.62, NULL, 48.32, 202005);
INSERT INTO `pay_price` VALUES (2, 25, '尺寸', '颜色', 26.62, NULL, 42.24, 202005);
INSERT INTO `pay_price` VALUES (2, 26, '尺寸', '颜色', 54.32, NULL, 24.65, 202005);
INSERT INTO `pay_price` VALUES (2, 27, '尺寸', '颜色', 32.64, NULL, 64.32, 202005);
INSERT INTO `pay_price` VALUES (2, 28, '尺寸', '颜色', 48.48, NULL, 49.49, 202005);
INSERT INTO `pay_price` VALUES (2, 29, '尺寸', '颜色', 50.12, NULL, 52.12, 202005);
INSERT INTO `pay_price` VALUES (3, 24, '尺寸', '颜色', 30.21, NULL, 32.62, 202005);
INSERT INTO `pay_price` VALUES (3, 25, '尺寸', '颜色', 35.62, NULL, 35.62, 202005);
INSERT INTO `pay_price` VALUES (3, 26, '尺寸', '颜色', 62.34, NULL, 24.62, 202005);
INSERT INTO `pay_price` VALUES (3, 27, '尺寸', '颜色', 48.32, NULL, 53.62, 202005);
INSERT INTO `pay_price` VALUES (3, 28, '尺寸', '颜色', 36.36, NULL, 39.39, 202005);
INSERT INTO `pay_price` VALUES (2, 24, '尺寸', '颜色', 23.60, NULL, 24.62, 202005);
INSERT INTO `pay_price` VALUES (4, 24, '尺寸', '颜色', 26.20, NULL, 24.62, 202005);
INSERT INTO `pay_price` VALUES (4, 25, '尺寸', '颜色', 23.60, NULL, 24.62, 202005);
INSERT INTO `pay_price` VALUES (4, 26, '尺寸', '颜色', 62.35, NULL, 54.32, 202005);
INSERT INTO `pay_price` VALUES (4, 27, '尺寸', '颜色', 45.32, NULL, 34.69, 202005);
INSERT INTO `pay_price` VALUES (4, 28, '尺寸', '颜色', 55.35, NULL, 36.59, 202005);
INSERT INTO `pay_price` VALUES (4, 29, '尺寸', '颜色', 60.45, NULL, 65.95, 202005);
INSERT INTO `pay_price` VALUES (5, 24, '尺寸', '颜色', 23.60, NULL, 24.62, 202005);
INSERT INTO `pay_price` VALUES (5, 25, '尺寸', '颜色', 62.32, NULL, 24.65, 202005);
INSERT INTO `pay_price` VALUES (5, 26, '尺寸', '颜色', 31.32, NULL, 25.36, 202005);
INSERT INTO `pay_price` VALUES (5, 27, '尺寸', '颜色', 34.68, NULL, 43.65, 202005);
INSERT INTO `pay_price` VALUES (5, 28, '尺寸', '颜色', 51.35, NULL, 65.95, 202005);
INSERT INTO `pay_price` VALUES (5, 29, '尺寸', '颜色', 34.69, NULL, 72.65, 202005);

-- ----------------------------
-- Table structure for search_item
-- ----------------------------
DROP TABLE IF EXISTS `search_item`;
CREATE TABLE `search_item`  (
  `search_id` int(0) NOT NULL,
  `class_id` int(0) NOT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  INDEX `ssid`(`search_id`) USING BTREE,
  INDEX `ccid`(`class_id`) USING BTREE,
  CONSTRAINT `ccid` FOREIGN KEY (`class_id`) REFERENCES `classify` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ssid` FOREIGN KEY (`search_id`) REFERENCES `search_list` (`search_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_item
-- ----------------------------
INSERT INTO `search_item` VALUES (10000, 30000, '卫生纸', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-15/edbcf807-80d3-40c5-a275-907ebedbccbd.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '抽纸', 'https://t00img.yangkeduo.com/goods/images/2019-11-16/896a335d-2e4c-4c9d-9998-7d38878590a0.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '儿童配饰', 'https://t00img.yangkeduo.com/goods/images/2019-10-14/e1d1884a-72a2-4588-8169-8b73c68700c2.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '个人清洁工具', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-16/bba49943-9b5e-4570-b493-949ad52c4d1e.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '一次性用品', 'https://t00img.yangkeduo.com/goods/images/2019-07-22/6dd3de8c-943a-45bf-a618-bf4d3f7b1259.png');
INSERT INTO `search_item` VALUES (10000, 30000, 'U盘/MP3', 'https://t00img.yangkeduo.com/goods/images/2019-08-18/228d3581-827b-455b-a03b-35ffe8006238.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '学生文具', 'https://t00img.yangkeduo.com/goods/images/2020-01-19/2880a4df5c1d36c84c52a3b7cbc514c5.jpeg');
INSERT INTO `search_item` VALUES (10000, 30000, '化妆棉/洗脸巾', 'https://t00img.yangkeduo.com/goods/images/2019-04-06/1302520e-894c-4e07-81b7-6f6f53888fdf.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '功能小件', 'https://t00img.yangkeduo.com/goods/images/2019-10-19/8bace843-28cc-4d6c-951e-e11cc8af721d.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '充电线', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/34fb394c-92bb-4274-97a6-5c2cc371d7b9.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '垃圾袋', 'https://t00img.yangkeduo.com/goods/images/2019-08-24/41a8e596-c98f-42cf-bdcd-51606cdd9bd1.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '粘钩', 'https://t00img.yangkeduo.com/goods/images/2019-03-11/18f3d929-d70f-478a-99c1-3c252abd3eef.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '戒指', 'https://t00img.yangkeduo.com/goods/images/2019-07-25/ef3e07d1-98e2-4a8f-985c-329d07d45735.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '耳机/耳麦', 'https://t00img.yangkeduo.com/goods/images/2019-09-05/f8bb521c-2224-4143-b572-067b0b151f40.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '女袜/丝袜', 'https://t00img.yangkeduo.com/goods/images/2019-07-21/a0aa8d3d-d8d6-43a6-9a63-78fe48f036b4.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '指甲刀', 'https://t00img.yangkeduo.com/goods/images/2019-11-01/d3f2ffc8-4f4c-4d5c-a590-60991672dd01.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '缝纫工具', 'https://t00img.yangkeduo.com/goods/images/2020-02-01/c37bf7919f56b07febb26a73da78b7fd.jpeg');
INSERT INTO `search_item` VALUES (10000, 30000, '腰带/皮带', 'https://t00img.yangkeduo.com/goods/images/2019-03-13/35d0f1c4-67ef-431c-a1fe-335ee9576770.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '拖鞋', 'https://t00img.yangkeduo.com/goods/images/2019-12-28/70e672620600519978a66d2bc041d862.jpeg');
INSERT INTO `search_item` VALUES (10000, 30000, '湿巾', 'https://t00img.yangkeduo.com/goods/images/2019-08-21/866f0387-9b5f-4aed-9215-4772dab5c25f.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '园艺用品', 'https://t00img.yangkeduo.com/goods/images/2019-05-22/969d780d-cffc-4600-ba05-477c68c64640.jpg');
INSERT INTO `search_item` VALUES (10000, 30000, '文创礼品', 'https://t00img.yangkeduo.com/goods/images/2019-10-29/8308a627-aa1f-4797-9175-465e24111e19.jpeg');
INSERT INTO `search_item` VALUES (10001, 30001, '西式糕点', 'https://t00img.yangkeduo.com/goods/images/2019-10-17/6cb2a7b9f70a8332419fa818564551e3.jpeg');
INSERT INTO `search_item` VALUES (10001, 30001, '酸辣粉', 'https://t00img.yangkeduo.com/goods/images/2019-08-18/4b41b49c-9824-4a93-a063-392f079aaf08.jpg');
INSERT INTO `search_item` VALUES (10001, 30001, '瓜子炒货', 'https://t00img.yangkeduo.com/goods/images/2019-12-01/96125aa62083bb94fcf31e002a08f6b7.jpeg');
INSERT INTO `search_item` VALUES (10001, 30001, '面食', 'https://t00img.yangkeduo.com/goods/images/2020-01-08/8b62bad61a6a470fcf80049c73746456.jpeg');
INSERT INTO `search_item` VALUES (10001, 30002, '肉制品', 'https://t00img.yangkeduo.com/goods/images/2019-09-05/41b9cc5e-f8c8-45b3-814f-5ffdcd3970af.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '速食粥饭菜', 'https://t00img.yangkeduo.com/goods/images/2019-11-23/59d06995-b538-4d1f-8658-a96e56154940.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '方便面', 'https://t00img.yangkeduo.com/goods/images/2019-05-28/11f17a62-fafd-4086-a23c-67f5402a9931.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '调味品', 'https://t00img.yangkeduo.com/goods/images/2019-11-26/d84dcf72-fee9-48ed-bac3-aed57211aa23.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '米线米粉', 'https://t00img.yangkeduo.com/goods/images/2019-12-06/3176b3b5-7f6c-4c99-b12c-93c5ad1a52eb.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '螺蛳粉', 'https://t00img.yangkeduo.com/goods/images/2019-06-17/cd8fffd4-cedf-434d-b1eb-bf5daf5148cd.jpg');
INSERT INTO `search_item` VALUES (10001, 30002, '烘焙', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/d9f16721b3536f692350a077e5c2c010.jpeg');
INSERT INTO `search_item` VALUES (10001, 30002, '即食火锅', 'https://t00img.yangkeduo.com/goods/images/2019-03-18/d28c6eea-326f-4fb4-bbee-1c028f4bc559.jpg');
INSERT INTO `search_item` VALUES (10001, 30003, '巧克力', 'https://t00img.yangkeduo.com/goods/images/2019-05-16/8e81061b-5105-41cc-891e-fd75bb27a9e6.jpg');
INSERT INTO `search_item` VALUES (10001, 30003, '糖果', 'https://t00img.yangkeduo.com/goods/images/2019-06-13/aab07edc-dc28-434e-9a08-b53b8ab30dd3.png');
INSERT INTO `search_item` VALUES (10001, 30003, '坚果/核桃', 'https://t00img.yangkeduo.com/goods/images/2019-07-25/7a3f64f7-7e1f-4a17-a483-3d92e30246b8.jpg');
INSERT INTO `search_item` VALUES (10001, 30003, '混合坚果', 'https://t00img.yangkeduo.com/goods/images/2019-10-28/957f3e19-3339-434e-9738-950ad5269f12.jpg');
INSERT INTO `search_item` VALUES (10001, 30003, '果冻/布丁', 'https://t00img.yangkeduo.com/goods/images/2019-04-10/fb37634e-e7c1-4f47-9002-ad6da2398e6c.jpg');
INSERT INTO `search_item` VALUES (10001, 30004, '传统糕点', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-19/d28ac440-39bc-4694-a682-b049e4733bcf.jpg');
INSERT INTO `search_item` VALUES (10001, 30004, '月饼', 'https://t00img.yangkeduo.com/goods/images/2019-08-08/50367c6b-fe88-44c0-a6c3-fbe4d42924fe.jpg');
INSERT INTO `search_item` VALUES (10001, 30004, '西式糕点', 'https://t00img.yangkeduo.com/goods/images/2019-10-17/6cb2a7b9f70a8332419fa818564551e3.jpeg');
INSERT INTO `search_item` VALUES (10001, 30005, '麦片', 'https://t00img.yangkeduo.com/goods/images/2019-11-25/80904ba3055a8f0f8efb2f8161c9841a.jpeg');
INSERT INTO `search_item` VALUES (10001, 30005, '饮料', 'https://t00img.yangkeduo.com/goods/images/2019-12-15/4ed2fcb5-b162-4e50-8d10-38f61a10f5a9.jpg');
INSERT INTO `search_item` VALUES (10001, 30005, '奶茶', 'https://t00img.yangkeduo.com/goods/images/2019-04-12/39413508-8ad7-4f66-aa5a-473db0aa4991.jpg');
INSERT INTO `search_item` VALUES (10001, 30005, '酸奶', 'https://t00img.yangkeduo.com/goods/images/2019-10-20/e3996b1e-7739-428a-8710-c2ec6a8d33d2.jpg');
INSERT INTO `search_item` VALUES (10001, 30006, '红茶', 'https://t00img.yangkeduo.com/goods/images/2019-11-23/0a5327fa865f78ff8ac0071eaae30249.jpeg');
INSERT INTO `search_item` VALUES (10001, 30006, '花草茶', 'https://t00img.yangkeduo.com/goods/images/2019-08-02/cb44bfd7-3e0a-42a7-a48e-81922f878a2f.jpg');
INSERT INTO `search_item` VALUES (10001, 30006, '绿茶', 'https://t00img.yangkeduo.com/goods/images/2019-08-07/73a3dc0c-b247-4082-887d-c3f028b8921f.jpg');
INSERT INTO `search_item` VALUES (10001, 30007, '薯片/膨化', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-29/5ad69952-08f5-4f0c-b6f3-0ff4469c01c0.png');
INSERT INTO `search_item` VALUES (10001, 30007, '曲奇饼干', 'https://t00img.yangkeduo.com/goods/images/2019-10-14/e85bcded-93ab-4527-9815-dad785158eca.jpg');
INSERT INTO `search_item` VALUES (10001, 30007, '薄脆/煎饼', 'https://t00img.yangkeduo.com/goods/images/2019-07-19/96a98f99-b4f7-406f-8a42-b172b6cca368.jpg');
INSERT INTO `search_item` VALUES (10001, 30008, '鸭肉零食', 'https://t00img.yangkeduo.com/goods/images/2019-04-24/95f5540a-6f5f-47f1-8042-ff71b2798e50.jpg');
INSERT INTO `search_item` VALUES (10001, 30008, '鱼仔鱿鱼', 'https://t00img.yangkeduo.com/goods/images/2019-03-04/302b09a8-ddfc-41ae-819d-e6cbfb96c951.jpg');
INSERT INTO `search_item` VALUES (10001, 30008, '辣条', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/af0fe92ede36ff0f78fb3f6d4d529585.jpeg');
INSERT INTO `search_item` VALUES (10001, 30009, '干货土特产', 'https://t00img.yangkeduo.com/goods/images/2019-06-12/5cf3b961-308f-4a2e-b9a4-6a90f5a990a6.jpg');
INSERT INTO `search_item` VALUES (10001, 30009, '米', 'https://t00img.yangkeduo.com/goods/images/2019-09-15/a097a874-0a06-4ea3-8a5c-88153fd30ecf.png');
INSERT INTO `search_item` VALUES (10001, 30010, '人参/洋参', 'https://t00img.yangkeduo.com/goods/images/2019-05-29/2b923ac0-77ff-424c-9291-914bd35f3f64.jpg');
INSERT INTO `search_item` VALUES (10001, 30010, '阿胶', 'https://t00img.yangkeduo.com/goods/images/2018-12-24/a6cbe21bb3530386a35bb3f6dd11f2d9.png');
INSERT INTO `search_item` VALUES (10001, 30011, '男性健康', 'https://t00img.yangkeduo.com/goods/images/2020-01-04/27c6a1fa830612c3113f99b0edc7b7cb.jpeg');
INSERT INTO `search_item` VALUES (10001, 30011, '美白养颜', 'https://t00img.yangkeduo.com/goods/images/2020-01-14/55f1a42acddbd28887d5898343104d21.jpeg');
INSERT INTO `search_item` VALUES (10001, 30012, '白酒', 'https://t00img.yangkeduo.com/goods/images/2019-12-18/7f4fe52df8a2c0a61714d4d5d98562d4.jpeg');
INSERT INTO `search_item` VALUES (10001, 30012, '葡萄酒', 'https://t00img.yangkeduo.com/goods/images/2019-06-13/eaf981cf-cbeb-4d2a-991c-d68af87fe570.jpg');
INSERT INTO `search_item` VALUES (10001, 30013, '维生素', 'https://t00img.yangkeduo.com/goods/images/2019-02-15/41454f9a-2536-4969-b856-445a884a731f.jpeg');
INSERT INTO `search_item` VALUES (10001, 30013, '胶原蛋白', 'https://t00img.yangkeduo.com/goods/images/2019-10-09/99b9c3a8-9c04-48b6-8e15-f602fe495401.jpg');
INSERT INTO `search_item` VALUES (10002, 30001, '卫生纸', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-15/edbcf807-80d3-40c5-a275-907ebedbccbd.jpg');
INSERT INTO `search_item` VALUES (10002, 30001, '个人清洁工具', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-16/bba49943-9b5e-4570-b493-949ad52c4d1e.jpg');
INSERT INTO `search_item` VALUES (10002, 30001, '抽纸', 'https://t00img.yangkeduo.com/goods/images/2019-11-16/896a335d-2e4c-4c9d-9998-7d38878590a0.jpg');
INSERT INTO `search_item` VALUES (10002, 30001, '指甲刀', 'https://t00img.yangkeduo.com/goods/images/2019-11-01/d3f2ffc8-4f4c-4d5c-a590-60991672dd01.jpg');
INSERT INTO `search_item` VALUES (10002, 30001, '湿巾', 'https://t00img.yangkeduo.com/goods/images/2019-08-21/866f0387-9b5f-4aed-9215-4772dab5c25f.jpg');
INSERT INTO `search_item` VALUES (10002, 30014, '洗脸巾', 'https://t00img.yangkeduo.com/goods/images/2019-09-01/d66b5d9c-b36e-4d38-9651-26b761608df2.jpg');
INSERT INTO `search_item` VALUES (10002, 30014, '厨房用纸', 'https://t00img.yangkeduo.com/goods/images/2019-09-04/8db74ca6-ab78-4fa6-9089-b9de600c2169.jpg');
INSERT INTO `search_item` VALUES (10002, 30014, '手帕纸', 'https://t00img.yangkeduo.com/goods/images/2019-06-21/8056538b-fffe-4c38-a648-a91fc3f95779.jpg');
INSERT INTO `search_item` VALUES (10002, 30014, '湿巾', 'https://t00img.yangkeduo.com/goods/images/2019-08-21/866f0387-9b5f-4aed-9215-4772dab5c25f.jpg');
INSERT INTO `search_item` VALUES (10002, 30015, '口腔护理', 'https://t00img.yangkeduo.com/goods/images/2020-01-02/cb58081b29551e274a4377d8ff7c6d1c.jpeg');
INSERT INTO `search_item` VALUES (10002, 30015, '梳子/镜子', 'https://t00img.yangkeduo.com/goods/images/2019-07-21/d95c69bb-2357-4eaf-b991-8ec87fd9448a.jpg');
INSERT INTO `search_item` VALUES (10002, 30015, '洗发护发', 'https://t00img.yangkeduo.com/goods/images/2019-09-10/dbcad8d1-46f2-44de-a44f-dad9ce2af406.jpg');
INSERT INTO `search_item` VALUES (10002, 30015, '沐浴露/香皂', 'https://t00img.yangkeduo.com/goods/images/2019-03-02/ee9c35ce-ffaf-46a0-a5fc-1d1d55c11be4.jpg');
INSERT INTO `search_item` VALUES (10002, 30016, '洗衣护理', 'https://t00img.yangkeduo.com/goods/images/2019-04-10/d6e031ab-46e5-4471-b2c8-86888fa1603c.jpg');
INSERT INTO `search_item` VALUES (10002, 30016, '家用清洁剂', 'https://t00img.yangkeduo.com/goods/images/2019-12-11/85d6eca7-1df3-4d16-8e22-eb69fd809fab.png');
INSERT INTO `search_item` VALUES (10002, 30016, '香薰除臭', 'https://t00img.yangkeduo.com/goods/images/2019-08-06/d35c206c-c515-4b60-8638-9e97fe1b3960.jpg');
INSERT INTO `search_item` VALUES (10002, 30016, '防蛀灭虫', 'https://t00img.yangkeduo.com/goods/images/2019-02-09/fbafe6e3-5665-48c4-9cca-c9e0282fb7a3.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '身体乳/霜', 'https://t00img.yangkeduo.com/goods/images/2019-11-25/d147386d8ae62a71a974facf912acccd.jpeg');
INSERT INTO `search_item` VALUES (10002, 30017, '手足护理', 'https://t00img.yangkeduo.com/goods/images/2019-07-22/9c6d860a-b466-48fa-a036-22eb1e12fe0a.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '胸部护理', 'https://t00img.yangkeduo.com/goods/images/2019-08-26/c301de57-2c4c-4d6f-a004-4c1efbaec69d.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '身体护理', 'https://t00img.yangkeduo.com/goods/images/2019-12-16/0faef888-12c9-42d5-949d-688e3afc3278.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '卫生巾', 'https://t00img.yangkeduo.com/goods/images/2019-07-25/1c9cfc41-b1bd-4806-ae74-6713309dcd96.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '脱毛止汗', 'https://t00img.yangkeduo.com/goods/images/2019-06-29/cf35efd9-0dee-4b01-b5fd-be42864bc149.jpg');
INSERT INTO `search_item` VALUES (10002, 30017, '身体磨砂', 'https://t00img.yangkeduo.com/goods/images/2019-10-24/7f8ef19c-2fca-4cb3-9bae-6738a4c308d8.jpg');
INSERT INTO `search_item` VALUES (10003, 30001, '腰带/皮带', 'https://t00img.yangkeduo.com/goods/images/2019-03-13/35d0f1c4-67ef-431c-a1fe-335ee9576770.jpg');
INSERT INTO `search_item` VALUES (10003, 30001, '拖鞋', 'https://t00img.yangkeduo.com/goods/images/2019-12-28/70e672620600519978a66d2bc041d862.jpeg');
INSERT INTO `search_item` VALUES (10003, 30001, '高跟鞋', 'https://t00img.yangkeduo.com/goods/images/2019-09-07/dbb5e8e3-5f26-4799-8507-e63db8738fd7.jpg');
INSERT INTO `search_item` VALUES (10003, 30001, '女包', 'https://t00img.yangkeduo.com/goods/images/2019-09-29/257d1331-72b3-474c-a0c9-b58af5c52fb1.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '手表', 'https://t00img.yangkeduo.com/goods/images/2019-10-31/48581048-05e1-4b9b-9f40-92b0258ad445.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '围巾/手套', 'https://t00img.yangkeduo.com/goods/images/2019-07-16/3e449cce-a64f-4139-87f5-c49c9dbed3be.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '帽子', 'https://t00img.yangkeduo.com/goods/images/2019-11-19/7eda5315-3d06-4518-84f3-98ea56357903.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '钱包/卡包', 'https://t00img.yangkeduo.com/goods/images/2019-03-11/46eea6d8-de82-434a-b870-2641cc559e6d.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '旅行箱包', 'https://t00img.yangkeduo.com/goods/images/2019-10-16/1ff51bed-3bda-4867-bfa9-cdc0cb34d50f.jpg');
INSERT INTO `search_item` VALUES (10003, 30018, '眼镜', 'https://t00img.yangkeduo.com/goods/images/2020-01-01/c45fa28d620d2ae5339ff8da0757331c.jpeg');
INSERT INTO `search_item` VALUES (10003, 30018, '毛线', 'https://t00img.yangkeduo.com/goods/images/2019-07-23/2060945e-83b3-4c04-9513-f16a9e4c745c.jpg');
INSERT INTO `search_item` VALUES (10003, 30019, '帆布女鞋', 'https://t00img.yangkeduo.com/goods/images/2019-02-01/56dc5dfa-bd42-48b9-8bb1-d6a37fc5000b.jpg');
INSERT INTO `search_item` VALUES (10003, 30019, '女款马丁靴', 'https://t00img.yangkeduo.com/goods/images/2019-10-31/f24b8570-7826-4f78-b0da-7fd18108c15e.jpg');
INSERT INTO `search_item` VALUES (10003, 30019, '靴子', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-20/d3fbc588-d115-4efe-9a9f-202c271b73ad.jpg');
INSERT INTO `search_item` VALUES (10003, 30019, '女款老爹鞋', 'https://t00img.yangkeduo.com/goods/images/2020-01-13/f836ed1a3dcf943a555d04204fa71af3.jpeg');
INSERT INTO `search_item` VALUES (10003, 30020, '男款板鞋', 'https://t00img.yangkeduo.com/goods/images/2019-04-12/dfb95ff3-2f31-4d87-9855-a21edeeba6aa.jpg');
INSERT INTO `search_item` VALUES (10003, 30020, '休闲男鞋', 'https://t00img.yangkeduo.com/goods/images/2019-12-06/4967a4aee49c738f7e1f7beafa753750.jpeg');
INSERT INTO `search_item` VALUES (10003, 30020, '男款高帮鞋', 'https://t00img.yangkeduo.com/goods/images/2019-10-07/791b143a-65f8-42a9-94e7-a57bfa8186e5.jpg');
INSERT INTO `search_item` VALUES (10003, 30020, '靴子', 'https://t00img.yangkeduo.com/goods/images/2019-10-08/a7decf8d-885f-4801-a8d0-57a1f87105c3.jpg');
INSERT INTO `search_item` VALUES (10003, 30020, '帆布男鞋', 'https://t00img.yangkeduo.com/goods/images/2019-11-09/2b7f1ab0-86cd-4796-954e-05e53e128dbe.jpg');
INSERT INTO `search_item` VALUES (10003, 30020, '皮鞋', 'https://t00img.yangkeduo.com/goods/images/2019-11-29/dea29847-d20b-4af4-b65b-1d334c940efc.jpg');
INSERT INTO `search_item` VALUES (10003, 30020, '男款棉鞋', 'https://t00img.yangkeduo.com/goods/images/2019-09-03/60955f09-e100-40b3-9f67-fbd6a5f217de.png');
INSERT INTO `search_item` VALUES (10004, 30001, '一次性用品', 'https://t00img.yangkeduo.com/goods/images/2019-07-22/6dd3de8c-943a-45bf-a618-bf4d3f7b1259.png');
INSERT INTO `search_item` VALUES (10004, 30001, '垃圾袋', 'https://t00img.yangkeduo.com/goods/images/2019-08-24/41a8e596-c98f-42cf-bdcd-51606cdd9bd1.jpg');
INSERT INTO `search_item` VALUES (10004, 30001, '粘钩', 'https://t00img.yangkeduo.com/goods/images/2019-03-11/18f3d929-d70f-478a-99c1-3c252abd3eef.jpg');
INSERT INTO `search_item` VALUES (10004, 30001, '戒指', 'https://t00img.yangkeduo.com/goods/images/2019-07-25/ef3e07d1-98e2-4a8f-985c-329d07d45735.jpg');
INSERT INTO `search_item` VALUES (10004, 30001, '园艺用品', 'https://t00img.yangkeduo.com/goods/images/2019-05-22/969d780d-cffc-4600-ba05-477c68c64640.jpg');
INSERT INTO `search_item` VALUES (10004, 30021, '碗筷餐具', 'https://t00img.yangkeduo.com/goods/images/2019-04-11/1b855f7a-7c6f-4fa9-ad00-140fce8090b8.jpg');
INSERT INTO `search_item` VALUES (10004, 30021, '饭盒/保鲜盒', 'https://t00img.yangkeduo.com/goods/images/2019-04-11/73154c72-5b15-42e6-94f6-0764c0af189f.jpg');
INSERT INTO `search_item` VALUES (10004, 30021, '茶具', 'https://t00img.yangkeduo.com/goods/images/2019-04-05/963163ef-3ced-4b5d-806e-13a9cfdb3ecc.jpg');
INSERT INTO `search_item` VALUES (10004, 30021, '酒杯酒具', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-16/89e014c1-4c89-4979-bbae-ebdb06a53689.jpg');
INSERT INTO `search_item` VALUES (10004, 30022, '收纳/防尘袋', 'https://t00img.yangkeduo.com/goods/images/2019-08-11/1ebf7113-69b0-4e58-95a2-cf2b21b05a9c.png');
INSERT INTO `search_item` VALUES (10004, 30022, '收纳盒', 'https://t00img.yangkeduo.com/goods/images/2019-07-10/14fd4b74-6e32-48a1-adec-1e3c519a4415.jpg');
INSERT INTO `search_item` VALUES (10004, 30022, '衣架', 'https://t00img.yangkeduo.com/goods/images/2019-05-14/d0d3fc84-effa-4b5a-836e-da9db4b5592c.jpg');
INSERT INTO `search_item` VALUES (10004, 30022, '置物架', 'https://t00img.yangkeduo.com/goods/images/2019-09-11/e871385f-bf6a-4ab4-9058-ac5587a36597.jpg');
INSERT INTO `search_item` VALUES (10004, 30023, '发饰', 'https://t00img.yangkeduo.com/goods/images/2019-06-25/5de79a6e-82b7-4841-8c58-1e1209ea2efd.jpg');
INSERT INTO `search_item` VALUES (10004, 30023, '耳饰', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-26/6478340e-dd2f-405b-86b6-0bd06ac7ba2d.jpg');
INSERT INTO `search_item` VALUES (10004, 30024, '花瓶/花架', 'https://t00img.yangkeduo.com/goods/images/2019-03-03/e2846ab5-fc61-48d6-b24e-70e43fb14a7b.jpg');
INSERT INTO `search_item` VALUES (10004, 30024, '生活用花', 'https://t00img.yangkeduo.com/goods/images/2019-12-01/72dffa1f43ce7382570b48341d56d7de.jpeg');
INSERT INTO `search_item` VALUES (10004, 30025, '高压锅', 'https://t00img.yangkeduo.com/goods/images/2019-08-04/7957e429-ff50-4acf-978f-f5785da794e7.jpg');
INSERT INTO `search_item` VALUES (10004, 30025, '绞肉切菜器', 'https://t00img.yangkeduo.com/goods/images/2019-08-26/ca44ccf1-b38a-483c-91dc-9668bee61fb9.jpg');
INSERT INTO `search_item` VALUES (10004, 30025, '蒸锅砂锅', 'https://t00img.yangkeduo.com/goods/images/2019-08-30/ec74b853-78eb-41db-ad3e-abbab943ac66.png');
INSERT INTO `search_item` VALUES (10004, 30025, '砧板', 'https://t00img.yangkeduo.com/goods/images/2019-03-07/24fdbed9-e21e-463b-ac81-c1d1e0a0a7d2.jpeg');
INSERT INTO `search_item` VALUES (10004, 30026, '卫浴/置物', 'https://t00img.yangkeduo.com/goods/images/2019-04-27/132d4a3a-490e-4934-abef-3a99cb39ad6d.jpg');
INSERT INTO `search_item` VALUES (10004, 30026, '防护用品', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-26/7c1952c9-020b-41eb-8250-a66ab5814be9.jpg');
INSERT INTO `search_item` VALUES (10004, 30026, '圣诞/春节用品', 'https://t00img.yangkeduo.com/goods/images/2019-11-19/7140997f-f8a4-44ef-9a91-bd66bd31dfe4.jpg');
INSERT INTO `search_item` VALUES (10004, 30027, '保温杯', 'https://t00img.yangkeduo.com/goods/images/2019-11-10/5c909327-71d2-442f-91a4-428faf40c831.jpg');
INSERT INTO `search_item` VALUES (10004, 30027, '玻璃杯', 'https://t00img.yangkeduo.com/goods/images/2019-04-17/35e4b638-cc77-4ca6-bbd8-30487d7a8e0c.jpg');
INSERT INTO `search_item` VALUES (10004, 30027, '水壶', 'https://t00img.yangkeduo.com/goods/images/2019-08-25/d1868a29-c018-416b-bb17-a034301449a8.jpg');
INSERT INTO `search_item` VALUES (10005, 30001, 'U盘/MP3', 'https://t00img.yangkeduo.com/goods/images/2019-08-18/228d3581-827b-455b-a03b-35ffe8006238.jpg');
INSERT INTO `search_item` VALUES (10005, 30001, '功能小件', 'https://t00img.yangkeduo.com/goods/images/2019-10-19/8bace843-28cc-4d6c-951e-e11cc8af721d.jpg');
INSERT INTO `search_item` VALUES (10005, 30001, '摆件挂件', 'https://t00img.yangkeduo.com/goods/images/2019-02-18/db938d8c-5d05-4cc2-9c91-6a09b12b6d58.jpg');
INSERT INTO `search_item` VALUES (10005, 30001, '手机支架', 'https://t00img.yangkeduo.com/goods/images/2019-11-21/b142214bee45e6a5911b866ec2055798.jpeg');
INSERT INTO `search_item` VALUES (10005, 30028, '行车记录仪', 'https://t00img.yangkeduo.com/goods/images/2019-01-21/5960f2d0-3d53-43d1-be1e-44487d99d42e.jpg');
INSERT INTO `search_item` VALUES (10005, 30028, '吸尘器', 'https://t00img.yangkeduo.com/goods/images/2019-06-27/3dd4ab7a-533f-4d87-a23c-120202c852d8.jpg');
INSERT INTO `search_item` VALUES (10005, 30028, '车机导航', 'https://t00img.yangkeduo.com/goods/images/2018-12-20/80f3dcd8d7d7e74a790755658cc5f179.jpeg');
INSERT INTO `search_item` VALUES (10005, 30028, '车载充电器', 'https://t00img.yangkeduo.com/goods/images/2019-05-30/7113863a-271a-4512-90b5-6853afcf06e5.jpg');
INSERT INTO `search_item` VALUES (10005, 30028, '定位器', 'https://t00img.yangkeduo.com/goods/images/2019-08-08/bd53e3fd-8891-421d-b384-926a80174579.jpg');
INSERT INTO `search_item` VALUES (10005, 30029, '香水香薰', 'https://t00img.yangkeduo.com/goods/images/2019-09-17/d0b889c2-a914-4583-9042-ff4b34862d64.jpg');
INSERT INTO `search_item` VALUES (10005, 30029, '车载旅行床', 'https://t00img.yangkeduo.com/goods/images/2019-09-02/5dc93361-4a1f-4a40-83a0-8afd665c9134.jpg');
INSERT INTO `search_item` VALUES (10005, 30030, '洗车水枪', 'https://t00img.yangkeduo.com/goods/images/2019-10-18/68202e1b-e475-4b7f-ae95-c69a0c84f1b4.jpg');
INSERT INTO `search_item` VALUES (10005, 30030, '清洗剂', 'https://t00img.yangkeduo.com/goods/images/2019-08-13/a4797be2-2017-4ae8-9f12-f79d7aba914b.jpg');
INSERT INTO `search_item` VALUES (10005, 30031, '贴纸装饰', 'https://t00img.yangkeduo.com/goods/images/2019-11-14/1ac19d91-a426-4cf3-a40d-0455214100bf.jpg');
INSERT INTO `search_item` VALUES (10005, 30031, '汽车改装', 'https://t00img.yangkeduo.com/goods/images/2019-06-11/d468e178-16f6-45b6-951e-6efe82660d9f.jpg');
INSERT INTO `search_item` VALUES (10005, 30032, '其他零配件', 'https://t00img.yangkeduo.com/goods/images/2019-06-18/9442cb83-eb1e-4727-8c5d-a0f83763cd72.jpg');
INSERT INTO `search_item` VALUES (10005, 30032, '车灯照明', 'https://t00img.yangkeduo.com/goods/images/2019-07-14/aa3028e5-9154-40d6-94dd-758115619c7b.jpg');
INSERT INTO `search_item` VALUES (10006, 30001, '儿童配饰', 'https://t00img.yangkeduo.com/goods/images/2019-10-14/e1d1884a-72a2-4588-8169-8b73c68700c2.jpg');
INSERT INTO `search_item` VALUES (10006, 30001, '儿童读物', 'https://t00img.yangkeduo.com/goods/images/2019-12-27/0b98bc0bc4511cdb9c8336c3b7563e91.jpeg');
INSERT INTO `search_item` VALUES (10006, 30001, '绘画用品', 'https://t00img.yangkeduo.com/goods/images/2019-10-31/d1e7b43e-4484-40fe-aac0-9bb3737770d3.jpg');
INSERT INTO `search_item` VALUES (10006, 30001, '纸尿裤', 'https://t00img.yangkeduo.com/goods/images/2019-09-08/03b0829e-18d2-44c0-9605-cdf89a1076e8.jpg');
INSERT INTO `search_item` VALUES (10006, 30033, '早教机', 'https://t00img.yangkeduo.com/goods/images/2019-06-24/be1ca0f9-6f49-45fb-83fa-29cd2766b6dc.jpg');
INSERT INTO `search_item` VALUES (10006, 30033, '儿童书包', 'https://t00img.yangkeduo.com/goods/images/2019-10-06/235312f1-7037-4e32-a9ac-49448ce36401.png');
INSERT INTO `search_item` VALUES (10006, 30033, '学习文具', 'https://t00img.yangkeduo.com/goods/images/2020-01-11/d5562106d9bfdd701e44cd64c19fffcb.jpeg');
INSERT INTO `search_item` VALUES (10006, 30033, '儿童书法用品', 'https://t00img.yangkeduo.com/goods/images/2019-04-01/9c3e0bbe-55da-4c81-a90e-db8e9c26bdb7.jpg');
INSERT INTO `search_item` VALUES (10006, 30034, '毛衣', 'https://t00img.yangkeduo.com/goods/images/2019-11-19/971fc142-58b2-4782-82e3-27af6f10a3ed.jpg');
INSERT INTO `search_item` VALUES (10006, 30034, '套装', 'https://t00img.yangkeduo.com/goods/images/2019-08-24/b96dce28-d093-4495-89a5-a762a0c0a18b.jpg');
INSERT INTO `search_item` VALUES (10006, 30034, '连衣裙', 'https://t00img.yangkeduo.com/goods/images/2019-08-09/b9c38a82-8ac0-420e-9435-24542693cdbd.jpg');
INSERT INTO `search_item` VALUES (10006, 30034, '外套', 'https://t00img.yangkeduo.com/goods/images/2020-01-24/f5317feb345c73436ebc29df01024494.jpeg');
INSERT INTO `search_item` VALUES (10006, 30036, '洗澡用具', 'https://t00img.yangkeduo.com/goods/images/2019-07-30/55676267-e118-4b10-bf2e-5ce4206835fb.jpg');
INSERT INTO `search_item` VALUES (10006, 30036, '宝宝润肤', 'https://t00img.yangkeduo.com/goods/images/2019-10-16/e8e9b776-ee16-4905-967c-3c5932f409b2.jpg');
INSERT INTO `search_item` VALUES (10007, 30001, '充电线', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/34fb394c-92bb-4274-97a6-5c2cc371d7b9.jpg');
INSERT INTO `search_item` VALUES (10007, 30001, '手机贴膜', 'https://t00img.yangkeduo.com/goods/images/2019-06-25/c49d89ea-d522-4ef5-8268-e32db790b5d4.jpg');
INSERT INTO `search_item` VALUES (10007, 30001, '手机支架', 'https://t00img.yangkeduo.com/goods/images/2019-06-11/ca20116d-bb02-4e21-a1d6-42268069e5cf.png');
INSERT INTO `search_item` VALUES (10007, 30001, '充电器', 'https://t00img.yangkeduo.com/goods/images/2019-08-07/9928ffd2-2df4-42c4-8f9d-8b7b25864759.jpg');
INSERT INTO `search_item` VALUES (10007, 30037, '手机零部件', 'https://t00img.yangkeduo.com/goods/images/2019-10-06/77585026-df58-4bf9-b595-7857ad8f3439.jpg');
INSERT INTO `search_item` VALUES (10007, 30037, '充电宝', 'https://t00img.yangkeduo.com/goods/images/2019-06-10/6e0470e5-a598-4ec7-8555-d71465250b95.jpg');
INSERT INTO `search_item` VALUES (10007, 30037, '手机挂绳', 'https://t00img.yangkeduo.com/goods/images/2019-11-20/42a482c6-433b-41ab-aab8-8dbb8000c6e8.png');
INSERT INTO `search_item` VALUES (10007, 30037, '自拍用品', 'https://t00img.yangkeduo.com/goods/images/2019-08-01/8bf7ef86-d14c-4caa-a699-f1f95d55b24e.jpg');
INSERT INTO `search_item` VALUES (10007, 30038, '功能机', 'https://t00img.yangkeduo.com/goods/images/2019-08-30/52c69626-455f-445e-8c41-cfc8338db73d.png');
INSERT INTO `search_item` VALUES (10007, 30038, '智能机', 'https://t00img.yangkeduo.com/goods/images/2019-10-09/e6040e0dab611a91416da42479e12bf3.jpeg');
INSERT INTO `search_item` VALUES (10008, 30001, '女袜/丝袜', 'https://t00img.yangkeduo.com/goods/images/2019-07-21/a0aa8d3d-d8d6-43a6-9a63-78fe48f036b4.jpg');
INSERT INTO `search_item` VALUES (10008, 30001, '无钢圈文胸', 'https://t00img.yangkeduo.com/goods/images/2019-02-17/4b4e3191-1407-4b43-8e5f-8ee36854e3c0.jpg');
INSERT INTO `search_item` VALUES (10008, 30001, '女士睡衣', 'https://t00img.yangkeduo.com/goods/images/2019-11-13/236cb479-51f9-44f4-8bc9-82d5877683b0.jpg');
INSERT INTO `search_item` VALUES (10008, 30001, '女士内裤', 'https://t00img.yangkeduo.com/goods/images/2019-10-30/24291ea5-f14f-4b92-83fb-f59668e1f69c.jpg');
INSERT INTO `search_item` VALUES (10008, 30039, '女士保暖', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-26/8f79aff5-3d34-4a51-9516-7dca65347f31.jpg');
INSERT INTO `search_item` VALUES (10008, 30039, '睡裙', 'https://t00img.yangkeduo.com/goods/images/2019-03-06/96efd27e-b522-4c31-9c46-ec78ecc8bb57.jpg');
INSERT INTO `search_item` VALUES (10008, 30040, '男士保暖', 'https://t00img.yangkeduo.com/goods/images/images/2019-10-05/e2b8c9e1-5d4b-4ef6-a769-ec8d9b98792b.jpg');
INSERT INTO `search_item` VALUES (10008, 30040, '男士内裤', 'https://t00img.yangkeduo.com/goods/images/2019-11-09/716b5cec-e220-4f5b-b506-d7eabe85cd9f.jpg');
INSERT INTO `search_item` VALUES (10008, 30040, '男袜', 'https://t00img.yangkeduo.com/goods/images/2019-08-30/6ca1e538-eec9-4ff9-a7c6-5b0bdc871e88.png');
INSERT INTO `search_item` VALUES (10008, 30040, '男士睡衣', 'https://t00img.yangkeduo.com/goods/images/2019-09-02/bdd2f83c-8759-4db4-8314-346ed5ecae67.jpg');
INSERT INTO `search_item` VALUES (10009, 30001, '化妆棉/洗脸巾', 'https://t00img.yangkeduo.com/goods/images/2019-04-06/1302520e-894c-4e07-81b7-6f6f53888fdf.jpg');
INSERT INTO `search_item` VALUES (10009, 30001, '眉部工具', 'https://t00img.yangkeduo.com/goods/images/2019-10-04/7feef19a-2566-4050-8f7f-6261f4625654.jpg');
INSERT INTO `search_item` VALUES (10009, 30001, '高光/腮红', 'https://t00img.yangkeduo.com/goods/images/2019-07-23/dcfc0bc3-1426-4bd5-a42e-65996ee62d5a.jpg');
INSERT INTO `search_item` VALUES (10009, 30001, '口红', 'https://t00img.yangkeduo.com/goods/images/2019-08-16/ddf4ff9b-6287-425e-ab95-d242275dcfb9.jpg');
INSERT INTO `search_item` VALUES (10009, 30041, '双眼皮贴', 'https://t00img.yangkeduo.com/goods/images/2019-07-26/2792c327-ecab-4596-9aa3-c158555965eb.jpg');
INSERT INTO `search_item` VALUES (10009, 30041, '身体彩绘', 'https://t00img.yangkeduo.com/goods/images/2019-12-25/c5795a45ce339e1522109686fb3d03e2.jpeg');
INSERT INTO `search_item` VALUES (10009, 30041, '美容蛋/海绵', 'https://t00img.yangkeduo.com/goods/images/2019-06-11/66ebdde0-2cd3-4ac7-a074-db72e8c3ceea.jpg');
INSERT INTO `search_item` VALUES (10009, 30041, '化妆刷', 'https://t00img.yangkeduo.com/goods/images/2019-06-26/5e198a4f-2bd7-4e8d-8c72-8ad201344508.jpg');
INSERT INTO `search_item` VALUES (10009, 30042, '底妆', 'https://t00img.yangkeduo.com/goods/images/2019-04-13/067ef377-7b17-4cc0-8cbc-d4b60317dd42.jpg');
INSERT INTO `search_item` VALUES (10009, 30042, '眼线笔', 'https://t00img.yangkeduo.com/goods/images/2019-10-28/0d91ce7e-d221-49c9-9bbb-89b43288f11e.jpg');
INSERT INTO `search_item` VALUES (10009, 30042, '定妆粉', 'https://t00img.yangkeduo.com/goods/images/2019-10-28/2faf0757-21c1-40f4-9a8f-4269e4d43ebc.jpg');
INSERT INTO `search_item` VALUES (10009, 30042, '睫毛膏', 'https://t00img.yangkeduo.com/goods/images/2019-09-12/9d2e7c82-0bd0-4be2-aac7-2d10cb876e98.jpg');
INSERT INTO `search_item` VALUES (10009, 30043, '面膜', 'https://t00img.yangkeduo.com/goods/images/2019-07-26/a5460b83-0a7b-4753-8dc0-d69e95bc9073.jpg');
INSERT INTO `search_item` VALUES (10009, 30043, '护理套装', 'https://t00img.yangkeduo.com/goods/images/2018-12-20/f585288f7aaf531e4aefcbf4578fab91.jpeg');
INSERT INTO `search_item` VALUES (10009, 30043, '精华', 'https://t00img.yangkeduo.com/goods/images/2019-11-28/637004e0ce94455a713fde186bc64ddc.jpeg');
INSERT INTO `search_item` VALUES (10009, 30043, '唇部护理', 'https://t00img.yangkeduo.com/goods/images/2019-11-05/524ee38b-90c5-4e28-981a-f1be27c197f0.jpg');
INSERT INTO `search_item` VALUES (10009, 30044, '染发膏', 'https://t00img.yangkeduo.com/goods/images/2019-04-03/3b6c52b0-d177-4767-960d-e34427035571.jpg');
INSERT INTO `search_item` VALUES (10009, 30045, '男士香水', 'https://t00img.yangkeduo.com/goods/images/2019-04-14/f035ab3f-3001-41b6-a8c2-e44672c40b02.jpg');
INSERT INTO `search_item` VALUES (10009, 30045, '女生香水', 'https://t00img.yangkeduo.com/goods/images/2019-03-13/384b45ae-42eb-4ac4-9d94-b51cd463888c.jpg');
INSERT INTO `search_item` VALUES (10009, 30046, '假发片', 'https://t00img.yangkeduo.com/goods/images/2019-08-15/613d5905-0bd6-431d-81cd-cfe63a0b492f.jpg');
INSERT INTO `search_item` VALUES (10009, 30046, '整顶假发', 'https://t00img.yangkeduo.com/goods/images/2019-04-18/5380283a-563d-471e-baf9-fb1f9d173c7c.jpg');
INSERT INTO `search_item` VALUES (10010, 30001, '成功/励志', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-26/254d6650-6a3a-40bd-8a7b-b241699551a0.jpg');
INSERT INTO `search_item` VALUES (10010, 30001, '言情武侠小说', 'https://t00img.yangkeduo.com/goods/images/2019-12-26/3878afd0df5cf590ab9a5b373b0cc3ed.jpeg');
INSERT INTO `search_item` VALUES (10010, 30001, '中学教辅', 'https://t00img.yangkeduo.com/goods/images/2019-06-19/44e27698-fea3-43e9-a357-f65298498133.jpg');
INSERT INTO `search_item` VALUES (10010, 30001, '小学教辅', 'https://t00img.yangkeduo.com/goods/images/2019-10-08/49c40a9b-a800-49cd-be1d-f3e156b48eef.jpg');
INSERT INTO `search_item` VALUES (10010, 30047, '哲学/心理学', 'https://t00img.yangkeduo.com/goods/images/2019-12-28/731d9a418ca9b5c2816ee49f4bfdd631.jpeg');
INSERT INTO `search_item` VALUES (10010, 30047, '演讲/口才', 'https://t00img.yangkeduo.com/goods/images/2019-06-21/b08f76e9-8e79-41c9-b365-8ce6a32baa61.jpg');
INSERT INTO `search_item` VALUES (10010, 30048, '学生教材', 'https://t00img.yangkeduo.com/goods/images/2019-12-07/de9d875b08f485a9bca4e9e10a4462ee.jpeg');
INSERT INTO `search_item` VALUES (10010, 30048, '考试书大全', 'https://t00img.yangkeduo.com/goods/images/2019-12-30/f427d7a6046c6de7e81b294ed979bf26.jpeg');
INSERT INTO `search_item` VALUES (10010, 30048, '外语学习', 'https://t00img.yangkeduo.com/goods/images/2019-05-13/0e08c80b-a71f-491a-8495-6df8953605ed.jpg');
INSERT INTO `search_item` VALUES (10010, 30048, '中考/高考', 'https://t00img.yangkeduo.com/goods/images/2019-09-30/98f3a824-4cbc-42c5-8b23-e05a569b495a.jpg');
INSERT INTO `search_item` VALUES (10011, 30001, '车厘子', 'https://t00img.yangkeduo.com/goods/images/2019-06-14/3e37db66-65fc-42ed-89c2-af9694989b5d.jpg');
INSERT INTO `search_item` VALUES (10011, 30001, '番薯', 'https://t00img.yangkeduo.com/goods/images/2019-08-26/c1f03029-fd9a-48ff-a3c3-500b37a1b143.jpg');
INSERT INTO `search_item` VALUES (10011, 30001, '猕猴桃', 'https://t00img.yangkeduo.com/goods/images/2019-10-15/67008689-7072-448c-b605-ac129973b0bc.jpg');
INSERT INTO `search_item` VALUES (10011, 30001, '虾', 'https://t00img.yangkeduo.com/goods/images/2019-10-23/2e66d773-48dc-40c6-8bcc-b7620fb94564.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '苹果', 'https://t00img.yangkeduo.com/goods/images/2019-10-20/59ffae7a-900e-4b2a-b977-25b44fea13a7.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '榴莲', 'https://t00img.yangkeduo.com/goods/images/2019-06-23/9a544d08-91fe-4d33-b7bf-b25c1541056a.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '芒果', 'https://t00img.yangkeduo.com/goods/images/2019-10-12/de3f8708-e9af-44f8-9138-f5ae01a12937.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '水果罐头', 'https://t00img.yangkeduo.com/goods/images/2019-04-24/83c30446-1d43-4f32-8954-1b063551d302.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '火龙果', 'https://t00img.yangkeduo.com/goods/images/2019-06-08/5b94ba05-d399-4af2-b333-89d4c62ab9db.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '草莓', 'https://t00img.yangkeduo.com/goods/images/2020-01-05/4409a5094561db2e583e7a9fd3bb91f2.jpeg');
INSERT INTO `search_item` VALUES (10011, 30049, '龙眼', 'https://t00img.yangkeduo.com/goods/images/2019-10-24/38e8d323-8847-480e-8666-e15ef1c0dce1.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '百香果', 'https://t00img.yangkeduo.com/goods/images/2019-08-27/2db1b507-758b-4e08-9b77-a8aa557085d9.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '菠萝蜜', 'https://t00img.yangkeduo.com/goods/images/2019-09-30/44548515-0661-4650-b90e-24e7be7d22fe.jpeg');
INSERT INTO `search_item` VALUES (10011, 30049, '枣', 'https://t00img.yangkeduo.com/goods/images/2019-11-01/dd384413-d1d5-4838-96f3-6f6064939957.jpg');
INSERT INTO `search_item` VALUES (10011, 30049, '柠檬', 'https://t00img.yangkeduo.com/goods/images/2019-05-17/d7c7d440-a5f0-4f34-ae71-512b4edf6ee2.png');
INSERT INTO `search_item` VALUES (10012, 30001, '学生文具', 'https://t00img.yangkeduo.com/goods/images/2020-01-19/2880a4df5c1d36c84c52a3b7cbc514c5.jpeg');
INSERT INTO `search_item` VALUES (10012, 30001, '耳机/耳麦', 'https://t00img.yangkeduo.com/goods/images/2019-09-05/f8bb521c-2224-4143-b572-067b0b151f40.jpg');
INSERT INTO `search_item` VALUES (10012, 30001, '蓝牙耳机', 'https://t00img.yangkeduo.com/goods/images/2019-03-16/3d8dd382-040a-4ac4-99e0-721750349fdb.jpg');
INSERT INTO `search_item` VALUES (10012, 30001, '其他文具', 'https://t00img.yangkeduo.com/goods/images/2019-12-07/77b66ea5-dd30-4e97-abd9-5e3114ff905c.jpg');
INSERT INTO `search_item` VALUES (10012, 30050, '麦克风', 'https://t00img.yangkeduo.com/goods/images/2019-06-21/e0c989b0-9a93-4911-a8b1-334cb78c6585.jpg');
INSERT INTO `search_item` VALUES (10012, 30050, '蓝牙音箱', 'https://t00img.yangkeduo.com/goods/images/2019-11-29/ef6f685dcca4b4fe7a651633d489ac89.jpeg');
INSERT INTO `search_item` VALUES (10012, 30050, '多媒体音响', 'https://t00img.yangkeduo.com/goods/images/2019-07-11/371a92da-c274-4889-8185-6589221c8860.jpg');
INSERT INTO `search_item` VALUES (10012, 30050, 'MP3', 'https://t00img.yangkeduo.com/goods/images/2019-10-23/eede713e-4815-4c45-b821-049068fc1f37.jpg');
INSERT INTO `search_item` VALUES (10012, 30051, '笔类书写工具', 'https://t00img.yangkeduo.com/goods/images/2020-01-06/2dc23c37399caae42a7394b567b24ba8.jpeg');
INSERT INTO `search_item` VALUES (10012, 30051, '胶带', 'https://t00img.yangkeduo.com/goods/images/2019-10-10/d403c04c-2707-4ce7-9c41-895677e5e78d.jpg');
INSERT INTO `search_item` VALUES (10013, 30001, '缝纫工具', 'https://t00img.yangkeduo.com/goods/images/2020-02-01/c37bf7919f56b07febb26a73da78b7fd.jpeg');
INSERT INTO `search_item` VALUES (10013, 30001, '窗帘', 'https://t00img.yangkeduo.com/goods/images/2019-08-09/ea4bf5e3-0ddd-4d1d-86b1-4951c3222198.jpg');
INSERT INTO `search_item` VALUES (10013, 30001, '毛巾浴巾', 'https://t00img.yangkeduo.com/goods/images/2019-04-18/af78d700-5074-4268-8a9f-c32cc532b17b.jpg');
INSERT INTO `search_item` VALUES (10013, 30001, '地毯', 'https://t00img.yangkeduo.com/goods/images/2019-04-12/f2fefafe-74d7-45f0-a695-996047242168.jpg');
INSERT INTO `search_item` VALUES (10013, 30052, '地垫/门垫', 'https://t00img.yangkeduo.com/goods/images/2019-07-14/c1aa3844-8b6b-4e8f-b2da-2b4aec71f536.jpg');
INSERT INTO `search_item` VALUES (10013, 30052, '门帘', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-17/3d261c28-fb2d-4ce1-b7a4-75e09f0a83b4.png');
INSERT INTO `search_item` VALUES (10013, 30052, '桌布', 'https://t00img.yangkeduo.com/goods/images/2019-04-21/40c26426-59d2-4917-8d39-ee5ce8a8047a.jpg');
INSERT INTO `search_item` VALUES (10013, 30052, '沙发垫', 'https://t00img.yangkeduo.com/goods/images/2019-02-27/536d0d0c-c14b-4f10-bdb0-d9b67c2e868c.jpg');
INSERT INTO `search_item` VALUES (10014, 30001, '制氧机', 'https://t00img.yangkeduo.com/goods/images/2019-10-23/ec4c0aa5-4413-40d6-a52b-ef133a19ff07.jpg');
INSERT INTO `search_item` VALUES (10014, 30001, '彩色隐形', 'https://t00img.yangkeduo.com/goods/images/2019-09-28/12679e4c-0444-41c8-9311-64f8d80559d3.jpg');
INSERT INTO `search_item` VALUES (10014, 30001, '感冒咳嗽', 'https://t00img.yangkeduo.com/goods/images/2019-11-03/e2be5925-c04b-4390-810b-2029e1377cab.jpeg');
INSERT INTO `search_item` VALUES (10014, 30001, '医用口罩', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-27/b2827c78-66cd-4aa1-81e1-d4fbd16c8bd0.jpg');
INSERT INTO `search_item` VALUES (10014, 30053, '解热镇痛', 'https://t00img.yangkeduo.com/goods/images/2019-11-22/233b37f7-fd1c-46f4-823e-e6b152f64905.jpg');
INSERT INTO `search_item` VALUES (10014, 30053, '皮肤用药', 'https://t00img.yangkeduo.com/goods/images/2019-09-03/188a23a1-9b5e-49f2-867c-02eb58d3d021.jpg');
INSERT INTO `search_item` VALUES (10014, 30053, '抗菌消炎', 'https://t00img.yangkeduo.com/goods/images/2019-10-18/0f7157ee-9246-49ad-849c-bf64f4bf47a7.jpg');
INSERT INTO `search_item` VALUES (10014, 30053, '免疫调节', 'https://t00img.yangkeduo.com/goods/images/2019-11-22/52b67de507edf41ec8a7f6a9493b7df0.jpeg');
INSERT INTO `search_item` VALUES (10015, 30001, '手电筒/头灯', 'https://t00img.yangkeduo.com/goods/images/2019-08-02/61e89b14-a255-471e-9756-90ede3ef15b9.jpg');
INSERT INTO `search_item` VALUES (10015, 30001, '休闲板鞋', 'https://t00img.yangkeduo.com/goods/images/2019-03-14/38dc8018-f12f-49a1-bf2e-1ee75f896b62.jpg');
INSERT INTO `search_item` VALUES (10015, 30054, '刀具/工具', 'https://t00img.yangkeduo.com/goods/images/2019-03-19/b8d6bf62-dc8d-45f1-9ce5-80480a5b15bc.jpg');
INSERT INTO `search_item` VALUES (10015, 30054, '望远镜', 'https://t00img.yangkeduo.com/goods/images/2019-05-16/fcda427b-58e0-487e-85ba-7e757c3d5245.jpg');
INSERT INTO `search_item` VALUES (10016, 30001, 'LED灯泡', 'https://t00img.yangkeduo.com/goods/images/2019-10-14/1cb6dc6f-266d-4066-b378-8d631107b049.jpg');
INSERT INTO `search_item` VALUES (10016, 30001, '电脑卓', 'https://t00img.yangkeduo.com/goods/images/2019-12-06/9998b02d-a645-42dc-ad89-8f863c579598.jpg');
INSERT INTO `search_item` VALUES (10016, 30055, '太阳能灯', 'https://t00img.yangkeduo.com/goods/images/2019-12-08/b3e8f5ec-eecb-4e0f-b118-ed56ea209740.jpg');
INSERT INTO `search_item` VALUES (10016, 30055, '台灯', 'https://t00img.yangkeduo.com/goods/images/2019-05-12/0f896c62-c0e7-4474-9e7d-2cc076df996b.jpg');
INSERT INTO `search_item` VALUES (10016, 30056, '水龙头', 'https://t00img.yangkeduo.com/goods/images/2019-09-13/d04bebd0-db9e-4416-a488-6614e9ac4157.jpeg');
INSERT INTO `search_item` VALUES (10016, 30056, '浴室柜', 'https://t00img.yangkeduo.com/goods/images/2019-09-15/23cb8204-a91a-4dd6-87a5-84929f62e0df.jpg');
INSERT INTO `search_item` VALUES (10017, 30001, '理发器', 'https://t00img.yangkeduo.com/goods/images/2019-08-08/81c470a7-a1af-4fb5-906f-d36676b2710a.jpg');
INSERT INTO `search_item` VALUES (10017, 30001, '电视机', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-28/9f65a581-6891-4104-86a6-63ef6026e4fd.jpg');
INSERT INTO `search_item` VALUES (10017, 30001, '电火锅', 'https://t00img.yangkeduo.com/goods/images/2019-06-11/134312e0-6135-4502-97ab-75393c8b9679.png');
INSERT INTO `search_item` VALUES (10017, 30001, '取暖器', 'https://t00img.yangkeduo.com/goods/images/2019-12-09/e96bd585d9f5ad7fa6e0dc6d93e95252.jpeg');
INSERT INTO `search_item` VALUES (10017, 30057, '电吹风', 'https://t00img.yangkeduo.com/goods/images/2019-07-22/d65b3cd6-b644-4588-b232-54c7f2a57348.jpeg');
INSERT INTO `search_item` VALUES (10017, 30057, '剃须刀', 'https://t00img.yangkeduo.com/goods/images/2019-05-28/8a81e244-7095-4181-bba2-e0a1ad4bdb6f.jpg');
INSERT INTO `search_item` VALUES (10017, 30057, '卷发棒', 'https://t00img.yangkeduo.com/goods/images/2019-04-27/624e9f7b-e7c6-4660-bc97-d0849093e449.jpg');
INSERT INTO `search_item` VALUES (10017, 30057, '按摩器材', 'https://t00img.yangkeduo.com/goods/images/2019-10-05/a8d6272a-eaff-4277-9a66-acc734885b58.jpg');
INSERT INTO `search_item` VALUES (10017, 30058, '电饭煲', 'https://t00img.yangkeduo.com/goods/images/2019-10-30/946efdd0-7645-410a-bb66-cf97f3182fa0.png');
INSERT INTO `search_item` VALUES (10017, 30058, '豆浆机', 'https://t00img.yangkeduo.com/goods/images/2019-09-29/a340c676-1937-4867-b701-02a05aa493c8.jpg');
INSERT INTO `search_item` VALUES (10018, 30001, '连衣裙', 'https://t00img.yangkeduo.com/goods/images/2019-06-07/0e50a309-5e62-4528-a1a2-372895e89b37.jpg');
INSERT INTO `search_item` VALUES (10018, 30001, '时尚套装', 'https://t00img.yangkeduo.com/goods/images/2019-06-18/eb1ba560-f8b2-421c-9a5d-2bd8e81cc4a7.jpg');
INSERT INTO `search_item` VALUES (10018, 30001, '妈妈装', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-22/cb337181-4344-4014-b8c1-c025ec108355.png');
INSERT INTO `search_item` VALUES (10018, 30059, '毛衣针织', 'https://t00img.yangkeduo.com/goods/images/2020-01-08/a4b12f7bc78322b72d0ac06badba9638.jpeg');
INSERT INTO `search_item` VALUES (10018, 30059, '衬衫', 'https://t00img.yangkeduo.com/goods/images/2019-12-05/10e856b2-02ee-4c98-81a8-7b410a28f079.jpg');
INSERT INTO `search_item` VALUES (10018, 30059, '马甲', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-24/825c1dab-0e80-42c3-bbd3-280a7cef5541.jpg');
INSERT INTO `search_item` VALUES (10018, 30059, '吊带背心', 'https://t00img.yangkeduo.com/goods/images/2019-10-17/a3e75174-ca63-4ffd-8b1b-205feb3b0d8e.jpg');
INSERT INTO `search_item` VALUES (10018, 30060, '旗袍汉服', 'https://t00img.yangkeduo.com/goods/images/2019-10-29/d26503cf-f9d6-4777-9fdb-0d9917720492.jpg');
INSERT INTO `search_item` VALUES (10018, 30060, '大码女装', 'https://t00img.yangkeduo.com/goods/images/2019-12-29/71c7d057b885bfa2d1aa7f655c02b614.jpeg');
INSERT INTO `search_item` VALUES (10018, 30061, '休闲裤', 'https://t00img.yangkeduo.com/goods/images/2019-03-29/8cf7ab94-dfd2-47c2-80f4-95e8156ce475.jpg');
INSERT INTO `search_item` VALUES (10018, 30061, '牛仔裤', 'https://t00img.yangkeduo.com/goods/images/2019-12-23/928c6d74e86cbd1f096ff53a21eb0696.jpeg');
INSERT INTO `search_item` VALUES (10019, 30001, '个人街头', 'https://t00img.yangkeduo.com/goods/images/2019-12-11/6147f5bdf137c3e50c88c1ac5e2e6303.jpeg');
INSERT INTO `search_item` VALUES (10019, 30001, '卫衣', 'https://t00img.yangkeduo.com/goods/images/2019-07-07/2d4d5c23-efb3-4846-a8eb-f659c78e6ea0.png');
INSERT INTO `search_item` VALUES (10019, 30062, '皮衣', 'https://t00img.yangkeduo.com/goods/images/2019-08-07/6a811e18-6c30-4817-93af-60aaece69649.jpg');
INSERT INTO `search_item` VALUES (10019, 30062, '风衣', 'https://t00img.yangkeduo.com/goods/images/2019-08-17/c6ab6515-a3bb-43a9-9ce9-027513675057.jpg');
INSERT INTO `search_item` VALUES (10019, 30063, '商务休闲', 'https://t00img.yangkeduo.com/goods/images/2019-10-16/412c6ad0-4f04-44cf-92db-5e27bda20bd3.jpg');
INSERT INTO `search_item` VALUES (10019, 30063, '爸爸最爱', 'https://t00img.yangkeduo.com/goods/images/2019-08-18/a765f26d-01e6-45fc-804b-47770230c7f6.jpg');
INSERT INTO `search_item` VALUES (10019, 30064, '休闲裤', 'https://t00img.yangkeduo.com/goods/images/images/2019-09-29/91fd3ef0-46a4-4482-8a41-27c2d0a39394.jpg');
INSERT INTO `search_item` VALUES (10020, 30065, '话费充值', 'https://t00img.yangkeduo.com/goods/images/2019-05-12/409bdbacc39afc39da32fd749211c4c0.png');
INSERT INTO `search_item` VALUES (10020, 30065, '火车票', 'https://t13img.yangkeduo.com/promo/2019-11-05/dddafc07002e6c4f24f969d500e018eb.png');
INSERT INTO `search_item` VALUES (10020, 30065, 'QQ充值', 'https://t13img.yangkeduo.com/promo/2019-11-06/2fe4c44d34a291c486fecb515199a806.png');
INSERT INTO `search_item` VALUES (10020, 30065, '游戏交易', 'https://t13img.yangkeduo.com/promo/2019-11-06/a0dbbe5a796568f11772f5c4fef32927.png');
INSERT INTO `search_item` VALUES (10021, 30001, '进口水乳面霜', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/ecfc8abbb446807fa7a8d8fece694c71.jpeg');
INSERT INTO `search_item` VALUES (10021, 30001, '进口口红唇膏', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/5afc02d165bc2ac6f061846b86a5f8b8.jpeg');
INSERT INTO `search_item` VALUES (10021, 30001, '进口奶粉辅食', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/4f8deb035c2264d494948d92742e8b3d.jpeg');
INSERT INTO `search_item` VALUES (10021, 30001, '进口纸尿裤', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/7e4486215085dc464efd96d9b929a4b0.jpeg');
INSERT INTO `search_item` VALUES (10021, 30066, '进口玩具/坐骑', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/974ac22dc5e0f1439db7a77990a20150.jpeg');
INSERT INTO `search_item` VALUES (10021, 30067, '进口精华/眼霜', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/8b0318b069a651e024ef75ac5cd3f068.jpeg');
INSERT INTO `search_item` VALUES (10021, 30067, '进口面膜', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/4e84d25cc993ab55766f3937e26a7a27.jpeg');
INSERT INTO `search_item` VALUES (10021, 30067, '进口身体洗护', 'https://t00img.yangkeduo.com/goods/images/2019-08-14/9763426cf08064ec465189a6950965ae.jpeg');
INSERT INTO `search_item` VALUES (10021, 30067, '进口护肤套装', 'https://t00img.yangkeduo.com/goods/images/2019-08-19/a339899e09659bb6b6cd8b2505d509de.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '南极人', 'http://omsproductionimg.yangkeduo.com/images/2017-07-19/7d08f2bb933f537b780d83d8a3529b5b.png');
INSERT INTO `search_item` VALUES (10022, 30068, '植护', 'https://t00img.yangkeduo.com/goods/images/2019-01-15/7859542e000389ddbc39251d5152dd8a.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '晨光', 'https://t00img.yangkeduo.com/goods/images/2018-08-28/11bb1623ca446eef946b636f61439c7d.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '得力', 'https://t00img.yangkeduo.com/goods/images/2019-01-21/6a9251cb6868f19a8c1ed54272bcf0f0.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '心相印', 'https://t00img.yangkeduo.com/goods/images/2019-01-21/6d05c3463586c4e0ce729afd22831711.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '盼盼', 'https://t00img.yangkeduo.com/goods/images/2019-01-22/308f30cbf3eb0151f4634ce20ef178a8.jpeg');
INSERT INTO `search_item` VALUES (10022, 30068, '蓝月亮', 'https://t00img.yangkeduo.com/goods/images/2019-01-21/7ae28f9d41da4a9fbd85090c3e246f11.jpeg');

-- ----------------------------
-- Table structure for search_list
-- ----------------------------
DROP TABLE IF EXISTS `search_list`;
CREATE TABLE `search_list`  (
  `search_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`search_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10022 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search_list
-- ----------------------------
INSERT INTO `search_list` VALUES (10000, '推荐', NULL);
INSERT INTO `search_list` VALUES (10001, '食品', 'https://t00img.yangkeduo.com/goods/2020-02-07/b5a5bdcd45977ed959f1b5ef2c0131e8.jpeg');
INSERT INTO `search_list` VALUES (10002, '洗护', NULL);
INSERT INTO `search_list` VALUES (10003, '鞋包', 'https://t00img.yangkeduo.com/goods/2020-02-07/ffd2109a635caf1f143fdffae3e3f3ba.jpeg');
INSERT INTO `search_list` VALUES (10004, '百货', 'https://t00img.yangkeduo.com/goods/2020-02-05/ef060a4b5b25a66cec2e19395c45f2d0.jpeg');
INSERT INTO `search_list` VALUES (10005, '车品', 'https://t00img.yangkeduo.com/goods/2020-02-04/27cad60b7ba4936899f9388265d8dfad.png');
INSERT INTO `search_list` VALUES (10006, '母婴', NULL);
INSERT INTO `search_list` VALUES (10007, '手机', 'https://t00img.yangkeduo.com/goods/2020-02-02/6383703a6fc1fbdc34959f716ba71fb1.jpeg');
INSERT INTO `search_list` VALUES (10008, '内衣', NULL);
INSERT INTO `search_list` VALUES (10009, '美妆', 'https://t00img.yangkeduo.com/goods/2020-02-07/83e8c951a5fd6b763129eb475df6c83f.jpeg');
INSERT INTO `search_list` VALUES (10010, '图书', NULL);
INSERT INTO `search_list` VALUES (10011, '生鲜', NULL);
INSERT INTO `search_list` VALUES (10012, '数码', NULL);
INSERT INTO `search_list` VALUES (10013, '家纺', NULL);
INSERT INTO `search_list` VALUES (10014, '健康', 'https://t00img.yangkeduo.com/goods/2020-02-05/8f2827931c0c53585a123e1390262de2.jpeg');
INSERT INTO `search_list` VALUES (10015, '运动', NULL);
INSERT INTO `search_list` VALUES (10016, '家装', NULL);
INSERT INTO `search_list` VALUES (10017, '电器', NULL);
INSERT INTO `search_list` VALUES (10018, '女装', NULL);
INSERT INTO `search_list` VALUES (10019, '男装', 'https://t00img.yangkeduo.com/goods/2020-02-07/acd4387b5056b2f33bf65e5a6b0eade5.png');
INSERT INTO `search_list` VALUES (10020, '充值', NULL);
INSERT INTO `search_list` VALUES (10021, '海淘', 'https://t00img.yangkeduo.com/goods/2020-01-15/53618c7aaba9dbb5997cb736492339c7.jpeg');
INSERT INTO `search_list` VALUES (10022, '品牌', NULL);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `iid` int(0) NOT NULL AUTO_INCREMENT,
  `sname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`iid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, '无');
INSERT INTO `size` VALUES (2, '小号S');
INSERT INTO `size` VALUES (3, '中号M');
INSERT INTO `size` VALUES (4, '大号L');
INSERT INTO `size` VALUES (5, '加大号XL');
INSERT INTO `size` VALUES (6, '加厚型#【强烈推荐】');
INSERT INTO `size` VALUES (7, '经济型#【较薄建议买加厚型】');
INSERT INTO `size` VALUES (8, '豪华型#【适应各种场所】');
INSERT INTO `size` VALUES (9, '0.25米【一年质保】');
INSERT INTO `size` VALUES (10, '1米【一年质保】');
INSERT INTO `size` VALUES (11, '1.5米【一年质保】');
INSERT INTO `size` VALUES (12, '2米【一年质保】');

-- ----------------------------
-- Table structure for subsidies_item
-- ----------------------------
DROP TABLE IF EXISTS `subsidies_item`;
CREATE TABLE `subsidies_item`  (
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subsidies_item
-- ----------------------------
INSERT INTO `subsidies_item` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-02-04/c10b5af16586d58b2a471646f8153892.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/246/q/80/format/webp', '好顺', '补贴价', 57);
INSERT INTO `subsidies_item` VALUES ('https://t00img.yangkeduo.com/goods/images/2020-01-17/3a0aafe07a15114d6b9daa6d535e8343.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/246/q/80/format/webp', '花王', '补贴价', 61);

-- ----------------------------
-- Table structure for swiper
-- ----------------------------
DROP TABLE IF EXISTS `swiper`;
CREATE TABLE `swiper`  (
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of swiper
-- ----------------------------
INSERT INTO `swiper` VALUES ('https://t00img.yangkeduo.com/goods/2019-11-20/0c7cbcf6a07241f8ac9feea5002a498e.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/phone_adx/993e12c4733bfb8b97d5de0cca07c675.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/img_check/2019-12-01/b3de3c89109de650c62ff6b5a3c7bad5.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/phone_adx/c4c97827315529889481ec7bf95e22a9.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/phone_adx/5de613ebe34d1a8261fbf86cffef6c4d.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/img_check/2019-12-22/1b5089f485e2b5b034cf02636535b226.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t16img.yangkeduo.com/img_check/2019-12-09/9fec5186345079a92bdda676f6ed2ba4.jpg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');
INSERT INTO `swiper` VALUES ('https://t00img.yangkeduo.com/goods/2020-01-06/4fa0b953a0aab076bea281690a9b9e5c.jpeg?imageMogr2/sharpen/50/strip%7CimageView2/2/w/750/q/80/format/webp');

-- ----------------------------
-- Table structure for tv_imgs
-- ----------------------------
DROP TABLE IF EXISTS `tv_imgs`;
CREATE TABLE `tv_imgs`  (
  `tv_id` int(0) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `brand_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `tid`(`tv_id`) USING BTREE,
  CONSTRAINT `tid` FOREIGN KEY (`tv_id`) REFERENCES `search_list` (`search_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tv_imgs
-- ----------------------------
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/65fecb3b696f0fb6d4e9641d1ed514c5.png', '美的');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/f064f4cd9b9e925a0772d6845106db39.png', '新飞');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/3a7aa3159515550b969f34b0f829f90c.png', '格兰仕');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/cd40801d042cb79733d7e15d0b9cf7e0.png', '苏泊尔');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/b02956a8b572aea10fa82751347dff25.png', '志高');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/fd604a4916cce3e47561125d081775c6.png', '海尔');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/6106479fce5b6d336919a50eab5187f3.png', 'TCL');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/2063e04a8c97d8c92194073ab34edbb3.png', '飞科');
INSERT INTO `tv_imgs` VALUES (10017, 'https://t00img.yangkeduo.com/goods/images/2019-09-16/8d9d9c3ece55433740e78a75fcfbcbcd.png', '九阳');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/c6065f034147e176d2dc3c7b36ec0bb4.jpeg', 'vivo');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/96f3be26a911e0999b49fb3fadad80cd.jpeg', '小米');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/a7ad3a669af71441bd9a50b043e39f30.jpeg', 'oppo');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/e6f16c3cf44beed16657b126afbee277.jpeg', 'iphone');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/8665953131cfa89bddd92918f7ce7ef4.jpeg', 'HONOR');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/1540dca0e73086c44b791e984224d790.jpeg', '魅族');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/5b9d7c21f88c673091bbc292a294b240.jpeg', '一加');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/5c76cdefaa53ec2d1b3df9ecaf9ac537.jpeg', '联想');
INSERT INTO `tv_imgs` VALUES (10007, 'https://t00img.yangkeduo.com/goods/images/2019-08-14/d659e02324ef4e4635171f5fca2f96ff.jpeg', '华为');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `tid` int(0) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '竹浆本色：14卷2斤精品装【赠毛巾】');
INSERT INTO `type` VALUES (2, '竹浆本色：12卷体验装【赠毛巾】');
INSERT INTO `type` VALUES (3, '竹浆本色：48卷超值实惠装【赠毛巾】');
INSERT INTO `type` VALUES (4, '今日特价：48卷超值实惠装【赠毛巾】');
INSERT INTO `type` VALUES (5, '竹浆本色：40卷6斤【赠毛巾】');
INSERT INTO `type` VALUES (6, '官方推荐【2条数据线】特惠装');
INSERT INTO `type` VALUES (7, '官方推荐【3条数据线】特惠装');
INSERT INTO `type` VALUES (8, '官方推荐【4条数据线】特惠装');
INSERT INTO `type` VALUES (9, '【1条数据线+送1个快充器】');
INSERT INTO `type` VALUES (10, '【2条数据线+送1个快充器】');
INSERT INTO `type` VALUES (11, '【2条数据线+送2个快充器】');
INSERT INTO `type` VALUES (12, '100个手提垃圾袋');
INSERT INTO `type` VALUES (13, '200个手提垃圾袋');
INSERT INTO `type` VALUES (14, '300个手提垃圾袋');
INSERT INTO `type` VALUES (15, '50个手提垃圾袋');
INSERT INTO `type` VALUES (16, '400个手提垃圾袋【最划算】');
INSERT INTO `type` VALUES (17, '26*26 充电款 十字玫瑰金');
INSERT INTO `type` VALUES (18, '26*26 充电款 十字帝王黑');
INSERT INTO `type` VALUES (19, '26*26 充电款 十字皓月白');
INSERT INTO `type` VALUES (20, '26*26 充电款 十字宝石蓝');
INSERT INTO `type` VALUES (21, '26*26 充电款 苹果7玫瑰金');
INSERT INTO `type` VALUES (22, '26*26 充电款 苹果7炫酷黑');
INSERT INTO `type` VALUES (23, '26*26 充电款 粉熊熊');
INSERT INTO `type` VALUES (24, '透明-微弹100只【盒装】');
INSERT INTO `type` VALUES (25, '透明-加厚100只【盒装】');
INSERT INTO `type` VALUES (26, '透明-微弹100只【袋装】');
INSERT INTO `type` VALUES (27, '透明-加厚100只【袋装】');
INSERT INTO `type` VALUES (28, '透明-微弹-50只【袋装】');
INSERT INTO `type` VALUES (29, '透明-加厚-50只【袋装】');
INSERT INTO `type` VALUES (30, '5个装(透明款)');
INSERT INTO `type` VALUES (31, '10个装(透明款)');
INSERT INTO `type` VALUES (32, '20个装(透明款)');
INSERT INTO `type` VALUES (33, '30个装(透明款)');
INSERT INTO `type` VALUES (34, '40个装(透明款)');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, NULL, NULL, '15073382436', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', '女', '1993-07-02 00:00:00', NULL, NULL);
INSERT INTO `users` VALUES (2, NULL, NULL, '13555555555', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, NULL, NULL, '13555555523', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (4, NULL, NULL, '15929592629', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (5, NULL, NULL, '13588855265', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (9, 'coderliu', 'admin', '18888888888', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', '男', '1999-08-30 00:00:00', '我很帅吧!', '河南省-安阳市-龙安区');
INSERT INTO `users` VALUES (10, 'zhangsan', '123456', NULL, 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', '女', NULL, NULL, NULL);
INSERT INTO `users` VALUES (11, 'wangwu', '111111', NULL, 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (12, NULL, NULL, '15892598292', 'https://pinduoduoimg.yangkeduo.com/avatar/default/2.png?imageMogr2/sharpen/50/strip%7CimageView2/2/w/1300/q/80/format/', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for welfares_popup
-- ----------------------------
DROP TABLE IF EXISTS `welfares_popup`;
CREATE TABLE `welfares_popup`  (
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of welfares_popup
-- ----------------------------
INSERT INTO `welfares_popup` VALUES ('服务说明', '退货包运费', '确认收货后15天内申请退货退款，拼多多将补贴退货运费');
INSERT INTO `welfares_popup` VALUES ('服务说明', '极速退款', '拼单成功6小时内，待发货状态下，提交退款申请将立即退款');
INSERT INTO `welfares_popup` VALUES ('服务说明', '全场包邮', '所有商品包邮（偏远地区除外）');
INSERT INTO `welfares_popup` VALUES ('服务说明', '7天无理由退货', '满足相应条件时，消费者可申请7天无理由退货');
INSERT INTO `welfares_popup` VALUES ('服务说明', '假一赔十', '若收到商品是假冒品牌，可获得十倍现金券赔偿');

SET FOREIGN_KEY_CHECKS = 1;
