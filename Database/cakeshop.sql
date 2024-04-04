-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 04, 2024 at 09:12 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cartID` bigint NOT NULL AUTO_INCREMENT,
  `userID` bigint NOT NULL,
  PRIMARY KEY (`cartID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `userID`) VALUES
(9, 4),
(11, 5),
(10, 7),
(12, 8);

-- --------------------------------------------------------

--
-- Table structure for table `cartitem`
--

DROP TABLE IF EXISTS `cartitem`;
CREATE TABLE IF NOT EXISTS `cartitem` (
  `cartItemID` bigint NOT NULL AUTO_INCREMENT,
  `productID` bigint NOT NULL,
  `cartID` bigint NOT NULL,
  `price` float NOT NULL,
  `quantity` smallint NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`cartItemID`),
  KEY `1_Cart_Zero-Or-More_CartItems` (`cartID`),
  KEY `1_Product_Many_CartItems` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cartitem`
--

INSERT INTO `cartitem` (`cartItemID`, `productID`, `cartID`, `price`, `quantity`, `createDate`) VALUES
(17, 2, 9, 25, 1, '2020-12-27 13:59:46'),
(18, 3, 9, 15, 3, '2020-12-27 14:18:52'),
(19, 5, 9, 60, 3, '2020-12-27 14:18:56'),
(20, 1, 10, 25, 1, '2024-04-03 15:50:35'),
(21, 1, 10, 25, 1, '2024-04-03 16:05:30'),
(22, 2, 10, 25, 1, '2024-04-03 16:23:17'),
(23, 7, 10, 350, 1, '2024-04-04 06:55:04'),
(24, 3, 10, 15, 1, '2024-04-04 07:01:14'),
(25, 3, 11, 15, 1, '2024-04-04 09:00:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` bigint NOT NULL AUTO_INCREMENT,
  `p_cat_name` varchar(30) NOT NULL,
  `p_cat_desc` text NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `p_cat_name`, `p_cat_desc`) VALUES
(1, 'cake', 'cakes with layer(s), frosting and top coat'),
(2, 'cupcake', 'small cake baked in cupcake or muffin cups'),
(3, 'cakepop', 'cake shaped as lollipops'),
(4, 'cookie', 'baked circular or differently shaped biscuits'),
(5, 'macaron', 'sandwiched cookies and cream'),
(6, 'brownie', 'chocolate fudge cakes'),
(7, 'pastry', 'cakes that don\'t fall in any other categories'),
(12, 'test sp moi', '');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE IF NOT EXISTS `orderitem` (
  `orderItemID` bigint NOT NULL AUTO_INCREMENT,
  `productID` bigint NOT NULL,
  `orderID` bigint NOT NULL,
  `price` float NOT NULL,
  `quantity` smallint NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderItemID`),
  KEY `1_Order_Many_OrderItems` (`orderID`),
  KEY `1_Product_Many_OrderItems` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`orderItemID`, `productID`, `orderID`, `price`, `quantity`, `createDate`) VALUES
(14, 1, 12, 25, 1, '2020-12-27 02:36:14'),
(15, 3, 12, 15, 2, '2020-12-27 02:36:14'),
(16, 2, 12, 25, 2, '2020-12-27 13:49:55'),
(17, 2, 12, 25, 4, '2020-12-27 13:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `productID` bigint NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_desc` text NOT NULL,
  `p_img` text NOT NULL,
  `p_price` float NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `p_name`, `p_desc`, `p_img`, `p_price`) VALUES
(1, 'Vanilla Cupcake', 'vanilla cupcake with vanilla frosting', 'Assets\\images\\products\\cupcake_pic.png', 25),
(2, 'Red Velvet Cupcake', 'red velvet cupcake with cream cheese frosting', 'Assets\\images\\products\\red_velvet_cupcake_pic.png', 25),
(3, 'Choc chip cookie', 'cookie with chocolate chips', 'Assets\\images\\products\\cookies_pic.png', 15),
(4, 'Croissant', 'light and airy pastry', 'Assets\\images\\products\\croissants_pic.jpg', 20),
(5, 'Donut', 'sweet fried rind dough with colourful frosting', 'Assets\\images\\products\\donut_on_plate_pic.jpg', 60),
(6, 'Macaron_box_20', 'box of 20 macarons of different flavours', 'Assets\\images\\products\\macaron_box_pic.jpg', 650),
(7, 'Birthday cupcakes', 'Cupcakes specially designed for birthdays', 'Assets\\images\\products\\Cake_1.jpg', 350),
(8, 'Fruity Cheesecake', 'A cool, exotic cheesecake, perfect for hot days! With its Graham biscuit base and smooth texture, this cheesecake offers a plethora of textures at once!', 'Assets\\images\\products\\Cake_2.jpg', 400),
(9, 'Chocolate Mousse', 'The best chocolate mousse that feels like eating clouds! It has a fudgy chocolate base and a very delicate chocolate mousse as its body with a tasty strawberry on the top. All with 70% cacao.', 'Assets\\images\\products\\Cake_3.jpg', 400),
(10, 'Chocolate Cake pops', 'Lollipops but as a cake coated with a cracking chocolate!', 'Assets\\images\\products\\Cake_4.jpg', 350),
(11, 'Expresso Cupcake', 'Expresso cupcake with a chocolate base and a hint of coffee! It\'s accompanied with a very creamy frosting with a coffee flavor.', 'Assets\\images\\products\\Cake_5.jpg', 30),
(12, 'Rainbow Cupcake', 'Vanilla flavoured cupcake with a confetti bomb at its heart! The topping is a meringue based frosting.', 'Assets\\images\\products\\cupcake_bg.jpg', 40),
(13, 'Cinnamon brownie', 'Squared chocolaty and fudgy brownie, flavored faintly with cinnamon!', 'Assets\\images\\products\\Brownie\\Brownie_1.png', 20),
(14, 'choc-chip brownie', 'Amazingly mouth melting brownie with a fudgy consistency. It contains melted chocolate in every bite !', 'Assets\\images\\products\\Brownie\\Brownie_2.png', 20),
(15, 'choc-mint brownie', 'This brownie is refreshing and very delicious, with a hint of mint and a swirl of chocolate.', 'Assets\\images\\products\\Brownie\\Brownie_3.png', 20),
(16, 'Pecan brownie', 'This brownie contains pecan nuts and offers a wider range of textures. A pure chef-d\'oeuvre!', 'Assets\\images\\products\\Brownie\\Brownie_4.png', 29),
(17, 'Raspberry  brownie', 'Delicate raspberry brownie that brings the perfect balance between fruitiness and chocolate ! Raspberry is one of the best fruits that compliments the cacao flavor.', 'Assets\\images\\products\\Brownie\\Brownie_5.png', 29),
(18, 'Walnut brownie', 'This brownie contains roasted walnuts that accentuates the cacao in the brownie. The nutty flavor and particular texture of the roasted walnut compliments the delicateness and fudgy texture of the original brownie.', 'Assets\\images\\products\\Brownie\\Brownie_6.png', 29),
(19, 'White-choc brownie', 'White chocolate provides for the adequate moisture that makes up the perfect brownie!', 'Assets\\images\\products\\Brownie\\Brownie_7.png', 29),
(20, 'Choc-chip blondie', 'Blondie is another word for a longer brownie but not necessarily dominated by chocolate! This choc chip blondie offers the warmth and purity of vanilla and the fudgy texture of the chocolate chips.', 'Assets\\images\\products\\Brownie\\Brownie_8.png', 40),
(21, 'Raspberry swirl blondie', 'A fruity flavor that perfectly fits the moistness of a good blondie.', 'Assets\\images\\products\\Brownie\\Brownie_9.png', 40),
(22, 'Lemon blondie', 'Lemon flavored blondie provides for the perfect balance between the sourness of the lemon and the sweetness of the blondie.', 'Assets\\images\\products\\Brownie\\Brownie_10.png', 40),
(23, 'Christmas box x 24', 'Brownie box with 4 pieces of 6 unique flavors:<br><br>\r\n1. Walnut Brownie,<br>\r\n2. Cream cheese Brownie,<br>\r\n3. Original Brownie,<br>\r\n4. Choc-chip Brownie,<br>\r\n5. Raspberry swirl Brownie,<br>\r\n6. Double choc Brownie.<br>', 'Assets\\images\\products\\Brownie\\Brownie_11.png', 700),
(24, 'Christmas brownie bars x 8', 'The box contains 8 brownie bars, topped with white chocolate with a hint of candy cane. A limited edition by MALAKO!', 'Assets\\images\\products\\Brownie\\Brownie_12.png', 320),
(37, 'Rainbow cake', 'Beautiful multi flavored cake with interior and exterior rainbow colors! 4 layers of different cakes in 1!', 'Assets\\images\\products\\Cakes\\Cake_1.png', 650),
(38, 'Elegant floral wedding cake', 'Multi layered wedding cake decorated with fondant and sugar flowers. It\'s layers and sandwiched with several frostings: <br>\r\n\r\n> White chocolate ganache<br>\r\n> Vanilla frosting <br>\r\n> Chocolate and raspberry frosting<br>\r\n\r\n', 'Assets\\images\\products\\Cakes\\Cake_2.png', 2200),
(39, 'Minimal elegant floral cake', 'Multi-layered cake with a minimalistic design for a modern look. The floral design gives an elegant touch to it. It\'s flavor is vanilla with chocolate frosting.', 'Assets\\images\\products\\Cakes\\Cake_3.png', 1800),
(40, 'Golden drip floral cake', 'Long multi-layered cake with golden white chocolate drips. One of our trendiest and candid looking cake ! It\'s delicious with a combination of our best compatible flavors.', 'Assets\\images\\products\\Cakes\\Cake_4.png', 1500),
(41, 'Fruity cake with chocolate', 'Simple chocolate cake with vanilla buttercream and refreshing red berries: cherries and strawberries.', 'Assets\\images\\products\\Cakes\\Cake_5.png', 350),
(42, 'Fruity cake with alomonds', 'Vanilla and almond flavored cake with simple buttercream frosting and fresh fruits.', 'Assets\\images\\products\\Cakes\\Cake_6.png', 350),
(43, 'White floral fondant cake', 'Red velvet cake covered with fondant and sugar flowers for a vintage look.', 'Assets\\images\\products\\Cakes\\Cake_7.png', 1000),
(44, 'Choc-drip coffee cake', 'Amazing coffee cake with coffee beans flavored buttercream and a dripping chocolate ganache.', 'Assets\\images\\products\\Cakes\\Cake_8.png', 1000),
(45, 'Original vanilla cookie', 'Plain vanilla cookie', 'Assets\\images\\products\\Cookie\\Cookie_1.png', 15),
(46, 'M&M cookie', 'Soft cookie with M&Ms .', 'Assets\\images\\products\\Cookie\\Cookie_4.png', 15),
(47, 'Choc-chunks cookie', 'Cookie filled with chocolate chips', 'Assets\\images\\products\\Cookie\\Cookie_5.png', 15),
(48, 'M&M and Choc-chip cookie', 'Cookie with M&M and Chocolate chips.', 'Assets\\images\\products\\Cookie\\Cookie_6.png', 15),
(49, 'Chocolate sandwich cookie', '2 chocolate cookies filled with whipped cream too satisfy any sugar cravings!', 'Assets\\images\\products\\Cookie\\Cookie_7.png', 30),
(50, 'Choc-chip and M&M sandwich cookie', 'M&M and Choc-chip cookies with whipped cream', 'Assets\\images\\products\\Cookie\\Cookie_8.png', 30),
(51, 'Oats cookies', 'Cookies with oats for a healthier option.', 'Assets\\images\\products\\Cookie\\Cookie_9.png', 15),
(52, 'Dark-choc and mint cookie', 'Dark chocolate cookie with a hint of mint', 'Assets\\images\\products\\Cookie\\Cookie_10.png', 15);

-- --------------------------------------------------------

--
-- Table structure for table `products_test`
--

DROP TABLE IF EXISTS `products_test`;
CREATE TABLE IF NOT EXISTS `products_test` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_desc` text NOT NULL,
  `p_cat_id` int NOT NULL,
  `p_type_id` int NOT NULL,
  `p_img` text NOT NULL,
  `p_price` float NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_test`
--

INSERT INTO `products_test` (`p_id`, `p_name`, `p_desc`, `p_cat_id`, `p_type_id`, `p_img`, `p_price`) VALUES
(1, 'Vanilla Cupcake', 'vanilla cupcake with vanilla frosting', 2, 2, 'Assets\\images\\products\\cupcake_pic.png', 25),
(2, 'Red Velvet Cupcake', 'red velvet cupcake with cream cheese frosting', 2, 2, 'Assets\\images\\products\\red_velvet_cupcake_pic.png', 25),
(3, 'Choc chip cookie', 'cookie with chocolate chips ', 4, 2, 'Assets\\images\\products\\cookies_pic.png', 15),
(4, 'Croissant', 'light and airy pastry', 7, 2, 'Assets\\images\\products\\croissants_pic.jpg', 20),
(5, 'Donut', 'sweet fried rind dough with colourful frosting', 7, 2, 'Assets\\images\\products\\donut_on_plate_pic.jpg', 60),
(6, 'Macaron box x 20 pieces', 'box of 20 macarons of different flavours', 5, 2, 'Assets\\images\\products\\macaron_box_pic.jpg', 650),
(7, 'Birthday cupcakes', 'Cupcakes specially designed for birthdays', 2, 1, 'Assets\\images\\products\\Cake_1.jpg', 350),
(8, 'Fruity Cheesecake', 'A cool, exotic cheesecake, perfect for hot days! With its Graham biscuit base and smooth texture, this cheesecake offers a plethora of textures at once! ', 7, 1, 'Assets\\images\\products\\Cake_2.jpg', 400),
(9, 'Chocolate Mousse', 'The best chocolate mousse that feels like eating clouds! It has a fudgy chocolate base and a very delicate chocolate mousse as its body with a tasty strawberry on the top. All with 70% cacao.', 7, 1, 'Assets\\images\\products\\Cake_3.jpg', 400),
(10, 'Chocolate Cake pops', 'Lollipops but as a cake coated with a cracking chocolate!', 3, 1, 'Assets\\images\\products\\Cake_4.jpg', 350),
(11, 'Expresso Cupcake', 'Expresso cupcake with a chocolate base and a hint of coffee! It\'s accompanied with a very creamy frosting with a coffee flavor.', 2, 1, 'Assets\\images\\products\\Cake_5.jpg', 30),
(12, 'Rainbow Cupcake', 'Vanilla flavoured cupcake with a confetti bomb at its heart! The topping is a meringue based frosting. ', 2, 1, 'Assets\\images\\products\\cupcake_bg.jpg', 40),
(13, 'Cinnamon brownie', 'Squared chocolaty and fudgy brownie, flavored faintly with cinnamon!', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_1.png', 20),
(14, 'choc-chip brownie', 'Amazingly mouth melting brownie with a fudgy consistency. It contains melted chocolate in every bite !', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_2.png', 20),
(15, 'choc-mint brownie', 'This brownie is refreshing and very delicious, with a hint of mint and a swirl of chocolate.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_3.png', 20),
(16, 'Pecan brownie', 'This brownie contains pecan nuts and offers a wider range of textures. A pure chef-d\'oeuvre!', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_4.png', 29),
(17, 'Raspberry  brownie', 'Delicate raspberry brownie that brings the perfect balance between fruitiness and chocolate ! Raspberry is one of the best fruits that compliments the cacao flavor.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_5.png', 29),
(18, 'Walnut brownie', 'This brownie contains roasted walnuts that accentuates the cacao in the brownie. The nutty flavor and particular texture of the roasted walnut compliments the delicateness and fudgy texture of the original brownie.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_6.png', 29),
(19, 'White-choc brownie', 'White chocolate provides for the adequate moisture that makes up the perfect brownie!', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_7.png', 29),
(20, 'Choc-chip blondie', 'Blondie is another word for a longer brownie but not necessarily dominated by chocolate! This choc chip blondie offers the warmth and purity of vanilla and the fudgy texture of the chocolate chips.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_8.png', 40),
(21, 'Raspberry swirl blondie', 'A fruity flavor that perfectly fits the moistness of a good blondie.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_9.png', 40),
(22, 'Lemon blondie', 'Lemon flavored blondie provides for the perfect balance between the sourness of the lemon and the sweetness of the blondie.', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_10.png', 40),
(23, 'Christmas box x 24', 'Brownie box with 4 pieces of 6 unique flavors:<br><br>\r\n1. Walnut Brownie,<br>\r\n2. Cream cheese Brownie,<br>\r\n3. Original Brownie,<br>\r\n4. Choc-chip Brownie,<br>\r\n5. Raspberry swirl Brownie,<br>\r\n6. Double choc Brownie.<br>', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_11.png', 700),
(24, 'Christmas brownie bars x 8', 'The box contains 8 brownie bars, topped with white chocolate with a hint of candy cane. A limited edition by MALAKO!', 6, 2, 'Assets\\images\\products\\Brownie\\Brownie_12.png', 320),
(37, 'Rainbow cake', 'Beautiful multi flavored cake with interior and exterior rainbow colors! 4 layers of different cakes in 1!', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_1.png', 650),
(38, 'Elegant floral wedding cake', 'Multi layered wedding cake decorated with fondant and sugar flowers. It\'s layers and sandwiched with several frostings: <br>\r\n\r\n> White chocolate ganache<br>\r\n> Vanilla frosting <br>\r\n> Chocolate and raspberry frosting<br>\r\n\r\n', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_2.png', 2200),
(39, 'Minimal elegant floral cake', 'Multi-layered cake with a minimalistic design for a modern look. The floral design gives an elegant touch to it. It\'s flavor is vanilla with chocolate frosting.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_3.png', 1800),
(40, 'Golden drip floral cake', 'Long multi-layered cake with golden white chocolate drips. One of our trendiest and candid looking cake ! It\'s delicious with a combination of our best compatible flavors.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_4.png', 1500),
(41, 'Fruity cake with chocolate', 'Simple chocolate cake with vanilla buttercream and refreshing red berries: cherries and strawberries.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_5.png', 350),
(42, 'Fruity cake with alomonds', 'Vanilla and almond flavored cake with simple buttercream frosting and fresh fruits.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_6.png', 350),
(43, 'White floral fondant cake', 'Red velvet cake covered with fondant and sugar flowers for a vintage look.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_7.png', 1000),
(44, 'Choc-drip coffee cake', 'Amazing coffee cake with coffee beans flavored buttercream and a dripping chocolate ganache.', 1, 2, 'Assets\\images\\products\\Cakes\\Cake_8.png', 1000),
(45, 'Original vanilla cookie', 'Plain vanilla cookie', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_1.png', 15),
(46, 'M&M cookie', 'Soft cookie with M&Ms .', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_4.png', 15),
(47, 'Choc-chunks cookie', 'Cookie filled with chocolate chips', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_5.png', 15),
(48, 'M&M and Choc-chip cookie', 'Cookie with M&M and Chocolate chips.', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_6.png', 15),
(49, 'Chocolate sandwich cookie', '2 chocolate cookies filled with whipped cream too satisfy any sugar cravings!', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_7.png', 30),
(50, 'Choc-chip and M&M sandwich cookie', 'M&M and Choc-chip cookies with whipped cream', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_8.png', 30),
(51, 'Oats cookies', 'Cookies with oats for a healthier option.', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_9.png', 15),
(52, 'Dark-choc and mint cookie', 'Dark chocolate cookie with a hint of mint', 4, 2, 'Assets\\images\\products\\Cookie\\Cookie_10.png', 15),
(53, '2222', '222', 0, 0, './uploads/download.png', 222);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `productID` bigint NOT NULL,
  `categoryID` bigint NOT NULL,
  KEY `1_Product_Many_Categories` (`productID`),
  KEY `1_Category_Many_Products` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`productID`, `categoryID`) VALUES
(1, 2),
(2, 2),
(3, 4),
(4, 7),
(5, 7),
(6, 5),
(7, 2),
(8, 7),
(9, 7),
(10, 3),
(11, 2),
(12, 2),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `productID` bigint NOT NULL,
  `typeID` bigint NOT NULL,
  KEY `1_Product_Many_Types` (`productID`),
  KEY `1_Type_Many_Products` (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`productID`, `typeID`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `tranID` bigint NOT NULL AUTO_INCREMENT,
  `userID` bigint NOT NULL,
  `orderID` bigint NOT NULL,
  `paymentMethod` text NOT NULL,
  `status` text NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tranID`),
  KEY `1_Order_Many_Transactions` (`orderID`),
  KEY `1_User_Many_Transactions` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`tranID`, `userID`, `orderID`, `paymentMethod`, `status`, `createDate`) VALUES
(12, 4, 12, 'creditCard', 'successful', '2020-12-27 02:36:14'),
(13, 4, 12, 'JuiceByMCB', 'successful', '2020-12-27 13:49:55'),
(14, 4, 12, 'creditCard', 'successful', '2020-12-27 13:58:44');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `typeID` bigint NOT NULL AUTO_INCREMENT,
  `p_type_name` varchar(30) NOT NULL,
  `p_type_desc` text NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`typeID`, `p_type_name`, `p_type_desc`) VALUES
(1, 'new', 'new products are tagged as new'),
(2, 'featured', 'products which have to get attention are tagged as featured'),
(3, 'hot', 'products on sale are tagged as hot'),
(4, 'best', 'best- seller products are tagged as best');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userID` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `uname`, `pass`, `fname`, `lname`, `email`, `address`, `description`, `isAdmin`, `createDate`) VALUES
(1, 'oprah123', '$2y$10$pu.rx7.mCBuy.L/1WjJbiufyUm43iUHjqp9wVLcxqzH0H.qqqOrVm', 'Oprah', 'Windsor', 'vinoveg106@chatdays.com', 'New York', '', 1, '2020-12-25 17:59:23'),
(2, 'siri123', '$2y$10$F4agSnQaMewBbKKcoavmn.vmn4Utci5WM1KtFjQ7b/nSQm4lCbVkm', 'Siri', 'Windsor', 'tadoso1652@aranelab.com', '', '', 0, '2020-12-25 14:03:48'),
(3, 'sanjana2020', '$2y$10$YG6ch/.jzZ9.TGR1D6RVY.FMPHCGX52Bhy6BDYD.4HY4SZ6isovaS', 'sanjana', 'lolo', 'sanjana.ramchurun@umail.uom.ac.mu', '', '', 0, '2020-12-26 18:16:08'),
(4, 'sanjana2021', '$2y$10$zwnOI5uDLMjFTPh9TuNBf.edR00sOnkp04SRHgkboTUyBDsIPYbZe', 'lala', 'lolo', 'katy61100@outlook.com', 'flic en flac', 'lin bon', 0, '2020-12-26 18:19:45'),
(5, 'test01', '$2y$10$R38QFqiUnYJVDaSpXy9fluTEF7RQR5KQWFytyPem5tvxg9hC.632O', 'Tran', 'Thang', 'im.ggnaht@gmail.com', '', '', 0, '2024-04-03 15:46:55'),
(6, 'test02', '$2y$10$M7aFndnjNHae.J2o6HTOq.dxT62kBEwo7b2RtWqcGxNcMrrM4YlHq', 'aaaassss', 'Thang', 'thang2222t@gmail.com', '', '', 0, '2024-04-03 15:49:12'),
(7, 'test03', '$2y$10$ptZiSA6X/W87.6AXQbhiFO4QzyyPubzC4oQC0tUD3s77EZ9Xamw32', 'Tran', 'Thang', 'im.ggwwwnaht@gmail.com', '', '', 1, '2024-04-03 16:03:28'),
(8, 'noneadmin', '$2y$10$FuR8WeSSTt1YI8TKV1De0.0v730qR5uNlSL2w41q5PLaXsiW6K1iG', 'Thang', 'Tran', 'im.ggnahtt@gmail.com', '', '', 0, '2024-04-04 07:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `userorder`
--

DROP TABLE IF EXISTS `userorder`;
CREATE TABLE IF NOT EXISTS `userorder` (
  `orderID` bigint NOT NULL AUTO_INCREMENT,
  `userID` bigint NOT NULL,
  `total` float NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(8) NOT NULL,
  `status` text NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderID`),
  KEY `1_User_Many_Orders` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userorder`
--

INSERT INTO `userorder` (`orderID`, `userID`, `total`, `address`, `phone`, `status`, `createDate`) VALUES
(12, 4, 55, 'flic en flac', '55555555', 'successful', '2020-12-27 02:36:14'),
(13, 4, 50, '22, Morc Anna', '55555555', 'successful', '2020-12-27 13:49:55'),
(14, 4, 100, '22, Morc Anna', '55555555', 'successful', '2020-12-27 13:58:44');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cartitem`
--
ALTER TABLE `cartitem`
  ADD CONSTRAINT `1_Cart_Zero-Or-More_CartItems` FOREIGN KEY (`cartID`) REFERENCES `cart` (`cartID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1_Product_Many_CartItems` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `1_Order_Many_OrderItems` FOREIGN KEY (`orderID`) REFERENCES `userorder` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1_Product_Many_OrderItems` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `1_Category_Many_Products` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1_Product_Many_Categories` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_type`
--
ALTER TABLE `product_type`
  ADD CONSTRAINT `1_Product_Many_Types` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1_Type_Many_Products` FOREIGN KEY (`typeID`) REFERENCES `types` (`typeID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `1_Order_Many_Transactions` FOREIGN KEY (`orderID`) REFERENCES `userorder` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `1_User_Many_Transactions` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userorder`
--
ALTER TABLE `userorder`
  ADD CONSTRAINT `1_User_Many_Orders` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
