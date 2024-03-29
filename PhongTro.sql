USE [master]
GO
/****** Object:  Database [ASM_PDP201]    Script Date: 14/08/2023 4:36:05 CH ******/
CREATE DATABASE [ASM_PDP201]
 
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM_PDP201].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM_PDP201] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM_PDP201] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM_PDP201] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM_PDP201] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM_PDP201] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM_PDP201] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASM_PDP201] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM_PDP201] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM_PDP201] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM_PDP201] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM_PDP201] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM_PDP201] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM_PDP201] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM_PDP201] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM_PDP201] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASM_PDP201] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM_PDP201] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM_PDP201] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM_PDP201] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM_PDP201] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM_PDP201] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM_PDP201] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM_PDP201] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM_PDP201] SET  MULTI_USER 
GO
ALTER DATABASE [ASM_PDP201] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM_PDP201] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM_PDP201] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM_PDP201] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM_PDP201] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM_PDP201] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ASM_PDP201] SET QUERY_STORE = OFF
GO
USE [ASM_PDP201]
GO
/****** Object:  Table [dbo].[BAIDANG]    Script Date: 14/08/2023 4:36:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BAIDANG](
	[IDBaiDang] [int] IDENTITY(1,1) NOT NULL,
	[tenDangNhap] [nvarchar](50) NOT NULL,
	[tieuDe] [nvarchar](100) NOT NULL,
	[soNha] [nvarchar](50) NOT NULL,
	[phuong] [nvarchar](50) NOT NULL,
	[moTa] [nvarchar](255) NOT NULL,
	[dienTich] [int] NOT NULL,
	[gia] [int] NOT NULL,
	[hinh] [varchar](50) NULL,
	[ngayDang] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBaiDang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 14/08/2023 4:36:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[IDDanhGia] [int] IDENTITY(1,1) NOT NULL,
	[tenDangNhap] [nvarchar](50) NULL,
	[IDBaiDang] [int] NULL,
	[diemDanhGia] [int] NULL,
	[noiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDDanhGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 14/08/2023 4:36:05 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[tenDangNhap] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](100) NOT NULL,
	[hoTen] [nvarchar](100) NOT NULL,
	[dienThoai] [nvarchar](20) NULL,
	[email] [nvarchar](50) NOT NULL,
	[vaiTro] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[tenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BAIDANG] ON 

INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (1, N'user', N'Phòng Trọ Cho Thuê', N'703 Lê Thị Riêng', N'Hiệp Thành', N'Nội thất bao gồm: giường, nệm, máy lạnh, tủ lạnh, tủ quần áo, kệ bếp. Phí nước 100k/ng, phí quản lý 100k/phòng, phí điện 3.500/kwh, xe free 2c. Toà nhà trang bị khoá vân tay, máy giặt chung, wifi', 52, 4000000, N'a1.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (2, N'user', N'Phòng Trọ Cho Thuê', N'74M1', N'Hiệp Thành', N'Nội thất bao gồm: giường, nệm, máy lạnh, tủ lạnh, tủ quần áo, kệ bếp. Phí nước 100k/ng, phí quản lý 100k/phòng, phí điện 3.500/kwh, xe free 2c. Toà nhà trang bị khoá vân tay, máy giặt chung, wifi', 20, 3600000, N'a2.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (3, N'user', N'Phòng Trọ Cho Thuê', N'55', N'Hiệp Thành', N'Nội thất bao gồm: giường, nệm, máy lạnh, tủ lạnh, tủ quần áo, kệ bếp. Phí nước 100k/ng, phí quản lý 100k/phòng, phí điện 3.500/kwh, xe free 2c. Toà nhà trang bị khoá vân tay, máy giặt chung, wifi', 25, 2400000, N'a3.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (4, N'user', N'Phòng Trọ Cho Thuê', N'55', N'Hiệp Thành', N'Nội thất bao gồm: giường, nệm, máy lạnh, tủ lạnh, tủ quần áo, kệ bếp. Phí nước 100k/ng, phí quản lý 100k/phòng, phí điện 3.500/kwh, xe free 2c. Toà nhà trang bị khoá vân tay, máy giặt chung, wifi ', 25, 4000000, N'a4.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (5, N'user', N'Phòng Trọ Cho Thuê', N'401a Tô Ký', N'Trung Mỹ Tây', N'Nội thất bao gồm: giường, nệm, máy lạnh, tủ lạnh, tủ quần áo, kệ bếp. Phí nước 100k/ng, phí quản lý 100k/phòng, phí điện 3.500/kwh, xe free 2c. Toà nhà trang bị khoá vân tay, máy giặt chung, wifi ', 35, 5000000, N'a5.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (6, N'user', N'Nhà nguyên Căn có gác Sát bên Cầu 2 Cứng', N'Đường Vườn Lài', N'An Phú Đông', N'Hiện tại mình vừa trống 1 căn nhà mặt tiền hẻm tại 442/119/49/13 quốc lộ 1A, quận 12, Thành phố Hồ Chí Minh. Điện giá nhà nước, có gác như hình. Sân rộng rãi phù hợp kinh doanh online, buôn bán nhỏ, gia đình nhỏ ở.', 35, 2900000, N'a6.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (7, N'user', N'Cho thuê Phòng Trọ Giá Rẻ', N'268/5 An Phú Đông 3', N'An Phú Đông', N'Cho thuê Phòng Trọ Giá Rẻ tự do giờ giấc đi lại dễ dàng. Phòng có gác rộng thoáng mát. Có cửa sổ thoáng. Có toilet riêng. Có chỗ để xe trước nhà. Thời gian đi lại thoải mái', 20, 1700000, N'a7.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (8, N'user', N'Phòng mặt trước rộng thoáng mát có nhiều cửa sổ', N'Vườn Lài', N'An Phú Đông', N'Phòng rộng rãi thoáng mát có ban công có chỗ để xe miễn phí giờ giấc tự do có lối đi riêng phòng có 2 cửa sổ 2 cửa chính hướng nam chính diện tòa nhà landmark rất VIP yêu tiên cho sinh viên thích yên tĩnh', 28, 3000000, N'a8.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (9, N'user', N'PhòngTro24m2_Nộithất_TrườngChinh_AnSương_Q12', N'78A Đông Hưng Thuận 5', N'Tân Hưng Thuận', N'AN NINH, SẠCH SẼ, THOÁNG MÁT, LỊCH SỰ, CAO CẤP.', 25, 3000000, N'a9.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (10, N'user', N'Cho thuê phòng trọ sinh viên , nhân viên văn phòng', N'Đông Hưng Thuận 6', N'Tân Hưng Thuận', N'Cho thuê phòng trọ có gác . ở lầu 1, có chổ phơi đồ . chổ để xe riêng. ưu tiên ở 2ng trở xuống. Cổng chung 10h30 đóng cửa. chổ ở yên tĩnh , gần chợ , trạm xe buýt...v v', 15, 500000, N'a10.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (11, N'user', N'CHO THUÊ PHÒNG TRỌ QUẬN 12', N' Đường DD6', N'Tân Hưng Thuận', N'Có sẵn hệ kệ tủ bếp. Toilet riêng biệt bên ngoài. Dân cư ý thức cao, vô cùng yên tĩnh. Hệ thống camera giám sát an ninh 24/24.5 phút đến đường Nguyễn Văn Quá. Gần chợ An Sương, công viên thả diều Q.12…', 25, 3700000, N'a11.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (12, N'user', N'CUỐI THÁNG MÌNH TRỐNG 1P FULL NỘI THẤT', N'109', N'Tân Chánh Hiệp', N'CUỐI THÁNG NÀY MÌNH TRỐNG 1P FULL NỘI THẤT ( K CÓ TỦ LẠNH ). TIỀN ĐIỆN 4K. TIỀN NƯỚC 100K ( DƯỚI 2NG ). WIFI 100K. RA VÀO VÂN TAY. LỐI ĐI RIÊNG. ĐI LẠI TỰ DO. CÓ NHÀ ĐỂ XE', 20, 2500000, N'a12.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (13, N'user', N'CHO THUÊ PHÒNG SIÊU THOÁNG CÓ MÁY LẠNH', N'Dương Thị Mười', N'Tân Chánh Hiệp', N'Không chung chủ, giờ giấc tự do, camera an ninh. Không thu phí gửi xe. Điện 3k/kwh, nước 70k/người, rác + wifi 100k/phòng. Ngoài ra không phát sinh thêm chi phí gì.', 25, 3000000, N'a13.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (14, N'user', N'Phòng 20m² ngay Trương Thị Hoa, có Gác+Cửa sổ', N'Trương Thị Hoa', N'Tân Thới Hiệp', N'Red House còn phòng có Gác+Cửa sổ lớn siêu thoáng mát, sạch sẽ. Đã trang bị nội thất: Toilet riêng trong phòng, máy lạnh tiết kiệm điện, tủ đồ, nệm, kệ bếp, bồn rửa, bàn ghế.', 20, 3200000, N'a14.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (15, N'user', N'Phòng Trọ Mới Xây Có Bancol Ngay CVPMQT q12', N'20', N'Tân Thới Hiệp', N' giờ giấc tự do , camera an ninh. phòng thoáng mát có cửa sổ thoáng bancol, máy lạnh, bàn bếp, gần các trường đại học FPT,Cao Đẳng Viễn Đông, CDSG, CV PHẦN MỀM QT, Nguyễn Văn Quá, Dương Thị Mười, Trương Thị Hoa, gần chợ', 25, 2800000, N'a15.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (16, N'user', N'Phòng trọ dạng căn hộ Mini an ninh cho sv', N'21', N'Tân Thới Hiệp', N'Mình cho thuê trong nhà có bãi xe an ninh. Điện 3k5 Nc 80k xe 100k rác 30k. Phòng 2tr8 full nt 17m2 có cửa sổ. K lấy tủ lạnh bớt 2tr5. Phòng 3tr8 ban công 30m2 full nt. K lấy nt tủ lạnh hoặc máy lạnh bớt 3tr2. Mình chính chủ thương lượng thoải mái', 30, 2800000, N'a16.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (17, N'user', N'Phòng trọ Quận 12-Giá rẻ mà full nội thất', N'Hà Huy Giáp', N'Thạnh Lộc', N'Cách Đại học Nguyễn Tất Thành chỉ 5 phút, cao đẳng Điện Lực 2 phút, gần chợ và các tuyến xe buýt.', 25, 2400000, N'a17.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (18, N'user', N'Phòng 20m² có Gác+Ban Công+Sẵn nội thất', N'Thạnh Lộc', N'Thạnh Lộc', N'Đã có sẵn nột thất: máy lạnh tiết kiệm điện tủ đồ gác treo kệ bếp+tủ bếp wc riêng. Toà nhà có máy giặt, có bãi để xe, có sân phơi đồ.Có bảo trì nội thất và quản lý hỗ trợ khi có hư hỏng phát sinh.', 20, 3200000, N'a18.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (19, N'user', N'Phòng View ban công - gần NTT', N'18 TL26', N'Thạnh Lộc', N'Khai trương CHDV - phòng trọ đầy đủ tiện nghi - Khu vực an ninh 100% - Phòng sang chảnh - Nằm trong khi nhà phố cao cấp - hàng tuần có người vệ sinh sạch sẽ khu vực ban công, cầu thang', 0, 4000000, N'a17.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (20, N'user', N'Cho 1Nữ Ở Ghép Phòng Trọ', N'Đường Thạnh Lộc 40', N'Thạnh Xuân', N'Chào bạn. Mình Share phòng trọ cho 1Nữ sinh viên hoặc 1Chị Em đã đi làm cùng ở ghép phòng trọ cho Tiết Kiệm tiền lương ..Bạn khó khăn tiền bạc Anh sẽ Bao tất cả chi phí trọn gói gói', 16, 500000, N'a19.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (21, N'user', N'Phòng trọ sạch sẽ có cho nuôi pet', N'Thạnh Xuân 25,', N'Thạnh Xuân', N'Mình còn trống 1 phòng cho thuê gần cầu vượt ngã tư ga Phòng rộng sạch sẽ cửa sổ lớn thoáng mát Khu vực an ninh tốt, yên tĩnh, giờ giấc tự do Nội thất cơ bản, bếp đầy đủ tiện nghi Được nuôi thú cưng Gần trường học, siêu thị, chợ.', 15, 2900000, N'a20.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (22, N'user', N'Phòng 35m² có 1PN+Full nt', N'Tô Ngọc Vân,', N'Thạnh Xuân', N'Thiết kế có 1Phòng ngủ riêng, có Ban Công lớn siêu thoáng. Tòa nhà có máy giặt, có sân phơi đồ, có bãi xe rộng rãi. Khu nhà yên tĩnh, an ninh. Phòng đã có nội thất: Máy Lạnh, tủ đồ, giường nệm, bàn làm việc, kệ bếp, bồn rửa.', 35, 400000, N'a21.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (23, N'user', N'Phòng full nội thất gần trường ĐH', N'Thới An 15', N'Thới An', N'Cho thuê phòng full nội thất Giá 2tr7 tháng, phòng rộng sạch sẽ dọn vào ở liền. Gần công viên phần mềm quang trung,gần chợ, đường lớn. Cổng bằng thẻ từ dấu vân tay an toàn giờ giấc tự do ko chung chủ', 25, 2700000, N'a22.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (24, N'user', N'Phòng Cho Thuê Full Nội Thất q12', N'Thới An', N'Thới An', N'Nhà em trống 1 phòng Máy Lạnh Full nội thất, nên em cho thuê ce cần ở liên hệ em ạ. Em ko Kinh Doanh nên ce thiện chí hả dt em tránh mất tg 2 bên', 12, 2300000, N'a23.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (25, N'user', N'Phòng Trọ CÓ 102-Giá Rẻ mà Full Nội Thất', N'Thới An 15', N'Thới An', N'Cách CVPMQT chỉ 8 phút, chợ Hiệp Thành chỉ 5 phút, chợ thiếc 4 phút, gần nhiều quán ăn và trạm xe buýt.', 30, 3300000, N'a24.jpg', CAST(N'2023-08-03' AS Date))
INSERT [dbo].[BAIDANG] ([IDBaiDang], [tenDangNhap], [tieuDe], [soNha], [phuong], [moTa], [dienTich], [gia], [hinh], [ngayDang]) VALUES (26, N'user', N'Cho thuê phòng trọ dt 45m2 tại đường Tô Ký, Quận 12', N'70/10C', N'Trung Mỹ Tây', N'Chính chủ cần cho thuê phòng trọ tại địa chỉ 70/10C Tô Ký, Phường Trung Mỹ Tây, Quận 12. Phòng có gác lửng, tổng diện tích sử dụng bao gồm gác khoảng 45m2, thích hợp cho gia đình hoặc sinh viên ở (khoảng 3-4 người).', 45, 4000000, N'a25.jpg', CAST(N'2023-08-03' AS Date))
SET IDENTITY_INSERT [dbo].[BAIDANG] OFF
GO
SET IDENTITY_INSERT [dbo].[DANHGIA] ON 

INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (22, N'bao09', 1, NULL, N'Phòng này còn không ạ')
INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (23, N'tam01', 1, NULL, N'Phòng đúng như mô tả')
INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (25, N'hoang', 1, NULL, N'Tro con k a')
INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (26, N'lainv', 1, NULL, N'Website ổn')
INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (27, N'longtd', 1, NULL, N'Trang web đẹp ')
INSERT [dbo].[DANHGIA] ([IDDanhGia], [tenDangNhap], [IDBaiDang], [diemDanhGia], [noiDung]) VALUES (28, N'kavan', 1, NULL, N'Cần cung cấp thêm nhiều hình ảnh về phòng trọ')
SET IDENTITY_INSERT [dbo].[DANHGIA] OFF
GO
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'admin', N'123', N'ADMIN', N'0123456789', N'admin@email.com', 1)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'bao02', N'12345', N'Gia Bảo', N'01982748', N'gbao@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'bao09', N'12345', N'Hồ Đình Bảo', N'091238423', N'bao@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'hoang', N'1234', N'Hoang Pham', N'0123456789', N'1111@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'kavan', N'12345', N'Kiều Anh Văn', N'012478762', N'vanhka@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'lainv', N'12345', N'Nguyễn Viết Lai', N'0988762837', N'lainv@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'longtd', N'12345', N'Trần Đức Long', N'0912496882', N'longtd@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'tam01', N'12345', N'Nguyễn Tâm', N'0192472323', N'tam@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'tri01', N'12345', N'Nguyễn Minh Trí', N'091284972498', N'tri@gmail.com', 0)
INSERT [dbo].[NGUOIDUNG] ([tenDangNhap], [matKhau], [hoTen], [dienThoai], [email], [vaiTro]) VALUES (N'user', N'123', N'USER', N'0456123789', N'user@email.com', 0)
GO
ALTER TABLE [dbo].[BAIDANG] ADD  DEFAULT (getdate()) FOR [ngayDang]
GO
ALTER TABLE [dbo].[BAIDANG]  WITH CHECK ADD FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[NGUOIDUNG] ([tenDangNhap])
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD FOREIGN KEY([IDBaiDang])
REFERENCES [dbo].[BAIDANG] ([IDBaiDang])
GO
ALTER TABLE [dbo].[DANHGIA]  WITH CHECK ADD FOREIGN KEY([tenDangNhap])
REFERENCES [dbo].[NGUOIDUNG] ([tenDangNhap])
GO
USE [master]
GO
ALTER DATABASE [ASM_PDP201] SET  READ_WRITE 
GO
