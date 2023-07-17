-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 07:04 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `nama`, `email`, `password`) VALUES
(2, 'admin1', 'admin1@gmail.com', '$2y$10$d8m.NRsqCtO21MXmiH7zyeM6Ot/46Ogx0fK1yQQWP/2hlMdQ6vfsC'),
(3, 'Taufan', 'taufan@admin.com', '$2y$10$RPte5jDtS23oRBx4sNnW6OAjPfwflgEI3YfHAEMaHbgcQ.tFMLt82');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `judul_article` varchar(255) NOT NULL,
  `slug_article` varchar(255) NOT NULL,
  `deskripsi_article` text NOT NULL,
  `gambar_article` varchar(255) NOT NULL,
  `dibuat_pada` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`article_id`, `category_id`, `admin_id`, `judul_article`, `slug_article`, `deskripsi_article`, `gambar_article`, `dibuat_pada`) VALUES
(15, 28, 2, '8 Manfaat Hutan Bagi Manusia, Jaga Keseimbangan Ekosistem dan Mengurangi Risiko Bencana', 'manfaat_hutan_bagi_manusia', 'Hutan memiliki banyak manfaat yang penting bagi keberlangsungan hidup manusia dan lingkungan. Berikut ini adalah beberapa manfaat utama dari hutan:\r\n\r\n1. Sumber daya alam\r\n\r\nManfaat hutan tentu menyediakan berbagai jenis sumber daya alam, yang penting bagi keberlangsungan hidup manusia. Kayu merupakan salah satu sumber daya alam yang paling penting dan diperoleh dari hutan, di mana kayu digunakan untuk berbagai tujuan seperti konstruksi bangunan, pembuatan peralatan dan perabotan rumah tangga, hingga industri kertas. Selain kayu, hutan juga menyediakan bahan baku untuk industri farmasi, kosmetik, dan makanan. Beberapa tanaman yang ditemukan di hutan juga digunakan sebagai obat-obatan tradisional.\r\n\r\n2. Konservasi lingkungan\r\n\r\nHutan memainkan peran penting dalam menjaga keseimbangan ekosistem, serta menjaga kualitas udara dan air. Hutan menyediakan habitat bagi berbagai jenis satwa liar, dan menjaga kesegaran udara dengan menghasilkan oksigen melalui proses fotosintesis. Hutan juga berperan dalam menjaga keseimbangan hujan dan mengatur arus air di daerah sekitarnya. Hutan juga merupakan tempat penting dalam menjaga keseimbangan lingkungan yang dapat membantu dalam mengurangi perubahan iklim.\r\n\r\n3. Perlindungan bencana alam\r\n\r\nManfaat hutan dapat melindungi daerah dari erosi tanah, banjir, dan longsoran. Hutan dapat mengurangi intensitas hujan dan angin, serta melindungi tanah dari erosi. Hutan juga dapat mengurangi risiko bencana alam seperti banjir dan longsoran dengan mengatur arus air dan menyediakan perlindungan dari erosi.\r\n\r\n4. Rekreasi dan pariwisata\r\n\r\nHutan menyediakan berbagai fasilitas rekreasi dan pariwisata, seperti jogging, berkemah, dan bersepeda. Hutan juga menjadi tempat yang populer untuk berwisata dan melihat satwa liar dan tumbuhan. Hutan juga menyediakan lokasi untuk berbagai kegiatan outdoor seperti berkemah, mendaki, dan bersepeda.\r\n\r\n5. Nilai spiritual\r\n\r\nHutan memiliki nilai spiritual bagi beberapa masyarakat yang memandang hutan sebagai tempat yang sagrado dan memiliki makna simbolis yang kuat. Beberapa masyarakat menganggap hutan, sebagai tempat untuk bermeditasi, berdoa, dan melakukan ritual agama.\r\n\r\n6. Kesehatan\r\n\r\nManfaat hutan selanjutnya, dapat memperbaiki kualitas udara dan menyediakan lingkungan yang sehat untuk berolahraga. Berjalan di hutan atau melakukan kegiatan outdoor lainnya, dapat memperbaiki kesehatan jantung, paru-paru, dan sistem kekebalan tubuh. Hutan juga dapat mengurangi stres dan tekanan emosional serta memperbaiki kualitas tidur. Studi juga menunjukkan bahwa pengaruh positif dari hutan dapat digunakan dalam terapi kesehatan mental.\r\n\r\n7. Pendidikan\r\n\r\nHutan menyediakan lingkungan yang ideal untuk pembelajaran alam dan pendidikan lingkungan. Anak-anak dapat belajar tentang ekosistem, tumbuhan, dan satwa liar di hutan. Hutan juga dapat digunakan sebagai laboratorium alam untuk belajar tentang biologi, geografi, dan sejarah.\r\n\r\n8. Ekonomi\r\n\r\nHutan dapat memberikan sumber pendapatan bagi masyarakat setempat melalui kegiatan seperti pertanian, perikanan, dan pariwisata. Hutan juga dapat memberikan sumber daya alam yang diperlukan oleh industri kayu dan farmasi. Hutan juga dapat memberikan kesempatan kerja bagi masyarakat setempat melalui kegiatan rekreasi dan pariwisata.\r\n\r\nSecara keseluruhan, hutan memiliki berbagai manfaat yang penting bagi keberlangsungan hidup manusia dan lingkungan. Oleh karena itu, penting untuk menjaga kesehatan dan keseimbangan hutan melalui praktik pengelolaan yang baik dan konservasi hutan yang tepat.', 'WhatsApp Image 2023-07-11 at 11.27.20.jpg', '2023-07-13 13:03:02'),
(16, 28, 2, 'Kedepankan Pengembangan Sumber Daya Alam, GMC Kaltim Tanam Ratusan Bibit Pohon', 'kedepankan_pengembangan_sumber_daya_alam', 'Sukarelawan Ganjar Milenial Center (GMC) menggelar kegiatan bersih-bersih kampung dan aksi menanam pohon bareng komunitas pemuda.\r\nKali ini mereka mengadakan aksi sosial itu di Kampung Kolaborasi, RT 08, Dusun II, Desa Sumber Sari, Kecamatan Babulu, Kabupaten Penajam Paser Utara, Kalimantan Timur.\r\nKorwil GMC Kaltim Sadly Jaya M mengatakan dalam kegiatan itu mereka berkerja sama dengan Karang Taruna Desa Sumber Sari.\r\n\r\n\"Kami mengadakan gotong royong, bersih-bersih dan, tanam pohon bersama,\" ujar dia ditulis Selasa (13/6/2023).\r\n\r\nDalam kegiataan, sukarelawan menargetkan 100 pohon yang akan ditanam.\r\nMenurut Sadly, ada berbagai jenis pohon buah-buahan dan dilakukan secara bertahap.\r\n\r\n\"Respons dan antusias dari masyarakat juga sangat baik sebab ini bukan kali pertama sukarelawan GMC berkegiatan di desa tersebut,\" ujar dia.\r\nDia menuturkan hal ini dilakukan dengan pertimbangan agar kegiatan ini tepat sasaran dan masyarakat dapat langsung merasakan dampak dan manfaatnya.\r\nDalam kesempatan itu, GMC Kaltim turut memperkenalkan Ganjar Pranowo sebagai calon presiden kepada masyarakat.\r\n\r\n\"Beliau adalah salah satu pemimpin yang mengedepankan pengembangan sumber daya alam sehingga hal ini lah yang mendorong kegiatan ini dilaksanakan,\" kata dia.\r\nSadly mengatakan dengan adanya kegiatan itu diharapkan masyarakat bisa menjaga lingkungan agar tetap bersih dan sehat serta menanam pohon yang berjenis buah-buahan.\r\n\"Selain untuk penghijauan juga ada manfaatnya seperti buah yang dihasilkan dari pohon yang ditanam juga langsung dapat dinikmati oleh masyarakat sekitarnya,” tegasnya.\r\n\r\nTanggapan masyarakat juga sangat positif dengan diadakannya kegiatan ini, karena kegiatan seperti ini jarang dilakukan oleh sukarelawan lain.\r\nSyukron selaku Ketua RT 13, Desa Sumber Sari mengaku sangat bersyukur dan berterima kasih kepada Ganjar Pranowo serta para sukarelawan.\r\n\"Saya siap mendukung beliau sampai jadi presiden, dan harapanya bisa menyejahtrakan masyakat dan memberikan bantuan pembangunan dan perbaikan jalan,\" kata dia.', 'WhatsApp Image 2023-07-11 at 11.29.26.jpg', '2023-07-13 13:03:58'),
(17, 28, 2, 'Faktor Penyebab Perubahan Potensi Sumber Daya Alam dan Penjelasannya', 'faktor_penyebab_perubahan_potensi_sumber_daya_alam_dan_penjelasannya', 'Secara umum sumber daya alam adalah segala sesuatu yang berasal dari alam dan bisa dimanfaatkan dengan baik oleh manusia untuk keberlangsungan hidupnya. Menurut Kamus Besar Bahasa Indonesia, sumber daya alam didefinisikan sebagai potensi alam yang bisa dikembangkan oleh manusia untuk proses produksi tertentu.\r\n\r\n\r\nBerdasarkan kelestariannya, sumber daya alam dibedakan menjadi dua, yaitu sumber daya alam dapat diperbarui dan sumber daya alam tidak dapat diperbarui. Sumber daya alam yang dapat diperbarui, misalnya tanah, air, dan sebagainya. Sedangkan sumber daya alam yang tidak dapat diperbarui, misalnya minyak bumi, batu bara, timah, dan sebaginya. Potensi sumber daya alam yang dimanfaatkan secara terus menerus mengakibatkan perubahan bagi kelangsungan alam.\r\n\r\nSalah satu dampak perubahan alam yang terjadi adalah menurunnya daya dukung lingkungan terhadap kehidupan manusia.\r\n\r\nFaktor penyebab perubahan potensi sumber daya alam terbagi menjadi dua jenis, yaitu faktor alam dan faktor manusia. Berikut penjelasannya.\r\n\r\nFaktor alam Faktor alam ini biasanya terjadi akibat adanya bencana alam, misalnya banjir, gunung meletus, gempa bumi, dan tsunami.\r\n\r\nBencana banjir selain disebabkan oleh kurang sadarnya manusia, bencana banjir juga dapat terjadi karena faktor alam, seperti curah hujan yang tinggi secara terus menerus. Ketika curah hujan tinggi secara terus menerus dapat mengakibatkan air sungai meluap atau mengakibatkan tanggul jebol karena tidak dapat menampung debit air yang tinggi.\r\n\r\nBanjir dengan skala besar mengakibatkan bangunan maupun tempat tinggal makhluk hidup rusak, lapisan tanah subur hilang, tanaman-tanaman rusak, dan lain sebagainya. Contoh lain faktor alam yaitu gunung meletus. Area di sekitar gunung akan mengalami kekeringan selama erupsi terjadi. Hal ini menimbulkan pemanfaatan potensi sumber daya alam yang ada di lingkungan gunung api menurun kuantitasnya.\r\n\r\nFaktor manusia Selain faktor alam yang terjadi secara alami, perubahan potensi sumber daya alam di Indonesia juga bisa terjadi akibat ulah para manusianya. Di mana manusia tidak memiliki kesadaran akan pentingnya menjaga lingkungan. Masih banyak manusia yang membuang sampah sembarangan, membuang limbah industri secara sembarangan, hingga penebangan hutan liar.\r\n\r\nPerilaku tersebut dapat mengakibatkan kerusakan lingkungan, berpotensi merusak ekosistem yang ada di sungai, danau, atau tanah. Dengan begitu, sumber daya alam yang ada di sekitaran bentang alam tersebut berpotensi menurun kualitas dan kuantitas akibat ekosistemnya tidak stabil.\r\n\r\nReferensi: Dewata, Indang dan teman-teman. Pengelolaan Sumber Daya Alam. 2020. Yogyakarta: Deepublish. Sudarmanto, Eko dan teman-teman. Ekonomi Sumber Daya Alam. 2021. Medan: Yayasan Kita Menulis.', 'WhatsApp Image 2023-07-11 at 11.38.08.jpg', '2023-07-13 13:04:54'),
(18, 29, 3, 'Pakar UGM: Pemerintah Perlu Mendorong Pengembangan Sumber Daya Genetik Baru untuk Tanaman Pangan', 'sumber_daya_pangan', 'Produksi pangan nasional saat ini dan di masa mendatang  dihadapkan pada tantangan besar berupa kenaikan populasi penduduk di tengah produksi pangan yang cenderung stagnan. Padahal, jumlah produksi pangan harus diupayakan setidaknya dua kali lipat dibandingkan dengan produksi pangan saat ini untuk menghindari bencana kelaparan pada tahun 2050. Namun, upaya pemerintah untuk mendorong peningkatan produksi pangan dihadapkan pada persoalan pelemahan daya dukung lingkungan. Oleh karena itu, strategi pengembangan intensifikasi pertanian dan pengembangan material genetik baru untuk tanaman pangan sebagai terobosan untuk mengatasi ancaman bencana kelaparan.\r\n\r\nDemikian beberapa hal yang mengemuka dalam Webinar Nasional dengan tema Sumber Daya Genetik untuk Produksi Pangan Berkelanjutan: Studi Kasus Pengembangan Padi Seri Gamagora. Webinar yang diselenggarakan oleh Departemen Budidaya Pertanian, Fakultas Pertanian, Universitas Gadjah Mada ini menghadirkan Dosen Pemulia Tanaman, Fakultas Pertanian UGM, Dr. Taryono, peneliti Pemuliaan Tanaman, Fakultas Pertanian Universitas Padjajaran Bandung, Prof. Agung Karuniawan, dan  Manajer Laboratorium Proteksi Tanaman PT. BISI Internasional Tbk, Hoerussalam, M.Sc.\r\n\r\nTaryono mengatakan peningkatan produksi pangan  dapat dilakukan melalui dua skenario yaitu perluasan areal tanam atau ekstensifikasi dan optimalisasi operasional produksi atau intensifikasi. Namun demikian, skenario ekstensifikasi pada beberapa tahun ke depan terkendala akibat dari penguasaan lahan per petani yang terus menyempit. Ia menyebutkan pada tahun 1960, rerata penguasaan lahan per petani yaitu 5 ribu meter persegi. Pada tahun 2020 penguasaan lahan per petani menurun signifikan jadi 2 ribu meter persegi. Berdasarkan atas kondisi tersebut, Taryono menilai diperlukan  upaya pengembangan material genetik baru untuk jenis tanaman pangan dalam rangka mewujudkan peningkatan produksi pangan melalui skenario intensifikasi. “Program pengembangan material genetik baru merupakan terobosan utama untuk memecah kebuntuan dalam skenario peningkatan produksi pangan,” kata kepala Pusat Inovasi Agrotenologi (PIAT) UGM ini, Kamis (16/3).\r\n\r\nMenurutnya, bangsa Indonesia memerlukan upaya percepatan  pemanfaatan  sumber daya genetik Indonesia untuk mewujudkan material genetik baru tanaman pangan yang lebih produktif dengan mutu hasil tinggi, tahan berbagai tekanan lingkungan abiotik dan tahan terhadap tekanan lingkungan biotik seperti hama, penyakit dan gulma.\r\n\r\nPIAT UGM bekerja sama dengan tim peneliti dari fakultas Pertanian UGM, kata Taryono, kini tengah melakukan serangkaian program pemuliaan untuk mendapatkan material genetik baru  untuk beberapa jenis tanaman pangan seperti padi, bawang merah, tomat, cabai rawit, jagung, terong, mentimun, kedelai, kacang panjang, kacang hijau, kacang koro dan melon. “Salah satu material genetik baru tanaman padi yang sudah mendapatkan ijin pelepasan varietas dari Kementerian Pertanian RI yaitu Gamagora 7,” paparnya.\r\n\r\nMenurutnya, varietas padi ini dirancang untuk memiliki sifat produktivitas tinggi dengan potensi hasil gabah kering giling mencapai 9,80 ton per hektar per musim. Bahkan dari mutu citarasa menyamai beras pulen dan tahan dinamika cuaca ekstrim.\r\n\r\nHal senada juga disampaikan oleh Prof. Agung Karuniawan. Ia menuturkan program pemuliaan tanaman melalui pemanfaatan kelimpahan sumber daya genetik merupakan terobosan utama untuk mewujudkan produktivitas pangan yang tinggi dan berkelanjutan. “Saya kira tren dalam program pemuliaan ke depan juga memasukkan aspek kekayaan metabolit di dalam produk untuk mendukung produksi pangan fungsional,” jelasnya.\r\n\r\nSementara Hoerussalam, M.Sc. menyampaikan bahwa kebutuhan akan material genetik baru untuk tanaman pangan khususnya padi saat ini lebih dititik beratkan pada sifat produktivitas tinggi, mutu hasil baik, hemat air-nutrisi dan tahan hama-penyakit sehingga bisa mendorong peningkatan produksi pangan di tengah minimnya sempitnya luasan lahan yang dikelola petani kita.', 'sumber daya pangan.PNG', '2023-07-14 18:26:35'),
(19, 31, 2, 'Cara Jepang Mengatasi Masalah Keterbatasan Sumber Daya Mineral', 'sumber_daya_mineral', 'Cara Jepang mengatasi keterbatasan sumber daya mineral adalah dengan melakukan impor atau pembelian mineral dari negara lain yang memiliki sumber daya mineral yang lebih banyak dibanding Jepang.\r\n\r\nBagaimana Cara Jepang Mengatasi Masalah Keterbatasan Sumber Daya Mineral?\r\n\r\nJepang merupakan salah satu negara kecil di Asia yang dikenal dengan kemajuan ekonomi dan teknologinya. \r\n\r\nMeski dinilai sebagai negara maju, Jepang tidak memiliki sumber daya mineral yang cukup untuk memenuhi kebutuhan akan sumber daya mineral dalam negeri.\r\n\r\nUntuk mengatasi masalah tersebut, Jepang mengimpor mineral dari negara lain untuk kemudian diolah di Jepang menjadi suatu produk yang bernilai ekonomi. \r\n\r\nPembahasan tersebut selaras dengan yang dijelaskan dalam buku berjudul Ekonomi Mineral Indonesia yang disusun oleh Faisol Mukarrom, S.T., M.M. (2017: 140).\r\n\r\nTertulis dalam buku tersebut bahwa Jepang merupakan salah satu negara yang menjadi negara mitra utama dalam pembelian produk mineral dari Indonesia. Hal ini karena Indonesia memiliki sumber daya mineral yang cukup banyak, sedangkan Jepang tidak. \r\nDi Jepang terdapat banyak industri yang membutuhkan bahan baku mineral dalam jumlah yang sangat besar. \r\n\r\nMaka dari itu, untuk memenuhi kebutuhan industri tersebut sekaligus meminimalisir pengeluaran untuk penyediaan bahan baku mineral, Jepang mengimpor bahan baku mineral dalam bentuk bahan mentah.\r\n\r\nSelain meminimalisir pengeluaran, Jepang juga memiliki fasilitas pengolahan dan pemurnian yang lebih maju. \r\nTak hanya itu Jepang juga memiliki pelabuhan khusus untuk menerima dan mengirim kembali bahan mineral yang telah diproses hingga menjadi bahan jadi atau bahan baku. \r\n\r\nJepang memperoleh sumber daya mineral dari berbagai negara, salah satunya adalah Indonesia. Hal tersebut karena Indonesia memiliki sumber daya alam, khususnya sumber daya mineral yang melimpah.\r\nDalam buku berjudul Penerapan Prinsip Hukum Lingkungan dalam Realitas Kehidupan Masyarakat yang disusun oleh Aisyah Nur Ash Fiyaa, dkk (2021) dijelaskan bahwa Indonesia merupakan negara yang memiliki sumber daya alam yang melimpah.\r\n\r\nAda banyak jenis sumber daya alam yang dapat diytemukan di Indonesia, mulai dari sumber daya alam yang dapat diperbaharui maupun sumber daya alam yang tidak dapat diperbaharui. \r\nContoh sumber daya alam yang tidak dapat diperbaharui adalah pertambangan yang menghasilkan sumber daya mineral.\r\n\r\nItulah ulasan mengenai cara Jepang mengatasi masalah keterbatasan sumber daya mineral. Semoga artikel ini dapat menambah pengetahuan tentang cara mengatasi masalah keterbatasan sumber daya yang dialami suatu negara. (DAP)\r\n', 'sumberdayaminerall.jpg', '2023-07-14 18:45:34'),
(20, 32, 2, 'Potensi Sumber Daya Hutan Indonesia dan Upaya Pelestariannya', 'sumber_daya_hutan', 'Menurut Kementerian Lingkungan Hidup dan Kehutanan Republik Indonesia, hutan Indonesia memiliki potensi yang sangat besar yaitu mencapai 99,6 juta hektare atau 52,3% dari luas wilayah Indonesia. Luas hutan yang besar tersebut, saat ini masih dapat dijumpai di Papua, Kalimantan, Sulawesi dan Sumatera. Di Jawa, luas hutan telah mengalami banyak penurunan karena terjadi alih fungsi untuk pertanian dan permukiman penduduk. Sementara itu, alih fungsi hutan menjadi pertanian dan perkebunan banyak dijumpai di Sumatera dan Kalimantan. Selain hutannya yang luas, hutan Indonesia juga menyimpan kekayaan lora dan fauna atau keanekaragaman hayati yang sangat besar. Bahkan, banyak diantaranya merupakan spesies endemik atau hanya ditemukan di Indonesia, tidak ditemukan di tempat lainnya.. Dari hutan tropis yang dimiliki Indonesia juga dihasilkan buah-buahan dan obat- obatan. Namun demikian, hasil hutan yang banyak dikenal penduduk adalah sebagai sumber kayu. Setidaknya terdapat 4000 jenis kayu yang 267 diantaranya merupakan kayu yang memiliki nilai ekonomi tinggi. Secara umum, jenis-jenis kayu dan sebarannya adalah sebagai berikut. Kayu Keruing, Meranti, Agathisdihasilkan terutama di Papua, Sulawesi, dan Kalimantan. Kayu jati banyak dihasilkan di Jawa Tengah. Rotan banyak dihasilkan di Kalimantan, Sumatera Utara dan Sumatera Barat. Kayu Cendana banyak dihasilkan di Nusa Tenggara Timur.  Kayu Rasamala dan Akasia banyak dihasilkan di Jawa Barat. Baca juga: Jenis-Jenis Hutan Berdasarkan Fungsinya  Upaya Pelestarian Potensi hutan Indonesia harus dijaga kelestariannya agar dapat terusmenghasilkan manfaat bagi manusia dan makhluk hidup lainnya. Upaya pelestarian hutan di Indonesia adalah sebagai berikut: Melakukan reboisasi Menerapkan sistem tebang pilih Menerapkan sistem tebang-tanam Melakukan penebangan secara konservatif Memberikan sanksi bagi penebang yang melakukan penebangan sembarangan 6. Tidak membuang sampah sembarangan di hutan Melindungi dan menjaga habitat yang ada di hutan Tidak mencoret-coret pohon yang ada di hutan Mengurangi penggunaan kertas berlebih Mengidentifikasi dan mencegah terjadinya kebakaran hutan', 'sumberdayahutan.jpg', '2023-07-14 18:56:08'),
(21, 33, 3, 'Rumput Laut Sebagai Potensi Sumber Daya Laut di Sulawesi Selatan', 'sumber_daya_laut', 'Sulawesi Selatan merupakan salah satu provinsi yang ada di Indonesia dengan potensi kelautan dan perikanan yang sangat melimpah. Sulawesi Selatan terletak di daerah yang strategis kareana menjadi pintu gerbang kawasan Timur serta menfasilitasi kota Makassar sebagai ibu kota Sulawesi Selatan dengan berbagai kabupaten yang ada di provinsi ini. Hal ini mendukung usaha pembudidayaan yang ada di Sulawesi Selatan dari segi fasilitas dan pemasaran. Keragaman sumber daya laut seperti ikan, udang,kepiting cumi, rumput laut dan lain sebagainnya sangat banyak dijumpai di laut Sulawesi Selatan , salah satu sumber daya laut dari sektor perikanan yang memiliki potensi paling besar yaitu rumput laut.\r\nDi Sulawesi Selatan rumput laut telah dinobatkan sebagai salah satu komuditas unggulan oleh Pemerintah setempat hal ini dikarenakan rumput laut memiliki banyak peminat, memiliki harga yang menguntungkan, menyerap tenaga kerja, mudah untuk dilakukan serta dilakukan secara massal. Potensi produksi rumput laut di Sulawesi Selatan sebesar 15,144, 8 ton pada tahun 2006 , Kemudian di tahun 2014 sebesar 3.377.689 ton dan pada tahun 2016 produksi rumput laut mencapai 3.941.648,8 ton. Selain potensi rumput laut yang besar potensi sumberdaya manusia yang bergerak di bidang budidaya laut dan tambak juga cukup besar yaitu mencapai sekitar 50.755 Rumah Tangga Perikanan, sehingga potensi lahan budidaya yang besar ini serta sumberdaya manusia yang cukup dapat menjadi peluang dan prospek pengembangan budidaya perikanan termasuk rumput laut di Sulawesi Selatan khususnya pembudidayaan dibidang tambak.\r\nRumput laut yang banyak ditemukan di Sulawesi Selatan yaitu Eucheuma cottoni dan Eucheuma sp kemudian terdapat juga jenis Gracilaria sp yang banyak ditemukan serta dibudidayakan di tambak. Pengembangan budidaya rumput laut ini memiliki prospek yang sangat besar terutama rumput laut jenis Eucheuma cottoni dan Gracilaria sp yang memiliki tingkat pemanfaatan yang luas serta harganya yang tinggi, jenis rumput laut ini sering dimanfaatkan sebagai bahan pembuatan kosmetik, bahan pangan, bahan pembuatan agar, obat-obatan, bahan pembuatan nata de seaweed dan lain sebagainya.\r\nRumput laut mengandung serat dan nutrisi yang baik bila diolah menjadi bahan pangan, dalam 100 gr rumput laut terdapat 10 gr karbohidrat, 2 gr protein, dan 1 gr lemak serta dapat memenuhi 15% hingga 35% kebutuhan serat bagi manusia serta 27% hingga 180% , kemudian magnesium 15%- 60% kalsium, dan 3-20% kebutuhan harian besi. Selain itu rumput laut sering dimanfaatkan sebagai bahan pembuatan kosmetik karena terdapat kandungan vitamin C yang dapat mencerahkan dan meremajakan kulit serta kandungan ascophyllum nodosum seaweed mampu menjadi sunscreen alami bagi kulit wajah agar terhindar dari kerusakan akibat sinar matahari.\r\nSalah satu potensi pengembangan yang dapat dikembangkan oleh masyarakat yaitu pembuatan nata de seaweed. Rumput laut yang menjadi bahan dasar nata de seaweed memiliki kandungan polisakarida yang cukup besar untuk menjadikan bahan yang potensial sebagai sumber serat pangan. Kandungan serat dan nutrisi yang baik menjadi nilai lebih rumput laut apabila digunakan sebagai bahan baku nata de seaweed. Nata de seaweed memiliki kandungan gizi yang baik, nata ini memiliki kandungan serat kasar lebih tinggi, dan memiliki kandungan air yang lebih rendah, sehingga lebih kenyal dan awet.\r\nOleh karena itu selain menjual rumput laut secara langsung masyarakat dapat berkreasi dan menambah keterampilan dengan memanfaatkan potensi rumput laut yang mereka miliki dengan cara membuat produk berupa Nata de seaweed. Pembuatan Nata de seaweed ini juga lebih mudah dan gampang untuk dipraktekan oleh masyarakat disulawesi selatan. Sehingga produk yang mereka buat dapat dipasarkan dan bersaing dengan produk lain. sehingga masyarakat mendapatkan pemasukan tambahan dan membantu perokonomian tidak hanya dari penjualan rumput laut secara langsung saja\r\n\r\n', 'sumber daya laut.PNG', '2023-07-14 18:58:30'),
(22, 30, 2, 'Sumber Daya Alam Nabati yang Tersebar di Pulau Kalimantan', 'sumber_daya_nabati', 'Kalimantan merupakan salah satu pulau besar yang ada di Indonesia dan memiliki kekayaan alam yang luar biasa. Tidak heran Kalimantan menjadi pulau dengan banyak pertambangan seperti batu bara, minyak bumi, dan lain sebagainya. Di samping itu, sumber daya alam nabati yang tersebar di pulau kalimantan adalah sawit dan kayu. Berikut ulasan lengkapnya.\r\n\r\nDikutip dari buku Profil dan Potensi Daerah Tertinggal Pulau Kalimantan karya Pusat Data dan Informasi, Badan Penelitian dan Pengembangan Pendidikan dan Pelatihan, dan Informasi, Kementerian Desa, Pembangunan Daerah Tertinggal dan Transmigrasi Republik Indonesia, (2019) dijelaskan bahwa ada beberapa wilayah di pulau Kalimantan yang memiliki sumber daya alam nabati luar biasa.\r\n\r\nSumber daya alam nabati yang tersebar di Pulau Kalimantan adalah kayu hutan, pasalnya Kalimantan merupakan salah satu pulau dengan hutan terbanyak di Indonesia bahkan di dunia. Tidak heran jika Kalimantan dijuluki sebagai paru-paru dunia.\r\n\r\nHutan Kalimantan memiliki banyak jenis kayu hutan dan kualitas kayu yang dihasilkan sangatlah bagus. Kayu jati menjadi salah satu jenis kayu hutan yang dihasilkan di hutan Kalimantan dan jati memiliki harga jual yang sangat tinggi, sehingga menjadi sumber daya alam kalimantan yang bermanfaat bagi banyak pihak.\r\n\r\nKelapa sawit menjadi sumber daya alam nabati yang terbesar kedua di Pulau Kalimantan. Tanaman kelapa sawit banyak digunakan untuk memproduksi minyak industri dan bahan bakar seperti biodiesel. Di Indonesia, perkebunan kelapa sawit banyak terdapat di beberapa daerah salah satunya di Pulau Kalimantan.\r\n\r\nDari tahun ke tahun luas kebun kelapa sawit selalu meningkat sejalan dengan program gubernur dalam upaya meluncurkan program \"Satu juta Hektar Kelapa Sawit\".\r\n\r\nNamun kemunculan perkebunan kelapa sawit menimbulkan pro kontra di kalangan aktivis. Hal ini dikarenakan Banyaknya alih fungsi lahan gambut dan kawasan hutan yang diubah menjadi lahan perkebunan kelapa sawit sebenarnya sangat tidak disarankan karena dapat mengancam habitat hewan-hewan langka yang tinggal di dalam hutan.\r\n\r\nSumber daya yang lainnya dan juga banyak ditemukan di pulau Kalimantan adalah rotan. Rotan sendiri merupakan bumi yang bermanfaat untuk masyarakat karena rotan bisa digunakan untuk banyak hal dan Kalimantan menjadi kawasan penghasil rotan dengan kualitas yang tinggi.\r\n\r\nRotan banyak disulap menjadi kerajinan dengan harga jual yang tinggi dan proses pembuatan kerajinan dengan rotan memerlukan keahlian khusus.\r\n\r\nKerajinan khas Kalimantan sudah menyebar ke berbagai daerah di indonesia dan gerak pemerintah dalam menyelamatkan sumber daya alam rotan sudah sangat baik, karena rotan bisa didaur ulang dengan proses yang tidak terlalu panjang.\r\nDemikian adalah penjelasan mengenai sumber daya alam nabati yang banyak tersebar di Pulau Kalimantan. (WWN)\r\n', '01gjrapnjh7g13p0mfw0kv1t7r.jpg', '2023-07-14 19:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `judul_category` varchar(255) NOT NULL,
  `slug_category` varchar(255) NOT NULL,
  `deskripsi_category` text NOT NULL,
  `gambar_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `judul_category`, `slug_category`, `deskripsi_category`, `gambar_category`) VALUES
(28, 'Sumber Daya Alam', 'sumber_daya_alam', 'Sumber daya alam adalah semua bahan, energi, dan komponen lain yang ada di alam dan dapat dimanfaatkan oleh manusia untuk memenuhi kebutuhan mereka. Sumber daya alam meliputi segala sesuatu yang ada di lingkungan alam, baik yang hidup maupun yang tidak hidup. Sumber daya alam dapat terdiri dari berbagai elemen seperti tanah, air, udara, mineral, tumbuhan, hewan, energi, dan lain sebagainya.', '1200px-Mount_Batur2 (1).jpg'),
(29, 'Sumber Daya Pangan', 'Sumber_daya_pangan', 'Sumber daya pangan merujuk pada semua bahan dan komponen yang digunakan untuk memenuhi kebutuhan manusia dalam hal pangan atau makanan. Sumber daya pangan mencakup segala sesuatu yang terlibat dalam produksi, pengolahan, distribusi, dan konsumsi pangan.', 'download (1).jpeg'),
(30, 'Sumber Daya Nabati', 'sumber_daya_nabati', 'Sumber daya nabati merujuk pada semua jenis tumbuhan atau tumbuhan yang dapat dimanfaatkan oleh manusia untuk berbagai keperluan. Sumber daya nabati mencakup tanaman pangan, tanaman obat, tanaman hias, kayu, serat tanaman, bahan bakar nabati, dan bahan baku industri.', 'images (3).jpeg'),
(31, 'Sumber Daya Mineral', 'sumber_daya_mineral', 'Sumber daya mineral adalah suatu konsentrasi atau keterdapatan dari material yang memiliki nilai ekonomi pada atau di atas kerak bumi, dengan bentuk, kualitas dan kuantitas tertentu yang memiliki keprospekan yang beralasan yang pada akhirnya dapat diekstraksi secara ekonomis.', 'download (2).jpeg'),
(32, 'Sumber Daya Hutan', 'sumber_daya_hutan', 'Sumber daya hutan merupakan salah satu ciptaaan Tuhan Yang Maha Kuasa yang memiliki peranan yang sangat penting dalam menjaga keseimbangan alam di jagad raya ini. Sebab di dalam hutan telah diciptakan segala makhluk hidup baik besar maupun kecil.', 'Potensi Sumber Daya Hutan Indonesia.jpg'),
(33, 'Sumber Daya Laut', 'sumber_daya_laut', 'Sumber daya laut adalah sumber daya yang meliputi, ruang lingkup yang luas yang mencankup kehidupan laut (flora dan fauna, mulai dari organisme mikroskopis hingga paus pembunuh dan habitat laut) mulai dari perairan dalam sampai ke daerah pasang surut dipantai dataran tinggi dan daerah muara yang luas.', 'download (3).jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
