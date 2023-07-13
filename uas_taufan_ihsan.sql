-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Jul 2023 pada 13.28
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_taufan_ihsan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `nama`, `email`, `password`) VALUES
(2, 'admin1', 'admin1@gmail.com', '$2y$10$d8m.NRsqCtO21MXmiH7zyeM6Ot/46Ogx0fK1yQQWP/2hlMdQ6vfsC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `article`
--

CREATE TABLE `article` (
  `article_id` int NOT NULL,
  `category_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `judul_article` varchar(255) NOT NULL,
  `slug_article` varchar(255) NOT NULL,
  `deskripsi_article` text NOT NULL,
  `gambar_article` varchar(255) NOT NULL,
  `dibuat_pada` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `admin_id`, `judul_article`, `slug_article`, `deskripsi_article`, `gambar_article`, `dibuat_pada`) VALUES
(15, 28, 2, '8 Manfaat Hutan Bagi Manusia, Jaga Keseimbangan Ekosistem dan Mengurangi Risiko Bencana', 'manfaat_hutan_bagi_manusia', 'Hutan memiliki banyak manfaat yang penting bagi keberlangsungan hidup manusia dan lingkungan. Berikut ini adalah beberapa manfaat utama dari hutan:\r\n\r\n1. Sumber daya alam\r\n\r\nManfaat hutan tentu menyediakan berbagai jenis sumber daya alam, yang penting bagi keberlangsungan hidup manusia. Kayu merupakan salah satu sumber daya alam yang paling penting dan diperoleh dari hutan, di mana kayu digunakan untuk berbagai tujuan seperti konstruksi bangunan, pembuatan peralatan dan perabotan rumah tangga, hingga industri kertas. Selain kayu, hutan juga menyediakan bahan baku untuk industri farmasi, kosmetik, dan makanan. Beberapa tanaman yang ditemukan di hutan juga digunakan sebagai obat-obatan tradisional.\r\n\r\n2. Konservasi lingkungan\r\n\r\nHutan memainkan peran penting dalam menjaga keseimbangan ekosistem, serta menjaga kualitas udara dan air. Hutan menyediakan habitat bagi berbagai jenis satwa liar, dan menjaga kesegaran udara dengan menghasilkan oksigen melalui proses fotosintesis. Hutan juga berperan dalam menjaga keseimbangan hujan dan mengatur arus air di daerah sekitarnya. Hutan juga merupakan tempat penting dalam menjaga keseimbangan lingkungan yang dapat membantu dalam mengurangi perubahan iklim.\r\n\r\n3. Perlindungan bencana alam\r\n\r\nManfaat hutan dapat melindungi daerah dari erosi tanah, banjir, dan longsoran. Hutan dapat mengurangi intensitas hujan dan angin, serta melindungi tanah dari erosi. Hutan juga dapat mengurangi risiko bencana alam seperti banjir dan longsoran dengan mengatur arus air dan menyediakan perlindungan dari erosi.\r\n\r\n4. Rekreasi dan pariwisata\r\n\r\nHutan menyediakan berbagai fasilitas rekreasi dan pariwisata, seperti jogging, berkemah, dan bersepeda. Hutan juga menjadi tempat yang populer untuk berwisata dan melihat satwa liar dan tumbuhan. Hutan juga menyediakan lokasi untuk berbagai kegiatan outdoor seperti berkemah, mendaki, dan bersepeda.\r\n\r\n5. Nilai spiritual\r\n\r\nHutan memiliki nilai spiritual bagi beberapa masyarakat yang memandang hutan sebagai tempat yang sagrado dan memiliki makna simbolis yang kuat. Beberapa masyarakat menganggap hutan, sebagai tempat untuk bermeditasi, berdoa, dan melakukan ritual agama.\r\n\r\n6. Kesehatan\r\n\r\nManfaat hutan selanjutnya, dapat memperbaiki kualitas udara dan menyediakan lingkungan yang sehat untuk berolahraga. Berjalan di hutan atau melakukan kegiatan outdoor lainnya, dapat memperbaiki kesehatan jantung, paru-paru, dan sistem kekebalan tubuh. Hutan juga dapat mengurangi stres dan tekanan emosional serta memperbaiki kualitas tidur. Studi juga menunjukkan bahwa pengaruh positif dari hutan dapat digunakan dalam terapi kesehatan mental.\r\n\r\n7. Pendidikan\r\n\r\nHutan menyediakan lingkungan yang ideal untuk pembelajaran alam dan pendidikan lingkungan. Anak-anak dapat belajar tentang ekosistem, tumbuhan, dan satwa liar di hutan. Hutan juga dapat digunakan sebagai laboratorium alam untuk belajar tentang biologi, geografi, dan sejarah.\r\n\r\n8. Ekonomi\r\n\r\nHutan dapat memberikan sumber pendapatan bagi masyarakat setempat melalui kegiatan seperti pertanian, perikanan, dan pariwisata. Hutan juga dapat memberikan sumber daya alam yang diperlukan oleh industri kayu dan farmasi. Hutan juga dapat memberikan kesempatan kerja bagi masyarakat setempat melalui kegiatan rekreasi dan pariwisata.\r\n\r\nSecara keseluruhan, hutan memiliki berbagai manfaat yang penting bagi keberlangsungan hidup manusia dan lingkungan. Oleh karena itu, penting untuk menjaga kesehatan dan keseimbangan hutan melalui praktik pengelolaan yang baik dan konservasi hutan yang tepat.', 'WhatsApp Image 2023-07-11 at 11.27.20.jpg', '2023-07-13 13:03:02'),
(16, 28, 2, 'Kedepankan Pengembangan Sumber Daya Alam, GMC Kaltim Tanam Ratusan Bibit Pohon', 'kedepankan_pengembangan_sumber_daya_alam', 'Sukarelawan Ganjar Milenial Center (GMC) menggelar kegiatan bersih-bersih kampung dan aksi menanam pohon bareng komunitas pemuda.\r\nKali ini mereka mengadakan aksi sosial itu di Kampung Kolaborasi, RT 08, Dusun II, Desa Sumber Sari, Kecamatan Babulu, Kabupaten Penajam Paser Utara, Kalimantan Timur.\r\nKorwil GMC Kaltim Sadly Jaya M mengatakan dalam kegiatan itu mereka berkerja sama dengan Karang Taruna Desa Sumber Sari.\r\n\r\n\"Kami mengadakan gotong royong, bersih-bersih dan, tanam pohon bersama,\" ujar dia ditulis Selasa (13/6/2023).\r\n\r\nDalam kegiataan, sukarelawan menargetkan 100 pohon yang akan ditanam.\r\nMenurut Sadly, ada berbagai jenis pohon buah-buahan dan dilakukan secara bertahap.\r\n\r\n\"Respons dan antusias dari masyarakat juga sangat baik sebab ini bukan kali pertama sukarelawan GMC berkegiatan di desa tersebut,\" ujar dia.\r\nDia menuturkan hal ini dilakukan dengan pertimbangan agar kegiatan ini tepat sasaran dan masyarakat dapat langsung merasakan dampak dan manfaatnya.\r\nDalam kesempatan itu, GMC Kaltim turut memperkenalkan Ganjar Pranowo sebagai calon presiden kepada masyarakat.\r\n\r\n\"Beliau adalah salah satu pemimpin yang mengedepankan pengembangan sumber daya alam sehingga hal ini lah yang mendorong kegiatan ini dilaksanakan,\" kata dia.\r\nSadly mengatakan dengan adanya kegiatan itu diharapkan masyarakat bisa menjaga lingkungan agar tetap bersih dan sehat serta menanam pohon yang berjenis buah-buahan.\r\n\"Selain untuk penghijauan juga ada manfaatnya seperti buah yang dihasilkan dari pohon yang ditanam juga langsung dapat dinikmati oleh masyarakat sekitarnya,” tegasnya.\r\n\r\nTanggapan masyarakat juga sangat positif dengan diadakannya kegiatan ini, karena kegiatan seperti ini jarang dilakukan oleh sukarelawan lain.\r\nSyukron selaku Ketua RT 13, Desa Sumber Sari mengaku sangat bersyukur dan berterima kasih kepada Ganjar Pranowo serta para sukarelawan.\r\n\"Saya siap mendukung beliau sampai jadi presiden, dan harapanya bisa menyejahtrakan masyakat dan memberikan bantuan pembangunan dan perbaikan jalan,\" kata dia.', 'WhatsApp Image 2023-07-11 at 11.29.26.jpg', '2023-07-13 13:03:58'),
(17, 28, 2, 'Faktor Penyebab Perubahan Potensi Sumber Daya Alam dan Penjelasannya', 'faktor_penyebab_perubahan_potensi_sumber_daya_alam_dan_penjelasannya', 'Secara umum sumber daya alam adalah segala sesuatu yang berasal dari alam dan bisa dimanfaatkan dengan baik oleh manusia untuk keberlangsungan hidupnya. Menurut Kamus Besar Bahasa Indonesia, sumber daya alam didefinisikan sebagai potensi alam yang bisa dikembangkan oleh manusia untuk proses produksi tertentu.\r\n\r\n\r\nBerdasarkan kelestariannya, sumber daya alam dibedakan menjadi dua, yaitu sumber daya alam dapat diperbarui dan sumber daya alam tidak dapat diperbarui. Sumber daya alam yang dapat diperbarui, misalnya tanah, air, dan sebagainya. Sedangkan sumber daya alam yang tidak dapat diperbarui, misalnya minyak bumi, batu bara, timah, dan sebaginya. Potensi sumber daya alam yang dimanfaatkan secara terus menerus mengakibatkan perubahan bagi kelangsungan alam.\r\n\r\nSalah satu dampak perubahan alam yang terjadi adalah menurunnya daya dukung lingkungan terhadap kehidupan manusia.\r\n\r\nFaktor penyebab perubahan potensi sumber daya alam terbagi menjadi dua jenis, yaitu faktor alam dan faktor manusia. Berikut penjelasannya.\r\n\r\nFaktor alam Faktor alam ini biasanya terjadi akibat adanya bencana alam, misalnya banjir, gunung meletus, gempa bumi, dan tsunami.\r\n\r\nBencana banjir selain disebabkan oleh kurang sadarnya manusia, bencana banjir juga dapat terjadi karena faktor alam, seperti curah hujan yang tinggi secara terus menerus. Ketika curah hujan tinggi secara terus menerus dapat mengakibatkan air sungai meluap atau mengakibatkan tanggul jebol karena tidak dapat menampung debit air yang tinggi.\r\n\r\nBanjir dengan skala besar mengakibatkan bangunan maupun tempat tinggal makhluk hidup rusak, lapisan tanah subur hilang, tanaman-tanaman rusak, dan lain sebagainya. Contoh lain faktor alam yaitu gunung meletus. Area di sekitar gunung akan mengalami kekeringan selama erupsi terjadi. Hal ini menimbulkan pemanfaatan potensi sumber daya alam yang ada di lingkungan gunung api menurun kuantitasnya.\r\n\r\nFaktor manusia Selain faktor alam yang terjadi secara alami, perubahan potensi sumber daya alam di Indonesia juga bisa terjadi akibat ulah para manusianya. Di mana manusia tidak memiliki kesadaran akan pentingnya menjaga lingkungan. Masih banyak manusia yang membuang sampah sembarangan, membuang limbah industri secara sembarangan, hingga penebangan hutan liar.\r\n\r\nPerilaku tersebut dapat mengakibatkan kerusakan lingkungan, berpotensi merusak ekosistem yang ada di sungai, danau, atau tanah. Dengan begitu, sumber daya alam yang ada di sekitaran bentang alam tersebut berpotensi menurun kualitas dan kuantitas akibat ekosistemnya tidak stabil.\r\n\r\nReferensi: Dewata, Indang dan teman-teman. Pengelolaan Sumber Daya Alam. 2020. Yogyakarta: Deepublish. Sudarmanto, Eko dan teman-teman. Ekonomi Sumber Daya Alam. 2021. Medan: Yayasan Kita Menulis.', 'WhatsApp Image 2023-07-11 at 11.38.08.jpg', '2023-07-13 13:04:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` int NOT NULL,
  `judul_category` varchar(255) NOT NULL,
  `slug_category` varchar(255) NOT NULL,
  `deskripsi_category` text NOT NULL,
  `gambar_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `judul_category`, `slug_category`, `deskripsi_category`, `gambar_category`) VALUES
(28, 'Sumber Daya Alam', 'sumber_daya_alam', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Molestias, nihil laboriosam porro sint sed non suscipit illum possimus provident fugiat tempora cumque veritatis id! Neque ad ducimus quis ratione alias!', 'Green Simple Nature Logo.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
