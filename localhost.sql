-- phpMyAdmin SQL Dump
-- version 2.11.2.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 05 月 20 日 07:08
-- 服务器版本: 5.0.45
-- PHP 版本: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 数据库: `eone`
--
DROP DATABASE IF EXISTS `eone1`;
CREATE DATABASE `eone1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `eone1`;

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL auto_increment,
  `src` varchar(255) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `price` varchar(20) collate utf8_unicode_ci NOT NULL,
  `amount` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='cart' AUTO_INCREMENT=1 ;

--
-- 导出表中的数据 `cart`
--


-- --------------------------------------------------------

--
-- 表的结构 `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) NOT NULL auto_increment,
  `imge` varchar(255) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `pirce` varchar(100) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='products' AUTO_INCREMENT=46 ;

--
-- 导出表中的数据 `products`
--

INSERT INTO `products` (`id`, `imge`, `name`, `pirce`) VALUES
(1, '../imgs/ALL_product_img/1.jpg', 'Bradley Element Black 元素黑鋼系列 - 觸感腕錶', 'HK$3,980.00'),
(2, '../imgs/ALL_product_img/2.jpg', 'Bradley Element Blue (Black) 元素黑鋼系列 - 午夜藍觸感腕錶', 'HK$3,880.00'),
(3, '../imgs/ALL_product_img/3.jpg', 'Bradley Element Blue', 'HK$3,680.00'),
(4, '../imgs/ALL_product_img/4.jpg', 'Bradley Pearl 珍珠黑觸感腕錶', 'HK$3,380.00'),
(5, '../imgs/ALL_product_img/5.jpg', 'Bradley Black 極致黑觸感腕錶', 'HK$3,280.00'),
(6, '../imgs/ALL_product_img/6.jpg', 'Bradley Classic Mesh', 'HK$2,880.00'),
(7, '../imgs/ALL_product_img/7.jpg', 'Bradley Iris Leather Wood', 'HK$2,980.00'),
(8, '../imgs/ALL_product_img/8.jpg', 'Bradley Iris Leather Purple', 'HK$2,980.00'),
(9, '../imgs/ALL_product_img/9.jpg', 'Bradley Compass Graphite', 'HK$2,980.00'),
(10, '../imgs/ALL_product_img/10.jpg', 'Bradley Compass Iris', 'HK$2,980.00'),
(11, '../imgs/ALL_product_img/11.jpg', 'Bradley Compass Gold', 'HK$2,980.00'),
(12, '../imgs/ALL_product_img/12.jpg', 'Bradley Compass Iris II', 'Sold out'),
(13, '../imgs/ALL_product_img/13.jpg', 'Bradley Compass Graphite II', 'HK$3,080.00'),
(14, '../imgs/ALL_product_img/14.jpg', 'Bradley Voyager 航海家系列 - 棕色皮革觸感腕錶', 'HK$2,980.00'),
(15, '../imgs/ALL_product_img/15.jpg', 'Bradley Voyager Leather Ocean', 'HK$2,980.00'),
(16, '../imgs/ALL_product_img/16.jpg', 'Bradley Voyager Leather Purple', 'HK$2,980.00'),
(17, '../imgs/ALL_product_img/17.jpg', 'Bradley Brown Voyager Leather Wood', 'HK$2,980.00'),
(18, '../imgs/ALL_product_img/18.jpg', 'Bradley Dark Voyager Leather Ocean', 'HK$2,980.00'),
(19, '../imgs/ALL_product_img/19.jpg', 'Bradley Voyager Cobalt', 'HK$2,980.00'),
(20, '../imgs/ALL_product_img/20.jpg', 'Bradley Classic Cognac 經典系列腕錶- 棕啡色皮革錶帶', 'HK$2,680.00'),
(21, '../imgs/ALL_product_img/21.jpg', 'The Bradley Classic Leather - Black', 'HK$2,680.00'),
(22, '../imgs/ALL_product_img/22.jpg', 'Bradley Classic Leather Baby Collection - Baby Pink', 'HK$2,680.00'),
(23, '../imgs/ALL_product_img/23.jpg', 'Bradley Classic Leather Baby Collection - Baby Blue', 'HK$2,680.00'),
(24, '../imgs/ALL_product_img/24.jpg', 'Bradley Classic Yellow', 'HK$2,580.00'),
(25, '../imgs/ALL_product_img/25.jpg', 'Bradley Classic Pink', 'HK$2,580.00'),
(26, '../imgs/ALL_product_img/26.jpg', 'Bradley Canvas Red\r\n', 'HK$2,580.00'),
(27, '../imgs/ALL_product_img/27.jpg', 'Bradley Classic Orange', 'HK$2,580.00'),
(28, '../imgs/ALL_product_img/28.jpg', 'Bradley Classic Apple Green', 'HK$2,580.00'),
(29, '../imgs/ALL_product_img/29.jpg', 'Bradley Classic Khaki', 'Sold ou'),
(30, '../imgs/ALL_product_img/30.jpg', 'Bradley Canvas Beige', 'HK$2,580.00'),
(31, '../imgs/ALL_product_img/31.jpg', 'Bradley Canvas Black', 'HK$2,580.00'),
(32, '../imgs/ALL_product_img/32.jpg', 'Bradley Classic Green', 'HK$2,580.00'),
(33, '../imgs/ALL_product_img/33.jpg', 'Bradley Canvas Blue', 'HK$2,580.00'),
(34, '../imgs/ALL_product_img/34.jpg', '尊貴系列腕禮盒 - 亞洲限定', 'HK$3,680.00'),
(35, '../imgs/ALL_product_img/35.jpg', '元素系列腕錶禮盒(紅色錶帶) - 亞洲限定', 'HK$4,080.00'),
(36, '../imgs/ALL_product_img/36.jpg', '元素系列腕錶禮盒(藍色錶帶) - 亞洲限定', 'HK$4,080.00'),
(37, '../imgs/ALL_product_img/37.jpg', 'Bradley Black x Classic Mesh | 極致黑觸感腕錶 x 銀色觸感腕錶', 'HK$6,160.00'),
(38, '../imgs/ALL_product_img/38.jpg', 'Bradley Steel Mesh Watch Canvas & Leather Wristband Gift Set', 'HK$470.00'),
(39, '../imgs/ALL_product_img/39.jpg', 'Bradley Wine Red Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(40, '../imgs/ALL_product_img/40.jpg', 'Bradley Black Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(41, '../imgs/ALL_product_img/41.jpg', 'Bradley Beige Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(42, '../imgs/ALL_product_img/42.jpg', 'Bradley Mustard Yellow Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(43, '../imgs/ALL_product_img/43.jpg', 'Bradley Olive Green Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(44, '../imgs/ALL_product_img/44.jpg', 'Bradley Aqua Blue Watch Canvas & Leather Wristband Gift Set', 'HK$245.00'),
(45, '../imgs/ALL_product_img/45.jpg', 'Bradley Compass Gold x Compass Iris2', 'HK$5,151.00');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(255) NOT NULL auto_increment,
  `nickname` varchar(50) collate utf8_unicode_ci NOT NULL,
  `username` varchar(50) collate utf8_unicode_ci NOT NULL,
  `password` varchar(50) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(15) collate utf8_unicode_ci NOT NULL,
  `email` varchar(50) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user' AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`id`, `nickname`, `username`, `password`, `phone`, `email`) VALUES
(6, '小强', 'hyy123', 'hyy123', '18381661996', '1773569545@qq.com');
