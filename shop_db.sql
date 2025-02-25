-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2022 at 06:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(129, 14, 16, 'lavendor rose', 13, 1, 'lavendor rose.jpg'),
(130, 14, 18, 'red tulipa', 11, 1, 'red tulipa.jpg'),
(131, 14, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(132, 15, 13, 'pink rose', 10, 1, 'pink roses.jpg'),
(133, 15, 15, 'cottage rose', 15, 1, 'cottage rose.jpg'),
(134, 15, 16, 'lavendor rose', 13, 3, 'lavendor rose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(13, 14, 'shaikh anas', 'shaikh@gmail.com', '0987654321', 'hi, how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 14, 'shaikh anas', '0987654321', 'shaikh@gmail.com', 'credit card', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', cottage rose (3) , pink bouquet (1) , yellow queen rose (1) ', 80, '11-Mar-2022', 'pending'),
(18, 14, 'shaikh anas', '1234567899', 'shaikh@gmail.com', 'paypal', 'flat no. 321, jogeshwari, mumbai, india - 654321', ', yellow queen rose (1) , pink rose (2) ', 40, '11-Mar-2022', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image`) VALUES
(13, 'Pink Rose', 'Discover the enchanting allure of pink roses in our exquisite collection. From delicate pastels to vibrant magentas, our handpicked selection offers a spectrum of hues to suit every occasion. Perfect for expressing love, admiration, or appreciation, our pink roses are meticulously chosen for freshness and quality, ensuring they arrive in pristine condition. Let their captivating fragrance and timeless beauty elevate your celebrations or brighten someone\'s day. Shop now and let the elegance of pi', 55, 'pink roses.jpeg'),
(15, 'Bouquet - Cottage Roses', 'Explore the rustic charm and timeless beauty of cottage roses in our carefully curated collection. With hues ranging from delicate pastels to rich, deep tones, our cottage roses embody the essence of countryside romance and natural elegance. Each bloom is handpicked for its freshness and quality, ensuring that your arrangement arrives in perfect condition. Whether adorning a quaint cottage garden or bringing a touch of rustic charm to your home, our cottage roses are sure to evoke feelings of wa', 620, 'cottage rose.jpg'),
(16, 'Bouquet - Lilac Roses', 'Indulge in the captivating allure of lavender roses with our exquisite collection. Radiating elegance and charm, these roses feature enchanting shades of purple, evoking a sense of royalty and sophistication. Each bloom is carefully selected for its freshness and beauty, ensuring a stunning display that will enchant any recipient. Whether celebrating a special occasion or simply adding a touch of luxury to your space, our lavender roses are the perfect choice. Explore our collection now and let ', 700, 'lavendor rose.jpg'),
(17, 'Bunch - Yellow Tulips', 'Embrace the vibrant charm of yellow tulips with our delightful collection. Radiating warmth and cheerfulness, these blooms are sure to brighten any space and uplift spirits. With their sunny yellow petals and graceful stems, yellow tulips symbolize happiness, friendship, and new beginnings. Each tulip is handpicked at the peak of freshness, ensuring a long-lasting and beautiful display. Whether adorning a tabletop centerpiece, a cheerful bouquet, or a sunny garden bed, our yellow tulips are the ', 450, 'yellow tulipa.jpg'),
(18, 'Bunch - Red Tulips', 'Experience the timeless allure of red tulips with our captivating collection. Symbolizing love, passion, and elegance, these blooms make a bold and unforgettable statement. With their rich crimson hues and graceful silhouettes, red tulips evoke a sense of romance and sophistication. Each tulip is carefully selected for its vibrant color and pristine condition, ensuring a stunning display that commands attention. Whether gracing a romantic bouquet, adorning a formal event, or adding a touch of dr', 450, 'red tulipa.jpg'),
(19, 'Bouquet - Pink Roses', 'Embrace the allure of our pink bouquets, crafted to captivate hearts and inspire joy. From soft pastels to vibrant hues, our arrangements offer a spectrum of colors for every preference. Meticulously designed by skilled florists, each bouquet combines premium pink blooms with complementary foliage to create stunning displays exuding timeless charm. Whether celebrating milestones, expressing affection, or brightening someone\'s day, our pink bouquets are perfect. Indulge in delicate beauty and swe', 760, 'pink bouquet.jpg'),
(20, 'Bouquet - White Roses', 'Experience the serene beauty of our white bouquets, meticulously crafted to evoke a sense of timeless elegance. Pristine white blooms symbolize purity and grace, perfect for any occasion. Skilled florists expertly combine a variety of white flowers, from roses to lilies, creating stunning displays radiating sophistication.\r\n\r\nEach bouquet captures purity and tranquility, ideal for weddings, anniversaries, or offering solace. Whether celebrating joyous moments or providing comfort, our white bouq', 790, 'white bouquet.jpg'),
(21, 'Bouquet - Red Roses ', 'Embrace the timeless allure of our romantic red roses bouquet, meticulously crafted to ignite passion and captivate hearts. With rich crimson hues symbolizing love and desire, this arrangement is perfect for expressing profound emotions on any occasion. Our skilled florists expertly arrange premium red roses, creating a stunning display that exudes elegance and sophistication.\r\n\r\nEach bouquet is thoughtfully designed to evoke romance and allure, making it an ideal choice for declarations of love', 620, 'red roses b.jpg'),
(22, 'Bridal Bouquet', 'Discover the sophisticated charm of our Cappuccino Roses Bouquet. With delicate hues reminiscent of creamy cappuccino, these roses offer a unique twist on traditional blooms, perfect for adding luxury to any occasion. Expertly arranged for warmth and sophistication, ideal for intimate gatherings or as a gesture of appreciation. Browse now and elevate your arrangements with Cappuccino Roses.', 730, 'CRB.jpg'),
(23, 'Bouquet - Blue Orchids ', ' Dive into the enchanting world of our Blue Orchids Bouquet. These exotic blooms exude elegance with their mesmerizing blue hues, adding a unique touch to any occasion. Meticulously arranged by our skilled florists, this bouquet is perfect for making a statement at weddings, celebrations, or as a thoughtful gift. Indulge in the beauty of blue orchids and elevate your floral arrangements today.', 480, 'Bouquet of Blue Orchids & White Roses.jpg'),
(24, 'Hair Accessory - Bunch of Red Roses', 'Embrace natural elegance with our Brown Hair Flowers collection. These blooms, with their warm brown hues, offer a unique and earthy charm. Perfect for adding a touch of rustic beauty to any setting, our carefully curated selection of brown hair flowers is ideal for weddings, events, or home decor. Explore the beauty of nature and enhance your floral arrangements with these exquisite blooms today.', 390, 'Screenshot (102).png'),
(25, 'Bunch - English Roses', 'Experience the radiant beauty of our Phoenix Roses. These exquisite blooms, with their vibrant hues and captivating charm, symbolize renewal and transformation. Meticulously cultivated to perfection, our Phoenix Roses are perfect for celebrating new beginnings, milestones, or simply adding a touch of magic to any space. Illuminate your surroundings with the fiery allure of Phoenix Roses and let their timeless elegance inspire your next floral arrangement.', 700, 'Phoenix Roses.jpg'),
(26, 'Bouquet - Yellow Roses ', 'Experience the radiant charm of our Yellow Roses Bouquet, where each bloom embodies the warmth of sunshine and the vibrancy of joy. Handpicked for their brilliant yellow hues, these roses symbolize optimism and happiness, making them perfect for illuminating any occasion. Meticulously arranged by our skilled florists, this bouquet is a beautiful expression of appreciation, friendship, or simply spreading cheer. Bring a ray of sunshine into your world with our Yellow Roses Bouquet today.', 650, 'Yellow Roses Bouquet.jpg'),
(27, 'Brooch - Rose', 'Delve into the realm of ethereal beauty with our Shola Rose collection. These delicate blooms, crafted from the soft and pliable material of shola, exude an enchanting charm that is both timeless and unique. Perfect for adding a touch of elegance to weddings, special events, or home decor, Shola Roses offer a delicate yet captivating presence. Explore the graceful allure of Shola Roses and elevate your floral arrangements with their exquisite beauty today.', 540, 'Screenshot (103).png'),
(28, 'Bouquet - 150 Red Roses', 'Immerse yourself in the breathtaking grandeur of our 150 Roses collection. Each stem, meticulously selected for its pristine beauty and freshness, contributes to a stunning display of opulence and abundance. Whether you\'re planning an extravagant event, creating an impressive centerpiece, or simply indulging in luxury, our collection of 150 Roses offers unparalleled elegance and sophistication. Elevate your floral arrangements to new heights with this lavish abundance of roses, and make a statem', 600, '150 Roses.jpg'),
(29, 'Bouquet - 101 Red Tulips', 'Behold the mesmerizing beauty of our 101 Red Tulips bouquet, a symphony of passion and romance. Each tulip, with its vibrant crimson hue, dances in harmony to create a breathtaking spectacle of love and desire. Meticulously arranged by our skilled florists, this abundant bouquet is a testament to elegance and grandeur, perfect for expressing deep sentiments or adding a touch of luxury to any occasion. Immerse yourself in the timeless allure of 101 Red Tulips and let their enchanting beauty ignit', 530, '101 Red Tulips.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'admin A', 'admin01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'admin'),
(14, 'user A', 'user01@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user'),
(15, 'user B', 'user02@gmail.com', '698d51a19d8a121ce581499d7b701668', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(60, 14, 19, 'pink bouquet', 15, 'pink bouquet.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
