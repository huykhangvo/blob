-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 05, 2021 lúc 04:59 AM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `macdinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '1',
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
(1, 'admin', 'huykhangvo02092000@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Huy Khang', 1, '2021-10-04 21:23:56', 1, 'avatar-default.jpg', '1997-01-01'),
(2, 'QuocMinh', '19008079@student.vlute.edu.vn', 'd41d8cd98f00b204e9800998ecf8427e', 'Đồng Quốc Minh', 1, '2021-10-04 10:10:34', 2, 'avatar-default.jpg', '1997-01-01');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chats`
--

CREATE TABLE `chats` (
  `ID` int(11) NOT NULL,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_sent` datetime NOT NULL,
  `chat_content` text COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `classes` (`class_id`, `grade_id`, `class_name`, `teacher_id`) VALUES
(1, 1, '1CTT18A1', 1);

--
-- Cấu trúc bảng cho bảng `genders`
--

CREATE TABLE `genders` (
  `gender_id` int(1) NOT NULL,
  `gender_detail` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `genders`
--

INSERT INTO `genders` (`gender_id`, `gender_detail`) VALUES
(1, 'Chưa Xác Định'),
(2, 'Nam'),
(3, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `detail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `grades`
--

INSERT INTO `grades` (`grade_id`, `detail`) VALUES
(1, 'NGÀNH CÔNG NGHỆ THÔNG TIN'),
(2, 'NGÀNH AN TOÀN THÔNG TIN'),
(3, 'NGÀNH KỸ THUẬT HÓA HỌC'),
(4, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ ĐIỆN TỬ'),
(5, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ KHÍ'),
(6, 'NGÀNH CÔNG TÁC XÃ HỘI'),
(7, 'NGÀNH DU LỊCH'),
(8, 'NGÀNH SƯ PHẠM KỸ THUẬT CÔNG NGHIỆP'),
(9, 'NGÀNH SƯ PHẠM CÔNG NGHỆ'),
(10, 'NGÀNH THÚ Y'),
(11, 'NGÀNH CÔNG NGHỆ THỰC PHẨM'),
(12, 'NGÀNH KỸ THUẬT ĐIỆN');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `level_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `levels`
--

INSERT INTO `levels` (`level_id`, `level_detail`) VALUES
(1, 'Dễ'),
(2, 'Trung Bình'),
(3, 'Khó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notification_title` text COLLATE utf8_unicode_ci NOT NULL,
  `notification_content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `permission` int(11) NOT NULL,
  `permission_detail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`permission`, `permission_detail`) VALUES
(1, 'Admin'),
(2, 'Giáo Viên'),
(3, 'Sinh Viên');


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `grade_id` int(10) NOT NULL,
  `unit` int(2) NOT NULL,
  `level_id` int(11) NOT NULL,
  `question_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_a` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_b` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_c` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_d` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correct_answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '1',
  `sent_by` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `questions` (`grade_id`, `unit`, `level_id`, `question_content`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`, `question_id`, `subject_id`, `sent_by`, `status_id`) VALUES
(1, 1, 1, '<p><strong>Cụ Phan Bội Châu nhận định: “Đương lúc khói độc mây mù, thình lình có một trận gió xuân thổi tới. Đương giữa lúc trời khuya đất ngủ, thình lình có một tia thái dương mọc ra. Trận gió xuân ấy, tia thái dương ấy là ………”. Dấu “……..” trong câu nói trên là gì? </strong></p>', '<p>Cách mạng Tân Hợi ở Trung Quốc</p>', '<p>Chủ nghĩa xã hội</p>', '<p>Cách mạng Nga năm 1917</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ nghĩa xã hội</p>', 1, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“Nhất Sĩ, nhĩ Phương, tam Xương, tứ...........”. Chọn đáp án đúng nhất điền vào dấu “……..” </strong></p>', '<p>Sản (Trịnh Duy Sản)</p>', '<p><strong>Bưởi ( Bạch Thái Bưởi)</strong></p>', '<p>Vĩnh (Lê Phát Vĩnh)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Bưởi ( Bạch Thái Bưởi)</strong></p>', 2, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nguyễn Ái Quốc nhận định: “Rượu cồn và thuốc phiện cùng báo chí phản động của bọn cầm quyền bổ sung cho cái công cuộc......... của Chính phủ. Máy chém và nhà tù làm nốt phần còn lại”. Dấu “……..” trong câu nói trên là gì?</strong></p>', '<p>An dân</p>', '<p>Ngu dân</p>', '<p>Trị dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngu dân</p>', 3, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nghị quyết Trung ương 4 khóa XII (10/2016) khẳng định: “Chúng ta có quyền tự hào về bản chất tốt đẹp, truyền thống anh hùng và lịch sử vẻ vang của ...... – ...... của Chủ tịch Hồ Chí Minh vĩ đại, đại biểu của ...... anh hùng”. Chọn phương án đúng nhất điền vào chỗ trống. </strong></p>', '<p>Nhân dân ta; Đất nước; một dân tộc</p>', '<p>Nước ta; Đất nước; một dân tộc</p>', '<p>Đảng ta; Đảng; dân tộc Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng ta; Đảng; dân tộc Việt Nam</p>', 4, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chọn phương án không đúng về chính sách cai trị của thực dân Pháp ở nước ta</strong></p>', '<p>Thực hiện khẩu hiệu: Tự do, Bình đẳng, Bác ái ở nước ta</p>', '<p>Thực hiện chính sách dung túng, duy trì các hủ tục lạc hậu trong nhân dân ta</p>', '<p>Thực hiện khai thác thuộc địa dưới nhiều hình thức</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện khẩu hiệu: Tự do, Bình đẳng, Bác ái ở nước ta</p>', 5, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Điều kiện nào sau đây đã tạo ra khả năng đấu tranh công khai, hợp pháp cho phong trào cách mạng Đông Dương trong giai đoạn 1936-1939? </strong></p>', '<p>Chủ trương chuyển hướng chiến lược cách mạng thế giới của Quốc tế Cộng sản</p>', '<p>Mặt trận nhân dân Pháp lên cầm quyền</p>', '<p>Sự xuất hiện chủ nghĩa phát xít và nguy cơ chiến tranh thế giới</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mặt trận nhân dân Pháp lên cầm quyền</p>', 6, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tác giả Trần Dân Tiên đã nói đến tác phẩm nào sau đây là kết quả của bao nhiêu hy vọng, gắng sức và tin tưởng của hơn 20 triệu nhân dân Việt Nam ? </strong></p>', '<p>Tuyên cáo của Hoàng đế Việt Nam thoái vị</p>', '<p><strong>Tuyên ngôn Độc lập</strong></p>', '<p>Đời sống mới</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Tuyên ngôn Độc lập</strong></p>', 7, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Phương pháp nghiên cứu, học tập môn Lịch sử Đảng Cộng sản Việt Nam cần dựa trên phương pháp luận khoa học mác xít, đặc biệt là nắm vững .........và ......... để xem xét và nhận thức lịch sử một cách khách quan, trung thực và đúng quy luật. Dấu “……..” trong câu trên là ai ? </strong></p>', '<p>Chủ nghĩa Mác – Lênin; thực tiễn</p>', '<p>Chủ nghĩa duy vật biện chứng; chủ nghĩa duy vật lịch sử</p>', '<p>Tư tưởng Hồ Chí Minh; thực tiễn</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ nghĩa duy vật biện chứng; chủ nghĩa duy vật lịch sử</p>', 8, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Một trong những điểm khác nhau cơ bản nhất giữa Cương lĩnh chính trị đầu tiên (2/1930) của Đảng và Luận cương chính trị (10/1930) là gì ? </strong></p>', '<p>Vai trò lãnh đạo cách mạng</p>', '<p>Chủ trương tập hợp lực lượng cách mạng</p>', '<p>Phương hướng chiến lược của cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ trương tập hợp lực lượng cách mạng</p>', 9, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Vì lý do nào sau đây nhân dân ta phải tiến hành Tổng khởi nghĩa giành chính quyền trước khi quân Đồng minh vào Đông Dương trong giai đoạn kháng chiến chống thực dân pháp (1930-1945) ?</strong></p>', '<p>Thực dân Pháp đã bị phát xít Nhật đảo chánh.</p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', '<p>Quân Nhật đang bị mất ý chí chiến đấu do bị bại trận trước quân đồng minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', 10, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“............ là đội tiền phong của giai cấp công nhân, đồng thời là đội tiền phong của nhân dân lao động và của dân tộc Việt Nam, đại biểu trung thành lợi ích của giai cấp công nhân, nhân dân lao động và của dân tộc. Đảng lấy chủ nghĩa MácLênin và tư tưởng Hồ Chí Minh làm nền tảng tư tưởng, kim chỉ nam cho hành động, lấy tập trung dân chủ làm nguyên tắc tổ chức cơ bản”. Dấu “……..” trong câu trên là gì ? </strong></p>', '<p>Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Mặt trận Tổ quốc Việt Nam</p>', '<p>Đảng Cộng sản Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng Cộng sản Việt Nam</p>', 11, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Tờ báo được Bác Hồ sáng lập và được coi là mở đầu cho nền báo chí cách mạng Việt Nam là tờ báo nào? Được thành lập năm nào? </strong></p>', '<p> Báo Búa Liềm (1925)</p>', '<p>Báo Dân chúng (1938)</p>', '<p>Báo Thanh niên (1925)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Báo Búa Liềm (1925)</p>', 12, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Vì sao nói phong trào cách mạng 1930 - 1931 là bước phát triển mới của cách mạng Việt Nam? </strong></p>', '<p>Lần đầu đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc, phong kiến</p>', '<p>Lần đầu tiên trong cuộc đấu tranh chống đế quốc phong kiến, công nông đã giành</p><p>được chính quyền ở trên toàn Nghệ - Tĩnh</p>', '<p>Lần đầu tiên phong trào dân tộc do Đảng Cộng sản lãnh đạo đã giành được thắng lợi, gây tiếng vang lớn, có ảnh hưởng mạnh mẽ đến đấu tranh của các dân tộc phương</p><p>Đông</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lần đầu đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc, phong kiến</p>', 13, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cuộc khai thác thuộc địa lần thứ hai của Pháp ở Việt Nam (1919 - 1929) có điểm gì tương đồng so với cuộc khai thác thuộc địa lần thứ nhất ? </strong></p>', '<p>Pháp không đầu tư nhiều vào xây dựng cơ sở hạ tầng</p>', '<p>Pháp không đầu tư nhiều vào các ngành công nghiệp nặng</p>', '<p>Pháp chú trọng đầu tư vào ngành khai thác mỏ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Pháp không đầu tư nhiều vào xây dựng cơ sở hạ tầng</p>', 14, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đồng chí nào đã từng tham gia vụ binh biến trên tàu chiến Pháp ở Biển Đen năm 1918 phản đối chính sách can thiệp cách mạng Nga của đế quốc Pháp, khi về nước đã lập ra tổ chức đầu tiên của công nhân Việt Nam? </strong></p>', '<p>Lê Duẩn</p>', '<p>Tôn Đức Thắng</p>', '<p>Phan Anh   </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lê Duẩn</p>', 15, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương lần thứ mấy, Đảng ta đã xác định chuẩn bị khởi nghĩa vũ trang là nhiệm vụ trung tâm của Đảng và nhân dân trong kháng chiến chống thực dân Pháp giai đoạn 1930-1945 ? </strong></p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '<p><strong>Hội nghi Trung ương lần thứ tám (5/1941)</strong></p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Hội nghi Trung ương lần thứ tám (5/1941)</strong></p>', 16, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương Đảng họp vào ngày 26/7/1936 đã chủ trương thành lập Mặt trận mang tên gì ? </strong></p>', '<p>Mặt trận Dân chủ Đông Dương</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', '<p>Mặt trận Dân tộc thống nhất phản đế Đông Dương</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', 17, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chương trình hành động của Đảng Cộng sản Đông Dương” được công bố vào ngày tháng năm nào ? </strong></p>', '<p>Ngày 15/7/1932</p>', '<p>Ngày 15/6/1932</p>', '<p>Ngày 15/8/1932</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 15/7/1932</p>', 18, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Lê Duẩn nhận định: “Không có những trận chiến đấu giai cấp rung trời chuyển đất những năm 1930 - 1931, trong đó công nông đã vung ra nghị lực phi thường của mình thì không thể có cao trào..........”. Dấu “……..” trong câu trên là gì ? </strong></p>', '<p>kháng Nhật cứu nước</p>', '<p>những năm 1939 - 1945</p>', '<p>những năm 1936 - 1939</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>những năm 1936 - 1939</p>', 19, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Quân đội phát xít Nhật vào Đông Dương làm cho nhân dân Đông Dương phải chịu cảnh “một cổ hai tròng” vào thời gian nào ? </strong></p>', '<p>8/1940</p>', '<p>8/1942</p>', '<p>9/1940</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>8/1940</p>', 20, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Trung ương lần thứ mấy đã bắt đầu chủ trương điều chỉnh từ chiến lược đấu tranh giành các quyền dân chủ sang chủ trương đấu tranh giải phóng dân tộc trong giai đoạn kháng chiến chống thực dân Pháp (1930-1945) ?</strong></p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939)</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', 21, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nguyên nhân chủ yếu và có ý nghĩa quyết định sự bùng nổ và phát triển của các cao trào cách mạng Việt Nam năm 1930 là gì ?</strong></p>', '<p>Chính sách khủng bố trắng của đế quốc Pháp</p>', '<p>Sự lãnh đạo của Đảng Cộng sản Việt Nam</p>', '<p>Tác động tiêu cực của cuộc khủng hoảng kinh tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Sự lãnh đạo của Đảng Cộng sản Việt Nam</p>', 22, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Văn kiện nào sau đây Đảng ta nhấn mạnh: “Vấn đề thổ địa là cái cốt của cách mạng tư sản dân quyền” ? </strong></p>', '<p>Luận cương chính trị tháng 10/1930</p>', '<p>Xung quanh vấn đề chiến sách mới của Đảng (tháng l0/1936)</p>', '<p>Chánh cương vắn tắt, Sách lược vắn tắt tháng 2/1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Luận cương chính trị tháng 10/1930</p>', 23, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị nào Đảng ta đã quyết định phát động toàn dân nổi dậy Tổng khởi nghĩa giành chính quyền từ tay phát xít Nhật trước khi quân Đồng Minh vào Đông Dương tháng 8/1945 ? </strong></p>', '<p>Hội nghị toàn quốc của Đảng</p>', '<p>Hội nghị Ban Thường vụ Trung ương Đảng</p>', '<p>Hội nghị Tổng bộ Việt Minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị toàn quốc của Đảng</p>', 24, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Trong Chương trình hành động của Đảng Cộng sản Đông Dương ngày 15/6/1932 vạch ra nhiệm vụ đấu tranh trong giai đoạn 1936-1939 là gì ?v</p>', '<p>Dân chủ, dân sinh</p>', '<p>Khôi phục hệ thống tổ chức của Đảng và phong trào cách mạng</p>', '<p>Dân tộc, dân chủ, nhân dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khôi phục hệ thống tổ chức của Đảng và phong trào cách mạng</p>', 25, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Hội nghị hợp nhất thành lập Đảng Cộng sản Việt Nam (6/1-7/2/1930) đã thông qua các văn kiện nào dưới đây ?</p>', '<p>Sách lược vắn tắt, Luận cương chính trị vắn tắt </p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', 26, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Những giai cấp nào sau đây là giai cấp bị trị khi Việt Nam trở thành chế độ thuộc địa nửa phong kiến của đế quốc Pháp vào cuối thế kỷ XIX đầu thế kỷ XX ?</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ</p>', '<p>Công nhân, nông dân, tiểu tư sản, địa chủ vừa và nhỏ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ</p>', 27, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Mâu thuẩn chủ yếu nhất ở xã hội nước ta vào cuối thế kỷ XIX đầu thế kỷ 20 là mâu thuẫn gì?</p>', '<p>Mâu thuẩn giữa giai cấp công nhân và giai cấp tư sản, đế quốc </p>', '<p>Mâu thuẩn giữa toàn thể dân tộc Việt Nam với địa chủ phong kiến và tay sai </p>', '<p>Mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp và phong kiến phản động</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp và phong kiến phản động</p>', 28, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Nội dung nào sau đây nói về chính sách cai trị về chính trị của thực dân Pháp ở Việt Nam ?</p>', '<p>Chia Việt Nam ra thành ba xứ để cai trị: Bắc Kỳ, Trung Kỳ, Nam Kỳ</p>', '<p>hực hiện chính sách nhân nhượng, nới rộng quyền tự do, dân chủ cho nhân dân ta </p>', '<p>Thực hiện khẩu hiệu “Tự do, bình đẳng, bác ái” ở nước ta</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chia Việt Nam ra thành ba xứ để cai trị: Bắc Kỳ, Trung Kỳ, Nam Kỳ</p>', 29, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Đại biểu của các tổ chức cộng sản nào đã trực tiếp đến tham dự Hội nghị hợp nhất thành lập Đảng đầu năm 1930 ? </p>', '<p>Đông Dương Cộng sản Đảng và Đông Dương Cộng sản Liên đoàn</p>', '<p>An Nam Cộng sản Đảng và Đông Dương Cộng sản Liên đoàn </p>', '<p>Đông Dương Cộng sản Đảng và An Nam Cộng sản Đảng </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đông Dương Cộng sản Đảng và An Nam Cộng sản Đảng </p>', 30, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Nguyễn Ái Quốc đã quyết định lựa chọn con đường giải phóng dân tộc Việt Nam theo khuynh hướng chính trị vô sản vào thời gian nào ?</p>', '<p>1930</p>', '<p>1920</p>', '<p>1919</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>1920</p>', 31, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Giai cấp nào sau đây ra đời sau đợt khai thác thuộc địa lần thứ nhất của thực dân Pháp ở nước ta ?</strong></p>', '<p>Giai cấp tư sản</p>', '<p>Giai cấp công nhân</p>', '<p>Giai cấp nông dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giai cấp công nhân</p>', 32, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương lần thứ mấy đã họp và xác định nhiệm vụ trước mắt là chống phát xít, chống chiến tranh đế quốc, chống phản động thuộc địa và tay sai, đòi tự do, dân chủ, cơm áo và hòa bình. Hội nghị đó diễn ra vào ngày tháng năm nào ? </strong></p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lần thứ 3 (26/11/1938)</p>', '<p>Lần thứ 1 (15/5/1930)</p>', '<p>Lần thứ 2 (26/7/1936)</p>', '<p>Lần thứ 2 (26/7/1936)</p>', 33, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đội Việt Nam tuyên truyền giải phóng quân ra đời ở Cao Bằng được thành lập vào ngày tháng năm nào ?</strong></p>', '<p>Ngày 22 tháng 12 năm 1944</p>', '<p>Ngày 22 tháng 5 năm 1945</p>', '<p>Ngày 22 tháng 11 năm 1945</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 22 tháng 12 năm 1944</p>', 34, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nhận định nào sau đây là đúng nhất khi nói về giai cấp địa chủ Việt Nam cuối thế kỉ XIX đầu thế kỉ XX ? </strong></p>', '<p>Một bộ phận của giai cấp này là tay sai của thực dân. Một bộ phận có tinh thần dân tộc chống Pháp</p>', '<p>Là giai cấp bóc lột của chế độ phong kiến, hoàn toàn không có thế lực chính trị</p>', '<p>Là một giai cấp có thế lực kinh tế độc lập với Pháp, có tinh thẩn dân tộc cao</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Một bộ phận của giai cấp này là tay sai của thực dân. Một bộ phận có tinh thần dân tộc chống Pháp</p>', 35, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Giai cấp nông dân là một lực lượng cách mạng to lớn ở nước ta cuối thế kỉ XIX đầu thế kỉ XX vì lý do nào sau đây ? </strong></p>', '<p>Đây là một giai cấp có số lượng đông, bị áp bức bóc lột, có tinh thần yêu nước</p>', '<p>Đây là một giai cấp có đủ khả năng lãnh đạo cách mạng giải phóng dân tộc ở nước ta</p>', '<p>Đây là giai cấp rất nhạy cảm chính trị, hăng hái với công cuộc canh tân đất nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đây là một giai cấp có số lượng đông, bị áp bức bóc lột, có tinh thần yêu nước</p>', 36, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Lực lượng cách mạng nào sau đây là lực lượng để đánh đổ đế quốc và phong kiến được nêu trong Cương lĩnh chính trị đầu tiên của Đảng do Nguyễn Ái Quốc soạn thảo ? </strong></p><p> </p>', '<p>Công nhân và nông dân</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản và địa chủ phong kiến</p>', '<p>Công nhân, nông dân và các tầng lớp tiểu tư sản, trí thức, trung nông</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nhân, nông dân và các tầng lớp tiểu tư sản, trí thức, trung nông</p>', 37, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nhận định nào sau đây không thuộc nội dung của Luận cương chính trị tháng 10/1930 ?</strong></p>', '<p>Cách mạng Việt Nam phải trải qua hai giai đoạn: cách mạng tư sản dân quyền và cách mạng xã hội chủ nghĩa</p>', '<p>Lực lượng để đánh đuổi đế quốc và phong kiến là công – nông. Đồng thời “phải biết liên lạc với tiểu tư sản, trí thức, trung nông… để kéo họ vào phe vô sản giải cấp”</p>', '<p>Cách mạng do Đảng của giai cấp vô sản theo chủ nghĩa Mác – Lênin</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cách mạng do Đảng của giai cấp vô sản theo chủ nghĩa Mác – Lênin</p>', 38, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Những hoạt động nào sau đây của Nguyễn Ái Quốc nhằm chuẩn bị trực tiếp điều kiện về tư tưởng cho việc thành lập Đảng Cộng sản Việt Nam ? </strong></p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác-Lênin vào Việt Nam để thức tỉnh quần chúng</p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình và Điều lệ là làm cách mạng dân tộc và cách mạng thế giới</p>', '<p>Từ năm 1925 đến đầu 1927, mở các lớp huấn luyện chính trị nhằm đào tạo cán bộ cho cách mạng Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác-Lênin vào Việt Nam để thức tỉnh quần chúng</p>', 39, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Những hoạt động nào sau đây của Nguyễn Ái Quốc nhằm chuẩn bị trực tiếp điều kiện về tổ chức cho việc thành lập Đảng Cộng sản Việt Nam ? </strong></p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình, Điều lệ, mục đích là làm cách mệnh dân tộc và cách mạng thế giới</p>', '<p>Tập bài giảng “Đường Kách mệnh” đã đề cập đến những vấn đề cơ bản của một Cương lĩnh chính trị cho Đảng Cộng sản Việt Nam sau này</p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác - Lê nin vào Việt Nam để thức tỉnh quần chúng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình, Điều lệ, mục đích là làm cách mệnh dân tộc và cách mạng thế giới</p>', 40, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Ý nghĩa lịch sử của sự ra đời Đảng Cộng sản Việt Nam, ý nghĩa nào sau đây đánh dấu bước ngoặt vô cùng quan trọng trong lịch sử cách mạng Việt Nam ở đầu thế kỷ XX ? </strong></p>', '<p> Đảng Cộng sản Việt Nam thành lập vào đầu năm 1930 là sản phẩm của sự kết hợp chủ nghĩa Mác-Lênin với phong trào công nhân và phong trào yêu nước của nhân dân Việt Nam</p>', '<p>Nó giải quyết được tình trạng khủng hoảng về đường lối cách mạng, về giai cấp lãnh đạo cách mạng Việt Nam ở đầu thế kỷ XX</p>', '<p>Nó chứng tỏ rằng giai cấp vô sản nước ta đã trưởng thành và đủ sức lãnh đạo cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nó giải quyết được tình trạng khủng hoảng về đường lối cách mạng, về giai cấp lãnh đạo cách mạng Việt Nam ở đầu thế kỷ XX</p>', 41, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“Hội phản đế Đồng minh” được Ban Thường vụ Trung ương Đảng thành lập vào ngày tháng năm nào ? </strong></p>', '<p> 22/12/1944</p>', '<p>18/10/1930</p>', '<p>18/11/1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>18/11/1930</p>', 42, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Phong trào của giai cấp công nhân Việt Nam thực sự trở thành lực lượng chính trị độc lập, tự giác trong cả nước được tính từ thời gian nào ? </strong></p>', '<p>Năm 1930 ( Đảng Cộng sản Việt Nam được thành lập)</p>', '<p>Năm 1925 (tổ chức Việt Nam cách mạng Thanh niên được thành lập)</p>', '<p>Năm 1920 (tổ chức Công hội ở Sài Gòn được thành lập)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Năm 1930 ( Đảng Cộng sản Việt Nam được thành lập)</p>', 43, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cuối thế kỉ XIX, đầu thế kỉ XX, sự thống trị của thực dân Pháp đã làm thay đổi tính chất xã hội Việt Nam. Chọn phương án trả lời đúng nhất. </strong></p>', '<p>Làm cho xã hội Việt Nam phong kiến trở thành xã hội thuộc địa, nửa phong kiến</p>', '<p>Cho ra đời hai giai cấp mới là công nhân và tư sản Việt Nam</p>', '<p>Nảy sinh mâu thuẫn cơ bản trong đời sống xã hội Việt Nam là mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp xâm lược</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Làm cho xã hội Việt Nam phong kiến trở thành xã hội thuộc địa, nửa phong kiến</p>', 44, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong phong trào đấu tranh giành quyền dân sinh, dân chủ giai đoạn 19361939, Đảng ta chủ trương tập hợp những lực lượng nào ? </strong></p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', '<p>Công nhân, nông dân và trí thức</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản, tiểu địa chủ, địa chủ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', 45, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Mục tiêu chiến lược của cách mạng Việt Nam được xác định trong Cương lĩnh Chính trị đầu tiên của Đảng (2/1930) là mục tiêu gì ? </strong></p>', '<p>Cách mạng tư sản dân quyền - phản đế và điền địa - lập chính quyền của công nông bằng hình thức Xô viết, để dự bị điều kiện đi tới cách mạng xã hội chủ nghĩa</p>', '<p>Đánh đổ đế quốc chủ nghĩa Pháp và bọn phong kiến, làm cho nước Nam hoàn toàn độc lập</p>', '<p>Làm tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới xã hội cộng sản</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Làm tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới xã hội cộng sản</p>', 46, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Mục tiêu đấu tranh của nước ta trong cao trào cách mạng giai đoạn 1936-1939 là mục tiêu gì ? </strong></p>', '<p>Ruộng đất cho dân cày</p>', '<p>Độc lập dân tộc</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình</p>', 47, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hồ Chí Minh đã thực hiện trách nhiệm lịch sử trọng đại, soạn thảo bản “Tuyên ngôn Độc lập” của nước Việt Nam Dân chủ Cộng hòa tại địa điểm nào sau đây ?</strong></p>', '<p>Nhà số 312, Khâm Thiên, Hà Nội</p>', '<p>Nhà số 48, Hàng Ngang, Hà Nội</p>', '<p>Nhà số 5D, Hàm Long, Hà Nội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nhà số 48, Hàng Ngang, Hà Nội</p>', 48, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>. Chính quyền Xô Viết ở một số vùng nông thôn Nghệ-Tĩnh được thành lập trong khoảng thời gian nào ? </strong></p>', '<p>Cuối năm 1930</p>', '<p>Cuối năm 1931</p>', '<p>Đầu năm 1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cuối năm 1930</p>', 49, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ VII của Quốc tế Cộng sản họp ở đâu, diễn ra vào thời gian nào? </strong></p>', '<p>\\Ma Cao (Trung Quốc), tháng 3/1935</p>', '<p> Matxcơva (Liên Xô), tháng 8/1935</p>', '<p>Matxcova( Liên Xô), tháng 7/1935</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Matxcova( Liên Xô), tháng 7/1935</p>', 50, 1, 'QuocMinh', 4);

--
-- Cấu trúc bảng cho bảng `quest_of_test`
--

CREATE TABLE `quest_of_test` (
  `test_code` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scores`
--

CREATE TABLE `scores` (
  `student_id` int(11) NOT NULL,
  `test_code` int(11) NOT NULL,
  `score_number` varchar(10) DEFAULT NULL,
  `score_detail` varchar(50) NOT NULL,
  `completion_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(1) NOT NULL,
  `detail` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`status_id`, `detail`) VALUES
(1, 'Mở'),
(2, 'Đóng'),
(3, 'Chờ Duyệt'),
(4, 'Đã Duyệt'),
(5, 'Cho Phép Xem Đáp Án'),
(6, 'Kết Thúc'),
(7, 'Ẩn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '3',
  `class_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL,
  `doing_exam` int(11) DEFAULT NULL,
  `starting_time` datetime DEFAULT NULL,
  `time_remaining` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `students` (`student_id`, `username`, `email`, `password`, `name`, `permission`, `class_id`, `last_login`, `gender_id`, `avatar`, `birthday`, `doing_exam`, `starting_time`, `time_remaining`) VALUES
(1, '18004057', '18004057@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Huy Khang', 3, 1, '2021-10-04 08:54:09', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, '15:55'),
(2, '19008079', '19008079@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Đồng Quốc Minh', 3, 1, '2021-10-04 07:48:09', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, NULL);

--
-- Cấu trúc bảng cho bảng `student_notifications`
--

CREATE TABLE `student_notifications` (
  `ID` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_test_detail`
--

CREATE TABLE `student_test_detail` (
  `ID` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_code` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_a` text COLLATE utf8_unicode_ci,
  `answer_b` text COLLATE utf8_unicode_ci,
  `answer_c` text COLLATE utf8_unicode_ci,
  `answer_d` text COLLATE utf8_unicode_ci,
  `student_answer` text COLLATE utf8_unicode_ci,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------
INSERT INTO `subjects` (`subject_id`, `subject_detail`) VALUES
(1, 'Lịch sử Đảng Cộng sản Việt Nam');

--
-- Cấu trúc bảng cho bảng `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '2',
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `teachers` (`teacher_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
(1, 'GVQL', 'binhht@vlute.edu.vn', 'c4ca4238a0b923820dcc509a6f75849b', 'Huỳnh Tấn Bình', 2, '2021-10-04 07:15:09', 2, 'avatar-default.jpg', '1979-09-02');

--
-- Cấu trúc bảng cho bảng `teacher_notifications`
--

CREATE TABLE `teacher_notifications` (
  `ID` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE `tests` (
  `test_code` int(11) NOT NULL,
  `test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `grade_id` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `time_to_do` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n4` (`permission`),
  ADD KEY `admins_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name` (`class_name`),
  ADD KEY `n7` (`teacher_id`),
  ADD KEY `k4` (`grade_id`);

--
-- Chỉ mục cho bảng `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Chỉ mục cho bảng `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Chỉ mục cho bảng `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `k9` (`grade_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `subjects_key` (`subject_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Chỉ mục cho bảng `quest_of_test`
--
ALTER TABLE `quest_of_test`
  ADD PRIMARY KEY (`test_code`,`question_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `test_code` (`test_code`);

--
-- Chỉ mục cho bảng `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`student_id`,`test_code`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `test_code` (`test_code`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n9` (`class_id`),
  ADD KEY `n11` (`permission`),
  ADD KEY `students_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `student_test_detail`
--
ALTER TABLE `student_test_detail`
  ADD PRIMARY KEY (`student_id`,`test_code`,`question_id`),
  ADD KEY `fk4` (`test_code`),
  ADD KEY `fk6` (`question_id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Chỉ mục cho bảng `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n2` (`permission`),
  ADD KEY `teachers_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_code`),
  ADD KEY `fk1` (`subject_id`),
  ADD KEY `fk2` (`status_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chats`
--
ALTER TABLE `chats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genders`
--
ALTER TABLE `genders`
  MODIFY `gender_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tests`
--
ALTER TABLE `tests`
  MODIFY `test_code` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`),
  ADD CONSTRAINT `n4` FOREIGN KEY (`permission`) REFERENCES `permissions` (`permission`);

--
-- Các ràng buộc cho bảng `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chat_classes_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Các ràng buộc cho bảng `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`),
  ADD CONSTRAINT `classes_ibfk_2` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`grade_id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `k9` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`grade_id`),
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`),
  ADD CONSTRAINT `subjects_key` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`);

--
-- Các ràng buộc cho bảng `quest_of_test`
--
ALTER TABLE `quest_of_test`
  ADD CONSTRAINT `quest_of_test_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`),
  ADD CONSTRAINT `quest_of_test_ibfk_2` FOREIGN KEY (`test_code`) REFERENCES `tests` (`test_code`);

--
-- Các ràng buộc cho bảng `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`test_code`) REFERENCES `tests` (`test_code`);

--
-- Các ràng buộc cho bảng `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `n11` FOREIGN KEY (`permission`) REFERENCES `permissions` (`permission`),
  ADD CONSTRAINT `n9` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `students_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`);

--
-- Các ràng buộc cho bảng `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD CONSTRAINT `student_notifications_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`notification_id`),
  ADD CONSTRAINT `student_notifications_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Các ràng buộc cho bảng `student_test_detail`
--
ALTER TABLE `student_test_detail`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`test_code`) REFERENCES `tests` (`test_code`),
  ADD CONSTRAINT `fk6` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`),
  ADD CONSTRAINT `fk9` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`);

--
-- Các ràng buộc cho bảng `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `n2` FOREIGN KEY (`permission`) REFERENCES `permissions` (`permission`),
  ADD CONSTRAINT `teachers_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`gender_id`);

--
-- Các ràng buộc cho bảng `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  ADD CONSTRAINT `teacher_notifications_ibfk_1` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`notification_id`),
  ADD CONSTRAINT `teacher_notifications_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);

--
-- Các ràng buộc cho bảng `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`),
  ADD CONSTRAINT `fk2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`status_id`),
  ADD CONSTRAINT `tests_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`grade_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
