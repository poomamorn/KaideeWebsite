-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 20, 2017 at 03:57 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kaidee`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `uid` varchar(36) NOT NULL,
  `address` varchar(128) NOT NULL,
  `city` varchar(64) NOT NULL,
  `province` varchar(64) NOT NULL,
  `postcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`uid`, `address`, `city`, `province`, `postcode`) VALUES
('012345678', '123/1', 'Bangkok', 'Sathorn', 12345),
('111111111', 'asdf', 'asdf', 'asdf', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cid` varchar(36) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cid`, `name`) VALUES
('001', 'Phone'),
('002', 'Computer'),
('003', 'Sport'),
('004', 'Bicycle'),
('005', 'Shoes'),
('006', 'Game'),
('007', 'Pet'),
('008', 'Camera'),
('009', 'Car'),
('010', 'Service');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `rid` varchar(36) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(64) NOT NULL,
  `message` varchar(256) DEFAULT NULL,
  `form_url` varchar(256) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `rid` varchar(36) NOT NULL,
  `buyer_uid` varchar(36) NOT NULL,
  `seller_uid` varchar(36) NOT NULL,
  `iid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`rid`, `buyer_uid`, `seller_uid`, `iid`) VALUES
('073bdbb0-25cd-11e7-80c9-6c40089344f2', '012345678', '111111111', '00001');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `fid` varchar(36) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rating` float NOT NULL,
  `comment` varchar(512) DEFAULT NULL,
  `buyer_uid` varchar(36) NOT NULL,
  `seller_uid` varchar(36) NOT NULL,
  `iid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`fid`, `timestamp`, `rating`, `comment`, `buyer_uid`, `seller_uid`, `iid`) VALUES
('c867c546-4778-4a3a-b06d-700864d18e40', '2017-04-20 06:21:59', 4, 'yoyo', '073bdbb0-25cd-11e7-80c9-6c40089344f2', '073bdbb0-25cd-11e7-80c9-6c40089344e3', 'c867c546-4778-4a3a-b06d-700864d18e40');

-- --------------------------------------------------------

--
-- Table structure for table `item_listing`
--

CREATE TABLE `item_listing` (
  `iid` varchar(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `price` float NOT NULL,
  `cid` varchar(36) NOT NULL,
  `since` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seller_uid` varchar(36) NOT NULL,
  `product_location` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_listing`
--

INSERT INTO `item_listing` (`iid`, `name`, `description`, `price`, `cid`, `since`, `seller_uid`, `product_location`) VALUES
('00001', 'Samsung Galaxy Note 7', '-good\r\n-non flammable', 9000, '001', '2017-04-08 15:12:56', '123456789', '1600 Amphitheatre Parkway, Mountain View, CA'),
('00002', 'Apple Macbook Pro 2016 13inch', 'Double Touch Bar , Double the price', 90000, '002', '2017-04-08 15:14:51', '123456789', '7 Ang Mo Kio Street 64, Singapore 569086'),
('00003', 'iFone Zero', 'Created by the founders of Orange Inc.\r\nBest performance in market', 1299, '001', '2017-04-08 15:17:03', '123456789', 'Phayathai Rd, Pathum Wan, Khet Pathum Wan, Krung Thep Maha Nakhon 10330'),
('00004', 'Bae- Salt', 'salt from salt bae', 9999, '010', '2017-04-08 15:23:31', '111111111', 'Restaurant Village, Near Four Seasons Hotel، Jumeirah Road - Dubai - United Arab Emirates'),
('00005', 'Black Pearl', 'FAST FAST FAST FAST', 123457000, '009', '2017-04-08 15:25:02', '012345678', 'Caribbean Sea'),
('00006', 'Mermaid Tear', 'Fresh mermaid tear, one drop only , use wisely', 2499, '010', '2017-04-08 15:27:57', '012345678', 'Goldfish , Salt , Pepper'),
('00007', 'One Punch', 'One punch - by chuck norris', 9999, '010', '2017-04-08 15:28:51', '123456789', 'YOUR HOUSE'),
('00008', 'Starcraft CD', 'CD with CDKEY , 20 years old\r\nWindows XP Only', 3000, '006', '2017-04-08 15:30:28', '123456789', 'Blizzard Entertainment SAS \r\nTSA 60001 \r\n78008 Versailles CEDEX \r\nFrance'),
('00009', 'My Bicycle 2.0', 'My dad gave it to me', 5555560, '004', '2017-04-08 15:31:35', '111111111', 'MY HOUSE'),
('00010', 'Monkey', 'Undead Monkey', 78987, '007', '2017-04-08 15:32:23', '012345678', 'MY SHIP');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `img_id` varchar(36) NOT NULL,
  `url` varchar(256) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`img_id`, `url`, `name`) VALUES
('00001', 'https://cnet1.cbsistatic.com/img/mozjQZ5CI26L7mOYvkPp-eHPDj0=/770x433/2016/08/01/3d009ec0-1ba9-46c1-b1b0-82ca595d5793/spiralbinder-2016-18.jpg', 'Samsung Galaxy Note 7'),
('00002', 'https://cnet3.cbsistatic.com/img/dDZtgN80hNQkyMlv1NNBBBGFm2g=/1600x900/2016/08/05/2d17c618-85b9-44e7-979f-a13aa07f7744/samsung-galaxy-note-7.jpg', 'Samsung Galaxy Note 7'),
('00003', 'https://i.ytimg.com/vi/T7ZqdzO4cm4/maxresdefault.jpg', 'Apple Macbook Pro 2016 13inch'),
('00004', 'https://cnet1.cbsistatic.com/img/TSaODOZF9xhhcRyerjTT6WVu0-Y=/770x433/2016/11/04/d69ba8cc-9209-447b-885f-c3040dcf72e4/apple-macbook-pro-with-touch-bar-13-inch-2016-17.jpg', 'Apple Macbook Pro 2016 13inch'),
('00005', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS6UrdtUvF6ZLWJ9acg8p5WrQtcVri_pOWx-oWPfahl579CkApYHw', 'Apple Macbook Pro 2016 13inch'),
('00006', 'https://cdn.macrumors.com/article-new/2012/11/ifone_5.jpg', 'iFone Zero'),
('00007', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRBMsyXaGM4SAKA0Td6syB_oFhEHeVIbpLt__pWS_Vyi1jSFeO9', 'Bae- Salt'),
('00008', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSN_1FHdBqZ2QlR565ziR-kBlgMUxt_KYVuFNB8v8deDkL5O2XV', 'Black Pearl'),
('00009', 'https://i.ytimg.com/vi/5rObtiPT-18/maxresdefault.jpg', 'Mermaid Tear'),
('00010', 'http://www.threegirlsmedia.com/wp-content/uploads/2012/06/Punch_logo_RGB.FINAL_-300x187.png', 'One Punch'),
('00011', 'http://vignette3.wikia.nocookie.net/starcraft/images/c/cb/Screenshot_SC2_DevGame1.jpg/revision/latest?cb=20080511221659', 'Starcraft CD'),
('00012', 'https://i.ytimg.com/vi/CQ5UMOeF0ok/maxresdefault.jpg', 'My Bicycle 2.0'),
('00013', 'http://i.dailymail.co.uk/i/pix/2014/12/10/23F3C29A00000578-2869031-image-a-1_1418247379173.jpg', 'Monkey');

-- --------------------------------------------------------

--
-- Table structure for table `product_images_relation`
--

CREATE TABLE `product_images_relation` (
  `iid` varchar(36) NOT NULL,
  `img_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images_relation`
--

INSERT INTO `product_images_relation` (`iid`, `img_id`) VALUES
('00001', '00001'),
('00001', '00002'),
('00002', '00003'),
('00002', '00004'),
('00002', '00005'),
('00003', '00006'),
('00004', '00007'),
('00005', '00008'),
('00006', '00009'),
('00007', '00010'),
('00008', '00011'),
('00009', '00012'),
('00010', '00013');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `sid` varchar(36) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`sid`, `name`) VALUES
('c867c546-4778-4a3a-b06d-700864d18e40', 'KerryExpress');

-- --------------------------------------------------------

--
-- Table structure for table `service_offering`
--

CREATE TABLE `service_offering` (
  `rid` varchar(36) NOT NULL,
  `sid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_offering`
--

INSERT INTO `service_offering` (`rid`, `sid`) VALUES
('073bdbb0-25cd-11e7-80c9-6c40089344f2', 'c867c546-4778-4a3a-b06d-700864d18e40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` varchar(36) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `email` varchar(64) NOT NULL,
  `profile_pic` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `first_name`, `last_name`, `phone`, `email`, `profile_pic`) VALUES
('012345678', 'Jack', 'Sparrow', '01110', 'thecaptain@caribbean.sea', 'https://static2.comicvine.com/uploads/original/11/111746/4352187-pirates4jacksparrowpostercropped.jpg'),
('111111111', 'Nusret', 'Gökçe', '0091100', 'thesaltbae@mysteakis.thebest', 'https://media1.giphy.com/media/26gsl2WC5tRxkemdi/200_s.gif'),
('123456789', 'Chuck', 'Norris', '0812345678', 'chuck_norris@chucknorris.org', 'http-chucknorris.org/mypicture');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `count` int(11) NOT NULL,
  `cid` varchar(36) NOT NULL,
  `uid` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`count`, `cid`, `uid`) VALUES
(9999, '001', '012345678'),
(1234, '002', '123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`rid`,`timestamp`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`rid`,`iid`),
  ADD KEY `iid` (`iid`),
  ADD KEY `chat_rooms_ibfk_2` (`buyer_uid`),
  ADD KEY `chat_rooms_ibfk_3` (`seller_uid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `item_listing`
--
ALTER TABLE `item_listing`
  ADD PRIMARY KEY (`iid`),
  ADD KEY `item_listing_ibfk1` (`cid`),
  ADD KEY `item_listing_frk2` (`seller_uid`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `product_images_relation`
--
ALTER TABLE `product_images_relation`
  ADD KEY `img_id` (`img_id`),
  ADD KEY `product_images_relation_ibfk_1` (`iid`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `service_offering`
--
ALTER TABLE `service_offering`
  ADD PRIMARY KEY (`rid`,`sid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`cid`,`uid`),
  ADD KEY `uid` (`uid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `chat_rooms` (`rid`);

--
-- Constraints for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD CONSTRAINT `chat_rooms_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `item_listing` (`iid`);

--
-- Constraints for table `item_listing`
--
ALTER TABLE `item_listing`
  ADD CONSTRAINT `item_listing_frk2` FOREIGN KEY (`seller_uid`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `item_listing_ibfk1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`);

--
-- Constraints for table `product_images_relation`
--
ALTER TABLE `product_images_relation`
  ADD CONSTRAINT `product_images_relation_ibfk_1` FOREIGN KEY (`iid`) REFERENCES `item_listing` (`iid`),
  ADD CONSTRAINT `product_images_relation_ibfk_2` FOREIGN KEY (`img_id`) REFERENCES `product_images` (`img_id`);

--
-- Constraints for table `service_offering`
--
ALTER TABLE `service_offering`
  ADD CONSTRAINT `service_offering_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `chat_rooms` (`rid`),
  ADD CONSTRAINT `service_offering_ibfk_2` FOREIGN KEY (`sid`) REFERENCES `services` (`sid`);

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `categories` (`cid`),
  ADD CONSTRAINT `views_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
