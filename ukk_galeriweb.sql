-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2024 at 04:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk_galeriweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(1, 'BUNGA', 'JENIS JENIS BUNGA', '2024-03-16', 1),
(2, 'PRESIDEN', '									PRESIDEN INDONESIA									', '2024-03-20', 1),
(3, 'BENDERA', '									NAMA NAMA BENDERA								', '2024-03-20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dislikefoto`
--

CREATE TABLE `dislikefoto` (
  `dislikeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dislikefoto`
--

INSERT INTO `dislikefoto` (`dislikeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(1, 1, 1, '2024-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(1, 'BUNGA RAFLESIA', '																												Rafflesia atau puspa nusa adalah sebuah genus tumbuhan berbunga yang semua spesiesnya hidup sebagai parasit.																												', '2024-03-16', '1953317698-raflesia.jpg', 1, 1),
(2, 'BUNGA TULIP', '																					Tulip (Latin: Tulipa) merupakan nama genus untuk 100 spesies tumbuhan berbunga yang termasuk ke dalam keluarga Liliaceae. Tulip berasal dari Asia Tengah, tumbuh liar di kawasan pegunungan Pamir dan pegunungan Hindu Kush dan stepa di Kazakhstan. 							nkllk																												', '2024-03-16', '1458951444-bunga1.jpg', 1, 1),
(3, 'BUNGA MATAHARI', '																												Bunga matahari (Helianthus annuus L.) adalah tumbuhan semusim dari suku kenikir-kenikiran (Asteraceae) yang populer, baik sebagai tanaman hias maupun tanaman penghasil minyak.																																										', '2024-03-19', '1100077227-sun-flower-278158_960_720.jpg', 1, 1),
(4, 'BUNGA MELATI', 'Melati, melur, atau yasmin (Jasminum) merupakan tanaman bunga hias berupa perdu berbatang tegak yang hidup menahun. Melati merupakan genus dari semak dan tanaman merambat dalam keluarga zaitun (Oleaceae).														', '2024-03-16', '1138892690-melati.jpg', 1, 1),
(5, 'BUNGA ANGGREK', 'Anggrek atau Orchidaceae merupakan satu suku tumbuhan berbunga dengan anggota jenis terbanyak.														', '2024-03-16', '1426248799-Jenis-Bunga-Anggrek.jpg', 1, 1),
(8, 'BUNGA KERTAS', 'Bunga kertas atau bugenvil (pengucapan bahasa Inggris: [ˌbuːɡɨnˈvɪliə][1] cf. bougainville; nama ilmiah: Bougainvillea, terutama B. glabra) adalah tanaman hias populer. Bentuknya berupa pohon kecil yang sukar tumbuh tegak. Keindahannya berasal dari seludang bunganya yang berwarna cerah dan menarik perhatian karena tumbuh dengan rimbunnya. ', '2024-03-16', '1419991254-bungakertas.jpg', 1, 1),
(9, 'BUNGA TEROMPET', 'Brugmansia adalah genus dari tujuh spesies tumbuhan berbunga dalam keluarga nightshade Solanaceae . Mereka adalah pohon berkayu atau semak, dengan bunga terjumbai, dan tidak memiliki duri pada buahnya. Bunganya yang besar dan harum memberi mereka nama umum bunga terompet , nama yang kadang-kadang digunakan untuk genus Datura yang berkerabat dekat.														', '2024-03-16', '1496776422-bungaterompet.jpg', 1, 1),
(10, 'BUNGA EDELWEISS JAWA', 'Anaphalis javanica, yang dikenal sebagai Edelweiss jawa (Javanese edelweiss) atau Bunga Senduro, adalah tumbuhan endemik zona alpina/montana di berbagai pegunungan tinggi di Indonesia yang saat ini dikategorikan sebagai tumbuhan langka. Tumbuhan ini dapat mencapai ketinggian 8 meter dan dapat memiliki batang sebesar kaki manusia, walaupun pada umumnya tidak melebihi 1 meter.', '2024-03-16', '297050516-Bunga_Senduro.JPG', 1, 1),
(11, 'PRESIDEN JOKOWI', '																												Ir. H. Joko Widodo, lebih dikenal sebagai Jokowi, adalah presiden Indonesia ke-7 yang mulai menjabat sejak 20 Oktober 2014. Terpilih dalam pemilu tahun 2014, Jokowi menjadi presiden Indonesia pertama yang bukan berasal dari elit politik atau militer Indonesia.																												', '2024-03-20', '987262468-jokowi.jpg', 2, 1),
(13, 'PRESIDEN SOEKARNO', 'Dr. (H.C.) Ir. H. Soekarn adalah seorang politikus yang berperan penting dalam Revolusi Nasional Indonesia.Selain sebagai proklamator, Soekarno juga menjabat sebagai Presiden Republik Indonesia pertama sejak 1945 hingga 1967,', '2024-03-16', '1497789760-Presiden_Sukarno.jpg', 2, 1),
(14, 'PRESIDEN B.J HABIBIE', 'Prof. Dr.-Ing. Ir. H. Bacharuddin Jusuf Habibie adalah Presiden Republik Indonesia yang ketiga. Sebelum memasuki dunia politik, Habibie dikenal luas sebagai seorang profesor dan ilmuwan dalam teknologi aviasi internasional dan satu-satunya presiden Indonesia hingga saat ini yang berlatarbelakang teknokrat.', '2024-03-16', '822042854-B._J._Habibie,_President_of_Indonesia_portrait.jpg', 2, 1),
(17, 'BENDERA INDONESIA', '														Bendera Negara Indonesia (disingkat bendera negara) atau biasa juga disebut Sang Merah Putih, Sang Saka Merah Putih, Merah Putih, atau kadang Sang Dwiwarna (dua warna) adalah bendera negara Indonesia. Bendera negara berbentuk empat persegi panjang dengan ukuran lebar 2/3 (dua-pertiga) dari panjang dengan bagian atas berwarna merah dan bagian bawah berwarna putih yang kedua bagiannya berukuran sama. Bendera ini merangkum nilai-nilai kepahlawanan, patriotisme, dan nasionalisme dari rakyat Indonesia.														', '2024-03-20', '1092416279-bendera.png', 3, 1),
(18, 'BENDERA JEPANG', 'Bendera nasional Jepang adalah sebuah bendera berbidang putih dengan lingkaran merah tua di tengahnya. Bendera ini secara resmi disebut Nisshōki (日章旗, \"bendera matahari\"), namun secara umum dikenal sebagai Hinomaru (日の丸, \"lingkaran matahari\").', '2024-03-20', '418759460-japan.png', 3, 1),
(19, 'BENDERA BELANDA', 'Bendera Belanda  adalah bendera triwarna horizontal berwarna merah, putih, dan biru. Desain bendera ini berasal dari varian Prinsenvlag (\"Bendera Pangeran\") di akhir abad ke-16 yang berwarna oranye-putih-biru, yang berkembang pada awal abad ke-17 sebagai Statenvlag (\"Bendera Negara\") berwarna merah-putih-biru, bendera angkatan laut dari Dewan Negara Republik Belanda, menjadikan bendera Belanda sebagai bendera triwarna tertua yang masih digunakan.', '2024-03-20', '2044921244-belanda.png', 3, 1),
(20, 'BENDERA PALESTINA', 'Bendera Palestina  adalah tiga warna dari tiga garis horizontal yang sama (hitam, putih, dan hijau dari atas ke bawah) yang dilapisi oleh segitiga merah yang keluar dari kerekan. Bendera ini berasal dari warna Pan-Arab dan digunakan untuk mewakili Negara Palestina dan rakyat Palestina. ', '2024-03-20', '30549887-palestin.png', 3, 1),
(21, 'BENDERA ARAB SAUDI', 'endera Arab Saudi seluruhnya berwarna hijau kecuali bagian tengahnya yang terdapat tulisan Bahasa Arab dan pedang berwarna putih. Tulisannya adalah pengakuan agama Islam, atau syahadat: \"Tiada Tuhan selain Allah; Muhammad adalah Utusan Allah\". Desain saat ini telah digunakan oleh pemerintah Arab Saudi sejak 15 Maret 1973.', '2024-03-20', '1845355315-Flag_of_Saudi_Arabia.svg.png', 3, 1),
(22, 'BENDERA MALAYSIA', 'Bendera Malaysia atau disebut pula bendera Jalur Gemilang[1] adalah bendera nasional Malaysia. Bendera ini bercorak 14 garis (jalur) merah dan putih (melintang) yang sama lebar, bermula dengan garis merah di sebelah atas dan berakhir dengan jalur putih yang melambangkan jumlah anggota dalam persekutuan 13 negara bagian plus Wilayah Persekutuan.', '2024-03-20', '1830517611-Flag_of_Malaysia.svg.png', 3, 1),
(23, 'BENDERA TURKI', 'Bendera Turki terdiri dari sebuah bulan sabit berwarna putih dan bintang putih pada sebuah latar belakang berwarna merah. Bendera ini disebut Ay Yıldız dalam bahasa Turki yang artinya adalah \"bulan bintang\".', '2024-03-20', '200617781-Flag_of_Turkey.svg.png', 3, 1),
(24, 'BENDERA KOREA SELATAN', 'Bendera Korea Selatan, atau Taegukgi (kadang-kadang juga diromanisasi sebagai Taegeukgi) adalah bendera nasional Republik Korea. Bendera ini memiliki tiga bagian: latar belakang putih, Taeguk merah dan biru di tengah-tengah, dan empat trigram hitam, yang dipilih dari yang semula ada delapan, di setiap sudut bendera.', '2024-03-20', '1841056575-Flag_of_South_Korea.svg.png', 3, 1),
(25, 'PRESIDEN MEGAWATI', 'Prof. Dr. (H.C.)[2] Hj. Diah Permata Megawati Setiawati Soekarnoputri (lahir 23 Januari 1947) adalah Presiden Indonesia yang kelima yang menjabat sejak 23 Juli 2001 sampai 20 Oktober 2004. Ia merupakan presiden wanita Indonesia pertama dan putri dari presiden Indonesia pertama, Soekarno,', '2024-03-20', '944761263-President_Megawati_Sukarnoputri_-_Indonesia.jpg', 2, 1),
(26, 'PRESIDEN SOEHARTO', 'Jenderal Besar TNI (Purn.) H. M.  adalah Presiden kedua Indonesia yang menjabat dari tahun 1967 hingga 1998. Secara luas dianggap sebagai diktator militer oleh pengamat internasional, Soeharto memimpin Indonesia sebagai rezim otoriter sejak kejatuhan pendahulunya Soekarno pada tahun 1967 hingga pengunduran dirinya pada tahun 1998 menyusul kerusuhan nasional.[3][4][5] Kediktatorannya selama 32 tahun dianggap sebagai salah satu kediktatoran paling brutal dan korup di abad ke-20', '2024-03-20', '1506301050-President_Suharto,_1993.jpg', 2, 1),
(27, 'PRESIDEN ABDURAHMAN WAHID', 'Dr. (H.C.) K.H. Abdurrahman Wahid, dilahirkan dengan nama Abdurrahman ad-Dakhil lebih dikenal dengan nama Gus Dur adalah seorang politikus Indonesia dan pemimpin agama Islam yang menjabat sebagai presiden Indonesia ke-4, dari pemilu tahun 1999 hingga pemakzulannya pada tahun 2001. Selain sebagai pemimpin organisasi Nahdlatul Ulama, ia juga merupakan pendiri Partai Kebangkitan Bangsa (PKB).', '2024-03-20', '1037302928-330px-President_Abdurrahman_Wahid_-_Indonesia.jpg', 2, 1),
(28, 'PRESIDEN SBY', 'Jenderal TNI (HOR) (Purn.) Prof. Dr. H. Susilo Bambang Yudhoyono, M.A. atau lebih dikenal dengan inisialnya SBY, adalah Presiden Indonesia keenam yang menjabat sejak 20 Oktober 2004 sampai 20 Oktober 2014. Ia merupakan Presiden pertama di era Reformasi yang terpilih melalui Pemilihan Umum secara langsung.', '2024-03-20', '765577-Presiden_Susilo_Bambang_Yudhoyono.png', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komentarfoto`
--

INSERT INTO `komentarfoto` (`komentarid`, `fotoid`, `userid`, `isikomentar`, `tanggalkomentar`) VALUES
(1, 1, 1, 'wow', '2024-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likefoto`
--

INSERT INTO `likefoto` (`likeid`, `fotoid`, `userid`, `tanggallike`) VALUES
(2, 11, 1, '2024-03-16'),
(3, 2, 1, '2024-03-16'),
(4, 1, 1, '2024-03-17'),
(5, 3, 1, '2024-03-17'),
(6, 4, 1, '2024-03-17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(1, 'rara', 'd8830ed2c45610e528dff4cb229524e9', 'pratama950@gmail.com', 'rara', 'medan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `dislikefoto`
--
ALTER TABLE `dislikefoto`
  ADD PRIMARY KEY (`dislikeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `albumid` (`albumid`);

--
-- Indexes for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dislikefoto`
--
ALTER TABLE `dislikefoto`
  MODIFY `dislikeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
