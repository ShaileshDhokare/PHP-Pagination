-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 21, 2018 at 07:19 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learning_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) NOT NULL,
  `short_desc` text NOT NULL,
  `long_desc` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `short_desc`, `long_desc`) VALUES
(1, 'Indonesia', 'lectus in quam fringilla rhoncus mauris enim leo rhoncus sed', 'potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus'),
(2, 'Slovenia', 'id ligula suspendisse ornare consequat lectus in est risus auctor', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient'),
(3, 'Saudi Arabia', 'primis in faucibus orci luctus et ultrices posuere cubilia curae', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus'),
(4, 'Russia', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante'),
(5, 'Latvia', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim', 'mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec'),
(6, 'Ukraine', 'neque aenean auctor gravida sem praesent id massa id nisl', 'orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus'),
(7, 'Yemen', 'arcu libero rutrum ac lobortis vel dapibus at diam nam', 'suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero'),
(8, 'Albania', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis'),
(9, 'China', 'a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id'),
(10, 'Ukraine', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis'),
(11, 'Mexico', 'in lectus pellentesque at nulla suspendisse potenti cras in purus', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate'),
(12, 'Poland', 'ac nibh fusce lacus purus aliquet at feugiat non pretium', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede'),
(13, 'China', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et'),
(14, 'Poland', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et'),
(15, 'United States', 'consequat in consequat ut nulla sed accumsan felis ut at', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci'),
(16, 'China', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas'),
(17, 'Portugal', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a'),
(18, 'China', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum'),
(19, 'Nigeria', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo'),
(20, 'Philippines', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis'),
(21, 'Russia', 'elit proin interdum mauris non ligula pellentesque ultrices phasellus id', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula'),
(22, 'Bolivia', 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis'),
(23, 'China', 'morbi non quam nec dui luctus rutrum nulla tellus in', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros'),
(24, 'Indonesia', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in'),
(25, 'Jordan', 'donec ut dolor morbi vel lectus in quam fringilla rhoncus', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi'),
(26, 'China', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis'),
(27, 'Poland', 'non quam nec dui luctus rutrum nulla tellus in sagittis', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus'),
(28, 'China', 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus'),
(29, 'Kazakhstan', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non'),
(30, 'France', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna'),
(31, 'Albania', 'amet diam in magna bibendum imperdiet nullam orci pede venenatis', 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero'),
(32, 'Russia', 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean'),
(33, 'China', 'nulla suscipit ligula in lacus curabitur at ipsum ac tellus', 'accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam'),
(34, 'Russia', 'penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id'),
(35, 'China', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus'),
(36, 'Armenia', 'elit proin risus praesent lectus vestibulum quam sapien varius ut', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla'),
(37, 'Yemen', 'fusce posuere felis sed lacus morbi sem mauris laoreet ut', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),
(38, 'Philippines', 'ut tellus nulla ut erat id mauris vulputate elementum nullam', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat'),
(39, 'Japan', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum'),
(40, 'Greece', 'ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis'),
(41, 'Poland', 'nulla ac enim in tempor turpis nec euismod scelerisque quam', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus'),
(42, 'Morocco', 'curabitur in libero ut massa volutpat convallis morbi odio odio', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes'),
(43, 'Thailand', 'sapien arcu sed augue aliquam erat volutpat in congue etiam', 'pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula'),
(44, 'China', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien'),
(45, 'Yemen', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at'),
(46, 'Philippines', 'quisque ut erat curabitur gravida nisi at nibh in hac', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt'),
(47, 'Guinea-Bissau', 'blandit non interdum in ante vestibulum ante ipsum primis in', 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra'),
(48, 'Japan', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea'),
(49, 'Cayman Islands', 'sit amet sem fusce consequat nulla nisl nunc nisl duis', 'nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam'),
(50, 'Russia', 'felis ut at dolor quis odio consequat varius integer ac', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien'),
(51, 'Canada', 'nibh fusce lacus purus aliquet at feugiat non pretium quis', 'condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et'),
(52, 'Russia', 'nulla tellus in sagittis dui vel nisl duis ac nibh', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor'),
(53, 'Saudi Arabia', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor'),
(54, 'China', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat', 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae'),
(55, 'Philippines', 'curabitur gravida nisi at nibh in hac habitasse platea dictumst', 'suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla'),
(56, 'Ukraine', 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper'),
(57, 'Cameroon', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut'),
(58, 'Spain', 'ligula nec sem duis aliquam convallis nunc proin at turpis', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec'),
(59, 'Greece', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum'),
(60, 'Argentina', 'dui proin leo odio porttitor id consequat in consequat ut', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti'),
(61, 'Czech Republic', 'amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie'),
(62, 'Iran', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 'sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet'),
(63, 'China', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet'),
(64, 'Brazil', 'ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat'),
(65, 'Russia', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies'),
(66, 'Portugal', 'ultrices mattis odio donec vitae nisi nam ultrices libero non', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus'),
(67, 'Philippines', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse'),
(68, 'United States', 'tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum'),
(69, 'Spain', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu'),
(70, 'Kyrgyzstan', 'cras in purus eu magna vulputate luctus cum sociis natoque', 'quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea'),
(71, 'China', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt'),
(72, 'Malaysia', 'diam in magna bibendum imperdiet nullam orci pede venenatis non', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat'),
(73, 'Indonesia', 'odio cras mi pede malesuada in imperdiet et commodo vulputate', 'duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo'),
(74, 'Sudan', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam'),
(75, 'Serbia', 'suscipit nulla elit ac nulla sed vel enim sit amet', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse'),
(76, 'Yemen', 'fermentum justo nec condimentum neque sapien placerat ante nulla justo', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula'),
(77, 'China', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at'),
(78, 'United States', 'ac est lacinia nisi venenatis tristique fusce congue diam id', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris'),
(79, 'Russia', 'interdum in ante vestibulum ante ipsum primis in faucibus orci', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel'),
(80, 'Palestinian Territory', 'quis orci nullam molestie nibh in lectus pellentesque at nulla', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci'),
(81, 'Sweden', 'in hac habitasse platea dictumst morbi vestibulum velit id pretium', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce'),
(82, 'China', 'et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum'),
(83, 'Jordan', 'curabitur in libero ut massa volutpat convallis morbi odio odio', 'volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet'),
(84, 'Egypt', 'duis at velit eu est congue elementum in hac habitasse', 'pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet'),
(85, 'Denmark', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi'),
(86, 'Croatia', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien'),
(87, 'Vietnam', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis'),
(88, 'Sweden', 'mi sit amet lobortis sapien sapien non mi integer ac', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean'),
(89, 'United States', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', 'in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus'),
(90, 'Kyrgyzstan', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim'),
(91, 'Portugal', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id'),
(92, 'Palestinian Territory', 'ligula suspendisse ornare consequat lectus in est risus auctor sed', 'magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum'),
(93, 'China', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris'),
(94, 'Indonesia', 'felis donec semper sapien a libero nam dui proin leo', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non'),
(95, 'France', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien'),
(96, 'China', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui'),
(97, 'Ivory Coast', 'aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas', 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum'),
(98, 'Yemen', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit'),
(99, 'Belarus', 'eleifend luctus ultricies eu nibh quisque id justo sit amet', 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam'),
(100, 'France', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
