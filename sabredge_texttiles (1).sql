-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 04, 2023 at 04:07 PM
-- Server version: 8.0.33
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sabredge_texttiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_of_orders`
--

CREATE TABLE `address_of_orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL COMMENT 'user id',
  `order_id` varchar(255) DEFAULT NULL COMMENT 'order id is find in orders table',
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  `pincode` varchar(255) DEFAULT NULL,
  `shipping_address_id` int DEFAULT NULL COMMENT 'Shipping address id is find in shipping_address (id) primary_key',
  `order_date` datetime DEFAULT NULL,
  `order_total_amount` float(65,2) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `address_of_orders`
--

INSERT INTO `address_of_orders` (`id`, `user_id`, `order_id`, `name`, `mobile`, `landmark`, `city`, `address`, `pincode`, `shipping_address_id`, `order_date`, `order_total_amount`, `payment_type`) VALUES
(21, 2, 'VLBH20230628607501262335', 'Aakash', '7701931016', 'School', 'Delhi', 'A-229 begum vihar ext. begumpur delhi 110086', '110086', 7, '2023-06-28 11:24:45', 2958.00, 'COD'),
(22, 2, 'VLBH20230628587440393001', 'VIKAS', '7701931016', 'School', 'Jaipur', 'Mahindra Park, Fountain Chowk, near Rani Bagh, New Delhi, Delhi 110034', '110078', 8, '2023-06-28 11:25:37', 1494.00, 'COD'),
(23, 9, 'VLBH20230628395794040854', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-06-28 11:26:23', 21436.00, 'COD'),
(24, 3, 'VLBH20230628126616790515', 'Dinesh kumar', '8285031577', 'Gurudwara', 'Delhi', 'D 576 jahangirpuri Delhi', '110083', 16, '2023-06-28 11:29:25', 15520.00, 'COD'),
(25, 9, 'VLBH20230630534004429283', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-06-30 17:56:15', 807.00, 'COD'),
(26, 13, 'VLBH20230703650080583468', 'Rohit', '7887885475', 'Properties', 'Delhi', 'Janakpuri west Delhi', '110087', 17, '2023-07-03 12:08:19', 2677.00, 'COD'),
(27, 13, 'VLBH20230703654756570916', 'Vijay', '7875874885', 'Dlehi', 'dlkl', 'sdkl', 'skldf', 18, '2023-07-03 12:11:05', 608.00, 'COD'),
(28, 13, 'VLBH20230703252180505628', 'Vijay', '7875874885', 'Dlehi', 'dlkl', 'sdkl', 'skldf', 18, '2023-07-03 12:30:14', 2497.00, 'COD'),
(29, 13, 'VLBH20230703106224452492', 'Vikash', '7744741025', 'Shop', 'Delhi', 'Pitampura mahindra park', '110034', 19, '2023-07-03 12:35:21', 1494.00, 'COD'),
(30, 9, 'VLBH20230704907388222383', 'Golu', '8875748585', 'School', 'Delhi', 'Dwarkas sec 21 near metro station', '110074', 13, '2023-07-04 12:35:00', 608.00, 'COD'),
(31, 9, 'VLBH20230704702168340879', 'Golu kumar', '8875748585', 'School', 'Delhi', 'Dwarkas sec 21 near metro station', '110074', 13, '2023-07-04 14:01:59', 1375.00, 'ONLINE'),
(32, 9, 'VLBH20230704134810206586', 'Golu kumar', '8875748585', 'School', 'Delhi', 'Dwarkas sec 21 near metro station', '110074', 13, '2023-07-04 14:14:11', 1286.00, 'ONLINE'),
(33, 9, 'VLBH20230704825576318942', 'Golu kumar', '8875748585', 'School', 'Delhi', 'Dwarkas sec 21 near metro station', '110074', 13, '2023-07-04 14:19:53', 837.00, 'ONLINE'),
(34, 9, 'VLBH20230704384816610999', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-07-04 14:25:03', 351.00, 'ONLINE'),
(35, 9, 'VLBH20230704866451466770', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-07-04 14:32:13', 767.00, 'ONLINE'),
(36, 9, 'VLBH20230704153517755029', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-07-04 14:35:45', 1188.00, 'ONLINE'),
(37, 9, 'VLBH20230704466464914549', 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 12, '2023-07-04 14:36:42', 1589.00, 'ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int NOT NULL,
  `status` varchar(50) DEFAULT 'enable',
  `user_type` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `a_email` varchar(50) DEFAULT NULL,
  `a_name` varchar(50) DEFAULT NULL,
  `a_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `status`, `user_type`, `address`, `mobile`, `gender`, `designation`, `a_email`, `a_name`, `a_password`) VALUES
(1, 'enable', '1', 'delhi', 7701931014, 'Male', 'Employee', 'admin@gmail.com', 'Admin', '9845695b8067dc55bd73ec840a1a42e6');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `image`, `title`, `description`, `date`) VALUES
(1, 'thumbnail-8-800x450-c-default.webp', 'Water Quality Solutions in Central America', '<p>EOS International&rsquo;s (EOS) Water Quality Solutions in Central America technology, education, and monitoring can ensure that communities have safe drinking water continually.</p>\r\n\r\n<p>Water &amp; HygieneHonduras, Nicaragua</p>\r\n\r\n<p>Key Facts</p>\r\n\r\n<ul>\r\n	<li>EOS provides water quality services to over 1,000 rural community water systems, ensuring over 500,000 Central Americans have access to safe drinking water on a continual basis.</li>\r\n	<li>EOS&rsquo; safe drinking water expansion focuses directly on meeting the UN&rsquo;s Sustainable Development Goal 6.</li>\r\n	<li>Through the creation of franchised chlorine distribution centers, chlorine tablets are distributed to &lsquo;last mile&rsquo; communities.</li>\r\n	<li>Entrepreneurs can make up to $150 per month at chlorine distribution centers.</li>\r\n	<li>A Nicaraguan Ministry of Health study showed that in 70 communities where EOS recently implemented water treatment solutions, cases of diarrhea decreased by about 50%.</li>\r\n</ul>\r\n\r\n<h3>Key Features</h3>\r\n\r\n<p>EOS provides rural families in Central America with access to cost-effective safe drinking water solutions at the community level. Through EOS&rsquo; technology implementation, education, and monitoring, our team can ensure that communities have safe drinking water continually, allowing children to stay in school, parents to continue working, and communities to thrive.<br />\r\nEOS&rsquo; comprehensive model provides safe drinking water to over 530,000 people and includes the support of the ministry of health and local partners. This three-step model includes water quality testing and analysis to assess contaminations in the community water source, community water treatment and education to treat the contamination, and an ongoing chlorine tablet distribution through our circuit rider model, providing a sustainable supply chain. Our team provides ongoing technical assistance, training, evaluation, and chlorine tablet distribution to all 1,300 rural communities through a franchised network of 51 chlorine distribution centers. EOS has identified entrepreneurs and initiated these chlorine distribution centers to provide a financially sustainable supply chain of chlorine tablets, while also an opportunity for entrepreneurs to generate up to USD $150 per month while supporting clean water. All solutions are locally-operated and require co-financing from all involved and demonstrates that for just pennies a day per person, we could dramatically reduce the incidence of waterborne disease and save lives.</p>\r\n\r\n<h3>Social Impact</h3>\r\n\r\n<p>EOS&rsquo; safe drinking water expansion program focuses on rural populations in both Nicaragua and Honduras, which are Central America&rsquo;s poorest countries. There are approximately 11,700 rural drinking water systems in these countries and more than 85% of these systems are contaminated with harmful bacteria. Contaminated drinking water is the main source of gastrointestinal diseases and, at times, death in children under five. When communities gain access to clean water lives are saved and illnesses are reduced, translating to a population that is healthier, better educated, and more productive.</p>\r\n\r\n<p>The Nicaraguan Ministry of Health recently published the results of a study administered in 70 communities where EOS recently implemented water treatment solutions. The results found a 49% reduction in reported cases of diarrhea in 2018, since the EOS project implementation a year prior. The largest reduction in cases was in the age range of 5-9-year-old children, who experienced 73% fewer reported cases of diarrhea. That translates to 88 children who reported sickness in 2017 and have been healthy in 2018 in just these 70 communities included in the study. Referencing the results of this municipal health study can demonstrate the significant impact of EOS&rsquo; work throughout Central America on a daily basis.</p>\r\n\r\n<h3>Future Plans</h3>\r\n\r\n<p>While EOS has been able to meet the current growth demand, there are over 11,800 rural community water systems in need of water treatment or filtration. Recently EOS has piloted new models to rapidly scale the water quality solutions to new communities including clustering communities by partnering with the municipal health department and local organizations, to prepare and organize a large number of communities at a time. Another strategy that EOS is piloting to meet demand is to leverage remote sensor technology, to measure the water quality and the presence of chlorine in the water.</p>\r\n\r\n<p>In this next phase of growth, EOS is aggressively seeking partners from the public and private sectors to join together to provide systems changes to the drinking water sector in Central America.</p>\r\n', '2023-07-01'),
(2, 'artificial-intelligence-concept-1024x682.jpg', 'Draft EU AI rules could harm Europe’s competitiveness, say industry executives', '<p>In an open letter, executives from Renault, Meta, and other companies express concerns over proposed EU AI Legislation, citing potential harm to competitiveness and technological sovereignty.</p>\r\n\r\n<p>Over 160 executives from companies including Renault, Meta, Cellnex, Mirakl, and Berenberg&nbsp;<a href=\"https://www.reuters.com/technology/draft-eu-artificial-intelligence-rules-could-hurt-europe-open-letter-2023-06-30/\" target=\"_blank\">have signed an open letter</a>&nbsp;expressing concerns that the proposed EU AI legislation could harm Europe&rsquo;s competitiveness and technological independence. The draft rules, recently agreed upon by EU lawmakers, require disclosure of AI-generated content, identification of deepfake images, and safeguards against illegal content. The letter argues that these regulations would heavily regulate technologies like generative AI, impose high compliance costs, and increase liability risks for companies, potentially leading to innovative companies relocating their operations abroad and investors withdrawing their support for European AI development. Yann LeCun from Meta was among the signatories challenging the EU regulations.</p>\r\n\r\n<h3>Related technologies</h3>\r\n\r\n<p><a href=\"https://dig.watch/technologies/artificial-intelligence\">Artificial intelligence</a></p>\r\n', '2023-07-01'),
(3, 'google.jpg', 'Google to block Canadian news, following Meta’s lead', '<p>Google has joined Meta in its decision to block Canadian news on its platform within Canada, citing concerns over a new law that requires payments to local news publishers.</p>\r\n\r\n<p>Google&nbsp;<a href=\"https://www.reuters.com/technology/google-block-news-links-canada-over-law-paying-publishers-statement-2023-06-29/\" target=\"_blank\">announced its intention to block Canadian news on its platform within Canada in response to a new law requiring payments to local news publishers.&nbsp;</a>This decision follows&nbsp;<a href=\"https://dig.watch/updates/meta-to-block-news-access-on-facebook-and-instagram-in-canada\" target=\"_blank\">a similar move by Facebook&rsquo;s owner Meta</a>. The law, known as the Online News Act or Bill C-18, aims to regulate internet giants like Google and Facebook to support the struggling Canadian media industry. The law would mandate deals between the platforms and news businesses, potentially providing the news industry with millions of dollars in revenue.&nbsp;</p>\r\n\r\n<p>However, Google and Facebook argue that the proposed legislation is unsustainable for their businesses and has threatened to limit news availability in Canada. The Canadian government has resisted changing the law and accused the tech companies of employing&nbsp;<a href=\"https://dig.watch/updates/trudeau-accuses-google-and-meta-of-bullying-tactics-against-online-news-legislation\" target=\"_blank\">&lsquo;bullying tactics</a>&lsquo;.</p>\r\n\r\n<p>Google&rsquo;s president of global affairs stated that the law is unworkable, and the company will remove links to Canadian news from its search, news, and discover products in Canada. Additionally, Google will end its News Showcase program in the country.&nbsp;</p>\r\n\r\n<p>Google believes that the law places a financial burden on news story links displayed in search results and can even apply to outlets that do not produce news. The company proposed that payment be based on the display of news content rather than links and eligibility be limited to businesses that adhere to journalistic standards</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Google has joined Meta in its decision to block Canadian news on its platform within Canada, citing concerns over a new law that requires payments to local news publishers.</p>\r\n\r\n<p>Google&nbsp;<a href=\"https://www.reuters.com/technology/google-block-news-links-canada-over-law-paying-publishers-statement-2023-06-29/\" target=\"_blank\">announced its intention to block Canadian news on its platform within Canada in response to a new law requiring payments to local news publishers.&nbsp;</a>This decision follows&nbsp;<a href=\"https://dig.watch/updates/meta-to-block-news-access-on-facebook-and-instagram-in-canada\" target=\"_blank\">a similar move by Facebook&rsquo;s owner Meta</a>. The law, known as the Online News Act or Bill C-18, aims to regulate internet giants like Google and Facebook to support the struggling Canadian media industry. The law would mandate deals between the platforms and news businesses, potentially providing the news industry with millions of dollars in revenue.&nbsp;</p>\r\n\r\n<p>However, Google and Facebook argue that the proposed legislation is unsustainable for their businesses and has threatened to limit news availability in Canada. The Canadian government has resisted changing the law and accused the tech companies of employing&nbsp;<a href=\"https://dig.watch/updates/trudeau-accuses-google-and-meta-of-bullying-tactics-against-online-news-legislation\" target=\"_blank\">&lsquo;bullying tactics</a>&lsquo;.</p>\r\n\r\n<p>Google&rsquo;s president of global affairs stated that the law is unworkable, and the company will remove links to Canadian news from its search, news, and discover products in Canada. Additionally, Google will end its News Showcase program in the country.&nbsp;</p>\r\n\r\n<p>Google believes that the law places a financial burden on news story links displayed in search results and can even apply to outlets that do not produce news. The company proposed that payment be based on the display of news content rather than links and eligibility be limited to businesses that adhere to journalistic standards</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Google has joined Meta in its decision to block Canadian news on its platform within Canada, citing concerns over a new law that requires payments to local news publishers.</p>\r\n\r\n<p>Google&nbsp;<a href=\"https://www.reuters.com/technology/google-block-news-links-canada-over-law-paying-publishers-statement-2023-06-29/\" target=\"_blank\">announced its intention to block Canadian news on its platform within Canada in response to a new law requiring payments to local news publishers.&nbsp;</a>This decision follows&nbsp;<a href=\"https://dig.watch/updates/meta-to-block-news-access-on-facebook-and-instagram-in-canada\" target=\"_blank\">a similar move by Facebook&rsquo;s owner Meta</a>. The law, known as the Online News Act or Bill C-18, aims to regulate internet giants like Google and Facebook to support the struggling Canadian media industry. The law would mandate deals between the platforms and news businesses, potentially providing the news industry with millions of dollars in revenue.&nbsp;</p>\r\n\r\n<p>However, Google and Facebook argue that the proposed legislation is unsustainable for their businesses and has threatened to limit news availability in Canada. The Canadian government has resisted changing the law and accused the tech companies of employing&nbsp;<a href=\"https://dig.watch/updates/trudeau-accuses-google-and-meta-of-bullying-tactics-against-online-news-legislation\" target=\"_blank\">&lsquo;bullying tactics</a>&lsquo;.</p>\r\n\r\n<p>Google&rsquo;s president of global affairs stated that the law is unworkable, and the company will remove links to Canadian news from its search, news, and discover products in Canada. Additionally, Google will end its News Showcase program in the country.&nbsp;</p>\r\n\r\n<p>Google believes that the law places a financial burden on news story links displayed in search results and can even apply to outlets that do not produce news. The company proposed that payment be based on the display of news content rather than links and eligibility be limited to businesses that adhere to journalistic standards</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Google has joined Meta in its decision to block Canadian news on its platform within Canada, citing concerns over a new law that requires payments to local news publishers.</p>\r\n\r\n<p>Google&nbsp;<a href=\"https://www.reuters.com/technology/google-block-news-links-canada-over-law-paying-publishers-statement-2023-06-29/\" target=\"_blank\">announced its intention to block Canadian news on its platform within Canada in response to a new law requiring payments to local news publishers.&nbsp;</a>This decision follows&nbsp;<a href=\"https://dig.watch/updates/meta-to-block-news-access-on-facebook-and-instagram-in-canada\" target=\"_blank\">a similar move by Facebook&rsquo;s owner Meta</a>. The law, known as the Online News Act or Bill C-18, aims to regulate internet giants like Google and Facebook to support the struggling Canadian media industry. The law would mandate deals between the platforms and news businesses, potentially providing the news industry with millions of dollars in revenue.&nbsp;</p>\r\n\r\n<p>However, Google and Facebook argue that the proposed legislation is unsustainable for their businesses and has threatened to limit news availability in Canada. The Canadian government has resisted changing the law and accused the tech companies of employing&nbsp;<a href=\"https://dig.watch/updates/trudeau-accuses-google-and-meta-of-bullying-tactics-against-online-news-legislation\" target=\"_blank\">&lsquo;bullying tactics</a>&lsquo;.</p>\r\n\r\n<p>Google&rsquo;s president of global affairs stated that the law is unworkable, and the company will remove links to Canadian news from its search, news, and discover products in Canada. Additionally, Google will end its News Showcase program in the country.&nbsp;</p>\r\n\r\n<p>Google believes that the law places a financial burden on news story links displayed in search results and can even apply to outlets that do not produce news. The company proposed that payment be based on the display of news content rather than links and eligibility be limited to businesses that adhere to journalistic standards</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Google has joined Meta in its decision to block Canadian news on its platform within Canada, citing concerns over a new law that requires payments to local news publishers.</p>\r\n\r\n<p>Google&nbsp;<a href=\"https://www.reuters.com/technology/google-block-news-links-canada-over-law-paying-publishers-statement-2023-06-29/\" target=\"_blank\">announced its intention to block Canadian news on its platform within Canada in response to a new law requiring payments to local news publishers.&nbsp;</a>This decision follows&nbsp;<a href=\"https://dig.watch/updates/meta-to-block-news-access-on-facebook-and-instagram-in-canada\" target=\"_blank\">a similar move by Facebook&rsquo;s owner Meta</a>. The law, known as the Online News Act or Bill C-18, aims to regulate internet giants like Google and Facebook to support the struggling Canadian media industry. The law would mandate deals between the platforms and news businesses, potentially providing the news industry with millions of dollars in revenue.&nbsp;</p>\r\n\r\n<p>However, Google and Facebook argue that the proposed legislation is unsustainable for their businesses and has threatened to limit news availability in Canada. The Canadian government has resisted changing the law and accused the tech companies of employing&nbsp;<a href=\"https://dig.watch/updates/trudeau-accuses-google-and-meta-of-bullying-tactics-against-online-news-legislation\" target=\"_blank\">&lsquo;bullying tactics</a>&lsquo;.</p>\r\n\r\n<p>Google&rsquo;s president of global affairs stated that the law is unworkable, and the company will remove links to Canadian news from its search, news, and discover products in Canada. Additionally, Google will end its News Showcase program in the country.&nbsp;</p>\r\n\r\n<p>Google believes that the law places a financial burden on news story links displayed in search results and can even apply to outlets that do not produce news. The company proposed that payment be based on the display of news content rather than links and eligibility be limited to businesses that adhere to journalistic standards</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(45, 13, 4, 3),
(145, 10, 2, 1),
(154, 11, 13, 3),
(173, 10, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `date`) VALUES
(209, 'Golu', 'golukumar1242000@gmail.com', '7701931016', 'I have one query about the towels purchase', '2023-06-24'),
(210, 'Aakash', 'aakashvip27@gmail.com', '78787777778', 'HEllo i want to buy towels for gifting', '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `price` float(65,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT 'Ordered = Pending orders no action,\r\n\r\nDispatched = dispatched,\r\nOn_the_way= on the way order,\r\nDelivered = delivered to customer,\r\nCanceled = cancel order,\r\nRefunded = cancel order amount will be refunded \r\n',
  `cancel_reason` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `product_name`, `product_image`, `price`, `quantity`, `order_id`, `status`, `cancel_reason`) VALUES
(66, 2, 12, 'HEELIUM Bamboo Bath Towel, Super Absorbent & Soft, Antibacterial, 600 GSM, 140 cm x 70 cm, Pack of 2, Grey Teal', 'ab4.jpg, ab3.jpg, ab2.jpg, ab1.jpg, ab.jpg', 1999.00, 1, 'VLBH20230628607501262335', 'Ordered', NULL),
(67, 2, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230628607501262335', 'Ordered', NULL),
(68, 2, 13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', 351.00, 1, 'VLBH20230628607501262335', 'On_the_way', 'asdfghjkl'),
(69, 2, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230628607501262335', 'Canceled', 'I want to cancel my order'),
(70, 2, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 3, 'VLBH20230628587440393001', 'Delivered', NULL),
(71, 9, 12, 'HEELIUM Bamboo Bath Towel, Super Absorbent & Soft, Antibacterial, 600 GSM, 140 cm x 70 cm, Pack of 2, Grey Teal', 'ab4.jpg, ab3.jpg, ab2.jpg, ab1.jpg, ab.jpg', 1999.00, 6, 'VLBH20230628395794040854', 'Ordered', NULL),
(72, 9, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 4, 'VLBH20230628395794040854', 'On_the_way', NULL),
(73, 9, 3, 'Towel', 'wsd.webp', 7450.00, 1, 'VLBH20230628395794040854', 'Ordered', NULL),
(74, 3, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230628126616790515', 'On_the_way', NULL),
(75, 3, 3, 'Towel', 'wsd.webp', 7450.00, 2, 'VLBH20230628126616790515', 'Delivered', NULL),
(76, 3, 13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', 351.00, 1, 'VLBH20230628126616790515', 'Delivered', NULL),
(77, 9, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 3, 'VLBH20230630534004429283', 'Dispatched', NULL),
(78, 13, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 2, 'VLBH20230703650080583468', 'Ordered', NULL),
(79, 13, 12, 'HEELIUM Bamboo Bath Towel, Super Absorbent & Soft, Antibacterial, 600 GSM, 140 cm x 70 cm, Pack of 2, Grey Teal', 'ab4.jpg, ab3.jpg, ab2.jpg, ab1.jpg, ab.jpg', 1999.00, 1, 'VLBH20230703650080583468', 'Ordered', NULL),
(80, 13, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230703654756570916', 'Ordered', NULL),
(81, 13, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230703654756570916', 'Ordered', NULL),
(82, 13, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 1, 'VLBH20230703252180505628', 'Ordered', NULL),
(83, 13, 12, 'HEELIUM Bamboo Bath Towel, Super Absorbent & Soft, Antibacterial, 600 GSM, 140 cm x 70 cm, Pack of 2, Grey Teal', 'ab4.jpg, ab3.jpg, ab2.jpg, ab1.jpg, ab.jpg', 1999.00, 1, 'VLBH20230703252180505628', 'Ordered', NULL),
(84, 13, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 3, 'VLBH20230703106224452492', 'Ordered', NULL),
(85, 9, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230704907388222383', 'Ordered', NULL),
(86, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230704907388222383', 'Ordered', NULL),
(87, 9, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 1, 'VLBH20230704702168340879', 'Ordered', NULL),
(88, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230704702168340879', 'Ordered', NULL),
(89, 9, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 2, 'VLBH20230704702168340879', 'Ordered', NULL),
(90, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 3, 'VLBH20230704134810206586', 'Ordered', NULL),
(91, 9, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230704134810206586', 'Ordered', NULL),
(92, 9, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 1, 'VLBH20230704825576318942', 'Ordered', NULL),
(93, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230704825576318942', 'Ordered', NULL),
(94, 9, 13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', 351.00, 1, 'VLBH20230704384816610999', 'Ordered', NULL),
(95, 9, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 1, 'VLBH20230704866451466770', 'Ordered', NULL),
(96, 9, 6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', 269.00, 1, 'VLBH20230704866451466770', 'Ordered', NULL),
(97, 9, 11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', 498.00, 1, 'VLBH20230704153517755029', 'Ordered', NULL),
(98, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230704153517755029', 'Ordered', NULL),
(99, 9, 13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', 351.00, 1, 'VLBH20230704153517755029', 'Ordered', NULL),
(100, 9, 15, 'Story@Home Cotton Bath and Hand Towel Set 450 GSM (Lime and Navy, Set of 6 Piece)', 'w6.jpg, w5.jpg, w4.jpg, w3.jpg, w2.jpg, w.jpg', 899.00, 1, 'VLBH20230704466464914549', 'Ordered', NULL),
(101, 9, 13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', 351.00, 1, 'VLBH20230704466464914549', 'Ordered', NULL),
(102, 9, 10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', 339.00, 1, 'VLBH20230704466464914549', 'Ordered', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int NOT NULL,
  `payment_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_on` datetime NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `amount`, `payment_status`, `payment_id`, `added_on`, `order_id`) VALUES
(1, 'Aakash', 100, 'pending', '', '2023-07-04 12:41:05', NULL),
(2, 'Aakash', 100, 'pending', '', '2023-07-04 12:42:39', NULL),
(3, 'Aakash', 100, 'pending', '', '2023-07-04 12:43:27', NULL),
(4, 'Aakash', 100, 'pending', '', '2023-07-04 12:47:20', NULL),
(5, 'Aakash', 100, 'complete', 'pay_M9dgMijvgs9Ad8', '2023-07-04 12:47:54', NULL),
(6, 'Golu', 1106, 'pending', '', '2023-07-04 12:58:09', NULL),
(7, 'Golu', 2053, 'pending', '', '2023-07-04 01:00:51', NULL),
(8, 'Golu', 1714, 'pending', '', '2023-07-04 01:02:17', NULL),
(9, 'Golu', 1714, 'pending', '', '2023-07-04 01:04:42', NULL),
(10, 'Golu', 1714, 'pending', '', '2023-07-04 01:08:30', NULL),
(11, 'Golu', 1714, 'pending', '', '2023-07-04 01:42:39', NULL),
(12, 'Golu', 1714, 'pending', '', '2023-07-04 01:43:12', NULL),
(13, 'Golu', 1375, 'complete', 'pay_M9eiELPMqtzNjI', '2023-07-04 01:48:34', NULL),
(14, 'Golu', 1375, 'pending', '', '2023-07-04 02:01:25', NULL),
(15, 'Golu', 1375, 'complete', 'pay_M9evjR0tXoIMK2', '2023-07-04 02:01:59', NULL),
(16, 'Golu', 1286, 'pending', '', '2023-07-04 02:12:52', ''),
(17, 'Golu', 1286, 'complete', 'pay_M9f8S7S1Y0CY8q', '2023-07-04 02:14:11', ''),
(18, 'Golu', 837, 'pending', '', '2023-07-04 02:18:46', NULL),
(19, 'Golu', 837, 'complete', 'pay_M9fEdzQh7zB2Ag', '2023-07-04 02:19:53', 'VLBH20230704825576318942'),
(20, 'Golu', 351, 'pending', '', '2023-07-04 02:24:15', NULL),
(21, 'Golu', 351, 'complete', 'pay_M9fK5cnfYRfDEZ', '2023-07-04 02:25:03', 'VLBH20230704384816610999'),
(22, 'Golu', 767, 'pending', '', '2023-07-04 02:31:47', NULL),
(23, 'Golu', 767, 'complete', 'pay_M9fRdGjDka6us2', '2023-07-04 02:32:13', 'VLBH20230704866451466770'),
(24, 'Golu', 1188, 'pending', '', '2023-07-04 02:35:18', NULL),
(25, 'Golu', 1188, 'complete', 'pay_M9fVLXeEKLPIni', '2023-07-04 02:35:45', 'VLBH20230704153517755029'),
(26, 'Golu', 1589, 'pending', '', '2023-07-04 02:36:23', NULL),
(27, 'Golu', 1589, 'complete', 'pay_M9fWOnWk7U2XRy', '2023-07-04 02:36:42', 'VLBH20230704466464914549');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `description` mediumtext,
  `price` float(65,2) DEFAULT NULL,
  `product_type` enum('latest','normal') DEFAULT NULL,
  `short_description` mediumtext,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_image`, `description`, `price`, `product_type`, `short_description`, `category_id`) VALUES
(3, 'Towel', 'wsd.webp', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.</p>\r\n\r\n<ul>\r\n	<li>Sed ut perspiciatis unde omnis iste natus error sit</li>\r\n	<li>Lorem Ipsum is not simply random text.</li>\r\n	<li>Size And Fit: The specifications for the model are: Height 5 feet 8 inches, bust 34 inches, waist 28 inches. The model is wearing size S.</li>\r\n</ul>\r\n', 7450.00, 'normal', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.</p>\r\n\r\n<ul>\r\n	<li>Sed ut perspiciatis unde omnis iste natus error sit</li>\r\n	<li>Lorem Ipsum is not simply random text.</li>\r\n	<li>Size And Fit: The specifications for the model are: Height 5 feet 8 inches, bust 34 inches, waist 28 inches. The model is wearing size S.</li>\r\n</ul>\r\n', 3),
(6, 'Aksha Creation presents beautiful superline fabric lace work pencil designed dupatta for women pack of 3', 'aksha2.jpg, aksha.jpg', '<ul>\r\n	<li>Care Instructions: Hand Wash Only</li>\r\n	<li>Care Instructions: Hand Wash Only</li>\r\n	<li>Daily Wear Dupatta</li>\r\n	<li>Latest Dupatta</li>\r\n	<li>Casual Dupatta</li>\r\n	<li>Multicolor Dupatta</li>\r\n	<li>Superline Dupatta</li>\r\n	<li>Pattern: Plain / Solid Dupatta For Every day Wearing</li>\r\n</ul>\r\n', 269.00, 'latest', '<ul>\r\n	<li>Care Instructions: Hand Wash Only</li>\r\n	<li>Care Instructions: Hand Wash Only</li>\r\n	<li>Daily Wear Dupatta</li>\r\n	<li>Latest Dupatta</li>\r\n	<li>Casual Dupatta</li>\r\n	<li>Multicolor Dupatta</li>\r\n	<li>Superline Dupatta</li>\r\n	<li>Pattern: Plain / Solid Dupatta For Every day Wearing</li>\r\n</ul>\r\n', 1),
(10, 'Solimo Cotton 4 Piece Hand Towel Set, 380 GSM (Coral Pink, Mint Green)', 'ooo.jpg, iii.jpg, uuu.jpg, ttt.jpg, sss.jpg, rrr.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Coral Pink &amp; Mint Green</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Amazon Brand - Solimo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>60L x 40W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Durability</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Durability,Durable</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Hand towel set for everyday use</li>\r\n	<li>Made using 100% cotton that is soft with cotton terry on top</li>\r\n	<li>380 GSM fabric has specially processed fibres with air pockets for extra bounce and softness</li>\r\n	<li>Combed cotton fibres additionally reduce lint build-up, ensuring durability</li>\r\n	<li>Colour is fade resistant and long lasting</li>\r\n	<li>Absorbs water while giving users a good feel</li>\r\n	<li>Clean hands/ face/ body from water, dust and sweat</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Size:- 60 cm x 40 cm (23.62 in x 15.74 in)</li>\r\n	<li>Package Contents:- Solimo 100% Cotton 4 Piece Hand Towel Set, 380 GSM, Colours: Coral Pink &amp; Mint Green</li>\r\n</ul>\r\n', 339.00, 'latest', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Coral Pink &amp; Mint Green</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Amazon Brand - Solimo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>60L x 40W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Durability</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Durability,Durable</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3),
(11, 'Home Cloud Towel Strip Towel, Colorful,Coral Velvet Women Bath Towel Sets,Soft Fluffy, face Wash | Hair Towel Includes Pink', 'home6.jpg, home5.jpg, home4.jpg, home3.jpg, home2.jpg, home.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>STRIP_PINK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>HomeCloud</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>155L x 72W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Modern</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Super Absorbent, Ultra Compact, Fade Resistant, High Color Fastness, Super Soft</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Item Type: Bath Towel | Color Name: Multi-color| Fabric/ cotton | Material type: Microfiber | Pattern: stirp &amp; ziczac</li>\r\n	<li>Shape: Rectangular | Extra Soft &amp; Super Absorbent Bath Towels For Men&#39;s &amp; Women&#39;s | Long-Lasting Fade Resistance Fabric</li>\r\n	<li>100% Pure Microfiber Fibers of 200 GSM, Zig-zag Pattern Large Size Bath Towels ensures the durability of the Large Size Bath Towels and keeping them fresh &amp; bright for a longer period.</li>\r\n	<li>Highly Absorbent: Absorbs all the moisture and gives a body a soft and delicate touch. Long-lasting as we use high-quality material in our which keeps our towels dimensionally stable and durable.</li>\r\n	<li>Better Care Instructions: Hand wash, Machine wash warm, Do not use bleach, dry low heat, dry in shade, Do not iron, Do not dry clean</li>\r\n</ul>\r\n', 498.00, 'latest', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>STRIP_PINK</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>HomeCloud</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>155L x 72W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Modern</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Super Absorbent, Ultra Compact, Fade Resistant, High Color Fastness, Super Soft</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(12, 'HEELIUM Bamboo Bath Towel, Super Absorbent & Soft, Antibacterial, 600 GSM, 140 cm x 70 cm, Pack of 2, Grey Teal', 'ab4.jpg, ab3.jpg, ab2.jpg, ab1.jpg, ab.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Pack of 2 - Grey,Teal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>HEELIUM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Bamboo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>140L x 70W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Modern</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Classic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Skin Friendly, Odour Free, Quick Dry, Ultra Absorbant, Soft &amp; Smooth</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>QUICK ABSORBENT: Designed to be extra absorbent and fast drying, our silky smooth bamboo towels will be your favourite after a warm bath or shower. In fact, they are known for absorbing up to 3-4 times as much water as regular cotton towels due to its internal hollow fiber structure. Excellent water and sweat absorption.</li>\r\n	<li>ODOUR FREE: Odour control through natural anti-bacterial property of bamboo.</li>\r\n	<li>EXTRA SOFT - Bamboo fiber is known for its softness. Cotton blended with Bamboo, making these towels the ultimate in softness, luxury and warmth. Heelium&rsquo;s towels are 2-3 times softer than cotton towels.</li>\r\n	<li>SKIN PROTECTION: Blending Bamboo and Cotton adds natural antimicrobial qualities; making our towels hygienically superior for sensitive skin and allergies. Because of these properties, they resist fungus, even in humid environments. Hygienically ideal, our towels are skillfully crafted for daily use.</li>\r\n	<li>PERFECT SIZE FOR BOTH: Bath Towel measure 140 x 70 cm. The 600 GSM towels of weight and double ply construction combined with a continuous double lock stitch make them thicker and stronger than other towels. Size of the hand towel very apt for gym sessions, trekking, table tennis, golf and various other sports. The Bath towel can always be carried for a swim or a tennis match quite easily.</li>\r\n</ul>\r\n', 1999.00, 'latest', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Pack of 2 - Grey,Teal</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>HEELIUM</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Bamboo</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>140L x 70W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Modern</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Classic</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Skin Friendly, Odour Free, Quick Dry, Ultra Absorbant, Soft &amp; Smooth</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 1),
(13, 'Wakefit Towels for Bath, Towels for Bath Large Size | 500 GSM | Bath Towel for Men/Women, Bathing Towel, Towels for Bath Women/Men, Terry 100% Cotton 1 Piece (Chilli Pepper Red)', 'wake1.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Chilli Pepper</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Wakefit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>140L x 70W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Chilli Pepper</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Super Soft</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>100% combed cotton</li>\r\n	<li>Fabric Feel:Soft and Plush</li>\r\n	<li>Product Dimensions: Bath Towel 55 inches x 27.5 inches (140 cm x 70cm), Hand towel&nbsp;23.6 inches x 15.7 inches (60 cm x 40 cm), Face towel&nbsp;11.8 inches x 11.8 inches (30 cm x 30 cm)</li>\r\n	<li>Care:Quick machine wash with dark colors separately, dry under shade</li>\r\n	<li>Shipping:Directly from Factory/Warehouse</li>\r\n</ul>\r\n', 351.00, 'normal', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Chilli Peppers</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Wakefit</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Bath Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>140L x 70W Centimeters</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 3),
(14, 'Urbanleaf Super Soft Microfiber Hand Towels, Gym & Workout Towels (4 Pieces, Multi Colors)', 'gpe2.jpg, gpe.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Multicolour</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Urbanleaf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Microfiber</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>60L x 40W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Multi 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Super Soft</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Content : 4 Towels, Size : 40 X 60 CM,</li>\r\n	<li>Fabric: Microfiber, Colors- Multi colors</li>\r\n	<li>These towels are perfect for the gym, basketball, track, yoga, spa, aerobics and kitchen</li>\r\n	<li>WASHING: (separately from other articles) Machine Wash Cold water, Gentle Cycle Only, No Bleach.</li>\r\n</ul>\r\n', 399.00, 'normal', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Multicolour</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Urbanleaf</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Microfiber</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>60L x 40W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Multi 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Super Soft</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<ul>\r\n</ul>\r\n', 1),
(15, 'Story@Home Cotton Bath and Hand Towel Set 450 GSM (Lime and Navy, Set of 6 Piece)', 'w6.jpg, w5.jpg, w4.jpg, w3.jpg, w2.jpg, w.jpg', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Navy Blue and Lime</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Story@Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>31L x 23W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Casual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Blackout, Thermal</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>Set includes: 1 Men bath towels (140 X 70 cms), 1 Women bath towels (120 X 60 cms), 2 hand towels (60 X 40 cms) &amp; 2 face towels (30 X 30 cms)</li>\r\n	<li>450 GSM fabric designed with a classic and simple pique border</li>\r\n	<li>Comfortable, soft, stylish and super absorbent fine cotton is combed and ringspun for ultimate softness.</li>\r\n	<li>Fade-resistant color - Quality cotton will get softer over time.</li>\r\n	<li>Woven with heavyweight fine cotton for softness, absorbency, and durability</li>\r\n</ul>\r\n', 899.00, 'normal', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Colour</td>\r\n			<td>Navy Blue and Lime</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Story@Home</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Towel form type</td>\r\n			<td>Hand Towel</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Age Range (Description)</td>\r\n			<td>Adult</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Material</td>\r\n			<td>Cotton</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>31L x 23W Centimeters</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Number of Items</td>\r\n			<td>6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Style</td>\r\n			<td>Casual</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Pattern</td>\r\n			<td>Solid</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Special Feature</td>\r\n			<td>Blackout, Thermal</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` enum('front_display','normal','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `image`, `type`) VALUES
(1, 'Bath Towel', 'cat2.webp', 'front_display'),
(3, 'Beach towel', 'cat3.webp', 'front_display'),
(4, 'Everyday Life', 'cat4.webp', 'front_display'),
(5, 'Hand Towel', '', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`id`, `name`, `mobile`, `landmark`, `city`, `address`, `pincode`, `user_id`) VALUES
(7, 'Aakash', '7701931016', 'School', 'Delhi', 'A-229 begum vihar ext. begumpur delhi 110086', '110086', 2),
(8, 'VIKAS', '7701931016', 'School', 'Jaipur', 'Mahindra Park, Fountain Chowk, near Rani Bagh, New Delhi, Delhi 110034', '110078', 2),
(9, 'dinesh', '6666666666', 'delhi', 'delhi', 'delhi', '110086', 2),
(12, 'Aakash', '7701931016', 'Delhi', 'Delhi', 'A-229 begum vihar ext begumpur', '110086', 9),
(13, 'Golu kumar singh', '8875748585', 'School', 'Delhi', 'Dwarkas sec 21 near metro station', '110074', 9),
(16, 'Dinesh kumar', '8285031577', 'Gurudwara', 'Delhi', 'D 576 jahangirpuri Delhi', '110083', 3),
(17, 'Rohit', '7887885475', 'Properties', 'Delhi', 'Janakpuri west Delhi', '110087', 13),
(18, 'Vijay', '7875874885', 'Dlehi', 'dlkl', 'sdkl', 'skldf', 13),
(19, 'Vikash', '7744741025', 'Shop', 'Delhi', 'Pitampura mahindra park', '110034', 13),
(20, 'Arvind', '7874101458', 'Dwarka metro', 'Delhi', 'Dwarka sec 4 ', '110085', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `without_md5_pwd` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `email`, `mobile`, `password`, `without_md5_pwd`, `otp`) VALUES
(2, '2023-06-14', 'Arvind', 'developer@jigsaw.edu.in', '7878985555', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '893322'),
(3, '2023-06-15', 'Dinesh', 'dinesh@gmail.com', '7701931016', '83cdcec08fbf90370fcf53bdd56604ff', '1478', NULL),
(4, '2023-06-21', 'arvindrawatdeveloper@gmail.com', 'arvindrawatdeveloper@gmail.com', '08987676545', '81dc9bdb52d04dc20036dbd8313ed055', '1234', '665643'),
(9, '2023-06-23', 'Golu', 'golu@gmail.com', '87874455155', '81dc9bdb52d04dc20036dbd8313ed055', '1234', NULL),
(13, '2023-07-03', 'Rohit', 'rohit@gmail.com', '7788457410', '81dc9bdb52d04dc20036dbd8313ed055', '1234', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`) VALUES
(26, 3, 6),
(36, 2, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_of_orders`
--
ALTER TABLE `address_of_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_of_orders`
--
ALTER TABLE `address_of_orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
