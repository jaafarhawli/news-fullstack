-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 10:12 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `author` varchar(45) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `subtitle` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `author`, `image_url`, `date`, `subtitle`) VALUES
(8, 'Does a blog post look better with a featured image?', 'Slow-carb viral Austin, direct trade cray lomo cold-pressed raw denim. Before they sold out DIY leggings, polaroid brunch craft beer Intelligentsia jean shorts Tumblr. Biodiesel tattooed Bushwick yr bitters forage. Lo-fi Schlitz hella McSweeney’s sartorial, try-hard Pinterest. Cornhole fashion axe Tonx, hashtag readymade quinoa aesthetic polaroid Marfa fanny pack next level gluten-free. Shabby chic four loko single-origin coffee sriracha. Tonx gentrify bespoke Blue Bottle.\r\n\r\nIntelligentsia tote bag Schlitz, bitters cardigan normcore you probably haven’t heard of them Marfa tattooed squid crucifix actually. Church-key semiotics photo booth paleo typewriter, street art chillwave food truck try-hard. Narwhal Thundercats single-origin coffee drinking vinegar, lomo gentrify gluten-free. Pork belly mixtape kale chips, Blue Bottle mustache slow-carb direct trade Odd Future meh PBR fixie. Cray Shoreditch chillwave, raw denim bitters Vice pop-up put a bird on it photo booth next level wolf typewriter leggings Austin. Irony butcher typewriter, retro messenger bag cornhole keffiyeh Truffaut flannel lo-fi biodiesel try-hard bespoke crucifix XOXO. VHS synth chillwave organic, semiotics fanny pack 8-bit you probably haven’t heard of them gentrify direct trade stumptown.', 'Lisa Scholfield', 'C:/xampp/htdocs/news-website-backend/images/1.jpg', '2022-09-23 19:46:24', 'Authoritatively pontificate synergistic total linkage and pandemic metrics. Assertively initiate interactive architectures with end-to-end meta-services.'),
(9, 'Everything you ever need to know about flowers', 'Ennui single-origin coffee crucifix, irony PBR squid sriracha. Kale chips slow-carb gastropub DIY, wayfarers Williamsburg lo-fi distillery +1 kitsch tofu Marfa beard. Truffaut food truck meh seitan, Etsy Wes Anderson Odd Future. Godard Tumblr lomo Intelligentsia cliche hoodie. Chillwave aesthetic narwhal, plaid retro vegan XOXO Echo Park Pinterest tousled Wes Anderson authentic shabby chic. Hoodie meh retro, distillery vegan letterpress mustache Odd Future PBR&B Neutra pickled DIY. Next level mlkshk ennui fashion axe.\r\nFlowers are the perfect gift\r\n\r\nTaxidermy heirloom Thundercats +1. Biodiesel mustache VHS, direct trade fashion axe bicycle rights Truffaut cray. Vice literally yr next level Schlitz locavore, slow-carb skateboard disrupt letterpress Bushwick trust fund +1 McSweeney’s Marfa. Try-hard semiotics before they sold out salvia. Jean shorts crucifix yr XOXO, farm-to-table lomo direct trade organic distillery single-origin coffee PBR. Cardigan drinking vinegar Portland Austin, 8-bit umami Kickstarter taxidermy normcore YOLO retro.', 'Lisa Scholfield', 'C:/xampp/htdocs/news-website-backend/images/2.jpg', '2022-09-23 19:50:09', 'Credibly empower enterprise wide mindshare for excellent “outside the box” thinking. Proactively mesh impactful meta services rather than enterprise results. Professionally generate end-to-end human capital holistic networks. Authoritatively customize cross-media imperatives rather than client focused schemas.'),
(10, 'If you’re truly happy and you know it let it show', 'Meditation synth trust fund, Schlitz 8-bit Tonx skateboard. Vice wayfarers quinoa gentrify, scenester Truffaut cliche XOXO distillery try-hard wolf fixie fingerstache Portland twee. Semiotics blog Marfa, stumptown normcore authentic retro beard Pitchfork flexitarian single-origin coffee. Tonx kale chips banjo street art meggings next level, drinking vinegar mumblecore quinoa you probably haven’t heard of them irony paleo selfies. Ennui pork belly Tumblr farm-to-table, squid Shoreditch cornhole mustache actually VHS Echo Park wayfarers narwhal chia. Polaroid aesthetic bicycle rights High Life salvia, lumbersexual beard food truck. Bitters iPhone lumbersexual, narwhal Helvetica seitan vinyl actually tofu yr.\r\n\r\n    Flannel kitsch gluten-free Wes Anderson Williamsburg heirloom. Migas Vice authentic, letterpress cray dreamcatcher Austin. Health goth cold-pressed pour-over semiotics photo booth Portland.\r\n\r\nDreamcatcher typewriter heirloom farm-to-table mlkshk, before they sold out mustache cred biodiesel seitan 3 wolf moon letterpress. Migas ethical heirloom banh mi Intelligentsia meditation. Tofu flexitarian 3 wolf moon, swag asymmetrical gluten-free small batch mixtape wayfarers vegan deep v messenger bag raw denim aesthetic. Whatever tattooed PBR&B bicycle rights, pug kitsch twee Banksy chillwave Blue Bottle Godard art party typewriter fingerstache.\r\n\r\nMixtape squid heirloom, brunch gastropub single-origin coffee next level Portland bitters mustache Wes Anderson. Meditation 3 wolf moon retro, mlkshk 8-bit master cleanse four loko Cosby sweater normcore. Kogi bicycle rights American Apparel dreamcatcher, sriracha Odd Future PBR&B. Four dollar toast artisan farm-to-table listicle, retro High Life XOXO cardigan McSweeney’s kitsch fap pug single-origin coffee Helvetica. Hoodie retro dreamcatcher banjo cold-pressed. Sriracha 8-bit dreamcatcher, keffiyeh pug chambray Pinterest sartorial bespoke meditation bitters. Readymade YOLO actually tilde.', '', 'C:/xampp/htdocs/news-website-backend/images/3.jpg', '2022-09-23 19:52:32', 'Professionally transition backend action items whereas client-centric internal or “organic” sources. Proactively grow user friendly experiences vis-a-vis reliable systems. '),
(11, 'With good typography you don’t actually need images', 'American Apparel letterpress shabby chic 8-bit direct trade. Farm-to-table meggings cred, scenester mustache stumptown dreamcatcher small batch cronut hella pickled Kickstarter. Kale chips flexitarian artisan photo booth, Odd Future Pinterest quinoa sriracha. Banksy ugh Blue Bottle, bespoke skateboard craft beer retro cardigan polaroid heirloom four dollar toast aesthetic gluten-free jean shorts.\r\n\r\nBanh mi flannel pop-up Neutra Carles, four dollar toast health goth synth Helvetica taxidermy Thundercats twee 8-bit. Readymade quinoa ennui, High Life sartorial street art messenger bag Truffaut keffiyeh Schlitz. IPhone Thundercats sustainable ennui cred next level, locavore gluten-free trust fund. Meh cardigan taxidermy, tofu ugh 8-bit chia bitters you probably haven’t heard of them. Stumptown organic gentrify gastropub deep v, beard asymmetrical hella. Food truck freegan McSweeney’s small batch, pop-up banh mi cray High Life before they sold out. Sustainable Marfa cred, pickled mlkshk messenger bag American Apparel.\r\n\r\nNarwhal 3 wolf moon twee tilde biodiesel synth. Meditation iPhone pickled flannel cold-pressed Echo Park, retro craft beer Pitchfork twee cred asymmetrical. Before they sold out Odd Future pickled, try-hard four dollar toast Thundercats dreamcatcher McSweeney’s fap ethical gentrify street art disrupt taxidermy cornhole. +1 retro next level, irony try-hard direct trade taxidermy. Vinyl biodiesel Banksy, hella roof party meditation mlkshk polaroid yr DIY listicle aesthetic. Forage single-origin coffee trust fund fingerstache twee, Kickstarter post-ironic next level hella quinoa PBR&B Marfa. Keffiyeh mustache fingerstache tilde synth.', 'Lisa Scholfield', 'C:/xampp/htdocs/news-website-backend/images/4.jpg', '2022-09-23 19:54:41', 'Distinctively coordinate pandemic technologies rather than market-driven meta-services. Distinctively reconceptualize high standards in infrastructures with pandemic methods of empowerment.'),
(12, 'Cards look so good with a splash of color on the categories', 'Fixie meditation ennui synth disrupt. Street art Pinterest Thundercats, ethical tilde bespoke Neutra pickled fap. Plaid YOLO 8-bit fanny pack, cred Shoreditch synth try-hard bitters sartorial blog listicle Pinterest asymmetrical aesthetic. You probably haven’t heard of them tattooed viral, hella leggings cronut XOXO cliche kale chips seitan tousled meh tofu mumblecore. Tote bag drinking vinegar art party, lo-fi Intelligentsia small batch umami Vice pug flannel authentic literally. Cronut messenger bag quinoa Etsy Marfa.\r\n\r\nSlow-carb viral Austin, direct trade cray lomo cold-pressed raw denim. Before they sold out DIY leggings, polaroid brunch craft beer Intelligentsia jean shorts Tumblr. Biodiesel tattooed Bushwick yr bitters forage. Lo-fi Schlitz hella McSweeney’s sartorial, try-hard Pinterest. Cornhole fashion axe Tonx, hashtag readymade quinoa aesthetic polaroid Marfa fanny pack next level gluten-free. Shabby chic four loko single-origin coffee sriracha. Tonx gentrify bespoke Blue Bottle.\r\n\r\nIntelligentsia tote bag Schlitz, bitters cardigan normcore you probably haven’t heard of them Marfa tattooed squid crucifix actually. Church-key semiotics photo booth paleo typewriter, street art chillwave food truck try-hard. Narwhal Thundercats single-origin coffee drinking vinegar, lomo gentrify gluten-free. Pork belly mixtape kale chips, Blue Bottle mustache slow-carb direct trade Odd Future meh PBR fixie. Cray Shoreditch chillwave, raw denim bitters Vice pop-up put a bird on it photo booth next level wolf typewriter leggings Austin. Irony butcher typewriter, retro messenger bag cornhole keffiyeh Truffaut flannel lo-fi biodiesel try-hard bespoke crucifix XOXO. VHS synth chillwave organic, semiotics fanny pack 8-bit you probably haven’t heard of them gentrify direct trade stumptown.', 'Safia Samee Ali', 'C:/xampp/htdocs/news-website-backend/images/5.jpg', '2022-09-23 19:57:11', 'Dynamically utilize resource sucking partnerships rather than fully tested outsourcing. Dynamically negotiate principle-centered sources with client-based e-tailers.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
