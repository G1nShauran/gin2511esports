-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 05:19 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintucesport_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `IsViews` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`RowID`, `Name`, `Email`, `Phone`, `Message`, `IsViews`, `created_at`, `updated_at`) VALUES
(1, 'Trần Văn A', 'tva@gmail.com', '0123564799', 'Tôi nghe nói bên bạn tuyển phóng viên', 0, '2021-01-02 16:28:54', '2021-01-09 04:56:21'),
(2, 'Trịnh Văn B', 'tvb@gmail.com', '0325647955', 'Tôi muốn xin tuyển vào vị trí viết tin', 0, '2021-01-02 16:28:54', '2021-01-03 01:27:25'),
(3, 'Trần Văn C', 'tvc@gmail.com', '0123564799', 'Tôi nghe nói bên bạn tuyển phóng viên 2', 1, '2021-01-02 16:28:54', '2021-01-03 01:27:32'),
(7, 'Trần Văn A', 'gin@gmail.com', '231515', '215341', 0, '2021-01-12 00:05:55', '2021-01-12 00:05:55'),
(9, 'Lê Văn Zing', 'zing@gmail.com', '325135456', 'yolo all in navi', 1, '2021-01-12 08:39:42', '2021-01-13 09:13:19'),
(10, 'Thái Thị Z', 'z@gmail.com', '328541325', 'yolo', 1, '2021-01-13 04:28:47', '2021-01-13 07:05:15'),
(11, 'tran minh đuc', 'tmd@gmail.com', '01203432692', 'qưeqwe', 0, '2021-01-15 20:17:12', '2021-01-15 20:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `RowID` int(11) NOT NULL,
  `RowIDCat` int(11) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Status` int(1) DEFAULT 1,
  `MetaTitle` text DEFAULT NULL,
  `MetaDescription` text DEFAULT NULL,
  `MetaKeyword` text DEFAULT NULL,
  `SmallDescription` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Views` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`RowID`, `RowIDCat`, `Name`, `Alias`, `Images`, `Status`, `MetaTitle`, `MetaDescription`, `MetaKeyword`, `SmallDescription`, `Description`, `Views`, `created_at`, `updated_at`) VALUES
(1, 1, 'Điểm mặt những cái tên góp mặt tại bảng A của Dota Summit 11', 'diem-mat-nhung-cai-ten-gop-mat-tai-bang-a-cua-dota-summit-11', '20210110/342640750-EIOqygyW4AAPzED.png', 1, 'Điểm mặt những cái tên góp mặt tại bảng A của Dota Summit 11', 'Điểm mặt những cái tên góp mặt tại bảng A của Dota Summit 11', 'Điểm mặt những cái tên góp mặt tại bảng A của Dota Summit 11', 'Ngoài một vài gương mặt thân quen thì toàn những player tướng lạ hoắc', '<p>Những trận đấu đầu ti&ecirc;n của The Summit 11 sẽ bắt đầu v&agrave;o l&uacute;c 12h đ&ecirc;m mai (00:00 - 8/11) với 8 đội tuyển tranh t&agrave;i cho tổng giải thưởng trị gi&aacute; 300,000$ c&ugrave;ng với tấm v&eacute; đến với Th&agrave;nh Đ&ocirc; dự Major cho nh&agrave; v&ocirc; địch. V&agrave; trước khi được theo d&otilde;i diễn biến những trận đấu của kỳ minor đầu ti&ecirc;n trong năm, h&atilde;y c&ugrave;ng điểm qua những c&aacute;i t&ecirc;n g&oacute;p mặt ở bảng A - The Summit 11.</p>', 1, '2021-01-03 13:34:05', '2021-01-09 20:30:02'),
(2, 1, 'ESL Châu Á giới thiệu giải ESL SEA Championship cho DOTA 2', 'esl-chau-a-gioi-thieu-giai-esl-sea-championship-cho-dota-2', '20210110/703834588-ev0SsIu.png', 1, 'ESL Châu Á giới thiệu giải ESL SEA Championship cho DOTA 2', 'ESL Châu Á giới thiệu giải ESL SEA Championship cho bộ môn DOTA 2', 'ESL Châu Á giới thiệu giải ESL SEA Championship cho DOTA 2', 'ESL, tổ chức esports hàng đầu thế giới, rất hân hạnh được giới thiệu mùa giải đầu tiên của hệ thống ESL SEA Championship cho Dota 2', '<p>ESL, tổ chức esports h&agrave;ng đầu thế giới, rất h&acirc;n hạnh được giới thiệu m&ugrave;a giải đầu ti&ecirc;n của hệ thống ESL SEA Championship cho Dota 2. Giải đấu sẽ c&oacute; sự g&oacute;p mặt của 8 đội tuyển DOTA 2 h&agrave;ng đầu Đ&ocirc;ng Nam &Aacute; cạnh tranh số tiền thưởng c&oacute; tổng gi&aacute; trị l&ecirc;n đến $20,000. Nh&agrave; v&ocirc; địch của ESL SEA Championship cũng sẽ nhận được một suất trực tiếp tham dự v&ograve;ng loại Đ&ocirc;ng Nam &Aacute; của ESL One Birmingham 2020.</p>', 18, '2021-01-03 13:34:05', '2021-01-10 08:58:56'),
(6, 2, 'Giải đấu aim CS:GO - FPT Legion chính thức khép lại', 'giai-dau-aim-csgo-fpt-legion-chinh-thuc-khep-lai', '20210106/50997751-huyz_bonny.jpg', 1, 'Giải đấu aim CS:GO - FPT Legion chính thức khép lại', 'tin test 4', 'tin test 4', 'Giải đấu aim CS:GO - FPT Legion chính thức khép lại với chức vô địch cho crazyguy và bộ đôi Huyz & Bonny', '<p>Trải qua hai ng&agrave;y thi đấu v&ograve;ng loại &amp; chung kết, giải đấu aim CS:GO - FPT Legion được tổ chức bởi NVidia v&agrave; FPT Shop đ&atilde; kết th&uacute;c tốt đẹp với việc t&igrave;m ra được những tay s&uacute;ng xuất sắc nhất ở khu vực TP Hồ Ch&iacute; Minh</p>', 1, '2021-01-04 09:19:44', '2021-01-09 20:17:57'),
(7, 2, 'Tân binh đang lên của Na`vi bất ngờ thông báo dương tính với COVID-19', 'tan-binh-dang-len-cua-navi-bat-ngo-thong-bao-duong-tinh-voi-covid-19', '20210106/671721389-ferfecto_covid.jpg', 1, 'Tân binh đang lên của Na`vi bất ngờ thông báo dương tính với COVID-19', 'Tân binh đang lên của Na`vi bất ngờ thông báo dương tính với COVID-19', 'FPS', 'Vì lý do này trận đấu giữa Na`vi và forZe trong khuôn khổ IEM New York 2020 đã phải dời lịch.', '<p>V&igrave; l&yacute; do n&agrave;y trận đấu giữa Na`vi v&agrave; forZe trong khu&ocirc;n khổ IEM New York 2020 đ&atilde; phải dời lịch.</p>', 95, '2021-01-04 09:24:45', '2021-01-10 08:57:12'),
(13, 1, 'Đội tuyển lừng danh DOTA 2 OG nhận deal tài trợ khủng', 'doi-tuyen-lung-danh-dota-2-og-nhan-deal-tai-tro-khung', '20210106/479209013-og_deal.jpg', 1, 'Đội tuyển lừng danh DOTA 2 OG nhận deal tài trợ khủng', 'Đội tuyển lừng danh DOTA 2 OG nhận deal tài trợ khủng', 'Đội tuyển lừng danh DOTA 2 OG nhận deal tài trợ khủng', 'Đây được xem là màn “colab” đột phá của thể thao điện tử, hứa hẹn mang lại trải nghiệm mới mẻ cho fan hâm mộ Dota 2 trên toàn cầu.', '<p>OG được th&agrave;nh lập v&agrave;o ng&agrave;y 31/10/2015 bởi c&aacute;c cựu th&agrave;nh vi&ecirc;n của Monkey Business. Sau 3 năm thi đấu, c&aacute;c th&agrave;nh vi&ecirc;n của OG trở th&agrave;nh đội tuyển đầu ti&ecirc;n v&ocirc; địch 4 giải Dota 2 Majors. Đội h&igrave;nh si&ecirc;u sao của OG cũng v&ocirc; địch The International (giải đấu thể thao điện tử v&ocirc; địch thế giới của Dota 2) trong cả hai năm 2018 v&agrave; 2019. Họ cũng ch&iacute;nh l&agrave; đội tuyển đầu ti&ecirc;n gi&agrave;nh được bốn giải Dota 2 Valve Major. Mới đ&acirc;y v&agrave;o ng&agrave;y 2 th&aacute;ng 11, OG ph&aacute;t đi th&ocirc;ng b&aacute;o rằng một đơn vị thuộc ng&agrave;nh giải tr&iacute; trực tuyến đ&atilde; k&yacute; hợp đồng d&agrave;i hạn để trở th&agrave;nh Đối T&aacute;c Quốc Tế Ch&iacute;nh Thức của họ. Thỏa thuận tr&ecirc;n đ&aacute;nh dấu việc đội tuyển thể thao điện tử lừng danh n&agrave;y tham gia v&agrave;o mối quan hệ đối t&aacute;c chiến lược, hứa hẹn sẽ đưa người h&acirc;m mộ đến gần với Dota 2 hơn bao giờ hết.</p>', 7, '2021-01-06 09:06:27', '2021-01-10 08:58:45'),
(14, 1, 'Dota 2 chuẩn bị có thêm hệ thống \"soi hack\" giống CSGO', 'dota-2-chuan-bi-co-them-he-thong-soi-hack-giong-csgo', '20210107/124986992-Dota-2-chuan-bi-co-them-he-thong-soi-hack-giong-CSGO_3.jpg', 1, 'Dota 2 chuẩn bị có thêm hệ thống \"soi hack\" giống CSGO', 'Dota 2 chuẩn bị có thêm hệ thống \"soi hack\" giống CSGO', 'Dota 2 chuẩn bị có thêm hệ thống \"soi hack\" giống CSGO', 'Valve đang tiến hành ngăn chặn hành vi phá hoại và gian lận trong Dota 2 bằng các biện pháp như triển khai hệ thống giống với Overwatch của CS: GO nhằm cho phép những người chơi đủ điều kiện và kinh nghiệm xem xét và báo cáo các hành vi trên', '<p>Valve đang tiến h&agrave;nh ngăn chặn h&agrave;nh vi ph&aacute; hoại v&agrave; gian lận trong Dota 2 bằng c&aacute;c biện ph&aacute;p như triển khai hệ thống giống với Overwatch của CS: GO nhằm cho ph&eacute;p những người chơi đủ điều kiện v&agrave; kinh nghiệm xem x&eacute;t v&agrave; b&aacute;o c&aacute;o c&aacute;c h&agrave;nh vi tr&ecirc;n. Lần đầu ti&ecirc;n ra mắt v&agrave;o năm 2013, hệ thống Overwatch cho ph&eacute;p người chơi CS: GO đăng tải c&aacute;c clip gameplay c&oacute; chứa h&agrave;nh vi gian lận. C&aacute;c clip được chuyển đến một &quot;điều tra vi&ecirc;n&quot;, người n&agrave;y sẽ kiểm tra đoạn clip để x&aacute;c định h&agrave;nh vi được b&aacute;o c&aacute;o. T&ecirc;n của người d&ugrave;ng đăng clip, người bị b&aacute;o c&aacute;o v&agrave; điều tra vi&ecirc;n đều được giữ b&iacute; mật v&igrave; vậy trường hợp b&aacute;o c&aacute;o v&igrave; trả th&ugrave; c&aacute; nh&acirc;n sẽ kh&ocirc;ng xảy ra. Overwatch của CS: GO chủ yếu tập trung v&agrave;o những kẻ gian lận thay v&igrave; c&aacute;c h&agrave;nh vi độc hại. Blog Counter-Strike giải th&iacute;ch rằng: &quot;H&igrave;nh phạt d&agrave;nh cho người vi phạm sẽ dựa tr&ecirc;n h&agrave;nh vi của họ. Người c&oacute; h&agrave;nh vi ph&aacute; hoại sẽ được giảm thời nhận phạt, trong khi kẻ gian lận sẽ bị cấm ho&agrave;n to&agrave;n khỏi tr&ograve; chơi&quot;.</p>', 185, '2021-01-06 09:08:04', '2021-01-10 08:59:07'),
(16, 1, 'Điểm mặt những cái tên tại bảng B của Dota Summit 11', 'diem-mat-nhung-cai-ten-tai-bang-b-cua-dota-summit-11', '20210110/647983934-EIoMeafU4AE-Ycv.png', 1, 'Điểm mặt những cái tên tại bảng B của Dota Summit 11', 'Điểm mặt những cái tên tại bảng B của Dota Summit 11', 'Điểm mặt những cái tên tại bảng B của Dota Summit 11', 'Đừng quên bật kênh youtube của 500bros Dota 2 vào lúc 12h đếm nay để cùng đón xem Dota Summit 11 nhé', '<p>Ngay đ&ecirc;m nay (00:00 8/11) Dota Summit 11, Minor đầu ti&ecirc;n trong hệ thống DPC m&ugrave;a giải 2019-2020 sẽ ch&iacute;nh thức bắt đầu tại LA, Mỹ. 11 đội tuyển với những gương mặt vừa mới vừa cũ sẽ c&ugrave;ng hướng tới chức v&ocirc; địch c&ugrave;ng tấm v&eacute; cuối c&ugrave;ng đến với Th&agrave;nh Đ&ocirc; Major sẽ được tổ chức v&agrave;o đầu th&aacute;ng sau. Trước khi giải đấu bắt đầu, ch&uacute;ng ta h&atilde;y c&ugrave;ng điểm qua những c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; tại bảng B.</p>', 1, '2021-01-09 20:31:43', '2021-01-09 20:31:43'),
(17, 2, '3 huấn luyện viên CS:GO nổi tiếng bất ngờ bị ban vì gian lận trong giải đấu chuyên nghiệp', '3-huan-luyen-vien-csgo-noi-tieng-bat-ngo-bi-ban-vi-gian-lan-trong-giai-dau-chuyen-nghiep', '20210110/142423911-preview.png', 1, '3 huấn luyện viên CS:GO nổi tiếng bất ngờ bị ban vì gian lận trong giải đấu chuyên nghiệp', '3 huấn luyện viên CS:GO nổi tiếng bất ngờ bị ban vì gian lận trong giải đấu chuyên nghiệp', '3 huấn luyện viên CS:GO nổi tiếng bất ngờ bị ban vì gian lận trong giải đấu chuyên nghiệp', 'Các hình phạt nghiêm khắc đã được ESL đưa ra đối với các cá nhân vi phạm', '<p>Theo th&ocirc;ng b&aacute;o ch&iacute;nh thức của ESL được đưa ra v&agrave;o đ&ecirc;m qua, 3 coach HUNDEN (Heroic), dead (MiBR) v&agrave; MechanoGun (Hard Legion) đ&atilde; bị x&aacute;c định rằng đ&atilde; sử dụng một lỗi trong CS:GO để c&oacute; thể mang về lợi thế cho đội tuyển m&igrave;nh. C&aacute;c cuộc điều tra của ESL v&agrave; ESIC trong thời gian vừa qua x&aacute;c định rằng c&aacute;c coach n&agrave;y đ&atilde; lợi dụng một bug cho ph&eacute;p họ chọn một vị tr&iacute; bất kỳ tr&ecirc;n map v&agrave; c&oacute; thể theo d&otilde;i to&agrave;n cảnh khu vực n&agrave;y một c&aacute;ch t&ugrave;y &yacute;. Theo c&aacute;c cuộc điều tra được tiến h&agrave;nh bởi c&aacute;c trọng t&agrave;i của ESL th&igrave; bug n&agrave;y đ&atilde; tồn tại từ kh&aacute; l&acirc;u v&agrave; họ đang tiếp tục điều tra c&aacute;c giải đấu tier 2-3 để x&aacute;c định c&aacute;c c&aacute; nh&acirc;n vi phạm.</p>', 1, '2021-01-10 00:56:17', '2021-01-10 00:56:17'),
(18, 2, 'Ngôi sao MiBR Fer bất ngờ bị nền tảng stream lớn nhất thế giới ban 7 ngày', 'ngoi-sao-mibr-fer-bat-ngo-bi-nen-tang-stream-lon-nhat-the-gioi-ban-7-ngay', '20210110/582079325-photo-1-15936619907071928096671.png', 1, 'Ngôi sao MiBR Fer bất ngờ bị nền tảng stream lớn nhất thế giới ban 7 ngày', 'Ngôi sao MiBR Fer bất ngờ bị nền tảng stream lớn nhất thế giới ban 7 ngày', 'Ngôi sao MiBR Fer bất ngờ bị nền tảng stream lớn nhất thế giới ban 7 ngày', 'Vào rạng sáng nay Twitch đã đưa ra một lệnh ban 7 ngày với ngôi sao của MiBR Fer.', '<p style=\"text-align:justify\">Th&aacute;ng 6 l&agrave; một th&aacute;ng đầy gi&ocirc;ng b&atilde;o với c&aacute;c th&agrave;nh vi&ecirc;n MiBR khi họ li&ecirc;n tục d&iacute;nh v&agrave;o những drama kh&ocirc;ng đ&aacute;ng c&oacute;. Đầu ti&ecirc;n l&agrave; Fer khi anh đ&atilde; c&oacute; những lời lẽ mang t&iacute;nh ph&acirc;n biệt chủng tộc tr&ecirc;n stream c&aacute; nh&acirc;n của m&igrave;nh v&agrave; tuy kh&ocirc;ng bị Twitch sờ g&aacute;y nhưng anh vẫn bị MiBR phạt một khoản tiền v&agrave; phải xin lỗi c&ocirc;ng khai tr&ecirc;n Twitter. Kh&ocirc;ng l&acirc;u sau đ&oacute;, c&aacute;c th&agrave;nh vi&ecirc;n MiBR lại c&oacute; một cuộc tranh c&atilde;i với những người đồng hương FURIA về việc reset một round đấu quan trọng khi m&aacute;y t&iacute;nh của FalleN v&agrave; Fer bị giật lag, nhưng theo luật th&igrave; FURIA kh&ocirc;ng cần phải reset khi đ&atilde; c&oacute; damage g&acirc;y ra. Tuy cuối c&ugrave;ng th&igrave; FURIA cũng đồng &yacute; reset round đấu nhưng trước đ&oacute; Fer đ&atilde; c&oacute; một Tweet đầy tranh c&atilde;i với c&aacute;c th&agrave;nh vi&ecirc;n FURIA.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://gamek.mediacdn.vn/133514250583805952/2020/7/2/photo-1-15936619907071928096671.jpg\" style=\"height:650px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Twitch trong thời gian gần đ&acirc;y đ&atilde; c&oacute; những động th&aacute;i mạnh tay chống nạn ph&acirc;n biệt chủng tộc cũng như l&agrave; quấy rối v&agrave; thậm ch&iacute; l&agrave; tấn c&ocirc;ng t&igrave;nh dục khi h&agrave;ng loạt c&aacute;c streamer nữ đ&atilde; đứng ra tố c&aacute;o những h&agrave;nh vi kh&ocirc;ng đ&uacute;ng đắn của một số nh&acirc;n vi&ecirc;n Twitch v&agrave; c&aacute;c streamer nam kh&aacute;c. Twitch đ&atilde; ngay lập tức v&agrave;o cuộc điều tra v&agrave; những lệnh ban vĩnh viễn đ&atilde; được đưa ra với những trường hợp nghi&ecirc;m trọng nhất. Cả những ch&iacute;nh trị gia danh tiếng cũng kh&ocirc;ng nằm ngoại lệ khi c&aacute;ch đ&acirc;y 2 ng&agrave;y t&agrave;i khoản Twitch của Tổng thống Mỹ Donald Trump đ&atilde; bị nền tảng stream n&agrave;y&nbsp;<a href=\"https://twitter.com/StreamerBans/status/1277649564930015237\">ban tạm thời</a>&nbsp;sau khi c&oacute; những b&igrave;nh luận mang t&iacute;nh &ldquo;hận th&ugrave;&rdquo; trong một buổi vận động tranh cử gần đ&acirc;y.</p>\r\n\r\n<p style=\"text-align:justify\">Một lệnh ban 7 ng&agrave;y thường được Twitch &aacute;p dụng với những k&ecirc;nh stream chưa từng hoặc c&oacute; rất &iacute;t vi phạm v&agrave; hy vọng rằng đ&acirc;y sẽ l&agrave; một b&agrave;i học hữu &iacute;ch với Fer để anh cẩn thận hơn với những ph&aacute;t ng&ocirc;n tr&ecirc;n stream.</p>', 1, '2021-01-10 00:58:05', '2021-01-14 05:00:49'),
(19, 2, 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', 'thi-dau-day-an-tuong-than-dong-csgo-14-tuoi-cua-doi-tre-navi-duoc-gia-nhap-faceit-pro-league', '20210110/432349326-He7G1qi.png', 1, 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', '<p>V&agrave;o h&ocirc;m qua, v&ograve;ng loại FPL th&aacute;ng 3 đ&atilde; kh&eacute;p lại v&agrave; trong danh s&aacute;ch c&aacute;c player mới v&agrave; một c&aacute;i t&ecirc;n đ&aacute;ng ch&uacute; &yacute; ch&iacute;nh l&agrave; m0NESY, thần đồng hiện đang thi đấu cho Na`vi. Junior. Tuy kh&ocirc;ng vượt qua được v&ograve;ng loại (chỉ đứng thứ 6 ở v&ograve;ng loại) nhưng phong độ hủy diệt của anh đ&atilde; khiến BTC thực sự ấn tượng v&agrave; quyết định invite anh v&agrave;o thi đấu. Năm nay mới 14 tuổi, anh l&agrave; một trong những player trẻ tuổi nhất được thi đấu trong lịch sử FPL. Trong danh s&aacute;ch n&agrave;y ch&uacute;ng ta c&oacute; thể thấy h&agrave;ng loạt những ng&ocirc;i sao trẻ đang thi đấu chuy&ecirc;n nghiệp như&nbsp;<strong>oBo</strong>&nbsp;(gia nhập FPL từ khi 15 tuổi),&nbsp;<strong>ropz</strong>&nbsp;(thi đấu tại FPL từ khi 17 tuổi) hay&nbsp;<strong>frozen</strong>&nbsp;(l&agrave; player trẻ tuổi nhất trong lịch sử FPL, 13 tuổi)...</p>', 199, '2021-01-10 00:59:40', '2021-01-10 02:09:12'),
(21, 2, 'S1mple và đồng đội nói gì sau hai thất bại 0-2 liên tiếp tại ESL Pro League Season 11?', 's1mple-va-dong-doi-noi-gi-sau-hai-that-bai-0-2-lien-tiep-tai-esl-pro-league-season-11', '20210110/615072309-preview2.png', 1, 'S1mple và đồng đội nói gì sau hai thất bại 0-2 liên tiếp tại ESL Pro League Season 11?', 'S1mple và đồng đội nói gì sau hai thất bại 0-2 liên tiếp tại ESL Pro League Season 11?', 'S1mple và đồng đội nói gì sau hai thất bại 0-2 liên tiếp tại ESL Pro League Season 11?', 'Thất bại 0-2 đêm qua trước BIG là trận thua thứ 2 liên tiếp cùng với tỷ số 0-2 của Na`vi tại giải đấu ESL Pro Leauge Season 11 lần này.', '<p>Đầu năm 2020 l&agrave; khoảng thời gian cực kỳ tuyệt vời với Na`vi khi họ li&ecirc;n tiếp c&oacute; được 2 danh hiệu LAN (ng&ocirc;i đầu bảng B BLAST Premier Spring Series v&agrave; chức v&ocirc; địch IEM Katowice 2020 danh gi&aacute;) v&agrave; S1mple c&ugrave;ng c&aacute;c đồng đội đ&atilde; vươn l&ecirc;n vị tr&iacute; top 1 thế giới sau hơn 4 năm chờ đợi. Tham dự ESL Pro League Season 11, Na`vi l&agrave; một trong những ứng cử vi&ecirc;n nặng k&yacute; nhất cho vị tr&iacute; đầu bảng khi ở bảng B những đối thủ của họ đều kh&ocirc;ng phải l&agrave; qu&aacute; mạnh v&agrave; chỉ c&oacute; Fnatic l&agrave; c&aacute;i t&ecirc;n duy nhất nằm trong top 10 của HLTV.</p>', 999, '2021-01-10 02:10:59', '2021-01-10 02:16:48'),
(22, 1, 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'navi-ceo-chung-toi-dat-muc-tieu-se-den-voi-ti10-bang-diem-dpc-va-lot-it-nhat-la-top-8-tren-bang-xep-hang', '20210110/330421408-maxresdefault.jpg', 1, 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'Eugene \"HarisPilton\" Zolotarev đặt mục tiêu cho đội tuyển Dota 2 trong mùa giải mới', '<p style=\"text-align:justify\"><strong>Eugene</strong>&nbsp;<strong><a href=\"https://www.cybersport.ru/base/gamers/harispilton\">HarisPilton</a></strong>&nbsp;<strong>Zolotarev</strong>&nbsp;gi&aacute;m đốc điều h&agrave;nh&nbsp;<strong>Natus Vincere</strong>&nbsp;n&oacute;i về mục ti&ecirc;u m&agrave; anh đặt ra cho đội tuyển Dota 2 trong m&ugrave;a giải DPC 2019 - 2020. &Ocirc;ng cũng đ&aacute;nh gi&aacute; cao về th&agrave;nh vi&ecirc;n mới&nbsp;<strong>9Pasha</strong>&nbsp;cũng như tầm quan trọng của đội trưởng&nbsp;<strong>SoiNNeiko</strong>&nbsp;trong việc hiện thực h&oacute;a mục ti&ecirc;u trong m&ugrave;a giải mới.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://i.ytimg.com/vi/7_q_wuvSb80/maxresdefault.jpg\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">&quot;TI9 chưa phải l&agrave; một giải đấu th&agrave;nh c&ocirc;ng với Navi nhưng th&agrave;nh t&iacute;ch của đội tuyển đ&atilde; l&agrave; tạm chấp nhận được. Ch&uacute;ng t&ocirc;i đ&atilde; chọn ra được 2 c&aacute;i t&ecirc;n trước khi bắt đầu m&ugrave;a giải mới để kỳ vọng về một th&agrave;nh t&iacute;ch tốt hơn ở DPC 2019 - 2020. Ch&uacute;ng t&ocirc;i đặt mục ti&ecirc;u sẽ đến với TI10 bằng điểm DPC v&agrave; lọt &iacute;t nhất l&agrave; top 8.&quot;</p>\r\n\r\n<p style=\"text-align:justify\">&quot;<strong>&nbsp;9Pasha</strong>&nbsp;l&agrave; một player xuất sắc v&agrave; cực k&igrave; kinh nghiệm v&agrave; đ&oacute; ch&iacute;nh l&agrave; thứ m&agrave; ch&uacute;ng t&ocirc;i đang thiếu. C&ograve;n&nbsp;<strong>SoNNeikO</strong>&nbsp;l&agrave; một t&agrave;i năng trẻ đang trưởng th&agrave;nh hằng ng&agrave;y như một người đ&agrave;n &ocirc;ng v&agrave; một người đội trưởng. Đ&ocirc;i l&uacute;c cậu ấy kh&aacute; l&agrave; kh&oacute; t&iacute;nh nhưng so với khi m&agrave;&nbsp;<strong>SoNNeikO</strong>&nbsp;mới gia nhập v&agrave;o năm 2015, cậu ấy đ&atilde; thực sự tiến bộ hơn rất nhiều. Tất cả c&aacute;c top team đều c&oacute; một leader giỏi v&agrave; đ&oacute; l&agrave; điều cực kỳ cần thiết trong Dota. Bởi vậy đội h&igrave;nh của ch&uacute;ng t&ocirc;i sẽ tiếp tục x&acirc;y dựng xoay quanh&nbsp;<strong>SoNNeikO&nbsp;</strong>&quot;</p>\r\n\r\n<p style=\"text-align:justify\">Sau TI9 đội h&igrave;nh của Na`vi ngay lập tức c&oacute; sự thay đổi đ&oacute; l&agrave; việc Blizzy phải ra đi để nhường chỗ cho cựu offlane của Virtus Pro. Họ đ&atilde; c&oacute; chức v&ocirc; địch đầu ti&ecirc;n của m&igrave;nh khi d&agrave;nh chiến thắng tại giải&nbsp;<a href=\"https://www.cybersport.ru/base/tournaments/weplay-reshuffle-madness-2019\">WePlay!&nbsp;</a><a href=\"https://www.cybersport.ru/base/tournaments/weplay-reshuffle-madness-2019\">Reshuffle Madness 2019</a>&nbsp;. Dẫu biết đ&oacute; mới chỉ l&agrave; một giải đấu mang t&iacute;nh chất khởi động nhưng fan boy của họ c&oacute; quyền hị vọng về một Na`vi mới mẻ v&agrave; thi đấu khởi sắc trong m&ugrave;a giải mới.</p>', 1800, '2021-01-10 02:16:28', '2021-01-12 10:35:27'),
(23, 2, 'CS:GO - Stewie2k, ngôi sao trẻ tuổi và hành trình trở thành huyền thoại nền CS Bắc Mỹ', 'csgo-stewie2k-ngoi-sao-tre-tuoi-va-hanh-trinh-tro-thanh-huyen-thoai-nen-cs-bac-my', '20210112/980488382-photo-1-1610100366457499959271 (1).png', 1, 'CS:GO - Stewie2k, ngôi sao trẻ tuổi và hành trình trở thành huyền thoại nền CS Bắc Mỹ', 'CS:GO - Stewie2k, ngôi sao trẻ tuổi và hành trình trở thành huyền thoại nền CS Bắc Mỹ', 'CS:GO - Stewie2k, ngôi sao trẻ tuổi và hành trình trở thành huyền thoại nền CS Bắc Mỹ', 'Khi nói về những player xuất sắc nhất trong lịch sử nền CS Bắc Mỹ thì Stewie2k chắc chắn là một cái tên không thể không nhắc tới. Năm nay mới 23 tuổi nhưng trong 5 năm thi đấu chuyên nghiệp Stewie2k đã có cho mình vô số chức vô địch danh giá, trong đó không thể không kể tới danh hiệu Grand Slam và vô địch Major. Hãy cùng chúng tôi tìm hiểu về anh chàng 23 tuổi này nhé!', '<p style=\"text-align:justify\">Jacky Jake &quot;Stewie2K&quot; Yip sinh ng&agrave;y 07 th&aacute;ng 01 năm 1998 tại Mỹ v&agrave; năm nay anh tr&ograve;n 23 tuổi. Stewie2k bắt đầu thi đấu chuy&ecirc;n nghiệp từ năm 2015 trong m&agrave;u &aacute;o một số đội tuyển v&ocirc; danh nhưng đ&atilde; để lại những ấn tượng trong giới CS Bắc Mỹ với lối chơi hổ b&aacute;o, kh&oacute; đo&aacute;n v&agrave; những pha đẩy qua smoke cực kỳ bất ngờ của m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:justify\">Chưa đầy một năm sau, Stewie2k ch&iacute;nh thức gia nhập&nbsp;Cloud9&nbsp;c&ugrave;ng những ng&ocirc;i sao h&agrave;ng đầu v&agrave;o thời điểm đ&oacute; như n0thing, Hiko hay Shroud. Được thi đấu c&ugrave;ng những người đồng đội d&agrave;y dạn kinh nghiệm, Stewie2k đ&atilde; nhanh ch&oacute;ng trưởng th&agrave;nh v&agrave; trở th&agrave;nh một ng&ocirc;i sao đ&iacute;ch thực trong team.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/1/8/photo-1-16101003692861267073337.jpg\" style=\"height:640px; width:640px\" /></p>\r\n\r\n<p style=\"text-align:justify\">D&ugrave; vậy, đến tận năm 2018 Stewie2k v&agrave; c&aacute;c đồng đội mới đạt được th&agrave;nh c&ocirc;ng. Tại kỳ Eleague Boston Major được tổ chức tại qu&ecirc; nh&agrave;, họ đ&atilde; l&agrave;m n&ecirc;n một trong những kỳ Major hấp dẫn nhất trong lịch sử khi đ&aacute;nh bại h&agrave;ng loạt đối thủ đ&aacute;ng gờm để tiến thẳng v&agrave;o trận chung kết tổng. Tại nh&agrave; thi đấu Agganis Arena, một trận chung kết nghẹt thở đ&atilde; được diễn ra v&agrave; sau 3 map thi đấu, c&aacute;c th&agrave;nh vi&ecirc;n Cloud9 đ&atilde; đi v&agrave;o lịch sử như l&agrave; đội tuyển Bắc Mỹ đầu ti&ecirc;n (v&agrave; duy nhất, t&iacute;nh tới thời điểm n&agrave;y) v&ocirc; địch được một kỳ Major.&nbsp;</p>', 199, '2021-01-12 07:12:12', '2021-01-12 07:12:26'),
(24, 2, 'Dịch bệnh COVID-19 và tương lai ảm đạm của nền CS:GO chuyên nghiệp nửa cuối năm 2020', 'dich-benh-covid-19-va-tuong-lai-am-dam-cua-nen-csgo-chuyen-nghiep-nua-cuoi-nam-2020', '20210112/270225666-photo-1-1594099756640533602817.png', 1, 'Dịch bệnh COVID-19 và tương lai ảm đạm của nền CS:GO chuyên nghiệp nửa cuối năm 2020', 'Dịch bệnh COVID-19 và tương lai ảm đạm của nền CS:GO chuyên nghiệp nửa cuối năm 2020', 'Dịch bệnh COVID-19 và tương lai ảm đạm của nền CS:GO chuyên nghiệp nửa cuối năm 2020', 'Dịch bệnh COVID-19 vẫn đang hoành hành ở khá nhiều các quốc gia phương Tây, đặc biệt là Mỹ khiến nhiều giải đấu LAN CS:GO tiếp tục có nguy cơ bị hủy bỏ hoặc chuyển sang thi đấu online.', '<p>Nửa đầu năm 2020 đ&atilde; chứng kiến sự b&ugrave;ng ph&aacute;t của dịch bệnh&nbsp;COVID-19&nbsp;v&agrave; sự l&acirc;y lan với tốc độ ch&oacute;ng mặt của n&oacute; tr&ecirc;n to&agrave;n thế giới đ&atilde; l&agrave;m đảo lộn v&agrave; ảnh hưởng lớn tới cuộc sống người d&acirc;n của nhiều quốc gia. Ng&agrave;nh Esports n&oacute;i chung v&agrave;&nbsp;CS:GO&nbsp;n&oacute;i ri&ecirc;ng cũng kh&ocirc;ng l&agrave; ngoại lệ khi đ&atilde; c&oacute; rất nhiều giải đấu bị ảnh hưởng ở nhiều mức độ kh&aacute;c nhau: thi đấu kh&ocirc;ng c&oacute; kh&aacute;n giả (IEM Katowice 2020), chuyển sang thi đấu online (ESL Pro League Season 11, Flashpoint Season 1) hay thậm ch&iacute; l&agrave; thay đổi lịch thi đấu (Major ESL One: Rio).</p>\r\n\r\n<p>Kể từ th&aacute;ng 3 tới nay tất cả c&aacute;c giải đấu CS:GO lớn tr&ecirc;n thế giới đều đ&atilde; phải sử dụng thể thức thi đấu online theo từng khu vực v&agrave; điều n&agrave;y đ&atilde; ảnh hưởng kh&ocirc;ng nhỏ tới phong độ c&aacute;c đội tuyển khi họ phải li&ecirc;n tục đối đầu nhau, kh&ocirc;ng c&oacute; cơ hội cọ s&aacute;t với những đội tuyển từ ch&acirc;u lục kh&aacute;c. Hơn thế nữa, thi đấu online chỉ l&agrave; một giải ph&aacute;p t&igrave;nh thế khi rất nhiều vấn đề c&oacute; thể diễn ra như ping, m&aacute;y m&oacute;c của player, coach, xem trộm stream,...</p>\r\n\r\n<p>V&agrave;o đầu th&aacute;ng 6 vừa rồi, trang tin uy t&iacute;n hltv.org đ&atilde; đưa tin rằng&nbsp;ESL One Cologne&nbsp;- giải đấu danh gi&aacute; nhất năm v&agrave; cũng l&agrave; giải đấu đầu ti&ecirc;n được tổ chức sau kỳ nghỉ h&egrave; một th&aacute;ng của c&aacute;c player - nhiều khả năng sẽ được thi đấu tại một studio ở ch&acirc;u &Acirc;u v&agrave; kh&ocirc;ng c&oacute; kh&aacute;n giả. Tuy nhi&ecirc;n với t&igrave;nh h&igrave;nh dịch bệnh COVID-19 tiếp tục diễn biến phức tạp v&agrave; mới chỉ c&oacute; một số quốc gia ch&acirc;u &Acirc;u nới lỏng c&aacute;c biện ph&aacute;p hạn chế đi lại th&igrave; ESL đang nghi&ecirc;ng về khả năng thi đấu online như c&aacute;c giải đấu trước, theo nhiều nguồn tin th&acirc;n cận với c&aacute;c b&ecirc;n c&oacute; li&ecirc;n quan.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://gamek.mediacdn.vn/thumb_w/690/133514250583805952/2020/7/7/photo-1-1594099759731582679337.jpg\" style=\"height:388px; width:690px\" /></p>\r\n\r\n<p>Nếu l&agrave; sự thật th&igrave; đ&acirc;y sẽ l&agrave; một tổn thất kh&ocirc;ng hề nhỏ với cộng đồng CS:GO thế giới khi ESL One Cologne l&agrave; một trong những giải đấu l&acirc;u đời v&agrave; danh gi&aacute; nhất trong lịch sử CS:GO với 6 lần được tổ chức. H&igrave;nh ảnh nh&agrave; thi đấu chật cứng kh&aacute;n giả v&agrave; sự cổ vũ cuồng nhiệt lu&ocirc;n l&agrave; những điều người ta nhắc tới khi n&oacute;i về Lanxess Arena - &quot;th&aacute;nh đường CS:GO&quot; v&agrave; l&agrave; nh&agrave; thi đấu từ trước tới nay của ESL One Cologne. Khi được li&ecirc;n hệ, &ocirc;ng Ulrich Schulze, ph&oacute; gi&aacute;m đốc sản xuất của ESL đ&atilde; n&oacute;i: &quot;Hiện tại ch&uacute;ng t&ocirc;i đang c&acirc;n nhắc c&aacute;c lựa chọn v&agrave; thi đấu online l&agrave; một trong số c&aacute;c phương &aacute;n.&quot;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ thế, nhiều nguồn tin cũng khẳng định rằng Major duy nhất trong năm nay ESL One: Rio nhiều khả năng cũng sẽ kh&ocirc;ng được tổ chức khi t&igrave;nh h&igrave;nh dịch bệnh tại Brazil, nơi tổ chức giải đấu vẫn chưa c&oacute; dấu hiệu khả quan n&agrave;o. Theo c&aacute;c kế hoạch ban đầu th&igrave; ESL One: Rio sẽ l&agrave; Major đầu ti&ecirc;n trong năm nay v&agrave; được tổ chức v&agrave;o th&aacute;ng 5 vừa rồi, tuy nhi&ecirc;n n&oacute; đ&atilde; bị ho&atilde;n lại v&agrave; chuyển sang th&aacute;ng 11, khiến năm 2020 chỉ c&ograve;n một Major duy nhất được tổ chức.</p>\r\n\r\n<p>Dịch bệnh ho&agrave;nh h&agrave;nh tr&ecirc;n to&agrave;n cầu cũng khiến c&aacute;c đơn vị tổ chức giải đấu thận trọng hơn v&agrave; cho tới nay mới chỉ c&oacute; một v&agrave;i giải đấu được x&aacute;c nhận sẽ tổ chức trong nửa cuối năm 2020 như ESL Pro League Season 12, BLAST Premier Fall,... Hy vọng rằng dịch bệnh sẽ qua đi v&agrave; ch&uacute;ng ta sẽ sớm một lần nữa chứng kiến những điều đ&atilde; l&agrave;m n&ecirc;n sự cuốn h&uacute;t cho c&aacute;c giải đấu CS:GO: nh&agrave; thi đấu chật cứng kh&aacute;n giả, sự cổ vũ cuồng nhiệt v&agrave; những pha highlight để đời của c&aacute;c player.</p>', 95, '2021-01-12 07:14:46', '2021-01-12 07:14:46'),
(25, 1, 'Caster Uzi và Huy Lova sẽ tham gia bình luận giải đấu “Đi Tìm Chân Lý” vào cuối tuần này', 'caster-uzi-va-huy-lova-se-tham-gia-binh-luan-giai-dau-“di-tim-chan-ly”-vao-cuoi-tuan-nay', '20210112/189275436-Phuc Anh Casters.jpg', 1, 'Caster Uzi và Huy Lova sẽ tham gia bình luận giải đấu “Đi Tìm Chân Lý” vào cuối tuần này', 'Caster Uzi và Huy Lova sẽ tham gia bình luận giải đấu “Đi Tìm Chân Lý” vào cuối tuần này', 'Caster Uzi và Huy Lova sẽ tham gia bình luận giải đấu “Đi Tìm Chân Lý” vào cuối tuần này', 'Lần đầu tiên khán giả sẽ được thấy Huy Lova bình luận một giải đấu ĐTCL bên cạnh caster nổi tiếng Uzi.', '<p style=\"text-align:justify\">Nhằm tạo một s&acirc;n chơi chuy&ecirc;n nghiệp v&agrave; hấp dẫn cho cộng đồng game thủ, C&ocirc;ng ty TNHH Kỹ Nghệ Ph&uacute;c Anh đ&atilde; quyết định tổ chức giải đấu&nbsp;<a href=\"https://www.phucanh.vn/su-kien-game-phuc-anh-gaming-tournament-dau-truong-chan-ly.html\"><strong><em>Ph&uacute;c Anh Gaming Tournament: Đi T&igrave;m Ch&acirc;n L&yacute;</em></strong></a>, với tựa game &ldquo;Đấu Trường Ch&acirc;n L&yacute;&rdquo; đang l&agrave;m mưa l&agrave;m gi&oacute; ở khắp c&aacute;c quốc gia tr&ecirc;n thế giới.</p>\r\n\r\n<p style=\"text-align:justify\">V&agrave; để khiến c&aacute;c trận đấu th&ecirc;m phần hấp dẫn, Ph&uacute;c Anh đ&atilde; mời đến sự kiện 2 caster v&ocirc; c&ugrave;ng nổi tiếng từ&nbsp;<strong>500Bros Studio</strong>:&nbsp;<strong>Uzi</strong>&nbsp;v&agrave; Huy&nbsp;<strong>Lova</strong>&nbsp;để tham gia b&igrave;nh luận to&agrave;n bộ 7 trận đấu trong ng&agrave;y&nbsp;<strong>27/10</strong>&nbsp;n&agrave;y.</p>\r\n\r\n<p style=\"text-align:justify\">Nếu bạn l&agrave; 1 fan l&acirc;u năm của tựa game LMHT, chắc hẳn c&aacute;c bạn đ&atilde; kh&ocirc;ng c&ograve;n xa lạ g&igrave; với&nbsp;<strong>Uzi</strong>, khi đ&acirc;y từng l&agrave; một game thủ chuy&ecirc;n nghiệp v&agrave; cũng từng tham gia c&ocirc;ng việc b&igrave;nh luận tại VETV. Thậm ch&iacute;, anh từng cho một game thủ quốc tế mượn t&agrave;i khoản cũng như ch&iacute;nh nick name của m&igrave;nh, đ&oacute; ch&iacute;nh l&agrave; player&nbsp;Jian &quot;<strong>Uzi</strong>&quot; Zi-Hao (hiện đang thi đấu cho&nbsp;<strong>RNG</strong>). Sau khi gi&atilde; từ LMHT đỉnh cao, Uzi hiện đang l&agrave; streamer/caster cho chế độ chơi<strong>&nbsp;Đấu Trường Ch&acirc;n L&yacute;</strong>. Với mức rank Cao Thủ v&agrave; kinh nghiệm b&igrave;nh luận ở những giải đấu lớn như Đấu Trường M&aacute;y T&iacute;nh, Uzi ho&agrave;n to&agrave;n c&oacute; đầy đủ những kiến thức v&agrave; g&oacute;c nh&igrave;n chuy&ecirc;n m&ocirc;n để gi&uacute;p c&aacute;c kh&aacute;n giả c&oacute; thể nh&igrave;n nhận trận đấu một c&aacute;ch chuy&ecirc;n s&acirc;u v&agrave; trọn vẹn nhất.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://lh3.googleusercontent.com/0-aR-n_CmeJGkXX960toupVeDU-I4EapIWSzaouOo_3XXg7O829RcsY6oH1uohAdcwpaEl-rl9yB1oaq11PLMYQVWiTfA0ZA5Ulha0XZ3uBMXfn5ErHEr3jhSibcdLyayi_pooqjXL1--Xl8QRIs134r8LFP-nei4BSTtTNB_wdn4jy5-QI66m_unkh6QV6joWUYx6V4kdzHZWq-C3DTGc-52Pc5WTAfgBNo8OKvXaM4b_JimfIPj8AqYV_enS5AdwNkI2IjNJmF9889Uaqj9dbyRnxdnNeaua1y3EhaHlK7dRre4FTq-e4R_9Q8u0ZjBDkQv_nbV3787ALZM5yhZv9TtCLy3FVMuszbS46iei_IzQBxq6pHxoQgTKyxMQq2z7L2jBsNT6t0gutQek2WjzQ9-Q954hserE9l-wGq3HlThOBKKiaFwfSFTQ0DtJD8gCrGfu8jxZEsns7uJp02mogcgvzvmpaBbF5iiPZRvzU1Kw-b3TSJ1dG950mlBD6hQAxGg_ex1ak7O51vLUeZ6c7cEon3dtvX4FV7uBzE5qPJx3qfnFD7hD46X31TxARqVnOQfn2P-z_LLXh8GynZkQO5Wzs2nvDzxLQtmFILK3gHHdLZztTCPdNN9dJj-7xNdxL2PTou9xJ6rwNDvASfocVv91Z36FbaTtrfT4U9sOmai-TM2iyBbWZF09niyFG4CdCCFahaczTcqV-_taw7w7S59gnl6cVd-0co1uZU-XQHJKw=w1332-h888-no\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Tr&aacute;i ngược với&nbsp;<strong>Uzi</strong>,&nbsp;<strong>Huy Lova</strong>&nbsp;vốn xuất th&acirc;n l&agrave; một caster được y&ecirc;u th&iacute;ch ở cộng đồng CS:GO. Với t&iacute;nh c&aacute;ch h&agrave;i hước, d&iacute; dỏm v&agrave; khả năng hoạt ng&ocirc;n, Huy Lova lu&ocirc;n đem lại cho kh&aacute;n giả những tiếng cười sảng kho&aacute;i, cảm nhận trận đấu theo một chiều hướng cực kỳ thư gi&atilde;n v&agrave; th&uacute; vị với phần b&igrave;nh luận của anh. V&agrave; dĩ nhi&ecirc;n, mặc d&ugrave; nổi tiếng với c&aacute;c fan của CS nhưng một tựa game y&ecirc;u th&iacute;ch kh&aacute;c của ch&agrave;ng trai n&agrave;y lại l&agrave;&hellip; LMHT v&agrave; Đấu Trường Ch&acirc;n L&yacute;. V&agrave; trong lần s&aacute;t c&aacute;nh c&ugrave;ng Uzi tham gia b&igrave;nh luận &ldquo;Đi T&igrave;m Ch&acirc;n L&yacute;&rdquo; v&agrave;o cuối tuần n&agrave;y, Huy Lova sẽ c&oacute; cơ hội được thử sức ở ch&iacute;nh s&acirc;n chơi m&agrave; bản th&acirc;n đ&atilde; ao ước từ l&acirc;u.</p>', 250, '2021-01-12 07:17:26', '2021-01-13 08:37:04'),
(26, 2, 'Revolution khẳng định vị thế đội tuyển CS:GO số 1 Việt Nam, lên ngôi vô địch JBL CS:GO Championship', 'revolution-khang-dinh-vi-the-doi-tuyen-csgo-so-1-viet-nam-len-ngoi-vo-dich-jbl-csgo-championship', '20210116/414282510-ATWev9O.jpg', 1, 'Revolution khẳng định vị thế đội tuyển CS:GO số 1 Việt Nam, lên ngôi vô địch JBL CS:GO Championship', 'Revolution khẳng định vị thế đội tuyển CS:GO số 1 Việt Nam, lên ngôi vô địch JBL CS:GO Championship', 'Revolution khẳng định vị thế đội tuyển CS:GO số 1 Việt Nam, lên ngôi vô địch JBL CS:GO Championship', 'Dù phải đối đầu với những tài năng trẻ đầy tham vọng bên phía DivisionX Gaming, Revolution vẫn có màn trình diễn tuyệt vời để bảo vệ “ngai vàng” trong cộng đồng CS:GO Việt Nam.', '<p>Trải qua 2 tuần thi đấu, giải đấu JBL CS:GO Championship đ&atilde; đi đến trận chung kết giữa 2 đội tuyển Revolution v&agrave; DivisionX Gaming diễn ra trực tiếp v&agrave;o ng&agrave;y 21/06/2020 tại Vikings Esports Arena, số 10 Trần Ph&uacute;, H&agrave; Đ&ocirc;ng, H&agrave; Nội. L&agrave; sự kiện LAN lớn đầu ti&ecirc;n trong năm 2020 của cộng đồng CS:GO Việt Nam v&agrave; được t&agrave;i trợ bởi nh&atilde;n h&agrave;ng JBL, buổi offline theo d&otilde;i trận chung kết của giải đấu đ&atilde; thu h&uacute;t được đ&ocirc;ng đảo kh&aacute;n giả tới tham dự.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://i.imgur.com/ATWev9O.jpg\" style=\"height:314px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">C&oacute; lẽ đ&atilde; rất l&acirc;u rồi cộng đồng CS:GO Việt Nam mới c&oacute; một giải đấu trong nước thu h&uacute;t đ&ocirc;ng đảo sự quan t&acirc;m của kh&aacute;n giả đến như vậy. Hy vọng sau sự th&agrave;nh c&ocirc;ng của JBL CS:GO Championship, CS:GO Việt Nam sẽ c&oacute; th&ecirc;m nhiều giải đấu quy m&ocirc; v&agrave; th&agrave;nh c&ocirc;ng hơn nữa, đặc biệt l&agrave; tiếp tục c&oacute; được sự quan t&acirc;m từ nh&atilde;n h&agrave;ng JBL - thương hiệu đang lấn s&acirc;n v&agrave;o thị trường tai nghe &amp; loa gaming với những d&ograve;ng sản phẩm chất lượng, đem lại trải nghiệm tuyệt vời cho game thủ.</p>', 19, '2021-01-15 17:40:27', '2021-01-15 17:40:55'),
(27, 2, 'BLAST Pro Series Global 2019 chính thức khởi tranh vào đêm nay', 'blast-pro-series-global-2019-chinh-thuc-khoi-tranh-vao-dem-nay', '20210116/289177787-9f6pQgb.jpg', 1, 'BLAST Pro Series Global 2019 chính thức khởi tranh vào đêm nay', 'BLAST Pro Series Global 2019 chính thức khởi tranh vào đêm nay', 'BLAST Pro Series Global 2019 chính thức khởi tranh vào đêm nay', 'Giải đấu BLAST Pro Series Global Final 2019 được bình luận bởi 500Bros sẽ được phát sóng trên các nền tảng của Truyền hình FPT và FPT Play, bên cạnh kênh twitch chính thức của 500Bros.', '<p>Sau một năm s&ocirc;i động với tổng cộng 6 giải đấu tại c&aacute;c th&agrave;nh phố lớn tr&ecirc;n thế giới, giải đấu cuối c&ugrave;ng trong năm nay BLAST Pro Series Global 2019 sẽ ch&iacute;nh thức khởi tranh v&agrave;o đ&ecirc;m nay với tổng tiền thưởng l&ecirc;n tới 500,000 USD v&agrave; được tổ chức tại th&agrave;nh phố Riffa, Bahrain.</p>\r\n\r\n<p>L&agrave; giải đấu kh&eacute;p lại một năm 2019 rất th&agrave;nh c&ocirc;ng của BLAST Pro Series, giải đấu sẽ c&oacute; sự g&oacute;p mặt của 4 đội tuyển đ&atilde; kiếm được nhiều điểm BLAST trong năm vừa qua:&nbsp;<strong>FaZe Clan, Liquid, Astralis</strong>&nbsp;v&agrave;&nbsp;<strong>NiP</strong>. Số điểm cụ thể của c&aacute;c team kiếm được như sau:&nbsp;</p>\r\n\r\n<p><strong>FaZe Clan</strong>:&nbsp;30 điểm với 2 chức v&ocirc; địch tại Copenhagen v&agrave; Miami c&ugrave;ng vị tr&iacute; &aacute; qu&acirc;n tại Los Angeles.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://i.imgur.com/zdNWY70.png\" style=\"height:433px; width:650px\" /></p>\r\n\r\n<p><strong>Liquid</strong>: 28 điểm với chức v&ocirc; địch tại Los Angeles v&agrave; 2 lần &aacute; qu&acirc;n tại Miami v&agrave; S&atilde;o Paulo.</p>\r\n\r\n<p><strong>Astralis</strong>:&nbsp;26 điểm với chức v&ocirc; địch tại S&atilde;o Paulo, vị tr&iacute; &aacute; qu&acirc;n tại Madrid c&ugrave;ng 2 lần đứng thứ 4.</p>\r\n\r\n<p><strong>NiP</strong>: 24 điểm với vị tr&iacute; &aacute; qu&acirc;n tại Copenhagen, 2 lần đứng vị tr&iacute; thứ 3 tại Moscow v&agrave; Madrid c&ugrave;ng một lần đứng thứ 4 tại S&atilde;o Paulo.</p>\r\n\r\n<p><strong>FaZe Clan</strong>&nbsp;với 2 chức v&ocirc; địch tại Miami v&agrave; Copenhagen sẽ đối đầu với&nbsp;<strong>NiP</strong>&nbsp;trong lượt trận mở m&agrave;n, trong khi đ&oacute;&nbsp;<strong>Liquid</strong>&nbsp;v&agrave;&nbsp;<strong>Astralis</strong>&nbsp;sẽ c&oacute; lượt đối đầu thứ 8 trong năm nay, chỉ t&iacute;nh c&aacute;c lượt bo3. Tất cả c&aacute;c trận đấu n&agrave;y đều sẽ l&agrave; bo3 v&agrave; bắt đầu từ l&uacute;c 19:00 tối nay. giải đấu sẽ sử dụng thể thức double Elimination để chọn ra 2 c&aacute;i t&ecirc;n v&agrave;o trận chung kết tổng với phần thưởng 350,000 USD cho nh&agrave; v&ocirc; địch, c&ograve;n 2 đội thứ 3 v&agrave; thứ 4 sẽ tham dự trận Standoff với thể thức solo aim quen thuộc.&nbsp;</p>', 80, '2021-01-15 17:44:30', '2021-01-15 17:44:45'),
(28, 2, 'Offline theo dõi chung kết WD GO Beyond The Limits tại Vikings Trần Phú cùng nhiều phần quà hấp dẫn', 'offline-theo-doi-chung-ket-wd-go-beyond-the-limits-tai-vikings-tran-phu-cung-nhieu-phan-qua-hap-dan', '20210116/567247470-wcozjKu.png', 1, 'Offline theo dõi chung kết WD GO Beyond The Limits tại Vikings Trần Phú cùng nhiều phần quà hấp dẫn', 'Offline theo dõi chung kết WD GO Beyond The Limits tại Vikings Trần Phú cùng nhiều phần quà hấp dẫn', 'Offline theo dõi chung kết WD GO Beyond The Limits tại Vikings Trần Phú cùng nhiều phần quà hấp dẫn', 'Hòa chung không khí của những trận đấu vòng chung kết, BTC WD GO Beyond The Limits sẽ tổ chức một buổi offline theo dõi trực tiếp các trận đấu của 2 bộ môn CS:GO và PES tại Vikings Hà Đông với nhiều hoạt động và phần quà hấp dẫn.', '<p>Trải qua 2 tuần thi đấu, giải đấu JBL CS:GO Championship đ&atilde; đi đến trận chung kết giữa 2 đội tuyển Revolution v&agrave; DivisionX Gaming diễn ra trực tiếp v&agrave;o ng&agrave;y 21/06/2020 tại Vikings Esports Arena, số 10 Trần Ph&uacute;, H&agrave; Đ&ocirc;ng, H&agrave; Nội. L&agrave; sự kiện LAN lớn đầu ti&ecirc;n trong năm 2020 của cộng đồng CS:GO Việt Nam v&agrave; được t&agrave;i trợ bởi nh&atilde;n h&agrave;ng JBL, buổi offline theo d&otilde;i trận chung kết của giải đấu đ&atilde; thu h&uacute;t được đ&ocirc;ng đảo kh&aacute;n giả tới tham dự.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://i.imgur.com/hPWkFcl.png\" style=\"height:487px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Sự kiện sẽ diễn ra tại Vikings Trần Ph&uacute; (số 10 Trần Ph&uacute;, H&agrave; Đ&ocirc;ng), bắt đầu check in từ 08h00 s&aacute;ng v&agrave; dự kiến kết th&uacute;c v&agrave;o 17h00. Nếu như kh&ocirc;ng thể đến theo d&otilde;i trực tiếp giải đấu tại sự kiện th&igrave; kh&aacute;n giả vẫn c&oacute; thể xem tr&ecirc;n k&ecirc;nh youtube của 500Bros nh&eacute;! Hẹn gặp lại c&aacute;c bạn tại&nbsp;WD GO Beyond The Limits.</p>', 8000, '2021-01-15 17:48:28', '2021-01-15 17:48:28'),
(29, 2, 'Chính thức: Renegades trở lại CS:GO với đội hình của Grayhound', 'chinh-thuc-renegades-tro-lai-csgo-voi-doi-hinh-cua-grayhound', '20210116/837177006-logo.png', 1, 'Chính thức: Renegades trở lại CS:GO với đội hình của Grayhound', 'Chính thức: Renegades trở lại CS:GO với đội hình của Grayhound', 'Chính thức: Renegades trở lại CS:GO với đội hình của Grayhound', 'Các thành viên Grayhound sẽ ra mắt trong màu áo mới tại ESL Pro League Season 10 Finals vào tối nay.', '<p>V&agrave;o hồi th&aacute;ng 10 vừa qua,&nbsp;<strong>Renegades</strong>&nbsp;đ&atilde; b&aacute;n lại to&agrave;n bộ đội h&igrave;nh CS:GO của m&igrave;nh cho tổ chức&nbsp;<strong>100Thieves</strong>. Trong 4 năm lịch sử của m&igrave;nh,&nbsp;<strong>Renegades</strong>&nbsp;đ&atilde; g&oacute;p mặt tham dự 5 Major v&agrave; th&agrave;nh t&iacute;ch tốt nhất của họ l&agrave; v&agrave;o v&ograve;ng playoff của IEM Katowice 2019 v&agrave; StarLadder Major.</p>\r\n\r\n<p>Đội h&igrave;nh mới của&nbsp;<strong>Renegades</strong>&nbsp;sẽ c&oacute; m&agrave;n ra mắt trong m&agrave;u &aacute;o mới ngay tại ESL Pro League Season 10 Finals v&agrave;o tối nay v&agrave; đối thủ của họ sẽ l&agrave; t&acirc;n vương ECS Season 8 Finals&nbsp;<strong>Astralis</strong>. Trong một&nbsp;<a href=\"https://twitter.com/Renegades/status/1201773522143588352\"><strong>video th&ocirc;ng b&aacute;o</strong></a>&nbsp;được đăng tr&ecirc;n Twitter của tổ chức n&agrave;y,&nbsp;<strong>malta</strong>&nbsp;c&ugrave;ng c&aacute;c đồng đội đ&atilde; x&aacute;c nhận họ sẽ ở lại v&agrave; sẽ thi đấu ở&nbsp;Australia.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://vikings.gg/csgo/news/chinh-thuc-renegades-tro-lai-cs-go-voi-doi-hinh-cua-grayhound/@@images/image/preview\" style=\"height:338px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Grayhound</strong>&nbsp;đ&atilde; bước ch&acirc;n v&agrave;o CS:GO bằng việc k&yacute; hợp đồng với đội h&igrave;nh&nbsp;<strong>ex-Immunity</strong>&nbsp;hồi th&aacute;ng 6/2017, chỉ 3 th&aacute;ng sau khi tổ chức n&agrave;y được th&agrave;nh lập. Sau rất nhiều thay đổi trong đội h&igrave;nh,&nbsp;<strong>Grayhound</strong>&nbsp;trở th&agrave;nh một c&aacute;i t&ecirc;n thường xuy&ecirc;n g&oacute;p mặt tại c&aacute;c giải LAN lớn tr&ecirc;n thế giới trong năm 2019, thi đấu tại cả 2 kỳ Major trong năm 2019 v&agrave; lọt v&agrave;o top 20 tr&ecirc;n BXH hltv.</p>', 1, '2021-01-15 17:51:58', '2021-01-15 17:52:31'),
(30, 2, 'Những điều cần biết về ESL Pro League Season 10 Finals', 'nhung-dieu-can-biet-ve-esl-pro-league-season-10-finals', '20210116/964498909-kFpYNKc.png', 1, 'Những điều cần biết về ESL Pro League Season 10 Finals', 'Những điều cần biết về ESL Pro League Season 10 Finals', 'Những điều cần biết về ESL Pro League Season 10 Finals', 'Những điều cần biết về ESL Pro League Season 10 Finals', '<p>Đ&acirc;y l&agrave; lần thứ 3 v&ograve;ng Final của ESL Pro League được tổ chức tại th&agrave;nh phố Odense, Đan Mạch sau Season 6 v&agrave; Season 8. V&ograve;ng bảng của giải đấu sẽ diễn ra từ ng&agrave;y 3-5/12 v&agrave; được tổ chức tại ODINCON expo, c&ograve;n v&ograve;ng playoff sẽ được tổ chức tại nh&agrave; thi đấu Jyske Bank Arena.</p>\r\n\r\n<p>16 đội tuyển h&agrave;ng đầu thế giới sẽ thi đấu với thể thức Double Elimination với tổng tiền thưởng l&ecirc;n tới 600,000 USD c&ugrave;ng chức v&ocirc; địch danh gi&aacute; của giải đấu. C&aacute;c đội tuyển đ&atilde; được chia th&agrave;nh 2 bảng với lượt trận đầu ti&ecirc;n bo1, c&ograve;n lại tất cả sẽ l&agrave; bo3. Đội đứng đầu bảng sẽ tiến thẳng v&agrave;o v&ograve;ng b&aacute;n kết, c&ograve;n đội đứng thứ hai v&agrave; thứ 3 sẽ phải thi đấu th&ecirc;m một lượt trận b&aacute;n kết. Trận chung kết tổng sẽ diễn ra v&agrave;o Chủ Nhật với thể thức bo5.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://i.imgur.com/7792slx.png\" style=\"height:366px; width:650px\" /></p>\r\n\r\n<p style=\"text-align:justify\">Trước khi trận chung kết diễn ra, h&agrave;ng trăm kh&aacute;n giả đ&atilde; tới sớm để tham gia trải nghiệm c&aacute;c sản phẩm tai nghe &amp; loa mới của JBL, cũng như tham gia v&agrave;o c&aacute;c minigame li&ecirc;n quan đến tựa game CS:GO của BTC. Thậm ch&iacute;, ngay cả c&aacute;c player của DivisionX Gaming v&agrave; Revolution cũng nhiệt t&igrave;nh tham dự g&oacute;p vui c&ugrave;ng c&aacute;c bạn kh&aacute;n giả</p>', 860, '2021-01-15 17:55:34', '2021-01-15 17:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `RowID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `IsViews` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`RowID`, `Email`, `IsViews`, `created_at`, `updated_at`) VALUES
(1, 'tva@gmail.com', 1, '2021-01-02 13:10:56', '2021-01-02 07:23:39'),
(2, 'tvb@gmail.com', 0, '2021-01-02 13:10:56', '2021-01-08 14:14:35'),
(3, 'nvc@gmail.com', 0, '2021-01-02 13:11:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_cat`
--

CREATE TABLE `news_cat` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Status` int(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_cat`
--

INSERT INTO `news_cat` (`RowID`, `Name`, `Alias`, `Status`, `created_at`, `updated_at`) VALUES
(1, 'MOBA', 'moba', 1, '2021-01-03 08:53:37', '2021-01-15 20:19:18'),
(2, 'FPS', 'fps', 1, '2021-01-03 08:53:37', '2021-01-12 09:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `RowID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Font` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT 1,
  `Sort` int(11) DEFAULT NULL,
  `MetaTitle` text DEFAULT NULL,
  `MetaDescription` text DEFAULT NULL,
  `MetaKeyword` text DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`RowID`, `Name`, `Images`, `Alias`, `Font`, `Status`, `Sort`, `MetaTitle`, `MetaDescription`, `MetaKeyword`, `Description`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '20210111/125923230-esports.jpg', '/', '<i class=\"fas fa-home\"></i>', 1, 1, 'Trang chủ Gin2511 esport', 'Trang chủ', 'Trang chủ', '<p><span style=\"color:#2ecc71\"><span style=\"font-size:20px\"><em><strong>Trang chủ</strong></em></span></span></p>', '2021-01-01 08:51:51', '2021-01-11 08:42:06'),
(2, 'Về chúng tôi', '20210111/912741865-about.eslgaming.com-lp-fb-1200x630-1.jpg', 've-chung-toi', NULL, 1, 2, 'Thông tin công ty', 'Về chúng tôi', 'Về chúng tôi', '<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://about.eslgaming.com/wp-content/uploads/2020/04/about.eslgaming.com-lp-fb-1200x630-1.jpg\" style=\"height:344px; width:655px\" /></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p style=\"text-align:justify\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2021-01-01 09:06:41', '2021-01-13 06:13:01'),
(3, 'MOBA', '20210111/401408954-671214.jpg', 'moba', NULL, 0, 3, NULL, NULL, NULL, NULL, '2021-01-01 09:06:41', '2021-01-15 20:20:30'),
(4, 'FPS', '20210111/613753131-cs-go-wallpaper_hub6d22fdcaa8629b6f1a6781f6a106093_183473_1920x1080_resize_q75_lanczos.jpg', 'fps', NULL, 1, 4, NULL, NULL, NULL, NULL, '2021-01-01 09:07:21', '2021-01-11 08:23:39'),
(5, 'Liên hệ', '20210111/646571463-wp3061826.jpg', 'lien-he', NULL, 1, 5, 'Liên hệ chúng tôi', 'Liên hệ', 'Liên hệ', '<p style=\"text-align:justify\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-01-01 09:07:21', '2021-01-11 09:17:13'),
(6, 'Tìm kiếm', '20210113/642625041-Quickly-search-for-information-online-980x551.png', 'tim-kiem', NULL, 0, 6, 'Trang tìm kiếm', 'Trang tìm kiếm', 'Trang tìm kiếm', '<p>Trang t&igrave;m kiếm</p>', '2021-01-13 11:14:14', '2021-01-13 04:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `RowID` int(11) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT 1,
  `Name` varchar(255) DEFAULT NULL,
  `Alias` varchar(255) DEFAULT NULL,
  `Images` varchar(255) DEFAULT NULL,
  `Sort` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`RowID`, `Status`, `Name`, `Alias`, `Images`, `Sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'http://localhost:81/gin2511esports.com/navi-ceo-chung-toi-dat-muc-tieu-se-den-voi-ti10-bang-diem-dpc-va-lot-it-nhat-la-top-8-tren-bang-xep-hang.html', '20210110/654377736-maxresdefault.jpg', 1, '2021-01-10 07:23:10', '2021-01-12 10:36:51'),
(2, 1, 'Na`vi CEO: Chúng tôi đặt mục tiêu sẽ đến với TI10 bằng điểm DPC và lọt ít nhất là top 8 trên bảng xếp hạng', 'http://localhost:81/gin2511esports.com/s1mple-va-dong-doi-noi-gi-sau-hai-that-bai-0-2-lien-tiep-tai-esl-pro-league-season-11.html', '20210110/595437057-preview2.png', 2, '2021-01-10 07:53:40', '2021-01-12 10:37:45'),
(3, 1, 'Thi đấu đầy ấn tượng, thần đồng CS:GO 14 tuổi của đội trẻ Na`vi được gia nhập FACEIT Pro League', 'http://localhost:81/gin2511esports.com/thi-dau-day-an-tuong-than-dong-csgo-14-tuoi-cua-doi-tre-navi-duoc-gia-nhap-faceit-pro-league.html', '20210110/564418885-He7G1qi.png', 3, '2021-01-10 07:54:47', '2021-01-12 10:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `RowID` int(11) NOT NULL COMMENT 'RowID tự tăng',
  `Name` varchar(255) DEFAULT NULL COMMENT 'Tên mạng xã hộ',
  `Font` varchar(255) DEFAULT NULL COMMENT 'Font mạng xã hội',
  `Alias` varchar(255) DEFAULT NULL,
  `Status` int(1) DEFAULT 1 COMMENT 'Trạng thái',
  `Sort` int(11) DEFAULT NULL COMMENT 'sắp xếp',
  `created_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp() COMMENT 'Ngày chỉnh sửa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`RowID`, `Name`, `Font`, `Alias`, `Status`, `Sort`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', '<i class=\"fab fa-facebook\"></i>', 'https://www.facebook.com/', 0, 1, '2021-01-01 16:27:14', '2021-01-15 20:18:16'),
(2, 'Twitter', '<i class=\"fab fa-twitter\"></i>', 'https://twitter.com/', 0, 2, '2021-01-01 16:27:14', '2021-01-15 20:18:28');

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `RowID` int(11) NOT NULL,
  `Status` int(1) DEFAULT 1,
  `Code` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`RowID`, `Status`, `Code`, `Description`, `created_at`, `updated_at`) VALUES
(1, 1, 'logo', 'gin2511esports.png', '2020-12-31 17:54:55', '2021-01-08 10:59:48'),
(2, 1, 'name', 'gin2511esports Corp', '2020-12-31 17:57:05', '2021-01-11 09:55:20'),
(3, 1, 'email', 'gin2511esportcorp@gmail.com', '2020-12-31 17:57:05', '2021-01-11 09:55:20'),
(4, 1, 'phone', '01203432692', '2020-12-31 17:58:22', '2021-01-11 09:55:20'),
(5, 1, 'address', 'Thanh Khê, Đà Nẵng', '2020-12-31 17:58:22', '2021-01-11 09:55:20'),
(6, 1, 'copyright', 'Copyright © 2020 Gin2511esport Corp.', '2020-12-31 18:05:30', '2021-01-11 09:55:20'),
(7, 1, 'map', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d479.25955767968566!2d108.20933121611858!3d16.06152154889991!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219bd0b24d9ef%3A0xfcaec8282281cc67!2zMTgzLCA5IFBoYW4gVGhhbmgsIFRo4bqhYyBHacOhbiwgVGhhbmggS2jDqiwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1610384097258!5m2!1sen!2s\" width=\"100%\" height=\"435\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', '2020-12-31 17:54:55', '2021-01-11 09:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `level`, `status`, `username`, `password`, `fullname`, `address`, `email`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'admin', '$2y$10$TnGzHzBjnbBdQTXZ5vsJKeQ/rRoIz3whaTBAn0TatqsFKth1kOBVW', 'Administrator', 'Đà Nẵng', 'tmduc.18it4@vku.udn.vn', '0703432692', 'bfG4ZV6MjjK38tm87pGwwcD7c1HnktUdjUpOsLBGJoLJGC2B1i6g8H7McLDA', '2020-12-28 14:49:07', '2021-01-16 02:29:00'),
(2, 2, 0, 'seocontent', '$2y$10$FtiJZGO54coSBRQQ2DMVeuj4KO9fDQDsCscJpX.KFBWW9l.SiH2o6', 'Nhân viên Seo', 'Hà Nội', 'seo@gmail.com', '0905123456', 'Ug0g9LFQFiQFrHy8C6lby20ZuLwmuXga4Ye3Cgrh4b8TL3IEH71Q3j0jvNA5', '2020-12-31 05:13:13', '2021-01-01 17:02:17'),
(6, 2, 1, 'gin123', '$2y$10$mMImVBPExamJqKTKbfEQ0erdN9nL.ZB1qPvukeERk5g2EdhAquAjm', 'Trần Minh Đức', 'Đà Nẵng', 'tmduc.18it4@sict.udn.vn', '0965999999', 'yPc9vTfjpK1mwFPflaBwqMTZGaTWxdwpmnSXRPobXAY0Ph6b3TMqV0sL0dP1', '2021-01-01 00:42:24', '2021-01-16 01:28:37'),
(7, 1, 1, 'gin2511', '$2y$10$Ug7KaeTQsG2r6ptNf1psieENVL4RSbDTZdRwV3vRpvhxtgoDRCfV6', 'Tran Minh Duc', 'Đà Nẵng', 'tmduc.18it4@vku.udn.vn', '01203432692', NULL, '2021-01-13 09:36:33', '2021-01-13 09:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `users_level`
--

CREATE TABLE `users_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_level`
--

INSERT INTO `users_level` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, '2020-12-31 05:10:05', NULL),
(2, 'Seo Content', 1, '2020-12-31 05:10:05', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `news_cat`
--
ALTER TABLE `news_cat`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`RowID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_level`
--
ALTER TABLE `users_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news_cat`
--
ALTER TABLE `news_cat`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'RowID tự tăng', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `RowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users_level`
--
ALTER TABLE `users_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
