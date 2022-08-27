-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 27, 2022 lúc 01:40 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecomm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 9, 1, 4),
(3, 9, 4, 6),
(4, 9, 12, 2),
(9, 13, 9, 1),
(10, 13, 10, 1),
(11, 13, 11, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Laptops', 'laptops'),
(2, 'Phone Case', 'desktop-pc'),
(3, 'Tablets', 'tablets');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'DELL Inspiron 15 7000 15.6', '<p>15-inch laptop ideal for gamers. Featuring the latest Intel&reg; processors for superior gaming performance, and life-like NVIDIA&reg; GeForce&reg; graphics and an advanced thermal cooling design.</p>\r\n', 'dell-inspiron-15-7000-15-6', 899, 'dell-inspiron-15-7000-15-6.jpg', '2022-08-25', 1),
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(3, 1, 'DELL Inspiron 15 5000 15.6', '<p>Dell&#39;s 15.6-inch, midrange notebook is a bland, chunky block. It has long been the case that the Inspiron lineup lacks any sort of aesthetic muse, and the Inspiron 15 5000 follows this trend. It&#39;s a plastic, silver slab bearing Dell&#39;s logo in a mirror sheen.</p>\r\n\r\n<p>Lifting the lid reveals the 15.6-inch, 1080p screen surrounded by an almost offensively thick bezel and a plastic deck with a faux brushed-metal look. There&#39;s a fingerprint reader on the power button, and the keyboard is a black collection of island-style keys.</p>\r\n', 'dell-inspiron-15-5000-15-6', 599, 'dell-inspiron-15-5000-15-6.jpg', '2018-05-12', 1),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2022-08-24', 2),
(6, 1, 'DELL Inspiron 15 5000 15', '<p>15-inch laptop delivering an exceptional viewing experience, a head-turning finish and an array of options designed to elevate your entertainment, wherever you go.</p>\r\n', 'dell-inspiron-15-5000-15', 449.99, 'dell-inspiron-15-5000-15.jpg', '0000-00-00', 0),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '0000-00-00', 0),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'Moment Case for iPhone 13', '<p>Our best-selling, every day case for iPhone 13. With a thin but rugged body and soft-to-the-touch texture, this case looks good, feels good, and protects your phone from up to 6-foot drops. Made from grippy material, this case includes our proprietary (M)Force magnet array for an even better MagSafe experience. Compatible with our&nbsp;<a href=\"https://www.shopmoment.com/daily-essentials/phone-mounts\" target=\"_blank\">Moment Mounts for MagSafe</a>&nbsp;you can mount your phone just about anywhere - the wall, car vent, even a tripod. Beyond magnets, this case has a wrist strap connection on the bottom so you never drop your device.</p>\r\n', 'moment-case-iphone-13', 599.99, 'moment-case-iphone-13_1661428899.jpg', '2022-08-26', 3),
(10, 2, 'Moment Cases for iPhone 12', '<p>Our less is more case. A super-thin body and soft-to-the-touch texture bring the best features to our first line of cases made using partially biodegradable materials. It&#39;s NEW M-Series lens interface is improved with three locating points to prevent the mount from rotating in the case when you attach a lens. Plus a refined lens fit, so it&#39;s easier to install a lens with less effort.</p>\r\n\r\n<p>The body is compostable after the polycarbonate parts are removed, and can be tossed in your compost bin when you&rsquo;re ready to upgrade your phone. With all that goodness, the best part is, it still protects your phone from daily drops and &ldquo;oh $%&amp;^ moments&rdquo;. If you love shooting on your phone and want a product made with less petroleum-based plastics, this case is for you.</p>\r\n\r\n<p>Be sure our comparison piece between the&nbsp;<a href=\"https://www.shopmoment.com/reviews/iphone-13-pro-vs-iphone-12-pro-camera-shootout\" target=\"_blank\">iPhone 13 Pro vs. iPhone 12 Pro camera</a>&nbsp;if you haven&#39;t already!</p>\r\n', 'moment-cases-iphone-12', 599.99, 'moment-cases-iphone-12_1661429099.jpg', '2022-08-26', 1),
(11, 2, 'Moment Rugged Case for iPhone X / XS / XS Max / XR', '<p>Our extra protective, everyday case. The rugged, dual compound construction provides peace of mind when your gear hits the ground, while the bottom is fully enclosed for additional protection. Available in black canvas or walnut wood, the inside includes a microsuede lining that keeps your phone scratch free. On the bottom you can add extra style and protection with a cord based wrist strap. Over the phone&rsquo;s lenses includes our M-Series lens interface to add a Moment lens anytime.</p>\r\n\r\n<p>If you want the most protective case we make, this is for you.</p>\r\n\r\n<p><em>Note: The d</em><em>isplayed images are illustrations, the actual items may differ slightly.</em></p>\r\n', 'moment-rugged-case-iphone-x-xs-xs-max-xr', 489.98, 'moment-rugged-case-iphone-x-xs-xs-max-xr_1661429294.jpg', '2022-08-26', 1),
(12, 2, 'Moment Rugged Case for iPhone 12', '<p>Our extra protective, everyday case. The rugged, dual compound construction provides peace of mind when your gear hits the ground, while the bottom is fully enclosed for additional protection. Available in black canvas or walnut wood, the inside includes a microsuede lining that keeps your phone scratch-free. On the bottom, you can add extra style and protection with a cord-based wrist strap. Over the phone&rsquo;s lenses includes our M-Series lens interface to add a Moment lens anytime.</p>\r\n\r\n<p>If you want the most protective case we make, this is for you.<br />\r\n<br />\r\n<em><em>Note: The d</em><em>isplayed images are illustrations, the actual items may differ slightly.</em></em></p>\r\n', 'moment-rugged-case-iphone-12', 749.99, 'moment-rugged-case-iphone-12_1661429433.jpg', '2022-08-25', 3),
(13, 2, 'Moment Rugged Case for iPhone 11', '<p>Our extra protective case is now available with (M)Force. The rugged, dual compound construction provides peace of mind when your gear hits the ground, while the bottom is fully enclosed for additional protection. Inside, we included an array of magnets that are (M)Force compatible (charging and connection) and works with our exclusive line of new&nbsp;<a href=\"https://www.shopmoment.com/products/moment-rugged-case-for-iphone-11/%7Bentry:2416990@1:url%7C%7Chttps://www.shopmoment.com/magsafe%7D\">Mounts for Magsafe&reg;</a>. Beyond magnets, this case has a wrist strap connection on the bottom and includes a built-in lens mount making your case compatible with any of our M-Series Moment Lenses.</p>\r\n\r\n<p>If you want the most protective case that is (M)Force compatible, this is for you.</p>\r\n\r\n<p><em><em>Note: The d</em><em>isplayed images are illustrations, the actual items may differ slightly.</em></em></p>\r\n', 'moment-rugged-case-iphone-11', 799.99, 'moment-rugged-case-iphone-11_1661429172.webp', '2022-08-25', 1),
(14, 2, 'Moment Rugged Case for iPhone 11', '<p>Our extra protective case is now available with (M)Force. The rugged, dual compound construction provides peace of mind when your gear hits the ground, while the bottom is fully enclosed for additional protection. Inside, we included an array of magnets that are (M)Force compatible (charging and connection) and works with our exclusive line of new&nbsp;<a href=\"https://www.shopmoment.com/products/moment-rugged-case-for-iphone-11/%7Bentry:2416990@1:url%7C%7Chttps://www.shopmoment.com/magsafe%7D\">Mounts for Magsafe&reg;</a>. Beyond magnets, this case has a wrist strap connection on the bottom and includes a built-in lens mount making your case compatible with any of our M-Series Moment Lenses.</p>\r\n\r\n<p>If you want the most protective case that is (M)Force compatible, this is for you.</p>\r\n\r\n<p><em><em>Note: The d</em><em>isplayed images are illustrations, the actual items may differ slightly.</em></em></p>\r\n', 'moment-rugged-case-iphone-11', 899.99, 'moment-rugged-case-iphone-11_1661429370.jpg', '2018-05-10', 13),
(15, 2, 'Moment Rugged Case for iPhone 12', '<p>Our extra protective, everyday case. The rugged, dual compound construction provides peace of mind when your gear hits the ground, while the bottom is fully enclosed for additional protection. Available in black canvas or walnut wood, the inside includes a microsuede lining that keeps your phone scratch-free. On the bottom, you can add extra style and protection with a cord-based wrist strap. Over the phone&rsquo;s lenses includes our M-Series lens interface to add a Moment lens anytime.</p>\r\n\r\n<p>If you want the most protective case we make, this is for you.<br />\r\n<br />\r\n<em><em>Note: The d</em><em>isplayed images are illustrations, the actual items may differ slightly.</em></em></p>\r\n', 'moment-rugged-case-iphone-12', 999.99, 'moment-rugged-case-iphone-12_1661428962.jpg', '2018-05-10', 1),
(16, 2, 'Moment Clear Case for iPhone 13 ', '<p>This is the clear case we&rsquo;ve always wanted. It starts with a thin frame and durable build, providing the daily protection you require. While our scratch-resistant coatings keep your case looking fresh. Made from premium polycarbonate with a shock absorbing TPU frame, it&rsquo;s fully equipped with our proprietary (M)Force magnets for an even better MagSafe experience. Protect your phone and show your colors with the all new Clear Case from Moment for iPhone 13.</p>\r\n', 'moment-clear-case-iphone-13', 649.99, 'moment-clear-case-iphone-13_1661428806.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-05-12', 2),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$8wY63GX/y9Bq780GBMpxCesV9n1H6WyCqcA2hNy2uhC59hEnOpNaS', 1, 'admin', '', '', '', 'admin.jpg', 1, '', '', '2018-05-01'),
(13, 'nly36524@gmail.com', '$2y$10$.Gu6aKBg5OpV2JXqJNKi1e6HEddPN.TQDsABfJCjAAT0DbwHdO1z.', 0, 'Ly', 'Nguyen', 'TP.Thu Duc', 'anavwawef', '201309.jpg', 1, '', '', '2022-08-24'),
(14, 'quanghien@gmai.com', '$2y$10$dVj0N.yioklrMpqSHVNuPuA24.yN0dOwqpY0JCQng1xUW3wuUl5ti', 0, 'Quang', 'Hien', 'TP HCM', 'Em Hien Dep Trai', 'best-cms-768x478.webp', 1, '', '', '2022-08-25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
