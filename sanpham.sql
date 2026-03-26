-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 04:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thaolinhmateco`
--

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `MoTa` longtext NOT NULL,
  `Gia` float NOT NULL,
  `MaLoaiSanPham` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhAnh`, `MoTa`, `Gia`, `MaLoaiSanPham`) VALUES
(5, 'Vỉ mạch', 'http://localhost/thaolinhmateco/images/san_pham/vi_mach/vm_main.png', '1. Vỉ mạch tạo tín hiệu điều khiển còi đèn xương mù\r\n\r\nVỉ mạch tạo tín hiệu điều khiển còi đèn xương mù có chức năng tạo tín hiệu điều khiển đưa sang hệ thống còi đèn xương mù trên tàu thuỷ. Vỉ mạch có các đầu vào cho phép lựa chọn các chế độ làm việc khác nhau. Mỗi một chế độ làm việc vỉ mạch lại tự động tạo ra một chu trình tín hiệu điều khiển còi đèn xương mù phù hợp theo quy định của tín hiệu còi đèn xương mù trên tàu biển.\r\n\r\nuploads\\san_pham\\vi_mach\\vm_1\r\n\r\n2. Vỉ mạch đo và hiển thị tốc độ máy tàu thuỷ\r\n\r\nuploads\\san_pham\\vi_mach\\vm_2\r\n\r\nVỉ mạch đo và hiển thị tốc độ máy tàu thuỷ có chức năng đo, tính toán và hiển thị tốc độ máy đèn và máy chính trên tàu thuỷ với các đặc điểm:\r\n\r\n- Dễ dàng lắp đặt và kết nối,\r\n\r\n- Có đầu ra cho việc báo động quá tốc,\r\n\r\n- Cho phép lựa chọn cài đặt các tham số đầu vào như số xung trên một vòng quay, tham số quá tốc, thời gian lấy mẫu\r\n\r\n- Có đầu ra ± 10v cho phép kết nối với đồng hồ chỉ báo bằng kim\r\n\r\n3. Vỉ mạch báo động các thông số\r\n\r\nuploads\\san_pham\\vi_mach\\vm_3\r\n\r\nVỉ mạch báo động các thông số có chức năng đo và báo động các thông số trong buồng máy với các đặc điểm sau:\r\n\r\nCho phép đo và báo động đồng thời 15 kênh\r\nChu kỳ và dạng tín hiệu báo động của 15 kênh riêng rẽ có thể cài đặt được bằng máy tính\r\nDòng ra cực đại của một kênh là 500mA, 24vdc\r\n\r\n4. Vỉ mạch nghép nối tay chuông truyền lệnh – VDR\r\n\r\nVỉ mạch nghép nối tay chuông truyền lệnh – VDR có chức năng chuyển đổi các lệnh dưới dạng ON/OFF của hệ thống tay chuông truyền lệnh thành các câu lệnh được được đóng theo giao thức NMEA0183 sau đó truyền thông sang hệ thống hộp đen. Vỉ mạch có thể chuyển đổi được tất cả các lệnh cơ bản của hệ thống tay chuông truyền lệnh sang chuẩn truyền dữ liệu NMEA 0183\r\n\r\nuploads\\san_pham\\vi_mach\\vm_4', 100000, 'LK'),
(6, 'Hệ thống báo động ca trực hàng hải buồng lái - BNWAS', 'http://localhost/thaolinhmateco/images/san_pham/tbdk/laban_1.png', 'Hệ thống báo động trực ca hàng hải buồng lái với Model : HMC-BW900 do Công ty sản xuất theo đơn đặt hàng của công ty TNHH dịch vụ kỹ thuật Hoàng Minh. Hệ thống HMC-BW900 đã được Cục Đăng kiểm Việt Nam cấp giấy chứng nhận công nhận kiểu số 086/12CN-01 và cho phép sản xuất hàng loạt. Hiện nay hệ thống đã được lắp đặt trang bị cho trên 200 tàu biển Việt nam chạy tuyến quốc tế. Chiếm thị phần lớn nhất so với các công ty khác trong nước. Qua phản hồi của khách hàng thấy rằng hệ thống làm việc ổn định, có độ tin cậy cao', 10000000, 'HT'),
(7, 'Mặt lặp la bàn điện', 'http://localhost/thaolinhmateco/images/san_pham/tbdk/laban_main.png', '1. Mặt lặp la bàn điện có cơ cấu chỉ thị kim\r\n\r\n<img src=\"http://localhost/myweb_1/images/san_pham/tbdk/laban_1.png\" />\r\n\r\nMặt lặp la bàn điện ( Gyro Compass Repeater ) T&L được chế tạo hoàn toàn theo công nghệ kỹ thuật số. Nó có chức năng truy theo hướng của la bàn chủ, thông qua chuẩn kết nối NMEA0183 giữa mặt lặp và la bàn , đặc điểm\r\n\r\nKết nối được với tất cả la bàn chủ hiện có trên tàu thủy, tính tương thích cao\r\nĐộ chính xác đến 0.1 độ\r\nDễ dàng lắp đặt và kết nối\r\n2. Mặt lặp la bàn điện có cơ cấu chỉ thị số\r\n\r\nMặt lặp la bàn điện có cơ cấu chỉ thị số ( Digital Gyro Repeater ) T&L được chế tạo hoàn toàn theo công nghệ kỹ thuật số. Nó có chức năng truy theo hướng của la bàn chủ, thông qua chuẩn kết nối NMEA0183 giữa mặt lặp và la bàn với đặc điểm\r\n\r\n- Kết nối được với tất cả la bàn chủ hiện có trên tàu thủy, tính tương thích cao\r\n\r\n- Độ chính xác đến 0.1 độ\r\n\r\n- Dễ dàng lắp đặt và kết nối\r\n\r\n- Thông tin hiển dạng số bằng LED 7 đoạn. Ngoài việc hiển thị thông tin hướng mũi tàu, mặt lặp còn có chức năng tính toán và hiển thị tốc độ quay trở của tàu (ROT )\r\n\r\n<img src=\"http://localhost/myweb_1/images/san_pham/tbdk/laban_2.png\" />', 500000, 'TBDK'),
(8, 'Thiết bị đo và chỉ báo tốc độ vòng quay chân vịt', 'http://localhost/thaolinhmateco/images/san_pham/tbdl/chanvit_main.png', 'Thiết bị đo và chỉ báo tốc độ vòng quay chân vịt ( RPM ) T&L được chế tạo theo công nghệ kỹ thuật số. Thiết bị có chức năng đo, tính toán và hiển thị tốc độ vòng quay chân vịt máy chính tàu thuỷ với các đặc điểm:\r\n\r\n- Dễ dàng lắp đặt và kết nối,\r\n\r\n- Có đầu ra cho việc báo động quá tốc,\r\n\r\n- Cho phép lựa chọn cài đặt các tham số đầu vào như số xung trên một vòng quay, tham số quá tốc, thời gian lấy mẫu.', 1000000, 'TBDL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `MaLoaiSanPham` (`MaLoaiSanPham`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `danhmucsanpham` (`MaLoaiSanPham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
