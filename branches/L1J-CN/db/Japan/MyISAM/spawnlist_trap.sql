#----------------------------
# Table structure for spawnlist_trap
#----------------------------
CREATE TABLE `spawnlist_trap` (
  `id` int(8) NOT NULL,
  `note` varchar(64) DEFAULT NULL,
  `trapId` int(8) NOT NULL,
  `mapId` int(4) NOT NULL,
  `locX` int(4) NOT NULL,
  `locY` int(4) NOT NULL,
  `locRndX` int(4) NOT NULL DEFAULT '0',
  `locRndY` int(4) NOT NULL DEFAULT '0',
  `count` int(4) NOT NULL DEFAULT '1',
  `span` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#----------------------------
# Records 
#----------------------------
INSERT INTO `spawnlist_trap` VALUES
(1, NULL, 8, 104, 32670, 32861, 100, 100, 20, 0),
(2, NULL, 2, 104, 32670, 32861, 100, 100, 20, 0),
(3, NULL, 3, 104, 32670, 32861, 100, 100, 20, 0),
(4, NULL, 4, 104, 32670, 32861, 100, 100, 20, 0),
(5, NULL, 5, 104, 32670, 32861, 100, 100, 20, 0),
(6, NULL, 6, 104, 32670, 32861, 100, 100, 20, 0),
(7, NULL, 7, 104, 32670, 32861, 100, 100, 20, 0),
(8, NULL, 9, 108, 32670, 32861, 100, 100, 20, 0),
(9, NULL, 2, 108, 32670, 32861, 100, 100, 20, 0),
(10, NULL, 3, 108, 32670, 32861, 100, 100, 20, 0),
(11, NULL, 4, 108, 32670, 32861, 100, 100, 20, 0),
(12, NULL, 5, 108, 32670, 32861, 100, 100, 20, 0),
(13, NULL, 6, 108, 32670, 32861, 100, 100, 20, 0),
(14, NULL, 7, 108, 32670, 32861, 100, 100, 20, 0),
(15, NULL, 10, 114, 32670, 32861, 100, 100, 20, 0),
(16, NULL, 2, 114, 32670, 32861, 100, 100, 20, 0),
(17, NULL, 3, 114, 32670, 32861, 100, 100, 20, 0),
(18, NULL, 4, 114, 32670, 32861, 100, 100, 20, 0),
(19, NULL, 5, 114, 32670, 32861, 100, 100, 20, 0),
(20, NULL, 6, 114, 32670, 32861, 100, 100, 20, 0),
(21, NULL, 7, 114, 32670, 32861, 100, 100, 20, 0),
(22, NULL, 11, 118, 32670, 32861, 100, 100, 20, 0),
(23, NULL, 2, 118, 32670, 32861, 100, 100, 20, 0),
(24, NULL, 3, 118, 32670, 32861, 100, 100, 20, 0),
(25, NULL, 4, 118, 32670, 32861, 100, 100, 20, 0),
(26, NULL, 5, 118, 32670, 32861, 100, 100, 20, 0),
(27, NULL, 6, 118, 32670, 32861, 100, 100, 20, 0),
(28, NULL, 7, 118, 32670, 32861, 100, 100, 20, 0),
(29, NULL, 12, 124, 32670, 32861, 100, 100, 20, 0),
(30, NULL, 2, 124, 32670, 32861, 100, 100, 20, 0),
(31, NULL, 3, 124, 32670, 32861, 100, 100, 20, 0),
(32, NULL, 4, 124, 32670, 32861, 100, 100, 20, 0),
(33, NULL, 5, 124, 32670, 32861, 100, 100, 20, 0),
(34, NULL, 6, 124, 32670, 32861, 100, 100, 20, 0),
(35, NULL, 7, 124, 32670, 32861, 100, 100, 20, 0),
(36, NULL, 13, 128, 32670, 32861, 100, 100, 20, 0),
(37, NULL, 2, 128, 32670, 32861, 100, 100, 20, 0),
(38, NULL, 3, 128, 32670, 32861, 100, 100, 20, 0),
(39, NULL, 4, 128, 32670, 32861, 100, 100, 20, 0),
(40, NULL, 5, 128, 32670, 32861, 100, 100, 20, 0),
(41, NULL, 6, 128, 32670, 32861, 100, 100, 20, 0),
(42, NULL, 7, 128, 32670, 32861, 100, 100, 20, 0),
(43, NULL, 14, 134, 32670, 32861, 100, 100, 20, 0),
(44, NULL, 2, 134, 32670, 32861, 100, 100, 20, 0),
(45, NULL, 3, 134, 32670, 32861, 100, 100, 20, 0),
(46, NULL, 4, 134, 32670, 32861, 100, 100, 20, 0),
(47, NULL, 5, 134, 32670, 32861, 100, 100, 20, 0),
(48, NULL, 6, 134, 32670, 32861, 100, 100, 20, 0),
(49, NULL, 7, 134, 32670, 32861, 100, 100, 20, 0),
(50, NULL, 15, 138, 32670, 32861, 100, 100, 20, 0),
(51, NULL, 2, 138, 32670, 32861, 100, 100, 20, 0),
(52, NULL, 3, 138, 32670, 32861, 100, 100, 20, 0),
(53, NULL, 4, 138, 32670, 32861, 100, 100, 20, 0),
(54, NULL, 5, 138, 32670, 32861, 100, 100, 20, 0),
(55, NULL, 6, 138, 32670, 32861, 100, 100, 20, 0),
(56, NULL, 7, 138, 32670, 32861, 100, 100, 20, 0),
(57, NULL, 16, 144, 32670, 32861, 100, 100, 20, 0),
(58, NULL, 2, 144, 32670, 32861, 100, 100, 20, 0),
(59, NULL, 3, 144, 32670, 32861, 100, 100, 20, 0),
(60, NULL, 4, 144, 32670, 32861, 100, 100, 20, 0),
(61, NULL, 5, 144, 32670, 32861, 100, 100, 20, 0),
(62, NULL, 6, 144, 32670, 32861, 100, 100, 20, 0),
(63, NULL, 7, 144, 32670, 32861, 100, 100, 20, 0),
(64, NULL, 17, 148, 32670, 32861, 100, 100, 20, 0),
(65, NULL, 2, 148, 32670, 32861, 100, 100, 20, 0),
(66, NULL, 3, 148, 32670, 32861, 100, 100, 20, 0),
(67, NULL, 4, 148, 32670, 32861, 100, 100, 20, 0),
(68, NULL, 5, 148, 32670, 32861, 100, 100, 20, 0),
(69, NULL, 6, 148, 32670, 32861, 100, 100, 20, 0),
(70, NULL, 7, 148, 32670, 32861, 100, 100, 20, 0),
(71, NULL, 18, 154, 32798, 32798, 100, 100, 20, 0),
(72, NULL, 2, 154, 32798, 32798, 100, 100, 20, 0),
(73, NULL, 3, 154, 32798, 32798, 100, 100, 20, 0),
(74, NULL, 4, 154, 32798, 32798, 100, 100, 20, 0),
(75, NULL, 5, 154, 32798, 32798, 100, 100, 20, 0),
(76, NULL, 6, 154, 32798, 32798, 100, 100, 20, 0),
(77, NULL, 7, 154, 32798, 32798, 100, 100, 20, 0),
(78, NULL, 18, 158, 32670, 32861, 100, 100, 20, 0),
(79, NULL, 2, 158, 32670, 32861, 100, 100, 20, 0),
(80, NULL, 3, 158, 32670, 32861, 100, 100, 20, 0),
(81, NULL, 4, 158, 32670, 32861, 100, 100, 20, 0),
(82, NULL, 5, 158, 32670, 32861, 100, 100, 20, 0),
(83, NULL, 6, 158, 32670, 32861, 100, 100, 20, 0),
(84, NULL, 7, 158, 32670, 32861, 100, 100, 20, 0),
(85, NULL, 19, 164, 32798, 32798, 100, 100, 20, 0),
(86, NULL, 2, 164, 32798, 32798, 100, 100, 20, 0),
(87, NULL, 3, 164, 32798, 32798, 100, 100, 20, 0),
(88, NULL, 4, 164, 32798, 32798, 100, 100, 20, 0),
(89, NULL, 5, 164, 32798, 32798, 100, 100, 20, 0),
(90, NULL, 6, 164, 32798, 32798, 100, 100, 20, 0),
(91, NULL, 7, 164, 32798, 32798, 100, 100, 20, 0),
(92, NULL, 19, 168, 32670, 32861, 100, 100, 20, 0),
(93, NULL, 2, 168, 32670, 32861, 100, 100, 20, 0),
(94, NULL, 3, 168, 32670, 32861, 100, 100, 20, 0),
(95, NULL, 4, 168, 32670, 32861, 100, 100, 20, 0),
(96, NULL, 5, 168, 32670, 32861, 100, 100, 20, 0),
(97, NULL, 6, 168, 32670, 32861, 100, 100, 20, 0),
(98, NULL, 7, 168, 32670, 32861, 100, 100, 20, 0),
(99, NULL, 20, 174, 32798, 32798, 100, 100, 20, 0),
(100, NULL, 2, 174, 32798, 32798, 100, 100, 20, 0),
(101, NULL, 3, 174, 32798, 32798, 100, 100, 20, 0),
(102, NULL, 4, 174, 32798, 32798, 100, 100, 20, 0),
(103, NULL, 5, 174, 32798, 32798, 100, 100, 20, 0),
(104, NULL, 6, 174, 32798, 32798, 100, 100, 20, 0),
(105, NULL, 7, 174, 32798, 32798, 100, 100, 20, 0),
(106, NULL, 21, 178, 32670, 32861, 100, 100, 20, 0),
(107, NULL, 2, 178, 32670, 32861, 100, 100, 20, 0),
(108, NULL, 3, 178, 32670, 32861, 100, 100, 20, 0),
(109, NULL, 4, 178, 32670, 32861, 100, 100, 20, 0),
(110, NULL, 5, 178, 32670, 32861, 100, 100, 20, 0),
(111, NULL, 6, 178, 32670, 32861, 100, 100, 20, 0),
(112, NULL, 7, 178, 32670, 32861, 100, 100, 20, 0),
(113, NULL, 22, 184, 32798, 32798, 100, 100, 20, 0),
(114, NULL, 2, 184, 32798, 32798, 100, 100, 20, 0),
(115, NULL, 3, 184, 32798, 32798, 100, 100, 20, 0),
(116, NULL, 4, 184, 32798, 32798, 100, 100, 20, 0),
(117, NULL, 5, 184, 32798, 32798, 100, 100, 20, 0),
(118, NULL, 6, 184, 32798, 32798, 100, 100, 20, 0),
(119, NULL, 7, 184, 32798, 32798, 100, 100, 20, 0),
(120, NULL, 22, 188, 32670, 32861, 100, 100, 20, 0),
(121, NULL, 2, 188, 32670, 32861, 100, 100, 20, 0),
(122, NULL, 3, 188, 32670, 32861, 100, 100, 20, 0),
(123, NULL, 4, 188, 32670, 32861, 100, 100, 20, 0),
(124, NULL, 5, 188, 32670, 32861, 100, 100, 20, 0),
(125, NULL, 6, 188, 32670, 32861, 100, 100, 20, 0),
(126, NULL, 7, 188, 32670, 32861, 100, 100, 20, 0),
(127, NULL, 23, 194, 32798, 32798, 100, 100, 20, 0),
(128, NULL, 2, 194, 32798, 32798, 100, 100, 20, 0),
(129, NULL, 3, 194, 32798, 32798, 100, 100, 20, 0),
(130, NULL, 4, 194, 32798, 32798, 100, 100, 20, 0),
(131, NULL, 5, 194, 32798, 32798, 100, 100, 20, 0),
(132, NULL, 6, 194, 32798, 32798, 100, 100, 20, 0),
(133, NULL, 7, 194, 32798, 32798, 100, 100, 20, 0),
(134, NULL, 23, 198, 32670, 32861, 100, 100, 20, 0),
(135, NULL, 2, 198, 32670, 32861, 100, 100, 20, 0),
(136, NULL, 3, 198, 32670, 32861, 100, 100, 20, 0),
(137, NULL, 4, 198, 32670, 32861, 100, 100, 20, 0),
(138, NULL, 5, 198, 32670, 32861, 100, 100, 20, 0),
(139, NULL, 6, 198, 32670, 32861, 100, 100, 20, 0),
(140, NULL, 7, 198, 32670, 32861, 100, 100, 20, 0),
(141, NULL, 24, 78, 32896, 32770, 50, 10, 30, 0),
(142, NULL, 25, 78, 32896, 32770, 50, 10, 30, 0),
(143, NULL, 26, 78, 32896, 32770, 50, 10, 30, 0),
(144, NULL, 27, 79, 32770, 32834, 50, 10, 50, 0),
(145, NULL, 28, 79, 32770, 32834, 50, 10, 50, 0),
(146, NULL, 29, 79, 32770, 32834, 50, 10, 50, 0),
(147, NULL, 30, 80, 32767, 32833, 50, 50, 100, 0),
(148, NULL, 31, 80, 32767, 32833, 50, 50, 100, 0),
(149, NULL, 32, 81, 32762, 32829, 50, 50, 120, 0),
(150, NULL, 33, 81, 32762, 32829, 50, 50, 120, 0),
(151, NULL, 34, 82, 32701, 32834, 50, 50, 50, 0),
(152, NULL, 35, 82, 32701, 32834, 50, 50, 50, 0),
(153, NULL, 36, 82, 32701, 32834, 50, 50, 50, 0),
(154, NULL, 37, 82, 32701, 32834, 50, 50, 50, 0),
(155, 'フランコの迷宫', 3, 482, 32695, 32735, 0, 0, 1, 0),
(156, 'フランコの迷宫', 4, 482, 32696, 32746, 0, 0, 1, 0),
(157, 'フランコの迷宫', 38, 482, 32692, 32750, 0, 0, 1, 10000),
(158, 'フランコの迷宫', 5, 482, 32716, 32736, 0, 0, 1, 0),
(159, 'フランコの迷宫', 39, 482, 32716, 32740, 0, 0, 1, 10000),
(160, 'フランコの迷宫', 6, 482, 32724, 32744, 0, 0, 1, 0),
(161, 'フランコの迷宫', 3, 482, 32727, 32741, 0, 0, 1, 0),
(162, 'フランコの迷宫', 38, 482, 32727, 32747, 0, 0, 1, 10000),
(163, 'フランコの迷宫', 4, 482, 32730, 32744, 0, 0, 1, 0),
(164, 'フランコの迷宫', 5, 482, 32799, 32736, 0, 0, 1, 0),
(165, 'フランコの迷宫', 40, 482, 32774, 32740, 0, 0, 1, 10000),
(166, 'フランコの迷宫', 40, 482, 32728, 32784, 0, 0, 1, 10000),
(167, 'フランコの迷宫', 6, 482, 32734, 32844, 0, 0, 1, 0),
(168, 'フランコの迷宫', 3, 482, 32731, 32850, 0, 0, 1, 0),
(169, 'ディエゴの闭ざされた牢', 41, 482, 32770, 32857, 0, 0, 1, 10000),
(170, 'ディエゴの闭ざされた牢', 40, 482, 32776, 32848, 0, 0, 1, 10000),
(171, 'ディエゴの闭ざされた牢', 5, 482, 32770, 32847, 0, 0, 1, 0),
(172, 'ディエゴの闭ざされた牢', 6, 482, 32741, 32850, 0, 0, 1, 0),
(173, 'ディエゴの闭ざされた牢', 40, 482, 32703, 32868, 0, 0, 1, 10000),
(174, 'ディエゴの闭ざされた牢', 5, 482, 32700, 32866, 0, 0, 1, 0),
(175, 'ディエゴの闭ざされた牢', 4, 482, 32752, 32781, 0, 0, 1, 0),
(176, 'ディエゴの闭ざされた牢', 38, 482, 32788, 32769, 0, 0, 1, 10000),
(177, 'ディエゴの闭ざされた牢', 39, 482, 32781, 32802, 0, 0, 1, 10000),
(178, 'ディエゴの闭ざされた牢', 5, 482, 32771, 32804, 0, 0, 1, 0),
(179, 'ディエゴの闭ざされた牢', 40, 482, 32778, 32758, 0, 0, 1, 10000),
(180, 'ディエゴの闭ざされた牢', 41, 482, 32737, 32792, 0, 0, 1, 10000),
(181, 'ディエゴの闭ざされた牢', 4, 482, 32737, 32804, 0, 0, 1, 0),
(182, 'ディエゴの闭ざされた牢', 4, 482, 32753, 32810, 0, 0, 1, 0),
(183, 'ディエゴの闭ざされた牢', 40, 482, 32731, 32792, 0, 0, 1, 10000),
(184, 'ディエゴの闭ざされた牢', 41, 482, 32731, 32798, 0, 0, 1, 10000),
(185, 'ディエゴの闭ざされた牢', 5, 482, 32731, 32804, 0, 0, 1, 0),
(186, 'ディエゴの闭ざされた牢', 38, 482, 32668, 32760, 0, 0, 1, 10000),
(187, 'ディエゴの闭ざされた牢', 39, 482, 32673, 32765, 0, 0, 1, 10000),
(188, 'ディエゴの闭ざされた牢', 3, 482, 32676, 32779, 0, 0, 1, 0),
(189, 'ディエゴの闭ざされた牢', 4, 482, 32678, 32782, 0, 0, 1, 0),
(190, 'ディエゴの闭ざされた牢', 40, 482, 32680, 32788, 0, 0, 1, 10000),
(191, 'ディエゴの闭ざされた牢', 41, 482, 32673, 32787, 0, 0, 1, 10000),
(192, 'ディエゴの闭ざされた牢', 4, 482, 32672, 32813, 0, 0, 1, 0),
(193, 'ディエゴの闭ざされた牢', 5, 482, 32682, 32816, 0, 0, 1, 0),
(194, 'ディエゴの闭ざされた牢', 6, 482, 32689, 32804, 0, 0, 1, 0),
(195, 'ディエゴの闭ざされた牢', 38, 482, 32697, 32810, 0, 0, 1, 10000),
(196, 'ディエゴの闭ざされた牢', 39, 482, 32694, 32813, 0, 0, 1, 10000),
(197, 'ディエゴの闭ざされた牢', 3, 482, 32743, 32844, 0, 0, 1, 0),
(198, 'ディエゴの闭ざされた牢', 4, 482, 32704, 32829, 0, 0, 1, 0),
(199, 'ディエゴの闭ざされた牢', 40, 482, 32706, 32836, 0, 0, 1, 10000),
(200, 'ディエゴの闭ざされた牢', 41, 482, 32702, 32839, 0, 0, 1, 10000),
(201, 'ディエゴの闭ざされた牢', 6, 482, 32724, 32808, 0, 0, 1, 0),
(202, 'ディエゴの闭ざされた牢', 38, 482, 32723, 32756, 0, 0, 1, 10000),
(203, 'ディエゴの闭ざされた牢', 5, 482, 32726, 32754, 0, 0, 1, 0),
(204, 'ディエゴの闭ざされた牢', 40, 482, 32732, 32756, 0, 0, 1, 10000),
(205, 'ディエゴの闭ざされた牢', 41, 482, 32715, 32802, 0, 0, 1, 10000),
(206, 'ディエゴの闭ざされた牢', 4, 482, 32795, 32811, 0, 0, 1, 0),
(207, 'ディエゴの闭ざされた牢', 4, 482, 32793, 32802, 0, 0, 1, 0),
(208, 'ディエゴの闭ざされた牢', 40, 482, 32743, 32792, 0, 0, 1, 10000),
(209, 'ディエゴの闭ざされた牢', 41, 482, 32743, 32798, 0, 0, 1, 10000),
(210, 'ディエゴの闭ざされた牢', 5, 482, 32743, 32804, 0, 0, 1, 0),
(211, 'ディエゴの闭ざされた牢', 6, 482, 32777, 32736, 0, 0, 1, 0),
(212, 'ディエゴの闭ざされた牢', 42, 482, 32786, 32826, 0, 0, 1, 0),
(213, 'ディエゴの闭ざされた牢', 42, 482, 32663, 32846, 0, 0, 1, 0),
(214, 'ディエゴの闭ざされた牢', 42, 482, 32745, 32844, 0, 0, 1, 0),
(215, 'ディエゴの闭ざされた牢', 42, 482, 32712, 32804, 0, 0, 1, 0),
(216, 'ディエゴの闭ざされた牢', 42, 482, 32695, 32782, 0, 0, 1, 0),
(217, 'ディエゴの闭ざされた牢', 38, 483, 32750, 32817, 0, 0, 1, 10000),
(218, 'ディエゴの闭ざされた牢', 39, 483, 32740, 32834, 0, 0, 1, 10000),
(219, 'ディエゴの闭ざされた牢', 5, 483, 32735, 32851, 0, 0, 1, 0),
(220, 'ディエゴの闭ざされた牢', 4, 483, 32749, 32843, 0, 0, 1, 0),
(221, 'ディエゴの闭ざされた牢', 40, 483, 32781, 32801, 0, 0, 1, 10000),
(222, 'ディエゴの闭ざされた牢', 43, 483, 32780, 32802, 0, 0, 1, 0),
(223, 'ディエゴの闭ざされた牢', 3, 483, 32781, 32803, 0, 0, 1, 0),
(224, 'ディエゴの闭ざされた牢', 6, 483, 32782, 32802, 0, 0, 1, 0),
(225, 'ディエゴの闭ざされた牢', 6, 483, 32783, 32807, 0, 0, 1, 0),
(226, 'ディエゴの闭ざされた牢', 43, 483, 32790, 32800, 0, 0, 1, 0),
(227, 'ディエゴの闭ざされた牢', 41, 483, 32783, 32809, 0, 0, 1, 10000),
(228, 'ディエゴの闭ざされた牢', 43, 483, 32782, 32808, 0, 0, 1, 0),
(229, 'ディエゴの闭ざされた牢', 6, 483, 32789, 32802, 0, 0, 1, 0),
(230, 'ディエゴの闭ざされた牢', 40, 483, 32793, 32803, 0, 0, 1, 10000),
(231, 'ディエゴの闭ざされた牢', 6, 483, 32793, 32801, 0, 0, 1, 0),
(232, 'ディエゴの闭ざされた牢', 39, 483, 32793, 32799, 0, 0, 1, 10000),
(233, 'ディエゴの闭ざされた牢', 46, 483, 32795, 32799, 0, 0, 1, 0),
(234, 'ディエゴの闭ざされた牢', 4, 483, 32783, 32813, 0, 0, 1, 0),
(235, 'ディエゴの闭ざされた牢', 43, 483, 32782, 32814, 0, 0, 1, 0),
(236, 'ディエゴの闭ざされた牢', 39, 483, 32783, 32815, 0, 0, 1, 10000),
(237, 'ディエゴの闭ざされた牢', 6, 483, 32784, 32814, 0, 0, 1, 0),
(238, 'ディエゴの闭ざされた牢', 41, 483, 32783, 32815, 0, 0, 1, 10000),
(239, 'ディエゴの闭ざされた牢', 43, 483, 32779, 32817, 0, 0, 1, 0),
(240, 'ディエゴの闭ざされた牢', 40, 483, 32780, 32818, 0, 0, 1, 10000),
(241, 'ディエゴの闭ざされた牢', 39, 483, 32789, 32813, 0, 0, 1, 10000),
(242, 'ディエゴの闭ざされた牢', 5, 483, 32788, 32814, 0, 0, 1, 0),
(243, 'ディエゴの闭ざされた牢', 43, 483, 32789, 32815, 0, 0, 1, 0),
(244, 'ディエゴの闭ざされた牢', 44, 483, 32790, 32814, 0, 0, 1, 0),
(245, 'ディエゴの闭ざされた牢', 4, 483, 32786, 32820, 0, 0, 1, 0),
(246, 'ディエゴの闭ざされた牢', 6, 483, 32787, 32819, 0, 0, 1, 0),
(247, 'ディエゴの闭ざされた牢', 5, 483, 32795, 32813, 0, 0, 1, 0),
(248, 'ディエゴの闭ざされた牢', 6, 483, 32794, 32814, 0, 0, 1, 0),
(249, 'ディエゴの闭ざされた牢', 43, 483, 32796, 32814, 0, 0, 1, 0),
(250, 'ディエゴの闭ざされた牢', 40, 483, 32795, 32815, 0, 0, 1, 10000),
(251, 'ディエゴの闭ざされた牢', 3, 483, 32796, 32810, 0, 0, 1, 0),
(252, 'ディエゴの闭ざされた牢', 39, 483, 32797, 32811, 0, 0, 1, 10000),
(253, 'ディエゴの闭ざされた牢', 44, 483, 32791, 32818, 0, 0, 1, 0),
(254, 'ディエゴの闭ざされた牢', 43, 483, 32791, 32820, 0, 0, 1, 0),
(255, 'ディエゴの闭ざされた牢', 5, 483, 32792, 32819, 0, 0, 1, 0),
(256, 'ディエゴの闭ざされた牢', 6, 483, 32796, 32819, 0, 0, 1, 0),
(257, 'ディエゴの闭ざされた牢', 4, 483, 32797, 32818, 0, 0, 1, 0),
(258, 'ディエゴの闭ざされた牢', 6, 483, 32798, 32810, 0, 0, 1, 0),
(259, 'ディエゴの闭ざされた牢', 43, 483, 32799, 32809, 0, 0, 1, 0),
(260, 'ディエゴの闭ざされた牢', 5, 483, 32799, 32811, 0, 0, 1, 0),
(261, 'ディエゴの闭ざされた牢', 40, 483, 32800, 32810, 0, 0, 1, 10000),
(262, 'ディエゴの闭ざされた牢', 6, 483, 32802, 32809, 0, 0, 1, 0),
(263, 'ディエゴの闭ざされた牢', 43, 483, 32801, 32808, 0, 0, 1, 0),
(264, 'ディエゴの闭ざされた牢', 41, 483, 32803, 32808, 0, 0, 1, 10000),
(265, 'ディエゴの闭ざされた牢', 3, 483, 32802, 32807, 0, 0, 1, 0),
(266, 'ディエゴの闭ざされた牢', 6, 483, 32807, 32807, 0, 0, 1, 0),
(267, 'ディエゴの闭ざされた牢', 43, 483, 32806, 32808, 0, 0, 1, 0),
(268, 'ディエゴの闭ざされた牢', 6, 483, 32800, 32807, 0, 0, 1, 0),
(269, 'ディエゴの闭ざされた牢', 4, 483, 32800, 32802, 0, 0, 1, 0),
(270, 'ディエゴの闭ざされた牢', 6, 483, 32803, 32803, 0, 0, 1, 0),
(271, 'ディエゴの闭ざされた牢', 3, 483, 32804, 32804, 0, 0, 1, 0),
(272, 'ディエゴの闭ざされた牢', 41, 483, 32803, 32803, 0, 0, 1, 10000),
(273, 'ディエゴの闭ざされた牢', 43, 483, 32804, 32802, 0, 0, 1, 0),
(274, 'ディエゴの闭ざされた牢', 6, 483, 32804, 32800, 0, 0, 1, 0),
(275, 'ディエゴの闭ざされた牢', 43, 483, 32802, 32800, 0, 0, 1, 0),
(276, 'ディエゴの闭ざされた牢', 39, 483, 32803, 32799, 0, 0, 1, 10000),
(277, 'ディエゴの闭ざされた牢', 43, 483, 32802, 32813, 0, 0, 1, 0),
(278, 'ディエゴの闭ざされた牢', 5, 483, 32806, 32812, 0, 0, 1, 0),
(279, 'ディエゴの闭ざされた牢', 41, 483, 32807, 32813, 0, 0, 1, 0),
(280, 'ディエゴの闭ざされた牢', 38, 483, 32808, 32814, 0, 0, 1, 10000),
(281, 'ディエゴの闭ざされた牢', 6, 483, 32802, 32815, 0, 0, 1, 0),
(282, 'ディエゴの闭ざされた牢', 5, 483, 32801, 32816, 0, 0, 1, 0),
(283, 'ディエゴの闭ざされた牢', 43, 483, 32803, 32816, 0, 0, 1, 0),
(284, 'ディエゴの闭ざされた牢', 43, 483, 32780, 32837, 0, 0, 1, 0),
(285, 'ディエゴの闭ざされた牢', 5, 483, 32795, 32847, 0, 0, 1, 0),
(286, 'ディエゴの闭ざされた牢', 5, 483, 32735, 32831, 0, 0, 1, 0),
(287, 'ディエゴの闭ざされた牢', 43, 483, 32761, 32807, 0, 0, 1, 0),
(288, 'ディエゴの闭ざされた牢', 38, 483, 32803, 32814, 0, 0, 1, 10000),
(289, 'ディエゴの闭ざされた牢', 40, 483, 32805, 32803, 0, 0, 1, 10000),
(290, 'ディエゴの闭ざされた牢', 5, 483, 32805, 32898, 0, 0, 1, 0),
(291, 'ディエゴの闭ざされた牢', 4, 483, 32788, 32927, 0, 0, 1, 0),
(292, 'ディエゴの闭ざされた牢', 5, 483, 32747, 32864, 0, 0, 1, 0),
(293, 'ディエゴの闭ざされた牢', 5, 483, 32782, 32907, 0, 0, 1, 0),
(294, 'ディエゴの闭ざされた牢', 5, 483, 32773, 32880, 0, 0, 1, 0),
(295, 'ディエゴの闭ざされた牢', 5, 483, 32748, 32914, 0, 0, 1, 0),
(296, 'ホセの地下牢', 5, 484, 32732, 32821, 0, 0, 1, 0),
(297, 'ホセの地下牢', 39, 484, 32738, 32821, 0, 0, 1, 10000),
(298, 'ホセの地下牢', 4, 484, 32759, 32800, 0, 0, 1, 0),
(299, 'ホセの地下牢', 41, 484, 32769, 32792, 0, 0, 1, 10000),
(300, 'ホセの地下牢', 6, 484, 32772, 32793, 0, 0, 1, 0),
(301, 'ホセの地下牢', 39, 484, 32792, 32796, 0, 0, 1, 10000),
(302, 'ホセの地下牢', 40, 484, 32807, 32793, 0, 0, 1, 10000),
(303, 'ホセの地下牢', 2, 484, 32804, 32796, 0, 0, 1, 10000),
(304, 'ホセの地下牢', 5, 484, 32801, 32810, 0, 0, 1, 0),
(305, 'ホセの地下牢', 4, 484, 32806, 32830, 0, 0, 1, 0),
(306, 'ホセの地下牢', 41, 484, 32792, 32826, 0, 0, 1, 10000),
(307, 'ホセの地下牢', 5, 484, 32792, 32841, 0, 0, 1, 0),
(308, 'ホセの地下牢', 40, 484, 32809, 32846, 0, 0, 1, 10000),
(309, 'ホセの地下牢', 3, 484, 32787, 32844, 0, 0, 1, 0),
(310, 'ホセの地下牢', 5, 484, 32784, 32862, 0, 0, 1, 0),
(311, 'ホセの地下牢', 41, 484, 32779, 32848, 0, 0, 1, 10000),
(312, 'ホセの地下牢', 45, 484, 32774, 32828, 0, 0, 1, 0),
(313, 'ホセの地下牢', 39, 484, 32762, 32845, 0, 0, 1, 10000),
(314, 'ホセの地下牢', 5, 484, 32763, 32850, 0, 0, 1, 0),
(315, 'ホセの地下牢', 44, 484, 32761, 32853, 0, 0, 1, 0),
(316, 'ホセの地下牢', 41, 484, 32779, 32801, 0, 0, 1, 10000),
(317, 'お化け屋敷', 44, 5140, 32818, 32821, 76, 53, 150, 0),
(318, 'お化け屋敷', 45, 5140, 32818, 32821, 76, 53, 150, 0),
(319, 'お化け屋敷', 46, 5140, 32818, 32821, 76, 53, 150, 0),
(320, 'お化け屋敷', 47, 5140, 32818, 32821, 76, 53, 150, 0),
(321, 'お化け屋敷', 48, 5140, 32818, 32821, 76, 53, 10, 0),
(322, 'お化け屋敷', 49, 5140, 32818, 32821, 76, 53, 10, 0),
(323, 'お化け屋敷', 50, 5140, 32818, 32821, 76, 53, 10, 0),
(324, 'お化け屋敷', 51, 5140, 32818, 32821, 76, 53, 10, 0),
(325, 'お化け屋敷', 52, 5140, 32818, 32821, 76, 53, 10, 0);
