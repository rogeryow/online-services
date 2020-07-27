-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2020 at 10:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sot`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaction`
--

CREATE TABLE `tblaction` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaction`
--

INSERT INTO `tblaction` (`id`, `name`) VALUES
('0', 'cart'),
('1', 'ready'),
('3', 'confirmed'),
('4', 'done'),
('5', 'cancelled ');

-- --------------------------------------------------------

--
-- Table structure for table `tbladminlogin`
--

CREATE TABLE `tbladminlogin` (
  `ID` int(11) NOT NULL,
  `Username_admin` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladminlogin`
--

INSERT INTO `tbladminlogin` (`ID`, `Username_admin`, `Password`) VALUES
(1, 'admin', 'epoyadmin05');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `service_option_id` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `user_id`, `service_id`, `service_option_id`, `quantity`, `action`) VALUES
(1, '14', '132', '1', '2', '0'),
(2, '14', '132', '2', '3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(11) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Category_Desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `Category`, `Category_Desc`) VALUES
(33, 'Home', ''),
(34, 'Events', ''),
(35, 'Body and Health', ''),
(36, 'Rental', ''),
(44, 'Delivery', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblchat_messages`
--

CREATE TABLE `tblchat_messages` (
  `ID` int(11) NOT NULL,
  `sender_name` varchar(45) NOT NULL,
  `receiver_name` varchar(45) NOT NULL,
  `messages_text` text NOT NULL,
  `Receiver_image` varchar(100) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Password_Con` varchar(255) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Address` text NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Image_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `First_Name`, `Last_Name`, `Username`, `Password`, `Password_Con`, `Phone_No`, `Address`, `Gender`, `Image_name`) VALUES
(11, 'Jephunneh', 'Arobo', 'epoy05', 'siyalangpo', 'siyalangpo', '09203354765', 'Tres de Mayo, Digos City', 'Male', 'pic1.jpeg'),
(12, 'James', 'Traya', 'james05', 'james05', 'james05', '09203354656', 'Tienda Aplaya, Digos City', 'Male', 'pic2.jpg'),
(13, 'Vincent', 'Alagao', 'vincent05', 'vincent05', 'vincent05', '09203343223', 'Don Lorenzo, Digos City', 'Male', 'pic3.jpg'),
(14, 'd', 'sds', 'corona', 'user', 'wwwwwwwwww', '444', 's', 'Female', 'pic4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompanyinfo`
--

CREATE TABLE `tblcompanyinfo` (
  `ID` int(11) NOT NULL,
  `Company_Name` varchar(100) NOT NULL,
  `Company_MobileNo` varchar(15) NOT NULL,
  `Company_telNo` text NOT NULL,
  `Company_Add` varchar(100) NOT NULL,
  `Company_Picture` varchar(100) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompanyinfo`
--

INSERT INTO `tblcompanyinfo` (`ID`, `Company_Name`, `Company_MobileNo`, `Company_telNo`, `Company_Add`, `Company_Picture`, `Username`) VALUES
(11, '', '', '', '', '', 'epoy05'),
(12, '', '', '', '', '', 'james05'),
(13, '', '', '', '', '', 'vincent05'),
(14, '', '', '', '', '', 'sdwwww');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `service_id`, `img`) VALUES
(1, '132', 'massage1.jpg'),
(2, '132', 'massage2.jpeg'),
(3, '132', 'massage3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestservices`
--

CREATE TABLE `tblrequestservices` (
  `ID` int(11) NOT NULL,
  `Username` text NOT NULL,
  `Fullname` varchar(50) NOT NULL,
  `Complete_Add` varchar(50) NOT NULL,
  `Phone_No` varchar(50) NOT NULL,
  `Services_Pic` varchar(50) NOT NULL,
  `Services_Name` text NOT NULL,
  `Services_Type` varchar(50) NOT NULL,
  `Services_Price` int(11) NOT NULL,
  `SP_Name` varchar(50) NOT NULL,
  `SP_Username` text NOT NULL,
  `Date` datetime NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequestservices`
--

INSERT INTO `tblrequestservices` (`ID`, `Username`, `Fullname`, `Complete_Add`, `Phone_No`, `Services_Pic`, `Services_Name`, `Services_Type`, `Services_Price`, `SP_Name`, `SP_Username`, `Date`, `Status`) VALUES
(77, 'james05', 'James Traya', 'Tienda Aplaya, Digos City', '09203354656', 'sd.5e27f4c0115613.74784297.jpg', 'Repairing Computer', 'Other', 200, '', 'epoy05', '2020-01-24 09:49:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblreviews`
--

CREATE TABLE `tblreviews` (
  `id` int(11) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreviews`
--

INSERT INTO `tblreviews` (`id`, `service_id`, `user_id`, `comment`, `rating`) VALUES
(1, '132', '14', 'I have enjoyed my many massages with you, the treatment and guidance youve offered has been very supportive and youve helped with my levels of stress.', '3'),
(2, '132', '12', 'Hi Sarah, thank you. My shoulder is giving me a lot less trouble than before. Definitely more freedom of movement and less pain so that is brilliant. I will continue with the helpful exercises you sent through to me', '4'),
(3, '132', '11', 'Your massage sessions have been the best we have ever experienced your knowledge of the oils as well as the ability to respond to our personal tensions and strains is exceptional.', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `IDServices` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Company_Name` varchar(45) NOT NULL,
  `Services_Title` longtext NOT NULL,
  `Services_Desc` longtext NOT NULL,
  `Services_Img` longtext NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longtitude` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`IDServices`, `Username`, `Company_Name`, `Services_Title`, `Services_Desc`, `Services_Img`, `category`, `subcategory`, `latitude`, `longtitude`, `price`) VALUES
(130, 'james05', '', 'Roof Repair', 'Other', 'computer.jpg', '45', '4', '', '', 0),
(132, 'epoy05', '', 'Full Body Massage', 'A full-body massage usually includes your arms, legs, hands and feet, your neck and back, your stomach and buttocks. The area around the breasts is usually massaged but not the breasts themselves.', 'massage.jpg', '35', '5', '6.746537', '125.357481', 300),
(134, 'epoy05', '', 'Half Body Massage', 'Full body massage means head to toe including everything. Not only private parts but a full body massage includes your hair, head, eyes, ears, and chin. Although it''s a total body massage from top to bottom still you will be kicked out of the massage room before time.', 'half-body-massage.jpg', '35', '5', '', '', 150),
(135, 'epoy05', '', 'Networking ', 'Computer', 'programming.jpg', '33', '6', '', '', 0),
(136, 'epoy05', '', 'pedicure', 'Regular pedicure: A simple treatment that includes foot soaking, foot scrubbing with a pumice stone or foot file, nail clipping, nail shaping, foot and calf massage, moisturizer and nail polishing. ... The feet are covered with layers of paraffin wax to moisturize feet.', 'pedicure.jpg', '35', '6', '', '', 100),
(137, 'epoy05', '', 'manicure', 'A good manicure can: clean, shape, strengthen, paint and decorate your nails. attend to any skin problems you might have around the nail, such as broken or sore skin. use acupressure or hand-massage techniques to stimulate the blood and lymph flow to improve the health of your skin', 'manicure.jpg', '35', '6', '', '', 80),
(138, 'epoy05', '', 'Create Programs', 'Other', 'editing.jpg', '33', '6', '', '', 0),
(139, 'epoy05', '', 'Head Massage', 'A head massage may help relieve stress and reduce tension. It may also ease migraine or headache pain, lower blood pressure, improve circulation to your head and neck, and promote hair growth. Before using essential oils, make sure they''re diluted, and do a patch test before using on a large area of skin.', 'head-massage2.jpg', '35', '5', '', '', 100),
(140, 'epoy05', '', 'House Cleaning', 'Home', 'cleaning.jpg', '34', '5', '', '', 0),
(141, 'vincent05', '', 'House Cleaning', 'Home', 'cleaning.jpg', '34', '5', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblservices_options`
--

CREATE TABLE `tblservices_options` (
  `id` int(11) NOT NULL,
  `Service_ID` varchar(255) NOT NULL,
  `service_title` varchar(255) NOT NULL,
  `service_shortcut` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices_options`
--

INSERT INTO `tblservices_options` (`id`, `Service_ID`, `service_title`, `service_shortcut`, `info`, `price`) VALUES
(1, '132', 'Head Massage', 'Head', 'A scalp massage is a head massage designed to relax the mind and encourage circulation. Many times, tension is felt within the head and neck, so scalp massages can be very effective as a stress reducer. Warm oil is massaged throughout the scalp, working to relax tight muscles in the temple and neck regions', '100'),
(2, '132', 'Half Body Massage', 'Half Body', 'The average full-body massage or bodywork session lasts approximately one hour. A half-hour appointment only allows time for a partial massage session, such as neck and shoulders, back or legs and feet. Many people prefer a 60- to 90-minute session for opThe average full-body massage or bodywork session lasts approximately one hour. A half-hour appointment only allows time for a partial massage session, such as neck and shoulders, back or legs and feet. Many people prefer a 60- to 90-minute session for optimal relaxation', '200'),
(3, '132', 'Full Body Massage', 'Full Body', 'A full-body massage usually includes your arms, legs, hands and feet, your neck and back, your stomach and buttocks. The area around the breasts is usually massaged but not the breasts themselves. You can always say you hate having your breast area or buttocks or whatever touched', '500');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `ID` int(11) NOT NULL,
  `Category_ID` varchar(255) NOT NULL,
  `Subcategory` varchar(255) NOT NULL,
  `Subcategory_Desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`ID`, `Category_ID`, `Subcategory`, `Subcategory_Desc`) VALUES
(1, '33', 'Pest Control Services', ''),
(2, '33', 'House Cleaning Services', ''),
(3, '33', 'Plumbing Services', ''),
(4, '34', 'Catering Services', ''),
(5, '35', 'Massage Services', ''),
(6, '35', 'Manicure and Pedicure Services', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbluploadimages`
--

CREATE TABLE `tbluploadimages` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Images_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_reviews`
--
CREATE TABLE `vw_reviews` (
`service_id` varchar(255)
,`comment` varchar(255)
,`rating` varchar(255)
,`Username` varchar(30)
,`Image_name` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_services`
--
CREATE TABLE `vw_services` (
`IDServices` int(11)
,`Services_Title` longtext
,`Services_Img` longtext
,`Category` varchar(50)
,`Subcategory` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_storage`
--
CREATE TABLE `vw_storage` (
`id` int(11)
,`user_id` varchar(255)
,`company_name` longtext
,`service_title` varchar(255)
,`unit_price` varchar(255)
,`quantity` varchar(255)
,`action` varchar(255)
,`img` longtext
);

-- --------------------------------------------------------

--
-- Structure for view `vw_reviews`
--
DROP TABLE IF EXISTS `vw_reviews`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_reviews`  AS  select `tblreviews`.`service_id` AS `service_id`,`tblreviews`.`comment` AS `comment`,`tblreviews`.`rating` AS `rating`,`tblclient`.`Username` AS `Username`,`tblclient`.`Image_name` AS `Image_name` from (`tblreviews` join `tblclient` on((`tblreviews`.`user_id` = `tblclient`.`ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_services`
--
DROP TABLE IF EXISTS `vw_services`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_services`  AS  select `tblservices`.`IDServices` AS `IDServices`,`tblservices`.`Services_Title` AS `Services_Title`,`tblservices`.`Services_Img` AS `Services_Img`,`tblcategory`.`Category` AS `Category`,`tblsubcategory`.`Subcategory` AS `Subcategory` from ((`tblservices` left join `tblcategory` on((`tblservices`.`category` = `tblcategory`.`ID`))) left join `tblsubcategory` on((`tblservices`.`subcategory` = `tblsubcategory`.`ID`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_storage`
--
DROP TABLE IF EXISTS `vw_storage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_storage`  AS  select `tblcart`.`id` AS `id`,`tblcart`.`user_id` AS `user_id`,`tblservices`.`Services_Title` AS `company_name`,`tblservices_options`.`service_title` AS `service_title`,`tblservices_options`.`price` AS `unit_price`,`tblcart`.`quantity` AS `quantity`,`tblaction`.`name` AS `action`,`tblservices`.`Services_Img` AS `img` from (((`tblcart` left join `tblservices_options` on((`tblcart`.`service_option_id` = `tblservices_options`.`id`))) left join `tblaction` on((`tblcart`.`action` = `tblaction`.`id`))) left join `tblservices` on((`tblservices`.`IDServices` = `tblcart`.`service_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladminlogin`
--
ALTER TABLE `tbladminlogin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblchat_messages`
--
ALTER TABLE `tblchat_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcompanyinfo`
--
ALTER TABLE `tblcompanyinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequestservices`
--
ALTER TABLE `tblrequestservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblreviews`
--
ALTER TABLE `tblreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`IDServices`);

--
-- Indexes for table `tblservices_options`
--
ALTER TABLE `tblservices_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluploadimages`
--
ALTER TABLE `tbluploadimages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladminlogin`
--
ALTER TABLE `tbladminlogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tblchat_messages`
--
ALTER TABLE `tblchat_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tblcompanyinfo`
--
ALTER TABLE `tblcompanyinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblrequestservices`
--
ALTER TABLE `tblrequestservices`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tblreviews`
--
ALTER TABLE `tblreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `IDServices` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
--
-- AUTO_INCREMENT for table `tblservices_options`
--
ALTER TABLE `tblservices_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbluploadimages`
--
ALTER TABLE `tbluploadimages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
