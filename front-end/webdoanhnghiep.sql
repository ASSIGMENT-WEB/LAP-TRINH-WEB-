-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 06, 2020 at 12:00 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdoanhnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogue`
--

DROP TABLE IF EXISTS `catalogue`;
CREATE TABLE IF NOT EXISTS `catalogue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `catalogue`
--

INSERT INTO `catalogue` (`id`, `content`) VALUES
(1, '<div class=\"col-inner\">\r\n				\r\n				\r\n														\r\n						<p>Dragon stone với bề dày nhiều năm hoạt động trong ngành xây dựng nói chung và ngành thi công đá nói riêng. Chúng tôi tự hào vì đã được phục vụ cho quý khách hàng thực hiện những công trình bền bỉ, đi cùng năm tháng đã được nghiệm chứng. Ngoài những hạng mục lớn, những công trình công sở, công cộng, chúng tôi còn đặc biệt có duyên với những công trình dân dụng, trực tiếp mang lại sự an toàn, tiện nghi cho tất cả mọi thành viên trong gia đình bạn.</p>\r\n<p>Nếu quý khách, quý khách hàng muốn nhận file catalogue hoặc muốn hợp tác với chúng tôi, vui lòng để lại thông tin hoặc liên lạc với Dragonstone.vn qua HOTLINE: 0933676264</p>\r\n<div class=\"pdfemb-viewer\" style=\"width: 600px; height: 900px; \"><div class=\"pdfemb-loadingmsg\">Loading...</div></div>\r\n\r\n						\r\n												</div>');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `noidung` text NOT NULL,
  `idTin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hangmucthicong`
--

DROP TABLE IF EXISTS `hangmucthicong`;
CREATE TABLE IF NOT EXISTS `hangmucthicong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLoaiHangMuc` int(11) DEFAULT NULL,
  `tieuDe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tomTat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idLoaiHangMuc` (`idLoaiHangMuc`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangmucthicong`
--

INSERT INTO `hangmucthicong` (`id`, `idLoaiHangMuc`, `tieuDe`, `tomTat`, `image`, `content`) VALUES
(1, 1, 'Đá hoa cương đen Ấn Độ có ưu nhược điểm gì?', 'Hiện nay, đá hoa cương đen Ấn Độ là một trong dòng đá đang chiếm[...]', 'da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4.jpg', '<div class=\"entry-image relative\">\r\n	   <a href=\"https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\">\r\n    <img width=\"1020\" height=\"636\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4.jpg 1262w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-641x400.jpg 641w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-768x479.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-600x374.jpg 600w\" sizes=\"(max-width: 1020px) 100vw, 1020px\"></a>\r\n	   <div class=\"badge absolute top post-date badge-outline\">\r\n	<div class=\"badge-inner\">\r\n	\r\n	</div>\r\n</div>	</div>\r\n	<div class=\"entry-content single-page\">\r\n\r\n	<p style=\"text-align: justify;\"><strong><em><span style=\"font-family: \'times new roman\', times, serif;\">Hiện nay, đá hoa cương đen Ấn Độ là một trong dòng đá đang chiếm lĩnh tại thị trường Việt Nam và Đông Nam Á. Sau đây là những chia sẻ chi tiết về loại đá này.</span></em></strong></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Đá hoa cương đen Ấn Độ có thể hiểu đơn giản đó là những dòng đá hoa cương màu đen có nguồn gốc tư Ấn Độ. Nhìn chung, đá hoa cương màu đen có bản chất không chỉ là đá hoa cương mà còn là kết hợp với đá thạch anh.</span></p>\r\n<p><img class=\"alignnone wp-image-3525\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi2-776x400.jpg\" alt=\"\" width=\"650\" height=\"335\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi2-776x400.jpg 776w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi2-768x396.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi2-600x309.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi2.jpg 1280w\" sizes=\"(max-width: 650px) 100vw, 650px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\"> Ít nhất sẽ xuất hiện các đốm trắng trên bề mặt. Đó chính là thạch anh màu trắng.&nbsp;Đối với những công trình nhà ở, dòng đá này cần chất lượng cao hơn. Với những công trình thương mại, dự án cần lưu ý nhiều đến mức giá.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">2. Đá hoa cương đen Ấn Độ có đặc điểm gì?</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Đá đen Ấn Độ thực chất là một dòng gabro. Chúng có đặc điểm như sau:</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Độ cứng: 6-7 Moh, độ cứng cao và ít bị trầy xước và bể, gãy.</span></p>\r\n<p><img class=\"alignnone wp-image-3526\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-641x400.jpg\" alt=\"\" width=\"650\" height=\"405\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-641x400.jpg 641w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-768x479.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4-600x374.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4.jpg 1262w\" sizes=\"(max-width: 650px) 100vw, 650px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Màu sắc: màu đen có chấm thêm và các hạt vàng, trắng tùy loại. Đây là các khoáng chất, có thể đó là một lượng nhỏ thạch anh. Màu sắc này sẽ khiến vết bẩ, vết ố khó bị phát hiện hơn. Đồng thời, phù hợp với những hạng mục bị tác động từ ngoại lực.</span></p>\r\n<p><img class=\"alignnone wp-image-3534 size-large\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi7-600x800.jpg\" alt=\"\" width=\"600\" height=\"800\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi7-600x800.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi7-300x400.jpg 300w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi7-768x1024.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi7.jpg 960w\" sizes=\"(max-width: 600px) 100vw, 600px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Chưa hẳn đá hoa cương màu đen&nbsp; sẽ có màu đen hoặc xám hoàn toàn. Có thể ở những phần cạnh, mặt sau tấm đá sẽ có những phần chưa được đánh bóng. Cần được xử lý nhiều lần, qua nhiều công đoạn để có thể có màu đen thuần. Khi sử dụng loại đá này, đến một lúc nào đó, bạn có thể thấy đá bị mờ hơn. Không hẳn điều này là do đá bị nhuộm mà do bản chất đá bị mất đi lớp bóng.</span></p>\r\n<p><img class=\"alignnone size-medium wp-image-3527\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-591x400.jpg\" alt=\"\" width=\"591\" height=\"400\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-591x400.jpg 591w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-768x520.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-1181x800.jpg 1181w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-600x406.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35.jpg 1242w\" sizes=\"(max-width: 591px) 100vw, 591px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Kết cấu hạt thô , vững chắc, khó thấm được, không bị rạn, nứt</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Khổ đá 60cm x 90 cm, độ dày tiêu chuẩn 1,8 đến 2 cm.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Loại đá này cũng khó hấp thụ nhiệt, giúp tạo sự mát mẻ cho không gian.</span></p>\r\n<p><img class=\"alignnone size-medium wp-image-3533\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1-525x400.jpg\" alt=\"\" width=\"525\" height=\"400\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1-525x400.jpg 525w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1-768x585.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1-1050x800.jpg 1050w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1-600x457.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi1.jpg 1242w\" sizes=\"(max-width: 525px) 100vw, 525px\"></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">3. Đá hoa cương đen Ấn Độ có những loại nào?</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Absolute Black: dòng đá này có màu sắc đen tuyền. DragonStone khuyến khích gia chủ nên lựa chọn màu đá này. Đây là loại đá có màu đen tốt nhất củaẤn Độ. Đá có độ bóng cao, khó phai màu, chất lượng cao và khá bền.</span></p>\r\n<p><img class=\"alignnone wp-image-3527\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-591x400.jpg\" alt=\"\" width=\"650\" height=\"440\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-591x400.jpg 591w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-768x520.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-1181x800.jpg 1181w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35-600x406.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi35.jpg 1242w\" sizes=\"(max-width: 650px) 100vw, 650px\"></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif;\">Kim sa trung là dòng đá thông dụng và được ưu tiên lựa chọn và sử dụng. Loại đá này có nền đen và hạt kim sa vàng lấp lánh. Tạo hiệu ứng ấn tượng khi gặp ánh sáng. Có 2 loại: kim sa trung Trung Quốc với độ bóng cao và độ dày tầm 1.4 cm và kim sa trung của Ấn Độ với độ bóng va độ dày thấp hơn.</span></p>\r\n<p><img class=\"alignnone size-medium wp-image-3529\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3-578x400.jpg\" alt=\"\" width=\"578\" height=\"400\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3-578x400.jpg 578w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3-768x531.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3-1157x800.jpg 1157w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3-600x415.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3.jpg 1242w\" sizes=\"(max-width: 578px) 100vw, 578px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Đá xanh đen Ấn Độ bông lớn, bông nhỏ và G20: dòng đá tầm trung có nền đen và các hạt khoáng sản màu trắng lốm đốm.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">4. Phong thủy của đá đen Ấn Độ</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Đặc biệt phù hợp với người mệnh Thủy, mệnh Mộc, Loại đá này có thể mang đến sự bình an, suôn sẻ, tài lộc.</span></p>\r\n<p><img class=\"alignnone size-medium wp-image-3530\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9-533x400.jpg\" alt=\"\" width=\"533\" height=\"400\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9-533x400.jpg 533w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9-768x576.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9-1067x800.jpg 1067w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9-600x450.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi9.jpg 1280w\" sizes=\"(max-width: 533px) 100vw, 533px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Màu đen của loại đá này cũng sẽ mang đến nguồn năng lượng dồi dào, tiền tài, danh vọng và quyền lực. Để phát huy cao nguồn năng lượng này, tốt nhất nên chọn hướng Bắc, Đông và Đông Bắc.</span></p>\r\n<h2 style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">5. Ứng dụng của đá đen Ấn Độ</span></h2>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Nhìn chung, có thể dùng cả đá hoa cương màu đen và đá đen Ấn Độ cho tất cả các hạng mục như cầu thang, bếp, tam cấp, ngạch cửa,… Loại đá này thường được dùng cho mặt tiền của các công trình nhà phố.</span></p>\r\n<p><img class=\"alignnone wp-image-3531 size-large\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi56-600x800.jpg\" alt=\"\" width=\"600\" height=\"800\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi56-600x800.jpg 600w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi56-300x400.jpg 300w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi56-768x1024.jpg 768w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi56.jpg 960w\" sizes=\"(max-width: 600px) 100vw, 600px\"></p>\r\n<p><span style=\"font-family: \'times new roman\', times, serif;\">Hi vọng với những thông tin về đá hoa cương đen Ấn Độ vừa chia sẻ trên, bạn đọc sẽ có được sự lựa chọn hợp lý nhất. Ngay từ bây giờ, hãy gọi ngay đến Hotline<strong>&nbsp;0933676264&nbsp;</strong>để được tư vấn miễn phí và xem các loại đá hoa cương, cảm nhận quy trình làm việc chuyên nghiệp.</span></p>\r\n<p><img class=\"alignnone size-medium wp-image-3532\" src=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3678-711x400.jpg\" alt=\"\" width=\"711\" height=\"400\" srcset=\"https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3678.jpg 711w, https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi3678-600x338.jpg 600w\" sizes=\"(max-width: 711px) 100vw, 711px\"></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">Đến với&nbsp;<strong><a href=\"https://dragonstone.vn/\">DragonStone</a></strong>, bạn sẽ&nbsp; được tư vấn cặn kẽ, chúng tôi đặt tiêu chí chất lượng công trình, sự tiện nghi cho khách hàng lên hàng đầu. Còn ngần ngại gì nữa mà không liên hệ ngay với chúng tôi để được trải nghiệm phong cách và quy trình làm việc chuyên nghiệp.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: \'times new roman\', times, serif;\">CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN XÂY DỰNG CỬU LONG</span><br>\r\n<span style=\"font-family: \'times new roman\', times, serif;\">Địa chỉ:&nbsp;Số 10 – Đường 26 – Phường Linh Đông – Quận Thủ Đức – TP.HCM.</span><br>\r\n<span style=\"font-family: \'times new roman\', times, serif;\">Hotline:&nbsp;0933 67 62 64</span><br>\r\n<span style=\"font-family: \'times new roman\', times, serif;\">Email:&nbsp;cuulongstone@gmail.com</span><br>\r\n<span style=\"font-family: \'times new roman\', times, serif;\">Website:https://dragonstone.vn</span></p>\r\n\r\n	\r\n	<div class=\"blog-share text-center\"><div class=\"is-divider medium\"></div><div class=\"social-icons share-icons share-row relative icon-style-outline \"><a href=\"whatsapp://send?text=%C4%90%C3%A1%20hoa%20c%C6%B0%C6%A1ng%20%C4%91en%20%E1%BA%A4n%20%C4%90%E1%BB%99%20c%C3%B3%20%C6%B0u%20nh%C6%B0%E1%BB%A3c%20%C4%91i%E1%BB%83m%20g%C3%AC%3F - https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\" data-action=\"share/whatsapp/share\" class=\"icon button circle is-outline tooltip whatsapp show-for-medium tooltipstered\"><i class=\"icon-phone\"></i></a><a href=\"//www.facebook.com/sharer.php?u=https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\" data-label=\"Facebook\" onclick=\"window.open(this.href,this.title,\'width=500,height=500,top=300px,left=300px\');  return false;\" rel=\"nofollow\" target=\"_blank\" class=\"icon button circle is-outline tooltip facebook tooltipstered\"><i class=\"icon-facebook\"></i></a><a href=\"//twitter.com/share?url=https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\" onclick=\"window.open(this.href,this.title,\'width=500,height=500,top=300px,left=300px\');  return false;\" rel=\"nofollow\" target=\"_blank\" class=\"icon button circle is-outline tooltip twitter tooltipstered\"><i class=\"icon-twitter\"></i></a><a href=\"mailto:enteryour@addresshere.com?subject=%C4%90%C3%A1%20hoa%20c%C6%B0%C6%A1ng%20%C4%91en%20%E1%BA%A4n%20%C4%90%E1%BB%99%20c%C3%B3%20%C6%B0u%20nh%C6%B0%E1%BB%A3c%20%C4%91i%E1%BB%83m%20g%C3%AC%3F&amp;body=Check%20this%20out:%20https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\" rel=\"nofollow\" class=\"icon button circle is-outline tooltip email tooltipstered\"><i class=\"icon-envelop\"></i></a><a href=\"//pinterest.com/pin/create/button/?url=https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/&amp;media=https://dragonstone.vn/wp-content/uploads/2020/04/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi4.jpg&amp;description=%C4%90%C3%A1%20hoa%20c%C6%B0%C6%A1ng%20%C4%91en%20%E1%BA%A4n%20%C4%90%E1%BB%99%20c%C3%B3%20%C6%B0u%20nh%C6%B0%E1%BB%A3c%20%C4%91i%E1%BB%83m%20g%C3%AC%3F\" onclick=\"window.open(this.href,this.title,\'width=500,height=500,top=300px,left=300px\');  return false;\" rel=\"nofollow\" target=\"_blank\" class=\"icon button circle is-outline tooltip pinterest tooltipstered\"><i class=\"icon-pinterest\"></i></a><a href=\"//plus.google.com/share?url=https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/\" target=\"_blank\" class=\"icon button circle is-outline tooltip google-plus tooltipstered\" onclick=\"window.open(this.href,this.title,\'width=500,height=500,top=300px,left=300px\');  return false;\" rel=\"nofollow\"><i class=\"icon-google-plus\"></i></a><a href=\"//www.linkedin.com/shareArticle?mini=true&amp;url=https://dragonstone.vn/mat-tien/da-hoa-cuong-den-an-do-co-uu-nhuoc-diem-gi/&amp;title=%C4%90%C3%A1%20hoa%20c%C6%B0%C6%A1ng%20%C4%91en%20%E1%BA%A4n%20%C4%90%E1%BB%99%20c%C3%B3%20%C6%B0u%20nh%C6%B0%E1%BB%A3c%20%C4%91i%E1%BB%83m%20g%C3%AC%3F\" onclick=\"window.open(this.href,this.title,\'width=500,height=500,top=300px,left=300px\');  return false;\" rel=\"nofollow\" target=\"_blank\" class=\"icon button circle is-outline tooltip linkedin tooltipstered\"><i class=\"icon-linkedin\"></i></a></div></div></div>');

-- --------------------------------------------------------

--
-- Table structure for table `introduce`
--

DROP TABLE IF EXISTS `introduce`;
CREATE TABLE IF NOT EXISTS `introduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `introduce`
--

INSERT INTO `introduce` (`id`, `content`) VALUES
(1, '<div class=\"col-inner\">\r\n				\r\n				\r\n														\r\n						<p><strong>Dragon stone</strong> với bề dày nhiều năm hoạt động trong ngành xây dựng nói chung và ngành thi công đá nói riêng. Chúng tôi tự hào vì đã được phục vụ cho quý khách hàng thực hiện những công trình bền bỉ, đi cùng năm tháng đã được nghiệm chứng. Ngoài những hạng mục lớn, những công trình công sở, công cộng, chúng tôi còn đặc biệt có duyên với những công trình dân dụng, trực tiếp mang lại sự an toàn, tiện nghi cho tất cả mọi thành viên trong gia đình bạn.</p>\r\n<p>Với nhiều năm kinh nghiệm, chúng tôi đã đúc kết ra được nhiều kỹ thuật thi công tiến bộ, giúp tối ưu thời gian và chi phí cho khách hàng. Bên cạnh đó tính an toàn cho khách hàng luôn được <em>Dragon stone</em> đặt lên hàng đầu. Để đảm bảo được điều đó, Dragonstone.vn tuyệt đối nói không với đá giả, đá mỏng, đá nhuộm kém chất lượng. Nguồn đá nhập vào của Dragon stone được chính đội ngũ kỹ sư của chúng tôi trực tiếp khảo sát kiểm tra tại mỏ khai thác trong và ngoài nước. Chúng tôi cam kết mang lại cho quý khách những sản phẩm tốt nhất, giá cả phải chăng nhất.</p>\r\n<p>Đá chất lượng tốt là một chuyện, nhưng nếu người thợ thi công không chuyên nghiệp thì cũng rất khó đạt được tiêu chuẩn độ bền và độ thẩm mỹ. Như đã nói, tại <em>Dragon stone</em> có nhiều kinh nghiệm thi công đúc kết trong chiều dài lịch sử thi công trong ngành đá, chúng tôi hiểu hơn ai hết về những cách thi công chuẩn nhất, đạt được độ bền tốt nhất. Những tinh túy đó đều được đào tạo truyền đạt kỹ lưỡng cho đội ngũ thợ thi công.</p>\r\n<p>Với phương châm hoạt động ”người thật, việc thật, sản phẩm thật, giá trị thật”. <strong>Dragon stone</strong> tự tin khẳng định chất lượng sản phẩm luôn đạt độ an toàn, bền bỉ và hoàn mỹ nhất.</p>\r\n<p>Đến với <strong>Dragon stone</strong>, bạn sẽ&nbsp; được tư vấn cặn kẽ, chúng tôi đặt tiêu chí chất lượng công trình, sự tiện nghi cho khách hàng lên hàng đầu. Còn ngần ngại gì nữa mà không liên hệ ngay với chúng tôi để được trải nghiệm phong cách và quy trình làm việc chuyên nghiệp.</p>\r\n<p><strong>CÔNG TY TNHH THƯƠNG MẠI PHÁT TRIỂN XÂY DỰNG CỬU LONG<br>\r\n</strong><strong>Địa chỉ:</strong><strong><b>&nbsp;Số 10 – Đường 26 – Phường Linh Đông – Quận Thủ Đức – TP.HCM.</b></strong><br>\r\n<strong>Hotline:</strong>&nbsp;0933 67 62 64<br>\r\n<strong>Email:</strong> cuulongstone@gmail.com<br>\r\n<strong>Website:</strong>https://dragonstone.vn</p>\r\n\r\n						\r\n												</div>');

-- --------------------------------------------------------

--
-- Table structure for table `loaihangmucthicong`
--

DROP TABLE IF EXISTS `loaihangmucthicong`;
CREATE TABLE IF NOT EXISTS `loaihangmucthicong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaihangmucthicong`
--

INSERT INTO `loaihangmucthicong` (`id`, `name`, `image`) VALUES
(1, 'ĐÁ HOA CƯƠNG MẶT TIỀN', 'da-op-mat-tien (1).jpg'),
(2, 'ĐÁ LÁT NỀN', 'nen-da.jpg'),
(3, 'CẦU THANG ĐÁ', 'cau-thang.jpg'),
(4, 'ĐÁ ỐP BẾP', 'ban-da.jpg'),
(5, 'BÀN ĐÁ', 'ban-an.jpg'),
(6, 'BÀN ĐÁ LAVABO', 'lavabo.jpg'),
(7, 'CỘT ĐÁ', 'cot-da.jpg'),
(8, 'ĐÁ ỐP THANH MÁY', 'da-op-thang-may.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

DROP TABLE IF EXISTS `loaitin`;
CREATE TABLE IF NOT EXISTS `loaitin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenLT` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idTL` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTL` (`idTL`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`id`, `TenLT`, `idTL`) VALUES
(1, 'ĐÁ HOA CƯƠNG MẶT TIỀN', 1),
(2, 'ĐÁ LÁT NỀN', 1),
(3, 'CẦU THANH ĐÁ', 1),
(4, 'ĐÁ ỐP BẾP', 1),
(5, 'BÀN ĐÁ', 1),
(6, 'BÀN ĐÁ LAVABO', 1),
(7, 'CỘT ĐÁ', 1),
(8, 'ĐÁ ỐP THANG MÁY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_type` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_id_type_foreign` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Đá Marble Argos', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EWH11001</p>\r\n<p>Chủng loại: Đá marble màu trắng</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'marble-argos-min-600x451.jpg', NULL, NULL),
(2, 'Đá Marble Hobotobo', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBL11006</p>\r\n<p>Chủng loại: Đá marble màu đen</p>\r\n<p>Xuất xứ:</p>\r\n</div>', 'ebl11007-hobotobo-1-600x448.jpg', NULL, NULL),
(3, 'Đá Marble Rainforest Green', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EGR11003</p>\r\n<p>Chủng loại: Đá marble màu xanh (Green)</p>\r\n<p>Xuất xứ: India</p>\r\n</div>', 'egr11003-rainforest-green-1-600x449.jpg', NULL, NULL),
(4, 'Đá Marble (Cẩm Thạch) Agion', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11001</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Oman</p>\r\n</div>', 'ebe11001-agion-1.jpg', NULL, NULL),
(5, 'Đá Marble (Cẩm Thạch) Capuccino', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11009</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'ebe11009-capuchino-1-600x450.jpg', NULL, NULL),
(6, 'Đá Marble (Cẩm Thạch) Zahra\r\n', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11038</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Oman</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebe11038-zahra-1-600x450.jpg', NULL, NULL),
(7, 'Đá Marble Batieg Galaxy', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11003</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ</p>\r\n</div>', 'ebe11003-batieg-galaxy-2-600x450.jpg', NULL, NULL),
(8, 'Đá Marble Black Yellow Italya', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBL11002</p>\r\n<p>Chủng loại: Đá marble màu đen</p>\r\n<p>Xuất xứ: Italy</p>\r\n</div>', 'ebl11002-black-yellow-italia-1-600x450.jpg', NULL, NULL),
(9, 'Đá Marble Botticino Clasical', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11005</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Italy</p>\r\n</div>', 'ebe11005-botticino-1_1-600x450.jpg', NULL, NULL),
(10, 'Đá Marble Botticino Classical.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11006</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Italy</p>\r\n</div>', 'botticino_classico_marble-itaia-min-600x450.jpg', NULL, NULL),
(11, 'Đá MARBLE BROWN ESTELLA (NÂU TÂY BAN)', 1, '<div class=\"product-short-description\">\r\n	<p>Trong các dòng đá marble – đá cẩm thạch tự nhiên dòng đá nâu Tây Ban Nha là sản phẩm nổi bật. Đây là loại đá tự nhiên được hình thành từ các loại đá vôi biến thể (màu nâu vân sáng trắng). Chúng được hình thành nhờ vào sự kiến tạo lớp vỏ trái đất hàng ngàn năm để tạo nên. Vì vậy, đá có nhiều tính năng vượt trội, vừa đẹp lại vừa bền chắc.</p>\r\n<p><strong>Giá:</strong></p>\r\n<p>Thi công mặt tiền khoản: 2.100.000 VNĐ</p>\r\n<p>Thi công cầu thang tam cấp khoản: 1.800.000 VNĐ</p>\r\n<p>Thi công bếp khoản: 1.800.000 VNĐ</p>\r\n<p>Thi công mặt bàn, quầy bar, bệ lan can….</p>\r\n</div>', 'đá-marble-600x450.jpg', NULL, NULL),
(12, 'Đá Marble Brown Estella (Nâu Tây Ban Nha)', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBR11003</p>\r\n<p>Chủng loại: Đá marble màu nâu</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'brown-estella-01-600x450.jpg', NULL, NULL),
(13, 'Đá Marble Budur beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11007</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'burdur-beige-marble-600x450.jpg', NULL, NULL),
(14, 'Đá Marble Bursa Beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11007</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'bursa-beige-beige-marble-01-600x450.jpg', NULL, NULL),
(15, 'Đá Marble Classic Grey', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EGY11005</p>\r\n<p>Chủng loại: Đá marble màu ghi</p>\r\n<p>Xuất xứ: China</p>\r\n</div>', 'classic-grey-600x450.jpg', NULL, NULL),
(16, 'Đá Marble Coto Gold', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EYE11001</p>\r\n<p>Chủng loại: Mẫu đá Marble màu vàng</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'eye11001-coto-gold-1-600x450.jpg', NULL, NULL),
(17, 'Đá Marble Cream Nouva.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EYE11001</p>\r\n<p>Chủng loại: Mẫu đá Marble màu vàng</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'ebe11039-cream-nouva-1-600x450.jpg', NULL, NULL),
(18, 'Đá Marble Crema Barla', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11012</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'crema-barla-marble-turkey-01-600x450.jpg', NULL, NULL),
(19, 'Đá MARBLE DARK EMPERADOR', 1, '<div class=\"product-short-description\">\r\n	<p>Trong các dòng đá Marble – đá cẩm thạch tự nhiên dòng đá nâu Tây Ban Nha là sản phẩm nổi bật. Đây là loại đá tự nhiên được hình thành từ các loại đá vôi biến thể. Chúng được hình thành nhờ vào sự kiến tạo lớp vỏ trái đất hàng ngàn năm để tạo nên. Vì vậy, đá có nhiều tính năng vượt trội, vừa đẹp lại vừa bền chắc.</p>\r\n<p><strong>Giá:</strong></p>\r\n<p>Thi công mặt tiền: 2.100.000 VNĐ</p>\r\n<p>Thi công cầu thang tam cấp: 1.800.000 VNĐ</p>\r\n<div>Thi công bếp: 1.800.000 VNĐ</div>\r\n</div>', 'da-marble-nau-tay-ban-nha-new.jpg', NULL, NULL),
(20, 'Đá Marble Dark Emperador', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBR11004</p>\r\n<p>Chủng loại: Đá marble màu nâu</p>\r\n<p>Xuất xứ: Tây Ban Nha</p>\r\n</div>', '30-600x450.jpg', NULL, NULL),
(21, 'Đá Marble Diamond White', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EWH11015</p>\r\n<p>Chủng loại: Đá marble màu trắng<br>\r\nXuất xứ: Việt Nam</p>\r\n</div>', 'diamond-white-600x450.jpg', NULL, NULL),
(22, 'Đá Marble Diana Beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;EBE11042</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Italia</p>\r\n</div>', 'diana-beige-600x450.jpg', NULL, NULL),
(23, 'Đá Marble Fancy beiger', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11013</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Đức</p>\r\n</div>', 'fancy-beige-600x450.jpg', NULL, NULL),
(24, 'Đá Marble Galala Classic', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11014</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Egypt</p>\r\n</div>', 'galala-egypt_1-600x450.jpg', NULL, NULL),
(25, 'Đá Marble Himalayan Onyx', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11014</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Egypt</p>\r\n</div>', 'egr11001-green-onyx-1-600x451.jpg', NULL, NULL),
(26, 'Đá Marble India Green (Xanh Napoli)', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11014</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Egypt</p>\r\n</div>', 'egr11002-india-green-1-600x450.jpg', NULL, NULL),
(27, 'Đá Marble kem chỉ đỏ', 1, '<div class=\"product-short-description\">\r\n	<p>Đá kem chỉ đỏ là một trong những loại đá marble được khai thác từ tự nhiên. Đá được hình thành trong quá trình kiến tạo vỏ trái đất nên có độ bền tốt và mang vẻ đẹp rất đặc trưng.</p>\r\n<p><strong>Giá:</strong></p>\r\n<p>Thi công mặt tiền: 2.000.000 VNĐ</p>\r\n<p>Thi công cầu thang tam cấp: 1.800.000 VNĐ</p>\r\n<div>Thi công bếp: 1.900.000 VNĐ</div>\r\n</div>', 'da-marble-kem-chi-do-00.jpg', NULL, NULL),
(28, 'Đá Marble Lazaradis', 1, '<div class=\"product-short-description\">\r\n	<p>Đá kem chỉ đỏ là một trong những loại đá marble được khai thác từ tự nhiên. Đá được hình thành trong quá trình kiến tạo vỏ trái đất nên có độ bền tốt và mang vẻ đẹp rất đặc trưng.</p>\r\n<p><strong>Giá:</strong></p>\r\n<p>Thi công mặt tiền: 2.000.000 VNĐ</p>\r\n<p>Thi công cầu thang tam cấp: 1.800.000 VNĐ</p>\r\n<div>Thi công bếp: 1.900.000 VNĐ</div>\r\n</div>', 'lazaradis-copy-600x450.jpg', NULL, NULL),
(29, 'Đá Marble Light Begie', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11018</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'light_begie-marble-min-600x450.jpg', NULL, NULL),
(30, 'Đá Marble Light Emperador', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBR11007</p>\r\n<p>Chủng loại: Đá marble màu nâu</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'ebr11007-light-emperador-1-600x450.jpg', NULL, NULL),
(31, 'Đá Marble Luis Green', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EGR11005</p>\r\n<p>Chủng loại: Đá marble màu xanh (Green)</p>\r\n<p>Xuất xứ:</p>\r\n</div>', 'luis-green-600x450.jpg', NULL, NULL),
(32, 'Đá Marble Mistral nhập khẩu.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11020</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'mistral-beige-marble-01-600x450.jpg', NULL, NULL),
(33, 'Đá Marble Negro Marquina', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBL11001</p>\r\n<p>Chủng loại: Đá marble màu đen</p>\r\n<p>Xuất xứ: Tây Ban Nha</p>\r\n</div>', 'ebl11001-negro-marquina-1-600x450.jpg', NULL, NULL),
(34, 'Đá Marble Oman beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11023</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Oman</p>\r\n</div>', 'ebe11023-oman-beige-1-600x450.jpg', NULL, NULL),
(35, 'Đá Marble Perlato', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11024</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ:</p>\r\n</div>', 'ebe11024-perlato-1-600x450.jpg', NULL, NULL),
(36, 'Đá Marble Rainforest Brown', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBR11008</p>\r\n<p>Chủng loại: Đá marble màu nâu</p>\r\n<p>Xuất xứ: India</p>\r\n</div>', 'ebr11008-rainforest-brown-1-600x450.jpg', NULL, NULL),
(37, 'Đá Marble Rojo Alicante', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: ERE11001</p>\r\n<p>Chủng loại: Đá marble màu đỏ</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'rojo-alicante-e1126-01-600x450.jpg', NULL, NULL),
(38, 'Đá Marble Rosalight', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11040</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'rosalia-light_3-600x450.jpg', NULL, NULL),
(39, 'Đá Marble Rosso Levanto New', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: ERE11003</p>\r\n<p>Chủng loại: Đá marble màu đỏ</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'da-marble-rosso-levanto-600x450.jpg', NULL, NULL),
(40, 'Đá Marble Scopio (Tím sơn thủy)', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EPU11001</p>\r\n<p>Chủng loại: Đá marble màu tím</p>\r\n<p>Xuất xứ: India</p>\r\n</div>', 'epu11001-scopio-1-600x450.jpg', NULL, NULL),
(41, 'Đá Marble Serpeggiante', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EGY11002</p>\r\n<p>Chủng loại: Đá marble màu ghi</p>\r\n<p>Xuất xứ: Italia</p>\r\n</div>', 'serpeggiante-egy11002-1-600x450.jpg', NULL, NULL),
(42, 'Đá Marble Serpeggiante Coffee', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: &lt;strong&gt;EGY11003</p>\r\n<p>Chủng loại: Đá marble màu ghi</p>\r\n<p>Xuất xứ: China</p>\r\n</div>', 'serpeggiante-coffee_marble_1.jpg', NULL, NULL),
(43, 'Đá Marble Sky Gold', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EYE11007</p>\r\n<p>Chủng loại: Mẫu đá Marble màu vàng</p>\r\n<p>Đá marble Sky Gold với màu sắc vàng kết hợp cùng những mảng màu cam&nbsp;thích hợp làm đá ốp tường, cầu thang, nền,…</p>\r\n</div>', 'sky-gold-1-600x450.jpg', NULL, NULL),
(44, 'Đá Marble Spanish Gold', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EYE11005</p>\r\n<p>Chủng loại: Mẫu đá Marble màu vàng</p>\r\n<p>Xuất xứ: Spain</p>\r\n</div>', 'eye11005-spanish-gold-1-600x450.jpg', NULL, NULL),
(45, 'Đá Marble Spider Pink', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EPI11003</p>\r\n<p>Chủng loại: Đá marble màu hồng</p>\r\n<p>Xuất xứ</p>\r\n</div>', 'epi11003-spider-pink-1-600x450.jpg', NULL, NULL),
(46, 'Đá Marble Spider White.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EWH11012</p>\r\n<p>Chủng loại: Đá marble màu trắng</p>\r\n<p>Xuất xứ: Iran</p>\r\n</div>', 'spider-white-marble-1-min-600x450.jpg', NULL, NULL),
(47, 'Đá Marble Sunny Beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11031</p>\r\n<p>Chủng loại: Mẫu đá Marble màu vàng</p>\r\n<p>Xuất xứ: Egypt</p>\r\n</div>', 'sunny-beige-600x450.jpg', NULL, NULL),
(48, 'Đá Marble Tiger beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11032</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'ebe11032-tiger-beige-1-600x450.jpg', NULL, NULL),
(49, 'Đá Marble Trắng Italia (Y)', 1, '<div class=\"product-short-description\">\r\n	<p>Đá trắng Ý là một trong những loại đá marble tự nhiên đẹp và sang trọng. Loại đá này rất được ưa chuộng và có nguồn gốc từ Ý. Nó cũng được hình thành trong quá trình kiến tạo vỏ trái đất. Vì vậy, đá trắng Ý có nhiều ưu điểm nổi bật.</p>\r\n<div><strong>Giá:</strong></div>\r\n<div>Thi công mặt tiền: 2.800.000 VNĐ</div>\r\n<div>Thi công cầu thang tam cấp: 2.400.000 VNĐ</div>\r\n<div>Thi công bếp: 2.600.000 VNĐ</div>\r\n</div>', 'da-marble-trang-y-01.jpg', NULL, NULL),
(50, 'Đá marble trắng volakas', 1, '<div class=\"product-short-description\">\r\n	<p>Đá trắng Ý là một trong những loại đá marble tự nhiên đẹp và sang trọng. Loại đá này rất được ưa chuộng và có nguồn gốc từ Ý. Nó cũng được hình thành trong quá trình kiến tạo vỏ trái đất. Vì vậy, đá trắng Ý có nhiều ưu điểm nổi bật.</p>\r\n<div><strong>Giá:</strong></div>\r\n<div>Thi công mặt tiền: 2.800.000 VNĐ</div>\r\n<div>Thi công cầu thang tam cấp: 2.400.000 VNĐ</div>\r\n<div>Thi công bếp: 2.600.000 VNĐ</div>\r\n</div>', 'da-marble-trang-volakas-01-600x600.jpg', NULL, NULL),
(51, 'Đá Marble tự nhiên Baltico.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11002</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Italy</p>\r\n</div>', '43-600x450.jpg', NULL, NULL),
(52, 'Đá Marble Tự Nhiên Cream', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11010</p>\r\n<p>Chủng loại: Đá marble màu kem (be)<br>\r\nXuất xứ</p>\r\n</div>', 'cream-marble-min-600x450.jpg', NULL, NULL),
(53, 'Đá Marble Tự Nhiên Sofitan.', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11041</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'sofita-min-600x450.jpg', NULL, NULL),
(54, 'Đá Marble Wood Italia', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11037</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Italy</p>\r\n</div>', 'ebe11037-wood-italia-1-600x450.jpg', NULL, NULL),
(55, 'Đá Marble Wooden Beige', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11043</p>\r\n<p>Chủng loại: Đá marble màu kem</p>\r\n<p>Xuất xứ: China</p>\r\n</div>', 'wooden-beige-600x450.jpg', NULL, NULL),
(56, 'Đá Marble Wooden Black', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBL11007</p>\r\n<p>Chủng loại: Đá marble màu đen</p>\r\n<p>Xuất xứ: China</p>\r\n</div>', 'wooden-black-600x450.jpg', NULL, NULL),
(57, 'đá Rosa Light vàng', 1, '<div class=\"product-short-description\">\r\n	<p>Đá marble – đá cẩm thạch hiện nay là dòng đá cao cấp, sang trọng và rất đẹp được ưa chuộng trên thị trường. Đá Rosa Light vàng còn có tên khác là đá Rosa light Extra, rosa light. Đây là đá cẩm thạch tự nhiên được khai thác từ Na Uy với nhiều ưu điểm nổi bật.</p>\r\n<p><strong>Giá:</strong></p>\r\n<div>Thi công mặt tiền: 1.900.000 VNĐ</div>\r\n<div>Thi công cầu thang tam cấp: 1.700.000 VNĐ</div>\r\n<div>Thi công bếp: 1.800.000 VNĐ</div>\r\n</div>', 'da-rosa-light-01.jpg', NULL, NULL),
(58, 'Đá trắng sứ nhân tạo', 1, '<div class=\"product-short-description\">\r\n	<p>Đá trắng sứ là một loại đá marble nhân tạo phổ biến trên thị trường. Chúng thường được gọi với các tên như: trắng sứ nhân tạo, trắng sứ bột, trắng sứ dẻo…</p>\r\n<p><strong>Giá:</strong></p>\r\n<div>Thi công mặt tiền: 2.200.000 VNĐ</div>\r\n<div>Thi công cầu thang tam cấp: 1.950.000 VNĐ</div>\r\n<div>Thi công bếp: 1.950.000 VNĐ</div>\r\n</div>', 'da-marble-trang-su-001.jpg', NULL, NULL),
(59, 'Marble Royal Cream', 1, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: EBE11026</p>\r\n<p>Chủng loại: Đá marble màu kem (be)</p>\r\n<p>Xuất xứ: Turkey</p>\r\n</div>', 'royal-cream-marble_1-1-600x600.jpg', NULL, NULL),
(60, 'Đá Đỏ Ruby Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Đá đỏ Ruby Brazil là loại đá granite tự nhiên với màu đỏ nổi bật và đặc trưng khó nhầm lẫn với các loại đá khác. Đá được hình thành do sự dồn nén nham thạch ở dưới lớp vỏ của trái đất. Cần rất nhiều thời gian để hình thành nên đá đỏ Ruby Brazil nên chúng có độ bền, chắc cực kỳ tốt.</p>\r\n<p><strong>Giá:</strong></p>\r\n<ul>\r\n<li>Thi công mặt tiền: 1.550.000 VNĐ</li>\r\n<li>Thi công cầu thang tam cấp: 1.400.000 VNĐ</li>\r\n<li>Thi công bếp: 1.300.000 VNĐ</li>\r\n</ul>\r\n</div>', 'da-hoa-cuong-do-ruby-brazil-01.jpg', NULL, NULL),
(61, 'Đá Granite “tự nhiên” Antique Persa', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12012</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Antique Persa là dòng đá tự nhiên có xuất xứ từ Brazil. Chúng có màu vàng chủ đạo, có các vệt khoáng sản đen đậm trên bề mặt đá, tùy từng slab. khối đá mà chúng có kích thước khác nhau.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'antique-pesa-2100-dahoacuong-1-600x450.jpg', NULL, NULL),
(62, 'Đá Granite Abalute Black', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL 12001</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Absolute Black với màu đen đặc trưng cùng đặc tính nổi trội phù hợp với hạng mục nội và ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebl12001-absalute-black-1-1-600x450.jpg', NULL, NULL),
(63, 'Đá Granite Amaralo', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12006</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Granite có xuất xứ từ Brazil, phù hợp cho các hạng mục bậc tam cấp, mặt tiền, đá ốp bếp, bàn đá lavabo.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'vang-da-bao-600x450.jpg', NULL, NULL),
(64, 'Đá Granite Bahia Green', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EGR12004</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Green)</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Bahia green có màu sắc xanh đen có xuất xứ tại Brazil. Chúng rất cứng và bền, thích hợp cho các hạng mục nội thất như đá ốp tường, mặt tiền, đá ốp tam cấp, cầu thang,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'egr12004-bahia-green-1-600x450.jpg', NULL, NULL),
(65, 'Đá Granite Bianco Antico', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12015</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Bianco Antico có màu sắc trắng xám xuất xứ từ Brazil. Chúng mang đầy đủ đặc tính của hoa cương nên có thể sử dụng trong hầu hết các hạng mục đá ốp lát.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'bianco-torrichino-1-600x450.jpg', NULL, NULL),
(66, 'Đá Granite Bianco Torrichino', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm :&nbsp;<strong>EWH12016</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Bianco Torrichino có xuất xứ từ Brazil, có màu sắc giống đá Antique White nên dễ bị nhầm lẫn. Chúng phù hợp với tất cả các hạng mục ốp lát: cầu thang, bếp, nhà tắm,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'bianco-torrichino-600x450.jpg', NULL, NULL),
(67, 'Đá Granite Black Galaxy (Kim Sa Trung)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>ELB12013</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Granite Black Galaxy (Kim Sa Trung) có xuất xứ từ Ấn Độ phù hợp cho hầu hết các hạng mục như: đá ốp bếp, đá hoa cương cầu thang, bàn đá lavabo, đá ốp mặt tiền,…</p>\r\n</div>', 'slab-da-kim-sa-trung-600x450.jpg', NULL, NULL),
(68, 'Đá Granite Blue Pearl (Xà cừ xám xanh)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBU12003</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Blue)</p>\r\n<p>Xuất xứ: Nauy</p>\r\n<p>Đá hoa cương Blue Pearl (Xà cừ xám xanh) có màu sắc xám, xanh và be đặc biệt phù hợp cho các hạng mục đá ốp mặt tiền, đá ốp bếp, cầu thang và bậc tam cấp.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'egy12002-xa-cu-xam-xanh-1-600x450.jpg', NULL, NULL),
(69, 'Đá Granite Canombo màu đen xám', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12004</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Đá hoa cương Conombo có màu sắc đen hơi ngả xám do có nhiều khoáng sản màu trắng li ti trên bề mặt đá. Chúng cứng, bền bỉ,.. phù hợp cho các hạng mục nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'canobo-600x442.jpg', NULL, NULL),
(70, 'Đá Granite Cianitus', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12020</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Cianitus màu đen pha xám, nâu, trắng đục,… có xuất xứ từ Brazil. Với tông màu tối, chúng có thể kết hợp cùng với nội thất màu đen tạo tính tương phản hoặc màu gỗ tạo sự ấm áp.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'cianitus-600x450.jpg', NULL, NULL),
(71, 'Đá Granite Colombia Persa', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12013</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Colombia</p>\r\n<p>Đá hoa cương Colombia Persa là sự pha trộn của rất nhiều khoáng sản có màu sắc khác nhau: vàng, xanh, nâu, trắng, xám. Chúng phù hợp cho các hạng mục nội và ngoại thất như mặt tiền, nền nhà, cầu thang bếp.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'colombia-persa-_2050-dahoacuong-600x450.jpg', NULL, NULL),
(72, 'Đá Granite Colombia Salsa', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12014</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Colombia</p>\r\n<p>Đá hoa cương Colombia Salsa là dòng đá tự nhiên có sự pha trộn giữa màu vàng đất với các màu xanh dương, trắng, xám tạo nên tổng thể đặc biệt, ấn tượng. Chúng phù hợp với hầu hết các hạng mục đá ốp lát.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'colombia-salsa-600x450.jpg', NULL, NULL),
(73, 'Đá Granite Colonial Blue', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYG12004</strong></p>\r\n<p>Chủng loại: Đá granite màu xám</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Colonial Blue hay còn gọi là đá Blue Dream có màu sắc kì lạ với nền trắng kết hợp cùng các khoáng sản màu xám, nâu, xanh,… thích hợp làm đá trang trí nội và ngoại thất</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'colonial-blue-600x450.jpg', NULL, NULL),
(74, 'Đá Granite Cốm Vàng Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12009</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Granite Cốm vàng Brazil có nguồn gốc từ Brazil, chúng là sự kết hợp của các khoáng sản màu xanh lá đậm, màu đen và màu vàng, chúng phân bố đều trên bề mặt nên có ít biến thể.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'com-vang-brazin-600x450.jpg', NULL, NULL),
(75, 'Đá Granite Delicatus White', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12009</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Granite Cốm vàng Brazil có nguồn gốc từ Brazil, chúng là sự kết hợp của các khoáng sản màu xanh lá đậm, màu đen và màu vàng, chúng phân bố đều trên bề mặt nên có ít biến thể.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'delicatus-white-1.jpg', NULL, NULL),
(76, 'Đá Granite Đen Ấn Độ Bông Trắng', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12006</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Đen Ấn Độ Bông Trắng có nguồn gốc từ Ấn Độ, xen kẽ nền đen được điểm bằng các hạt khoáng sản trắng nên nhìn tổng thể chúng thường cho cảm giác đá màu xám.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'denandobongtrang1-600x444.jpg', NULL, NULL),
(77, 'Đá Granite Đen An Khê', 2, 'Mã sản phẩm: EBL120217\r\n\r\nChủng loại: Đá granite màu đen\r\n\r\nXuất xứ: Việt Nam\r\n\r\nĐá hoa cương Đen An Khê là dòng đá của Việt Nam, chúng có màu <div class=\"product-short<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL120217</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Đen An Khê là dòng đá của Việt Nam, chúng có màu đen xám. Giá của dòng đá hoa cương này rẻ hơn so với các dòng đá đen ngoại nhập khác.</p>\r\n<p>&nbsp;</p>\r\n</div>-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL120217</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Đen An Khê là dòng đá của Việt Nam, chúng có màu đen xám. Giá của dòng đá hoa cương này rẻ hơn so với các dòng đá đen ngoại nhập khác.</p>\r\n<p>&nbsp;</p>\r\n</div>đ<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL120217</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Đen An Khê là dòng đá của Việt Nam, chúng có màu đen xám. Giá của dòng đá hoa cương này rẻ hơn so với các dòng đá đen ngoại nhập khác.</p>\r\n<p>&nbsp;</p>\r\n</div>n xám. Giá của dòng đá hoa cương này rẻ hơn so với các dòng đá đen ngoại nhập khác.', 'ebl12017-den-an-khe-1-600x450.jpg', NULL, NULL),
(78, 'Đá Granite Đen Cám Ấn Độ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12007</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Đen Cám Ấn Độ với màu sắc đen lấm tấm hạt màu trắng li ti trên bề mặt, dễ dàng kết hợp cùng các đồ nội thất khác đem đến vẻ đẹp cho công trình.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebl12007-den-cam-an-do-1-600x451.jpg', NULL, NULL),
(79, 'Đá Granite Đỏ Hoa Phượng', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPK12003</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá granite Hồng Yaly là dòng đá hoa cương của Việt Nam cứng, bền bỉ, được sử dụng cho các hạng mục cầu thang, mặt tiền, bếp,…</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ere12008-do-hoa-phuong-1-600x450.jpg', NULL, NULL),
(80, 'Đá Granite Đỏ Phần Lan', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>ERE12007</strong></p>\r\n<p>Chủng loại: Đá granite màu đỏ</p>\r\n<p>Xuất xứ: Finland (Phần Lan)</p>\r\n<p>Đác hoa cương Đỏ Phần Lan có xuất xứ từ Virojoki, Phần Lan với các hạt khoáng sản màu đỏ, đen, xanh hoặc xám xen kẽ nhau. Chúng phù hợp cho các hạng mục nội và ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'do-phan-lan-ere12007-1-600x449.jpg', NULL, NULL),
(81, 'Đá Granite Emerald Pearl (Xà Cừ Xanh Đen)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBU12002</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Blue)</p>\r\n<p>Xuất xứ: Norway</p>\r\n<p>Đá hoa cương Emerald Pearl (Xà Cừ Xanh Đen) là dòng đá tự nhiên của Nauy với màu sắc đen pha trộn các khoáng sản xà cừ lấp lánh. Chúng thích hợp ốp mặt bếp, cầu thang, mặt tiền, lát sàn, ốp tường.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebl12015-xa-cu-den-anh-xanh-1-600x450.jpg', NULL, NULL),
(82, 'Đá Granite Golden Forest Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12001</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Golden Forest Brazil được khai thác tại Brazil. chúng mang sắc vàng ấm, pha trộn cùng màu kem, nâu,… đặc biệt phù hợp cho những hạng mục mang hơi hướng cổ điển.</p>\r\n</div>', 'eye12001-vang-brazin-1-600x450.jpg', NULL, NULL),
(83, 'Đá Granite Green Butterfly', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EGR12007</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Green)</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Green Butterfly mang sắc xanh chủ đạo cùng đốm trắng, xám có xuất xứ từ Espirito Santo, Brazil thích hợp cho các hạng mục ốp lát nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'egr12007-green-butterfly-1-600x450.jpg', NULL, NULL),
(84, 'Đá Granite Green Juparana', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EGR12003</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Green)</p>\r\n<p>Đá hoa cương Green Juparana (Xanh sa mạc) có màu sắc xanh xen kẽ màu trắng, kem, đen tạo thành các đường vân đặc sắc giống như một bức tranh đá, thích hợp cho các hạng mục ốp lát nội, ngoại thất, đặc biệt là đá ốp tường trang trí</p>\r\n<p>&nbsp;</p>\r\n</div>', 'xanh-sa-macs-600x443.jpg', NULL, NULL),
(85, 'Đá Granite Gucci Black', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12021</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Gucci Black là loại đá đối vân được các nhà thiết kế tìm kiếm rất nhiều vì chúng mang màu sắc mạnh mẽ, sự kết hợp ấn tượng của đen, vàng, trắng, xám.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'gucci-black-600x450.jpg', NULL, NULL),
(86, 'Đá Granite Hồng Gia Lai', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPK12001</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Hồng Gia Lai có xuất xứ Việt Nam với màu sắc hồng từ sự pha trộn của các hạt khoáng sản màu cam, hồng, đen, xám, trắng,… Chúng có mức giá thành khá rẻ so với các dòng đá ngoại nhập.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'epk12001-hong-gialai-1-600x450.jpg', NULL, NULL),
(87, 'Đá Granite Hồng Phan Rang', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPK12001</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương granite Hồng Phan Rang có xuất xứ tại Việt Nam với sự kết hợp của các khoáng sản màu đen, cam vàng, trắng và xám. Chúng có mức giá rẻ, phù hợp với nhiều hạng mục như bếp, nền, cầu thang, phòng tắm,…</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'hong-phan-rangs-600x450.jpg', NULL, NULL),
(89, 'Đá Granite Hồng Yaly', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPK12003</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá granite Hồng Yaly là dòng đá hoa cương của Việt Nam cứng, bền bỉ, được sử dụng cho các hạng mục cầu thang, mặt tiền, bếp,…</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'phan-ngoc-bong-lon-600x450.jpg', NULL, NULL),
(90, 'Đá Granite Imperial White', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>EBE12001</strong></p>\r\n<p>Chủng loại: Đá granite màu kem</p>\r\n<p>Xuất xứ: India</p>\r\n<p>Đá hoa cương Imperial White có xuất xứ từ Ấn Độ với màu sắc đặc trưng là kem, đen, vàng thích hợp làm đá ốp bếp, đá hoa cương cầu thang, bàn đá lavabo,..</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebe12001-imperial-white-1-600x450.jpg', NULL, NULL),
(91, 'Đá Granite Kashmir Gold', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12011</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Kashmir Gold với xuất xứ từ Ấn Độ, được sử dụng trong nhiều hạng mục như đá ốp bếp, bàn ăn, Lavabo hay đá hoa cương cầu thang.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'eye12011-kashmir-gold-1-600x450.jpg', NULL, NULL),
(92, 'Đá Granite KP Green', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>EGR12011</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Green)</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương KP Green đến từ một số mỏ đá của Ấn Độ, có các đường vân xám trắng đẹp mắt. Chúng được ứng dụng trong các công trình thương mại, biệt thự, nhà ở, cho nhiều hạng mục ốp lát như bếp cầu thang, nền nhà, lavabo,…</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'kp-green-600x450.jpg', NULL, NULL),
(93, 'Đá Granite Magma Black', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBL12022</strong></p>\r\n<p>Chủng loại: Đá granite màu đen</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Magma Black màu đen xen kẽ với đường vân trắng, xám tạo đường nét gần giống như đá marble nhưng chúng lại vượt trội hơn khi có thể chịu nhiệt, cứng, bền bỉ hơn, thích hợp cho các hạng mục nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'magma-black-600x450.jpg', NULL, NULL),
(94, 'Đá Granite Magma Gold khai thác Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12017</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Magma Gold có nền vàng kết hợp với đường vân màu đen, nâu mạnh mẽ đến từ các mỏ đá của Brazil.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'magma-gold-1-600x450.jpg', NULL, NULL),
(95, 'Đá Granite Metallica (Trắng Mắt Rồng)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12013</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: China</p>\r\n<p>Đá Granite Metallica với đặc trưng màu trắng, xám đen và các đốm nhỏ màu đen phù hợp cho tất cả các hạng mục nội và ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ewh12013-trang-mat-rong-1-600x450.jpg', NULL, NULL),
(96, 'Đá Granite Moon White', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12004</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: India</p>\r\n<p>Đá Granite Moon White.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'moon-white-granites-600x450.jpg', NULL, NULL),
(97, 'Đá Granite New Imperial Red', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>ERE12006</strong></p>\r\n<p>Chủng loại: Đá granite màu đỏ</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương hay còn gọi là đá Granite New Imperial Red được khai thác tại Ấn Độ có màu đỏ được điểm xuyết bằng các hạt khoáng sản màu đen lấm tấm. Thích hợp cho các hạng mục nội ngoại thất, cầu thang, bếp, mặt tiền,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ere12006-ruby-red-1-1-600x450.jpg', NULL, NULL),
(98, 'Đá Granite nhập khẩu White Diamond', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12021</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương White Diamond màu trắng có xuất xứ từ Brazil, chúng là sự pha trộn của màu kem, vàng, đen, xám… phân bố khắp bề mặt cho cái nhìn độc đáo, không bị “đụng hàng”.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'white-diamond-600x450.jpg', NULL, NULL),
(99, 'Đá Granite Normandy', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12019</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Normandy là sự pha trộn với màu sắc vàng, trắng, kem, nâu sẫm có xuất xứ từ Brazil. Chúng thích hợp cho tất cả các hạng mục nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'normandy-600x450.jpg', NULL, NULL),
(100, 'Đá granite Ouro Yellow', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12010</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Ouro Yellow có xuất xứ từ nước Brazil thích hợp với các hạng mục như đá ốp bếp, bàn đá lavabo, ngoài ra hạng mục cầu thang và mặt tiền ít được sử dụng hơn.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ouro-yellow-copy-600x450.jpg', NULL, NULL),
(101, 'Đá Granite Paradiso Bash (Tím Sa Mạc)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPU12002</strong></p>\r\n<p>Chủng loại: Đá granite màu tím</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Paradiso Bash hay còn gọi là Tím Sa Mạc có xuất xứ tại Indian, là sự pha trộn màu sắc tím, nâu, đen, xám,… các đường vân uốn lượn sóng tạo nên bức tranh đá đẹp tuyệt vời.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'epu12002-tim-sa-mac-600x450.jpg', NULL, NULL),
(102, 'Đá Granite Paradiso Classic', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPK12004</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Paradiso Classic hay còn gọi là đá hoa cương hồng sa mạc có xuất xứ từ Ấn Độ mang màu sắc cổ điển ấn tượng, rất cứng và bền.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'pink-paradise-hong-sa-mac-epk12004-600x450.jpg', NULL, NULL),
(103, 'Đá Granite Prada Gold', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12020</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Prada Gold màu vàng, kem hoặc màu cam, hồng được tô điểm bằng các đường vân màu đen, xám ấn tượng có xuất xứ từ Ấn Độ.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'prada-gold-600x449.jpg', NULL, NULL),
(104, 'Đá Granite Red Romantico', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>ERE12004</strong></p>\r\n<p>Chủng loại: Đá granite màu hồng</p>\r\n<p>Granite Red Romantico</p>\r\n<p>&nbsp;</p>\r\n</div>', 'rea-romantic-600x450.jpg', NULL, NULL),
(105, 'Đá Granite Red Ruby (Đỏ Ấn Độ)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>ERE12005</strong></p>\r\n<p>Chủng loại: Đá granite màu đỏ</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Red Ruby hay còn gọi là Đỏ Ấn Độ có độ cứng, độ bền nổi bật thích hợp với các hạng mục mặt tiền, bậc tam cấp, cầu thang, mặt bếp,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ere12005-do-an-do-1-600x450.jpg', NULL, NULL),
(106, 'Đá Granite River Bordeaux', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12021</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương River Bordeaux có xuất xứ từ Minas Gerais, Brazil. Chúng mang một màu sắc cổ điển, tông màu kem, vàng, nâu, cam, trắng sữa được sử dụng rất nhiều cho hạng mục đá ốp bếp tại thị trường nước ngoài.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'river-bordeaux-600x450.jpg', NULL, NULL),
(107, 'Đá Granite Siena Bordeaux', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12002</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Siena Bordeaux là một loại đá đối vân điển hình có sự pha trộn giữa các màu kem, vàng, nâu, đỏ, xám,.. cho màu sắc ấn tượng, sang trọng. Đặc điểm, tính chất của dòng đá này phù hợp cho hạng mục nội ngoại thất: bếp, cầu thang, lát nền, tam cấp, mặt tiền,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'siena-bordeaux-600x450.jpg', NULL, NULL),
(108, 'Đá Granite Snow White', 2, '<div class=\"product-short-description\">\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Snow White màu trắng có xuất xứ từ Brazil phù hợp cho tất cả các hạng mục ốp lát đá.</p>\r\n</div>', '1-Copy-600x450.jpg', NULL, NULL),
(109, 'Đá Granite Solarius Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12022</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Solarius màu vàng ấm điểm chấm bằng màu nâu sậm, đen, trắng có xuất xứ từ Brazil. Dòng đá này thích hợp cho các hạng mục nội ngoại thất: cầu thang, nền, mặt tiền, bếp, lavabo, bàn ăn,…Eurostone cung cấp, gia công và thi công theo yêu của quý khách hàng. Sản phẩm bảo hành từ 1-5 năm.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'solarius-600x450.jpg', NULL, NULL),
(110, 'Đá Granite Splendor Cream', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBE12003</strong></p>\r\n<p>Chủng loại: Đá Granite màu kem</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Splendor Cream màu kem được tô điểm bởi các khoáng sản đen xám có xuất xứ từ Brazil, phù hợp với các hạng mục nội và ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'splendor-cream-600x450.jpg', NULL, NULL),
(111, 'Đá Granite Splendor Gold', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12023</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Splendor Gold màu vàng pha lẫn khoáng sản đen, nâu, xám có xuất xứ từ Brazil. Dòng đá này có thể sử dụng cho tất cả các hạng mục nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'splendor-gold-600x450.jpg', NULL, NULL),
(112, 'Đá Granite Tan Brown (nâu Anh Quốc)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>EBR12005</strong></p>\r\n<p>Chủng loại: Đá granite màu nâu</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương nâu Anh Quốc (Tan Brown) được sử dụng rất nhiều trong các hạng mục đá ốp bếp, ốp đá cầu thang, mặt tiền, lavabo,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'tan-brown-granite-600x450.jpg', NULL, NULL),
(113, 'Đá Granite Tím Khánh Hòa – Việt Nam', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPU12001</strong></p>\r\n<p>Chủng loại: Đá granite màu tím</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Tím Khánh Hòa là dòng đá tự nhiên của Việt Nam có màu sắc xám tím chủ đạo và khá đồng đều trên bề mặt. Chúng phù hợp với các hạng mục đá ốp lát ngoại thất: cầu thang, mặt tiền, bếp, nền,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'da-hoa-cuong-tim-mong-co-1-600x450.jpg', NULL, NULL),
(114, 'Đá Granite Trắng Bình Định', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12009</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Trắng Bình Định có nguồn gốc từ huyện Phù Mỹ, Bình Định, Việt Nam. Chúng có nền màu trắng xen lẫn các khoáng sản màu đen và xám, phù hợp với nhiều hạng mục như đá ốp bếp, mặt tiền, nền, cầu thang,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ewh12009-trang-binh-dinh-1-600x450.jpg', NULL, NULL),
(115, 'Đá Granite Trắng Mỹ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12006</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: USA</p>\r\n<p>Granite Trắng Mỹ</p>\r\n<p>&nbsp;</p>\r\n</div>', 'da-trang-mys-600x450.jpg', NULL, NULL),
(116, 'Đá Granite Trắng Suối Lau', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12001</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Trắng Suối Lau có nguồn gốc tại Việt Nam với màu sắc xanh, xám, đen xen kẽ, phân bố đều trên bề mặt đá. Chúng được sử dụng cho hầu hết các hạng mục ốp đá: đá ốp bếp, cầu thang, lát nền, mặt tiền,.. với mức giá mềm.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ewh12002-white-platinum-1-1-600x450.jpg', NULL, NULL),
(117, 'Đá Granite Trắng Xanh Tây Ban Nha', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12005</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Spain</p>\r\n<p>Đá hoa cương Trắng xanh Tây Ban Nha có xuất xứ từ Tây Bây Nha mang màu sắc trắng kết hợp cùng khoáng sản xám nhạt phù hợp với hầu hết các hạng mục ốp lát</p>\r\n<p>&nbsp;</p>\r\n</div>', 'trangxanhtbns-600x450.jpg', NULL, NULL),
(118, 'Đá Granite Tự Nhiên Brown Pearl', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>EBR12007</strong></p>\r\n<p>Chủng loại: Đá granite màu nâu</p>\r\n<p>Xuất xứ: Norway</p>\r\n<p>Đá hoa cương Brown Pearl hay còn gọi là nâu ngọc trai ánh tím có xuất xứ từ Nauy, là dòng đá đã đăng ký và cấp văn bằng bảo hộ của cơ quan sở hữu trí tuệ Quốc Gia.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'da-hoa-cuong-nau-ngoc-trai-anh-tim-600x450.jpg', NULL, NULL),
(119, 'Đá Granite Tự Nhiên Brown Safia', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm: <strong>EBR12006</strong></p>\r\n<p>Chủng loại: Đá granite màu nâu</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Brown Safia có xuất xứ tại Ấn Độ với sự pha trộn của các màu xanh dương, kem, nâu, nâu đỏ, đen,…phù hợp với hầu hết các hạng mục ốp lát nội ngoại thất.</p>\r\n</div>', 'saphire-brown-close-up-600x450.jpg', NULL, NULL),
(120, 'Đá Granite Tự Nhiên Colonial Gold – Ấn Độ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12015</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: India</p>\r\n<p>Đá hoa cương Colonial Gold màu kem hoặc vàng đậm có xuất xứ từ Ấn Độ, phù hợp cho các hạng mục ốp lát nội ngoại thất, đặc biệt là ốp đá bếp.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'colonial-gold-600x450.jpg', NULL, NULL),
(121, 'Đá Granite Tự Nhiên Delicatus Gold', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12016</strong></p>\r\n<p>Chủng loại: Đá Granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Delicatus Gold mang tông màu ấm, sự pha trộn hài hòa của màu vàng, nâu, kem, trắng, đen, có xuất xứ từ bang Esporito Santo, Brazil.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'delicatus-gold.jpg', NULL, NULL),
(122, 'Đá Granite tự nhiên Tím Mông Cổ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EPU12003</strong></p>\r\n<p>Chủng loại: Đá granite màu tím</p>\r\n<p>Xuất xứ: china</p>\r\n<p>Đá hoa cương màu tím mông cổ có xuất xứ tại Trung Quốc với các hạt khoáng sản màu tím nâu, đen cùng trắng, kem pha trộn vào nhau phù hợp cho các hạng mục đá lát nền, lát sảnh, bậc tam cấp,…</p>\r\n<p>&nbsp;</p>\r\n</div>', 'da-hoa-cuong-tim-mong-co-600x450.jpg', NULL, NULL),
(123, 'Đá Granite Tự Nhiên Torrone – Brazil', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EWH12019</strong></p>\r\n<p>Chủng loại: Đá granite màu trắng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Torrone màu trắng xám được điểm bằng khoáng sản vàng, đen, nâu,.. có xuất xứ từ Brazil. Chúng thuộc dòng đá hoa cương đối vân nên rất thích hợp cho các hạng mục đá ốp tường trang trí.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'torrone-600x450.jpg', NULL, NULL),
(124, 'Đá Granite Tự Nhiên Vàng Ánh Sao', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12007</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Granite vàng Ánh Sao có tổng thể màu vàng nhạt, cam, đen, các khoáng sản này phân bố khá đồng đều trên bề mặt, phù hợp cho nhiều hạng mục ốp lát đá nội ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'vang-anh-sao-min-600x450.jpg', NULL, NULL),
(125, 'Đá Granite Tự Nhiên Vàng Mỹ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12002</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: USA</p>\r\n<p>Đá hoa cương hay còn gọi là đá granite Vàng Mỹ có nền màu nhạt chủ đạo được tô điểm bằng các hạt khoáng sản màu đỏ nâu phân bố trên khắp bề mặt đá. Chúng phù hợp cho hầu hết các hạng mục như cầu thang, bếp, mặt tiền,…</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'eye12002-vang-my-1-600x450.jpg', NULL, NULL),
(126, 'Đá Granite tự nhiên Xanh Đen Ấn Độ', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EGR12006</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Green)</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Xanh Đen Ấn Độ có các hạt khoáng sản trắng xám phù hợp cho các hạng mục đá ốp lát nội, ngoại thất.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'xanh-den-an-dos-600x442.jpg', NULL, NULL),
(127, 'Đá Granite Tự Nhiên Yellow Nauy', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12008</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Indian</p>\r\n<p>Đá hoa cương Yellow Nauy có xuất xứ từ Ấn Độ với màu sắc kem, hồng, vàng nhạt, và khoáng sản màu đen rải rác trên bề mặt. Các dải khoáng sản màu sắc khác nhau song song và hòa quyện tạo vẻ đẹp riêng cho dòng đá.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'eye12008-yellow-nauy-1-600x450.jpg', NULL, NULL),
(128, 'Đá Granite Tự Nhiên Yellow Safia', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE12004</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Brazil</p>\r\n<p>Đá hoa cương Yellow Safia với màu vàng nâu chủ đạo có xuất xứ từ Brazil. Đây là loại đá hoa cương có độ bền cao, thích hợp cho các hạng mục cả nội thất và ngoại thất</p>\r\n<p>&nbsp;</p>\r\n</div>', 'vang-saphia-960x720-600x450.jpg', NULL, NULL),
(129, 'Đá Granite Vàng Bình Định đậm', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE120032</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá granite Bình Định đạm là dòng đá tự nhiên nổi tiếng tại Việt Nam với mức giá rẻ, màu sắc dễ dàng kết hợp cùng với đồ nội thất khác.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'eye12003-vang-binh-dinh-1.jpg', NULL, NULL);
INSERT INTO `products` (`id`, `name`, `id_type`, `description`, `image`, `created_at`, `updated_at`) VALUES
(130, 'Đá Granite Vàng Bình Định nhạt', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EYE120031</strong></p>\r\n<p>Chủng loại: Đá granite màu vàng</p>\r\n<p>Xuất xứ: Việt Nam</p>\r\n<p>Đá hoa cương Vàng Bình Định nhạt có xuất xứ tại tỉnh Bình Định của Việt Nam, chúng có các hạt đen lấm tấm trên nền đá vàng nhạt, phù hợp với nhiều hạng mục đá ốp lát nội ngoại thất với mức giá rẻ.</p>\r\n<p>&nbsp;</p>\r\n</div>', 'vang-binh-dinh-nhat-600x450.jpg', NULL, NULL),
(131, 'Đá Granite Volga Blue (Xà Cừ Ngọc Trai)', 2, '<div class=\"product-short-description\">\r\n	<p>Mã sản phẩm:&nbsp;<strong>EBU12001</strong></p>\r\n<p>Chủng loại: Đá granite màu xanh (Blue)</p>\r\n<p>Xuất xứ: Nauy</p>\r\n<p>Đá hoa cương Volga Blue Pearl (Xà cừ ngọc trai) có xuất xứ từ Ukarine, là loại đá đa xà cừ có màu sắc đen, xanh đậm pha xám, ánh lên khi gặp ánh sáng.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', 'ebl12016-xa-cu-ngoc-trai-1-600x450.jpg', NULL, NULL),
(132, 'Đá Granite White Juparana (Trắng Sa Mạc)', 2, NULL, 'trang-sa-macs-600x450.jpg', NULL, NULL),
(133, 'Đá Granite White Kashmir', 2, NULL, 'ewh12003-white-kashmir-1-600x450.jpg', NULL, NULL),
(134, 'Đá Granite White Orion', 2, NULL, 'da-hoa-cuong-do-ruby-brazil-01-Copy-600x450.jpg', NULL, NULL),
(135, 'Đá Granite White Platinum ( Trắng Bạch Kim A)', 2, NULL, 'ewh12002-white-platinum-1-600x450.jpg', NULL, NULL),
(136, 'Đá Granite Xanh Phan Rang – Bình Định', 2, NULL, 'egr12009-xanh-phan-rang-1-600x451.jpg', NULL, NULL),
(137, 'Đá Granite Xanh Tằm', 2, NULL, 'da-hoa-cuong-xanh-tam.jpg', NULL, NULL),
(138, 'Đá Granite Yellow Butterfly', 2, NULL, 'butterfly-yellow-granite1-600x450.jpg', NULL, NULL),
(139, 'Đá Grantie White Myanmar', 2, NULL, 'ewh12012-white-myanmar-1-600x450.jpg', NULL, NULL),
(140, 'Đá Hoa Cương Đen Phú Yên', 2, NULL, 'ebl12018-den-phu-yen-1-600x450.jpg', NULL, NULL),
(141, 'Đá Hoa Cương Granite Hassan Green', 2, NULL, 'da-hoa-cuong-hassan-green-600x450.jpg', NULL, NULL),
(142, 'Đá Hoa Cương Xanh Côn Đảo', 2, NULL, 'xanh-con-dao.gif', NULL, NULL),
(143, 'Đá Kim Sa Trung', 2, NULL, 'da-kim-sa-trung-11.jpg', NULL, NULL),
(144, 'Đá kim sa xanh', 2, NULL, 'da-kim-sa-xanh-01-600x550.jpg', NULL, NULL),
(145, 'Đá Nâu Anh Quốc', 2, NULL, 'da-nau-anh-quoc.jpg', NULL, NULL),
(146, 'Đá tự nhiên Granite Blue Jade nhập khẩu Madagascar', 2, NULL, 'quay-ba-da-hoa-cuong-min-1-600x450.jpg', NULL, NULL),
(147, 'Đá Tự Nhiên Granite G20 – Ấn Độ', 2, NULL, 'da-hoa-cuong-g20-600x450.jpg', NULL, NULL),
(148, 'Đá Tự Nhiên Granite Kim Sa Cám – Ấn Độ', 2, NULL, 'kimsacam1-600x443.jpg', NULL, NULL),
(149, 'Đá tự nhiên Granite Mascarello', 2, NULL, 'mascarello-600x450.jpg', NULL, NULL),
(150, 'Đá Tự Nhiên Granite Purple Dunes', 2, NULL, 'purple-dunes-600x450.jpg', NULL, NULL),
(151, 'Đá Tự Nhiên Granite Sahara Yellow', 2, NULL, 'sahara-yellow.jpg', NULL, NULL),
(152, 'Đá Tự Nhiên Granite Super Black ( Đen Ấn Độ)', 2, NULL, 'ebl12005-den-an-do-1-600x450.jpg', NULL, NULL),
(153, 'Granite Red Japarana', 2, NULL, 'ere12001-do-sa-mac-1-600x450.jpg', NULL, NULL),
(154, 'Đá Mosaic 001', 3, NULL, 'e01-r-chip-size-23x23mm-600x600.jpg', NULL, NULL),
(155, 'Đá Mosaic 002', 3, NULL, 'ed01-r-chip-size-15x15mm-600x600.jpg', NULL, NULL),
(156, 'Đá Mosaic 003', 3, NULL, 'ed01-r-chip-size-48x48mm-600x603.jpg', NULL, NULL),
(157, 'Đá Mosaic 004', 3, NULL, 'ed02-r-chip-size-15x32mm-600x600.jpg', NULL, NULL),
(158, 'Đá Mosaic 005', 3, NULL, 'ed02-r-chip-size-23x48mm-600x589.jpg', NULL, NULL),
(159, 'Đá Mosaic 006', 3, NULL, 'ed02-r-chip-size-48x98mm-600x502.jpg', NULL, NULL),
(160, 'Đá Mosaic 007', 3, NULL, 'el01-p-chip-size-15x15mm-600x603.jpg', NULL, NULL),
(161, 'Đá Mosaic 008', 3, NULL, 'el01-p-chip-size-23x23mm-600x593.jpg', NULL, NULL),
(162, 'Đá Mosaic 009', 3, NULL, 'el01-p-chip-size-48x48mm-600x598.jpg', NULL, NULL),
(163, 'Đá Mosaic 010', 3, NULL, 'el02-p-chip-size-23x48mm-600x598.jpg', NULL, NULL),
(164, 'Đá Mosaic 011', 3, NULL, 'el02-p-chip-size-23x48mm-1-600x598.jpg', NULL, NULL),
(165, 'Đá Mosaic 012', 3, NULL, 'el02-p-chip-size-23x98mm-600x598.jpg', NULL, NULL),
(166, 'Đá Mosaic 013', 3, NULL, 'ly02-r-chip-size-23x48mm-600x580.jpg', NULL, NULL),
(167, 'Đá Mosaic 014', 3, NULL, 'my01-p-chip-size-15x15mm-600x592.jpg', NULL, NULL),
(168, 'Đá Mosaic 015', 3, NULL, 'my01-p-chip-size-48x48mm-600x595.jpg', NULL, NULL),
(169, 'Đá Mosaic 016', 3, NULL, 'my01-r-chip-size-23x23mm-600x595.jpg', NULL, NULL),
(170, 'Đá Mosaic 017', 3, NULL, 'my02-p-chip-size-23x48mm-600x604.jpg', NULL, NULL),
(171, 'Đá Mosaic 018', 3, NULL, 'my02-p-chip-size-23x98mm-600x597.jpg', NULL, NULL),
(172, 'Đá Mosaic 019', 3, NULL, 'pm01-p-chip-size-15x15mm-1-600x596.jpg', NULL, NULL),
(173, 'Đá Mosaic 020', 3, NULL, 'pm01-p-chip-size-48x48mm1-600x602.jpg', NULL, NULL),
(174, 'Đá Mosaic 021', 3, NULL, 'pm01-p-chip-size-15x15mm-600x596.jpg', NULL, NULL),
(175, 'Đá Mosaic 022', 3, NULL, 'pm02-p-chip-size-23x48mm-600x597.jpg', NULL, NULL),
(176, 'Đá Mosaic 023', 3, NULL, 'pm02-p-chip-size-23x98mm-600x598.jpg', NULL, NULL),
(177, 'Đá Mosaic 024', 3, NULL, 'pm02-r-chip-size-23x48mm-600x595.jpg', NULL, NULL),
(178, 'Đá Mosaic 025', 3, NULL, 'sy01-r-chip-size-15x15mm-600x600.jpg', NULL, NULL),
(179, 'Đá Mosaic 026', 3, NULL, 'sy02-p-chip-size-23x48mm-1-600x595.jpg', NULL, NULL),
(180, 'Đá Mosaic 027', 3, NULL, 'sy02-p-chip-size-23x48mm-600x595.jpg', NULL, NULL),
(181, 'Đá Mosaic 028', 3, NULL, 'vb01-p-chip-size-15x15mm-600x613.jpg', NULL, NULL),
(182, 'Đá Mosaic 029', 3, NULL, 'vb01-p-chip-size-23x23mm-600x602.jpg', NULL, NULL),
(183, 'Đá Mosaic 030', 3, NULL, 'vb01-r-chip-size-15x15mm-600x602.jpg', NULL, NULL),
(184, 'Đá Mosaic 031', 3, NULL, 'vb02-p-chip-size-15x32mm-600x592.jpg', NULL, NULL),
(185, 'Đá Mosaic 032', 3, NULL, 'vb02-r-chip-size-15x32mm-600x592.jpg', NULL, NULL),
(186, 'Đá Mosaic 034', 3, NULL, 'emo22034.jpg', NULL, NULL),
(187, 'Đá Mosaic 035', 3, NULL, 'emo22035.jpg', NULL, NULL),
(188, 'Đá Mosaic 036', 3, NULL, 'emo22036-600x600.jpg', NULL, NULL),
(189, 'Đá Mosaic 037', 3, NULL, 'emo22037.jpg', NULL, NULL),
(190, 'Đá Mosaic 038', 3, NULL, 'emo22038.jpg', NULL, NULL),
(191, 'Đá Mosaic 039', 3, NULL, 'emo22039.jpg', NULL, NULL),
(192, 'Đá Mosaic 041', 3, NULL, 'emo22041-600x600.jpg', NULL, NULL),
(193, 'Đá Mosaic 042', 3, NULL, 'emo22042.jpg', NULL, NULL),
(194, 'Đá Mosaic 043', 3, NULL, 'emo22043.jpg', NULL, NULL),
(195, 'Đá Mosaic 044', 3, NULL, 'emo22044-600x600.jpg', NULL, NULL),
(196, 'Đá Mosaic 045', 3, NULL, 'emo22045.jpg', NULL, NULL),
(197, 'Đá Mosaic 047', 3, NULL, 'emo22047.jpg', NULL, NULL),
(198, 'Đá Mosaic 053', 3, NULL, 'emo22053.jpg', NULL, NULL),
(199, 'Đá Mosic 040', 3, NULL, 'emo22040.jpg', NULL, NULL),
(200, 'Mosaic 033', 3, NULL, 'emo22033.jpg', NULL, NULL),
(201, 'Mosaic 046', 3, NULL, 'emo22046.jpg', NULL, NULL),
(202, 'Mosaic 048', 3, NULL, 'emo22048.jpg', NULL, NULL),
(203, 'Mosaic 049', 3, NULL, 'emo22049-600x600.jpg', NULL, NULL),
(204, 'Mosaic 050', 3, NULL, 'emo22050.jpg', NULL, NULL),
(205, 'Mosaic 051', 3, NULL, 'emo22051.jpg', NULL, NULL),
(206, 'Mosaic 052', 3, NULL, 'emo22052.jpg', NULL, NULL),
(207, 'Border 034', 4, NULL, 'egh5001.jpg', NULL, NULL),
(208, 'Border 036', 4, NULL, 'egh5003.jpg', NULL, NULL),
(209, 'Border 037', 4, NULL, '21-min.jpg', NULL, NULL),
(210, 'Border 038', 4, NULL, 'egh5005-600x600.png', NULL, NULL),
(211, 'Border 056', 4, NULL, 'egh5007.png', NULL, NULL),
(212, 'Border 057', 4, NULL, 'egh5008-600x600.png', NULL, NULL),
(213, 'Border 058', 4, NULL, 'egh5009-600x600.png', NULL, NULL),
(214, 'Border 059', 4, NULL, 'egh5010-600x600.png', NULL, NULL),
(215, 'Border 060', 4, NULL, 'egh5011-600x197.jpg', NULL, NULL),
(216, 'Border 061', 4, NULL, 'egh5012.jpg', NULL, NULL),
(217, 'Border 062', 4, NULL, 'egh5013-600x600.jpg', NULL, NULL),
(218, 'Border 063', 4, NULL, 'egh5014-600x600.jpg', NULL, NULL),
(219, 'Border 064', 4, NULL, 'egh5015-600x600.jpg', NULL, NULL),
(220, 'Border 065', 4, NULL, 'egh5016-600x574.png', NULL, NULL),
(221, 'Đá hoa văn chữ nhật 028', 4, NULL, 'egh18028-600x450.png', NULL, NULL),
(222, 'Đá hoa văn chữ nhật 029', 4, NULL, 'egh18029-600x450.jpg', NULL, NULL),
(223, 'Đá hoa văn chữ nhật 030', 4, NULL, 'egh18030-600x450.png', NULL, NULL),
(224, 'Đá hoa văn chữ nhật 031', 4, NULL, 'egh18031-600x450.jpg', NULL, NULL),
(225, 'Đá hoa văn chữ nhật 033', 4, NULL, 'egh18033-600x450.jpg', NULL, NULL),
(226, 'Đá hoa văn oval 017', 4, NULL, 'egh2013.jpg', NULL, NULL),
(227, 'Đá hoa văn oval 018', 4, NULL, 'egh2009_1-600x453.jpg', NULL, NULL),
(228, 'Đá hoa văn oval 046', 4, NULL, 'egh2005_1-600x441.png', NULL, NULL),
(229, 'Đá hoa văn oval 047', 4, NULL, 'egh2006_1.png', NULL, NULL),
(230, 'Đá hoa văn oval 048', 4, NULL, 'egh2007_1.jpg', NULL, NULL),
(231, 'Đá hoa văn oval 049.', 4, NULL, 'egh2008_1.jpg', NULL, NULL),
(232, 'Đá hoa văn oval 050', 4, NULL, 'egh2010-600x390.jpg', NULL, NULL),
(233, 'Đá hoa văn tròn 007', 4, NULL, 'egh1007.jpg', NULL, NULL),
(234, 'Đá hoa văn tròn 008', 4, NULL, 'egh1010-600x600.jpg', NULL, NULL),
(235, 'Đá hoa văn tròn 009', 4, NULL, 'egh1011-600x599.jpg', NULL, NULL),
(236, 'Đá hoa văn tròn 011', 4, NULL, 'egh1012.jpg', NULL, NULL),
(237, 'Đá hoa văn tròn 012', 4, NULL, 'egh1017-1-600x600.jpg', NULL, NULL),
(238, 'Đá hoa văn tròn 051', 4, NULL, 'egh1008-600x617.jpg', NULL, NULL),
(239, 'Đá hoa văn tròn 052', 4, NULL, 'egh1009-600x600.png', NULL, NULL),
(240, 'Đá hoa văn tròn 053', 4, NULL, 'egh1014.jpg', NULL, NULL),
(241, 'Đá hoa văn tròn 054', 4, NULL, 'egh1015.jpg', NULL, NULL),
(242, 'Đá hoa văn tròn 055', NULL, NULL, 'egh1019-1.jpg', NULL, NULL),
(243, 'Đá hoa văn vuông 025', 4, NULL, 'egh3007.jpg', NULL, NULL),
(244, 'Đá hoa văn vuông 026', 4, NULL, 'egh3010.jpg', NULL, NULL),
(245, 'Đá hoa văn vuông 042', 4, NULL, 'egh3008.jpg', NULL, NULL),
(246, 'Đá hoa văn vuông 043', 4, NULL, '3-600x600.jpg', NULL, NULL),
(247, 'Đá hoa văn vuông 044', 4, NULL, 'egh3012.jpg', NULL, NULL),
(248, 'Đá hoa văn vuông 045', 4, NULL, 'egh3015.jpg', NULL, NULL),
(249, 'Chân cột đá 001', 5, NULL, '2010351185884427-copy.jpg', NULL, NULL),
(250, 'Chân cột đá 002', 5, NULL, 'wellest-shell-beige-marble-column-pedestal-pillar-base-column-base-model-pf005-p277181-1s.jpg', NULL, NULL),
(251, 'Chân côt đá tự nhiên 003', 5, NULL, 'wellest-shell-beige-marble-column-pedestal-pillar-base-column-base-model-pf016-p277202-1s-1.jpg', NULL, NULL),
(252, 'Cột dá 001', 5, NULL, 'cot30-600x767.jpg', NULL, NULL),
(253, 'Cột đá 002', 5, NULL, 'Cột đá 003', NULL, NULL),
(254, 'Cột đá 004', 5, NULL, 'cot14-600x600.jpg', NULL, NULL),
(255, 'Cột đá 005', 5, NULL, 'cot12-600x600.jpg', NULL, NULL),
(256, 'Cột đá 006', 5, NULL, 'cot11-600x600.jpg', NULL, NULL),
(257, 'Cột đá 007', 5, NULL, 'cot10-600x600.jpg', NULL, NULL),
(258, 'Cột đá 008', 5, NULL, 'cot1.gif', NULL, NULL),
(259, 'Dầu cột 001', 5, NULL, 'cot40-600x597.jpg', NULL, NULL),
(260, 'Đầu cột 002', 5, NULL, 'cot27-600x610.jpg', NULL, NULL),
(261, 'Đầu cột 003', 5, NULL, 'cot47-600x584.jpg', NULL, NULL),
(262, 'Đầu cột 004', 5, NULL, 'cot41-600x601.jpg', NULL, NULL),
(263, 'Đầu cột 005', 5, NULL, 'cot44-600x606.jpg', NULL, NULL),
(264, 'Len chân tường 001', 5, NULL, 'chi29-600x604.jpg', NULL, NULL),
(265, 'Len chân tường bằng đá tự nhiên 002', 5, NULL, 'chi32-600x600.jpg', NULL, NULL),
(266, 'Lục bình 001', 5, NULL, 'cot26-600x600.jpg', NULL, NULL),
(267, 'Lục bình 003', 5, NULL, 'cot21-600x600.jpg', NULL, NULL),
(268, 'Lục bình 004', 5, NULL, 'cot20-600x600.jpg', NULL, NULL),
(269, 'Lục bình 005', 5, NULL, 'cot19-600x600.jpg', NULL, NULL),
(270, 'Lục bình 006', 5, NULL, 'cot18-600x600.jpg', NULL, NULL),
(271, 'Lục bình 007', 5, NULL, 'cot17-600x600.jpg', NULL, NULL),
(272, 'Lục bình 008', 5, NULL, 'cot13-600x600.jpg', NULL, NULL),
(273, 'Mẫu tay vịn đá cho lan can nhà của bạn 003', 5, NULL, 'cot37-600x600.jpg', NULL, NULL),
(274, 'Phào chỉ 001', 5, NULL, 'chi1.jpg', NULL, NULL),
(275, 'Phào chỉ 002', 5, NULL, 'chi10-600x588.jpg', NULL, NULL),
(276, 'Phào chỉ 004', 5, NULL, 'chi14-600x600.jpg', NULL, NULL),
(277, 'Phào chỉ 005', 5, NULL, 'chi15-600x600.jpg', NULL, NULL),
(278, 'Phào chỉ 006', 5, NULL, 'chi16-600x600.jpg', NULL, NULL),
(279, 'Phào chỉ 007', 5, NULL, 'chi19-1-600x600.jpg', NULL, NULL),
(280, 'Phào chỉ 008', 5, NULL, 'chi18-600x600.jpg', NULL, NULL),
(281, 'Phào chỉ 009', 5, NULL, 'chi19-600x600.jpg', NULL, NULL),
(282, 'Phào chỉ 010', 5, NULL, 'chi2-600x600.jpg', NULL, NULL),
(283, 'Phào chỉ 011', 5, NULL, 'chi20-600x602.jpg', NULL, NULL),
(284, 'Phào chỉ 012', 5, NULL, 'chi21-600x600.jpg', NULL, NULL),
(285, 'Phào chỉ 014', 5, NULL, 'chi23-600x600.jpg', NULL, NULL),
(286, 'Phào chỉ 015', 5, NULL, 'chi24-600x600.jpg', NULL, NULL),
(287, 'Phào chỉ 017', 5, NULL, 'chi26-600x600.jpg', NULL, NULL),
(288, 'Phào chỉ 019', 5, NULL, 'chi28-600x600.jpg', NULL, NULL),
(289, 'Phào chỉ 020', 5, NULL, 'chi3-600x599.jpg', NULL, NULL),
(290, 'Phào chỉ 024', 5, NULL, 'chi33-600x600.jpg', NULL, NULL),
(291, 'Phào chỉ 025', 5, NULL, 'chi34-600x600.jpg', NULL, NULL),
(292, 'Phào chỉ 026', 5, NULL, '1-600x450.png', NULL, NULL),
(293, 'Phào chỉ 027', 5, NULL, '2-600x450.png', NULL, NULL),
(294, 'Phào chỉ 028', 5, NULL, '3-600x450.png', NULL, NULL),
(295, 'Phào chỉ 029', 5, NULL, '4-600x450.png', NULL, NULL),
(296, 'Phòa chỉ 003', 5, NULL, 'chi11-600x598.jpg', NULL, NULL),
(297, 'Tay vịn bằng đá tự nhiên và sang trọng 001', 5, NULL, 'cot35-600x600.jpg', NULL, NULL),
(298, 'Tay vịn đá 007', 5, NULL, '2010351123476331.jpg', NULL, NULL),
(299, 'Tay vịn đá 008', 5, NULL, '20103511221820639.jpg', NULL, NULL),
(300, 'Tay vịn đá cao cấp 006', 5, NULL, '20103511202570671.jpg', NULL, NULL),
(301, 'Tay vịn đá sang trọng 005', 5, NULL, '20103511121226377.jpg', NULL, NULL),
(302, 'Tay vịn đá trang trí cho không gian nhà đẹp của bạn 004', 5, NULL, 'cot33-600x600.jpg', NULL, NULL),
(303, 'Tay vịn đá tự nhiên 002', 5, NULL, 'cot34-600x600.jpg', NULL, NULL),
(304, 'Trụ đề pa 001', 5, NULL, 'cot16-600x600.jpg', NULL, NULL),
(305, 'Lục bình 002', 5, NULL, 'cot24-600x600.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

DROP TABLE IF EXISTS `slide`;
CREATE TABLE IF NOT EXISTS `slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`) VALUES
(1, '', 'slider-2893.png'),
(2, '', '000-1-800x800.jpg'),
(3, '', 'baner-main-3-1400x560.jpg'),
(4, '', '121214.jpg'),
(5, '', '12630286990.png');

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

DROP TABLE IF EXISTS `theloai`;
CREATE TABLE IF NOT EXISTS `theloai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `TenTL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `TenTL`) VALUES
(1, 'HẠNG MỤC THI CÔNG'),
(2, 'DỊCH VỤ THI CÔNG'),
(3, 'CÔNG TRÌNH'),
(4, 'TIN TỨC');

-- --------------------------------------------------------

--
-- Table structure for table `tin`
--

DROP TABLE IF EXISTS `tin`;
CREATE TABLE IF NOT EXISTS `tin` (
  `idTin` int(11) NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TomTat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlHinh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idLT` int(11) DEFAULT NULL,
  `idTL` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTin`),
  KEY `idLT` (`idLT`),
  KEY `idTL` (`idTL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

DROP TABLE IF EXISTS `type_products`;
CREATE TABLE IF NOT EXISTS `type_products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Đá Marble', '', '', NULL, NULL),
(2, 'Đá Granite', '', '', NULL, NULL),
(3, 'Đá Mosaic', '', '', NULL, NULL),
(4, 'Đá hoa văn', '', '', NULL, NULL),
(5, 'Cột, chỉ, phào', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hangmucthicong`
--
ALTER TABLE `hangmucthicong`
  ADD CONSTRAINT `hangmucthicong_ibfk_1` FOREIGN KEY (`idLoaiHangMuc`) REFERENCES `loaihangmucthicong` (`id`);

--
-- Constraints for table `loaitin`
--
ALTER TABLE `loaitin`
  ADD CONSTRAINT `loaitin_ibfk_1` FOREIGN KEY (`idTL`) REFERENCES `theloai` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`);

--
-- Constraints for table `tin`
--
ALTER TABLE `tin`
  ADD CONSTRAINT `tin_ibfk_1` FOREIGN KEY (`idLT`) REFERENCES `loaitin` (`id`),
  ADD CONSTRAINT `tin_ibfk_2` FOREIGN KEY (`idTL`) REFERENCES `theloai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
