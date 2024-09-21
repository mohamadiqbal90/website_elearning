-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 02:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`comment_id`, `post_id`, `content`, `created_by`, `created_at`) VALUES
(1, 4, 'sadasd', 'dsa', '2024-08-13 21:47:13'),
(2, 4, 'asdasd', 'dsa', '2024-08-13 21:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_posts`
--

INSERT INTO `forum_posts` (`post_id`, `title`, `content`, `created_by`, `created_at`) VALUES
(1, 'asd', 'asdasdadsa', 321, '2024-08-13 21:41:21'),
(2, 'asdasd', 'asdasd', 321, '2024-08-13 21:41:25'),
(3, 'asdasd', 'asdasd', 321, '2024-08-13 21:42:17'),
(4, 'asdas', 'asdasd', 321, '2024-08-13 21:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bab` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `parent_bab_id` int(11) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`material_id`, `subject`, `bab`, `content`, `parent_bab_id`, `video_path`) VALUES
(1, 'Matematika', 'Bab1 : Persamaan dan Tidak Persamaan Linear', '<p>Pada bab ini, kita akan mempelajari tentang persamaan dan pertidaksamaan linear satu variabel. Materi ini sangat penting karena menjadi dasar bagi banyak konsep matematika lainnya.</p>\r\n\r\n<h3>Pendahuluan</h3>\r\n<p>Persamaan linear adalah persamaan yang variabelnya memiliki pangkat tertinggi satu, contohnya: <br>\r\n<em>2x + 3 = 7</em><br>\r\nPersamaan ini bisa diselesaikan dengan mencari nilai x yang membuat persamaan itu benar.</p>\r\n\r\n<h3>Contoh Persamaan Linear</h3>\r\n<p>Selesaikan persamaan berikut:<br>\r\n<em>2x + 3 = 7</em></p>\r\n<p><strong>Penyelesaian:</strong><br>\r\nLangkah 1: Kurangkan 3 dari kedua sisi:<br>\r\n<em>2x = 4</em><br>\r\nLangkah 2: Bagi kedua sisi dengan 2:<br>\r\n<em>x = 2</em></p>\r\n\r\n<h3>Pertidaksamaan Linear</h3>\r\n<p>Pertidaksamaan linear adalah seperti persamaan linear, tetapi dengan tanda ketidaksamaan (<, ≤, >, ≥). Contoh:<br>\r\n<em>3x - 4 ≥ 5</em></p>\r\n\r\n<h3>Contoh Pertidaksamaan Linear</h3>\r\n<p>Selesaikan pertidaksamaan berikut:<br>\r\n<em>3x - 4 ≥ 5</em></p>\r\n<p><strong>Penyelesaian:</strong><br>\r\nLangkah 1: Tambahkan 4 ke kedua sisi:<br>\r\n<em>3x ≥ 9</em><br>\r\nLangkah 2: Bagi kedua sisi dengan 3:<br>\r\n<em>x ≥ 3</em></p>\r\n\r\n<h3>Grafik Persamaan dan Pertidaksamaan Linear</h3>\r\n<p>Grafik dari persamaan linear adalah garis lurus. Untuk menggambarkan grafik, kita membutuhkan dua titik yang berada pada garis tersebut. Misalnya, untuk persamaan <em>y = 2x + 1</em>, kita bisa menentukan titik-titik dengan substitusi nilai x.</p>\r\n<p>Contoh Grafik Persamaan Linear:<br>\r\n<em><img src=\"./uploads/subject/metode grafik.png\" alt=\"Grafik Persamaan Linear\"></em></p>\r\n\r\n\r\n', NULL, './image/menjelaskan.mp4'),
(2, 'Matematika', 'Bab 2: Sistem Persamaan Linear Dua Variabel (SPLDV)', '<h2>Pengenalan SPLDV</h2>\r\n<p>Sistem Persamaan Linear Dua Variabel (SPLDV) adalah sistem yang terdiri dari dua persamaan linear dengan dua variabel. Persamaan linear adalah persamaan yang variabelnya hanya berpangkat satu, dan grafis dari persamaan ini adalah garis lurus.</p>\r\n<p><b>Contoh:</b> Persamaan 2x + 3y = 6 dan 4x - y = 7 adalah contoh dari SPLDV.</p>\r\n<br>\r\n<h2>Cara Menyelesaikan SPLDV</h2>\r\n<p>Ada beberapa metode untuk menyelesaikan SPLDV, di antaranya:</p>\r\n<ul>\r\n<li><b>Metode Substitusi:</b> Dalam metode ini, kita menyelesaikan salah satu persamaan untuk satu variabel, kemudian mensubstitusikannya ke persamaan lainnya.</li>\r\n<li><b>Metode Eliminasi:</b> Dalam metode ini, kita menjumlahkan atau mengurangkan kedua persamaan untuk menghilangkan salah satu variabel, sehingga kita dapat menyelesaikan untuk variabel lainnya.</li>\r\n<li><b>Metode Grafik:</b> Dalam metode ini, kita menggambar kedua persamaan pada grafik dan mencari titik potong kedua garis tersebut.</li>\r\n</ul>\r\n<br>\r\n<h2>Contoh Soal dan Pembahasan</h2>\r\n<p>Misalkan Anda memiliki persamaan berikut:</p>\r\n<p>2x + y = 5</p>\r\n<p>3x - 2y = 4</p>\r\n<p>Selesaikan sistem persamaan ini dengan menggunakan metode substitusi.</p>\r\n<p>Penyelesaian: <br>1. Dari persamaan pertama, kita bisa ekspresikan y dalam bentuk x: y = 5 - 2x. <br>2. Substitusikan y = 5 - 2x ke dalam persamaan kedua: <br>3x - 2(5 - 2x) = 4 <br>3x - 10 + 4x = 4 <br>7x = 14 <br>x = 2 <br>3. Substitusikan nilai x kembali ke dalam y = 5 - 2x: <br>y = 5 - 2(2) = 1. <br>Jadi, solusi dari SPLDV tersebut adalah x = 2, y = 1.</p>\r\n<br>\r\n<img src=\"./uploads/subject/spldv_image.png\" alt=\"Grafik SPLDV\">\r\n<p>Gambar di atas menunjukkan grafik dari dua persamaan, dan titik potongnya adalah solusi dari SPLDV.</p>', NULL, './image/menjelaskan.mp4'),
(3, 'Matematika', 'Bab 3: Sistem Persamaan Linear Tiga Variabel (SPLTV)', '<h2>Pengenalan SPLTV</h2>\r\n<p>Sistem Persamaan Linear Tiga Variabel (SPLTV) adalah sistem yang terdiri dari tiga persamaan linear dengan tiga variabel. Sistem ini sering digunakan untuk menyelesaikan masalah yang melibatkan tiga parameter yang berbeda.</p>\r\n<p><b>Contoh:</b> Persamaan x + 2y + z = 6, 2x - y + 3z = 14, dan -x + y - z = -2 adalah contoh dari SPLTV.</p>\r\n<br>\r\n<h2>Cara Menyelesaikan SPLTV</h2>\r\n<p>Ada beberapa metode untuk menyelesaikan SPLTV, di antaranya:</p>\r\n<ul>\r\n<li><b>Metode Substitusi:</b> Sama seperti SPLDV, dalam metode ini kita menyelesaikan salah satu persamaan untuk satu variabel, kemudian mensubstitusikannya ke dalam dua persamaan lainnya.</li>\r\n<li><b>Metode Eliminasi:</b> Kita mengeliminasi satu variabel dari dua persamaan, kemudian menyelesaikan SPLDV yang dihasilkan untuk dua variabel lainnya.</li>\r\n<li><b>Metode Determinan (Metode Cramer):</b> Metode ini menggunakan determinan dari matriks koefisien untuk menyelesaikan SPLTV.</li>\r\n</ul>\r\n<br>\r\n<h2>Contoh Soal dan Pembahasan</h2>\r\n<p>Misalkan Anda memiliki persamaan berikut:</p>\r\n<p>x + y + z = 6</p>\r\n<p>2x - y + z = 3</p>\r\n<p>3x + y - z = 4</p>\r\n<p>Selesaikan sistem persamaan ini dengan menggunakan metode eliminasi.</p>\r\n<p>Penyelesaian: <br>1. Kita eliminasi z dari persamaan pertama dan kedua: <br>(2x - y + z) - (x + y + z) = 3 - 6 <br>x - 2y = -3 <br>2. Eliminasi z dari persamaan kedua dan ketiga: <br>(3x + y - z) - (2x - y + z) = 4 - 3 <br>x + 2y = 1 <br>3. Sekarang kita punya SPLDV: <br>x - 2y = -3 <br>x + 2y = 1 <br>4. Selesaikan SPLDV tersebut: <br>x = -1 <br>y = 1 <br>Substitusikan nilai x dan y ke dalam salah satu persamaan asli untuk mendapatkan nilai z: <br>-1 + 1 + z = 6 <br>z = 6. <br>Jadi, solusi dari SPLTV tersebut adalah x = -1, y = 1, z = 6.</p>\r\n<br>\r\n<img src=\"./uploads/subject/image_spltv.png\" alt=\"Grafik SPLTV\">\r\n<p>Gambar di atas menunjukkan representasi grafik dari SPLTV, dan titik potong ketiga bidang tersebut adalah solusi dari SPLTV.</p>', NULL, './image/menjelaskan.mp4'),
(4, 'Matematika', 'Bab 4: Fungsi', '<h2>Pengenalan Fungsi</h2>\r\n<p>Fungsi adalah hubungan antara dua himpunan, di mana setiap elemen dalam himpunan pertama (domain) dipasangkan dengan tepat satu elemen dalam himpunan kedua (kodomain). Fungsi sering digunakan untuk menggambarkan hubungan antara variabel.</p>\r\n<br>\r\n<h2>Notasi Fungsi</h2>\r\n<p>Fungsi biasanya dinotasikan dengan simbol seperti f(x), g(x), atau h(x), di mana x adalah variabel input, dan f(x) adalah nilai fungsi pada x. Misalnya, jika f(x) = 2x + 3, maka f(2) = 2(2) + 3 = 7.</p>\r\n<br>\r\n<h2>Jenis-Jenis Fungsi</h2>\r\n<p>Ada beberapa jenis fungsi yang umum dalam matematika:</p>\r\n<ul>\r\n<li><b>Fungsi Linear:</b> Fungsi dengan bentuk umum f(x) = ax + b, di mana a dan b adalah konstanta. Grafik fungsi linear adalah garis lurus.</li>\r\n<li><b>Fungsi Kuadrat:</b> Fungsi dengan bentuk umum f(x) = ax² + bx + c, di mana a, b, dan c adalah konstanta. Grafik fungsi kuadrat adalah parabola.</li>\r\n<li><b>Fungsi Eksponensial:</b> Fungsi dengan bentuk umum f(x) = a^x, di mana a adalah konstanta positif. Grafik fungsi eksponensial menunjukkan pertumbuhan atau penurunan yang cepat.</li>\r\n</ul>\r\n<br>\r\n<h2>Grafik Fungsi</h2>\r\n<p>Grafik fungsi adalah representasi visual dari hubungan antara variabel input dan output. Berikut adalah contoh grafik fungsi linear, kuadrat, dan eksponensial:</p>\r\n<br>\r\n<img src=\"./uploads/subject/image_fungsi_linear.png\" alt=\"Grafik Fungsi Linear\">\r\n<p>Gambar di atas menunjukkan grafik dari fungsi linear f(x) = 2x + 3.</p>\r\n<br>\r\n<img src=\"./uploads/subject/image_fungsi_kuadrat.png\" alt=\"Grafik Fungsi Kuadrat\">\r\n<p>Gambar di atas menunjukkan grafik dari fungsi kuadrat f(x) = x² - 4x + 3.</p>\r\n<br>\r\n<img src=\"./uploads/subject/image_fungsi_exponensial.png\" alt=\"Grafik Fungsi Eksponensial\">\r\n<p>Gambar di atas menunjukkan grafik dari fungsi eksponensial f(x) = 2^x.</p>', NULL, './image/menjelaskan.mp4'),
(5, 'Matematika', 'Bab 5: Fungsi Komposisi dan Invers', '<h2>Fungsi Komposisi</h2>\r\n<p>Fungsi komposisi adalah penggabungan dua fungsi di mana output dari fungsi pertama menjadi input bagi fungsi kedua. Jika terdapat dua fungsi f(x) dan g(x), komposisi dari fungsi tersebut dinyatakan sebagai (g ∘ f)(x) atau g(f(x)).</p>\r\n<br>\r\n<h2>Contoh Fungsi Komposisi</h2>\r\n<p>Misalkan f(x) = 2x + 3 dan g(x) = x². Fungsi komposisi g ∘ f(x) adalah:</p>\r\n<p>g(f(x)) = g(2x + 3) = (2x + 3)²</p>\r\n<p>Jika x = 1, maka g(f(1)) = (2(1) + 3)² = 5² = 25.</p>\r\n<br>\r\n<h2>Fungsi Invers</h2>\r\n<p>Fungsi invers adalah fungsi yang \"membalikkan\" efek dari fungsi asli. Jika f(x) adalah fungsi, maka fungsi inversnya, dinyatakan sebagai f⁻¹(x), memiliki sifat bahwa f(f⁻¹(x)) = x dan f⁻¹(f(x)) = x.</p>\r\n<br>\r\n<h2>Contoh Fungsi Invers</h2>\r\n<p>Misalkan f(x) = 2x + 3. Untuk mencari invers dari fungsi tersebut, kita harus memecahkan persamaan y = 2x + 3 untuk x:</p>\r\n<p>y = 2x + 3</p>\r\n<p>y - 3 = 2x</p>\r\n<p>x = (y - 3)/2</p>\r\n<p>Jadi, f⁻¹(x) = (x - 3)/2.</p>\r\n<br>\r\n<h2>Grafik Fungsi Invers</h2>\r\n<p>Grafik dari fungsi invers adalah refleksi dari grafik fungsi asli terhadap garis y = x. Berikut adalah contoh grafik fungsi dan inversnya:</p>\r\n<br>\r\n<img src=\"./uploads/subject/image_fungsi_invers.png\" alt=\"Grafik Fungsi Invers\">\r\n<p>Gambar di atas menunjukkan grafik dari fungsi f(x) = 2x + 3 dan inversnya f⁻¹(x) = (x - 3)/2.</p>', NULL, './image/menjelaskan.mp4'),
(6, 'Kimia', 'Bab 1: Atom, Molekul, dan Ion', '<p>Atom adalah unit dasar dari materi yang tidak dapat dipecah lagi dengan proses kimia biasa. Atom terdiri dari inti, yang mengandung proton dan neutron, serta elektron yang mengelilingi inti dalam orbital tertentu. Pada bab ini, kita akan membahas lebih lanjut tentang struktur atom dan bagaimana partikel-partikel ini berinteraksi untuk membentuk elemen yang kita kenal.</p>\r\n\r\n<h2>Struktur Atom</h2>\r\n<p>Setiap atom memiliki inti yang terdiri dari proton yang bermuatan positif dan neutron yang tidak bermuatan. Elektron, yang bermuatan negatif, bergerak di sekitar inti dalam orbital-orbital yang telah ditentukan. Jumlah proton dalam inti menentukan jenis elemen, sementara jumlah elektron menentukan sifat kimia dari atom tersebut.</p>\r\n<img src=\"./uploads/subject/atom_structures.png\" alt=\"Struktur Atom\">\r\n\r\n<h2>Sejarah Model Atom</h2>\r\n<p>Konsep atom telah berkembang dari waktu ke waktu. Mulai dari model atom Dalton yang dianggap sebagai partikel tak terpisahkan, hingga model atom Thomson yang menyatakan bahwa atom mengandung partikel bermuatan negatif (elektron) yang tertanam dalam muatan positif, mirip dengan kismis dalam kue. Kemudian, model atom Rutherford memperkenalkan konsep inti atom, dan model Bohr menambahkan konsep orbit elektron yang terkuantisasi.</p>\r\n<img src=\"./uploads/subject/Atomic-Model.png\" alt=\"Model Atom\">\r\n\r\n<h2>Sistem Periodik Unsur</h2>\r\n<p>Sistem Periodik Unsur adalah tabel yang mengelompokkan semua unsur kimia berdasarkan sifat-sifatnya. Unsur-unsur dalam tabel periodik diatur berdasarkan nomor atom (jumlah proton dalam inti), yang juga mengatur posisi mereka dalam periode dan golongan tertentu. Dalam bab ini, kita akan membahas cara membaca tabel periodik dan memahami tren periodik seperti energi ionisasi, afinitas elektron, dan jari-jari atom.</p>\r\n<img src=\"./uploads/subject/periodic_table.png\" alt=\"Sistem Periodik Unsur\">\r\n\r\n<h2>Konfigurasi Elektron</h2>\r\n<p>Konfigurasi elektron menggambarkan bagaimana elektron didistribusikan dalam orbital-orbital atom. Prinsip Aufbau, Prinsip Eksklusi Pauli, dan Aturan Hund digunakan untuk menentukan distribusi ini. Konfigurasi elektron sangat penting untuk memahami sifat kimia unsur, termasuk bagaimana atom berikatan dalam reaksi kimia.</p>\r\n<img src=\"./uploads/subject/konfigurasi_elektron.png\");', NULL, './image/menjelaskan.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `materials1`
--

CREATE TABLE `materials1` (
  `material_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bab` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `parent_bab_id` int(11) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials1`
--

INSERT INTO `materials1` (`material_id`, `subject`, `bab`, `content`, `parent_bab_id`, `video_path`) VALUES
(1, 'Matematika', 'Bab 1: Matriks', '<h2>Pengenalan Matriks</h2>\r\n<p>Matriks adalah susunan bilangan atau elemen lain yang diatur dalam baris dan kolom untuk membentuk suatu persegi panjang. Matriks biasanya digunakan dalam berbagai bidang seperti aljabar linear, fisika, dan komputer grafis.</p>\r\n\r\n<h2>Jenis-Jenis Matriks</h2>\r\n<p>Terdapat berbagai jenis matriks, di antaranya:\r\n<ul>\r\n<li><strong>Matriks Baris:</strong> Matriks yang hanya memiliki satu baris.</li>\r\n<li><strong>Matriks Kolom:</strong> Matriks yang hanya memiliki satu kolom.</li>\r\n<li><strong>Matriks Persegi:</strong> Matriks yang memiliki jumlah baris dan kolom yang sama.</li>\r\n<li><strong>Matriks Diagonal:</strong> Matriks persegi yang hanya memiliki elemen non-nol pada diagonal utama.</li>\r\n<li><strong>Matriks Identitas:</strong> Matriks diagonal yang memiliki elemen 1 pada diagonal utama dan elemen 0 pada elemen lainnya.</li>\r\n</ul></p>\r\n\r\n<h2>Operasi pada Matriks</h2>\r\n<p>Operasi dasar pada matriks meliputi penjumlahan, pengurangan, dan perkalian. Berikut adalah penjelasan singkat:\r\n<ul>\r\n<li><strong>Penjumlahan Matriks:</strong> Dua matriks dapat dijumlahkan jika memiliki dimensi yang sama. Penjumlahan dilakukan dengan menjumlahkan elemen-elemen yang bersesuaian.</li>\r\n<li><strong>Pengurangan Matriks:</strong> Mirip dengan penjumlahan, namun elemen-elemen yang bersesuaian dikurangkan.</li>\r\n<li><strong>Perkalian Matriks:</strong> Perkalian antara dua matriks dimungkinkan jika jumlah kolom matriks pertama sama dengan jumlah baris matriks kedua. Elemen hasil perkalian diperoleh dengan mengalikan elemen baris matriks pertama dengan elemen kolom matriks kedua, lalu menjumlahkannya.</li>\r\n</ul></p>\r\n\r\n<h2>Determinant dan Invers Matriks</h2>\r\n<p>Determinant merupakan nilai skalar yang dapat dihitung dari suatu matriks persegi. Invers matriks adalah matriks yang jika dikalikan dengan matriks asli menghasilkan matriks identitas. Kedua konsep ini sangat penting dalam memecahkan sistem persamaan linear.</p>\r\n\r\n<h2>Penggunaan Matriks dalam Kehidupan Sehari-hari</h2>\r\n<p>Matriks banyak digunakan dalam berbagai aplikasi seperti enkripsi data, pemodelan ekonomi, dan transformasi grafis. Misalnya, dalam enkripsi data, matriks dapat digunakan untuk mengubah data menjadi bentuk yang lebih aman.</p>\r\n\r\n<h2>Contoh Soal Matriks</h2>\r\n<p>Berikut adalah contoh soal untuk membantu pemahaman:\r\n<ul>\r\n<li>Hitunglah hasil penjumlahan matriks berikut:</li>\r\n<p><img src=\"./uploads/subject/matrix_example1.png\" alt=\"Penjumlahan Matriks\"></p>\r\n<li>Temukan invers dari matriks berikut:</li>\r\n<p><img src=\"./uploads/subject/matrix_example2.png\" alt=\"Invers Matriks\"></p>\r\n</ul></p>', NULL, './image/menjelaskan.mp4'),
(2, 'Matematika', 'Bab 2: Transformasi Geometri', '<h2>Pengenalan Transformasi Geometri</h2>\r\n<p>Transformasi geometri adalah operasi yang mengubah posisi, ukuran, atau bentuk suatu objek dalam bidang. Transformasi ini meliputi translasi, rotasi, refleksi, dan dilatasi. Masing-masing transformasi memiliki aturan khusus yang mengubah koordinat titik-titik pada objek.</p>\r\n\r\n<h2>Jenis-Jenis Transformasi Geometri</h2>\r\n<p>Berikut adalah beberapa jenis transformasi geometri:\r\n<ul>\r\n<li><strong>Translasi:</strong> Perpindahan semua titik suatu objek dengan jarak dan arah yang sama. Contoh: menggeser segitiga 3 unit ke kanan.</li>\r\n<li><strong>Rotasi:</strong> Memutar suatu objek dengan sudut tertentu terhadap titik pusat rotasi. Contoh: memutar persegi 90 derajat searah jarum jam.</li>\r\n<li><strong>Refleksi:</strong> Mencerminkan suatu objek terhadap garis refleksi, sehingga menghasilkan bayangan objek yang simetris. Contoh: mencerminkan segitiga terhadap sumbu x.</li>\r\n<li><strong>Dilatasi:</strong> Mengubah ukuran suatu objek dengan faktor skala tertentu, tanpa mengubah bentuknya. Contoh: memperbesar persegi dengan faktor skala 2.</li>\r\n</ul></p>\r\n\r\n<h2>Translasi</h2>\r\n<p>Translasi menggeser objek di sepanjang garis lurus. Translasi ditentukan oleh vektor yang menunjukkan arah dan jarak perpindahan. </p>\r\n\r\n<h2>Rotasi</h2>\r\n<p>Rotasi memutar objek sekitar titik tetap, biasanya titik asal (0,0). Sudut rotasi dapat dihitung dalam derajat, dan arah rotasi bisa searah jarum jam atau berlawanan.</p>\r\n\r\n<h2>Refleksi</h2>\r\n<p>Refleksi menghasilkan bayangan objek yang simetris terhadap garis tertentu. Misalnya, refleksi terhadap sumbu x akan membalik semua titik objek pada sumbu y.\r\n</p>\r\n\r\n<h2>Dilatasi</h2>\r\n<p>Dilatasi memperbesar atau memperkecil objek dengan faktor skala tertentu. Faktor skala positif memperbesar objek, sedangkan faktor skala negatif memperkecil objek.\r\n</p>\r\n\r\n<h2>Penerapan Transformasi Geometri</h2>\r\n<p>Transformasi geometri digunakan dalam berbagai bidang seperti animasi komputer, desain grafis, dan arsitektur. Misalnya, dalam desain grafis, rotasi dan translasi sering digunakan untuk membuat efek visual yang dinamis.</p>\r\n\r\n<p><img src=\"./uploads/subject/transformasi_example.png\"></p>', NULL, './image/menjelaskan.mp4'),
(3, 'Matematika', 'Bab 3: Vektor', '<h2>Pengenalan Vektor</h2>\r\n<p>Vektor adalah besaran yang memiliki arah dan besar. Dalam matematika, vektor digunakan untuk merepresentasikan perpindahan, gaya, dan berbagai fenomena lain yang memerlukan informasi arah dan besar.</p>\r\n\r\n<h2>Notasi dan Representasi Vektor</h2>\r\n<p>Vektor biasanya dilambangkan dengan huruf kecil berwarna tebal, seperti <strong>v</strong> atau dengan tanda panah di atasnya, seperti <strong>&#8594;</strong>. Representasi vektor dapat dilakukan secara geometris dengan panah pada bidang kartesian atau secara aljabar dengan pasangan bilangan yang menunjukkan koordinatnya.</p>\r\n\r\n<h2>Operasi Pada Vektor</h2>\r\n<p>Vektor dapat mengalami berbagai operasi, antara lain:\r\n<ul>\r\n<li><strong>Penjumlahan Vektor:</strong> Menggabungkan dua vektor untuk menghasilkan vektor baru. Contoh: <strong>v</strong> + <strong>w</strong>.</li>\r\n<li><strong>Pengurangan Vektor:</strong> Mengurangkan satu vektor dari vektor lain. Contoh: <strong>v</strong> - <strong>w</strong>.</li>\r\n<li><strong>Perkalian Skalar:</strong> Mengalikan vektor dengan bilangan real, yang mengubah panjang vektor tetapi tidak mengubah arahnya. Contoh: <strong>k</strong> &#215; <strong>v</strong>, dengan <strong>k</strong> sebagai skalar.</li>\r\n</ul></p>\r\n\r\n<h2>Penjumlahan Vektor</h2>\r\n<p>Penjumlahan vektor dilakukan dengan cara menjumlahkan komponen-komponen yang bersesuaian. Misalnya, jika <strong>v</strong> = (2, 3) dan <strong>w</strong> = (1, 4), maka <strong>v</strong> + <strong>w</strong> = (2+1, 3+4) = (3, 7).</p>\r\n<p><img src=\"./uploads/subject/jumlah_vektor.jpg\"></p>\r\n\r\n<h2>Perkalian Skalar</h2>\r\n<p>Perkalian skalar mengubah panjang vektor tanpa mengubah arahnya. Misalnya, jika <strong>v</strong> = (2, 3) dan <strong>k</strong> = 2, maka <strong>k</strong> &#215; <strong>v</strong> = (2&#215;2, 3&#215;2) = (4, 6).</p>\r\n<p><img src=\"./uploads/subject/skalar_vektor.jpg\"></p>\r\n\r\n<h2>Produk Titik (Dot Product)</h2>\r\n<p>Produk titik adalah operasi perkalian antara dua vektor yang menghasilkan skalar. Jika <strong>v</strong> = (a, b) dan <strong>w</strong> = (c, d), maka <strong>v</strong> &#183; <strong>w</strong> = a&#183;c + b&#183;d. Produk titik digunakan untuk menghitung sudut antara dua vektor.</p>\r\n<p><img src=\"./uploads/subject/dot_product.png\"></p>\r\n\r\n<h2>Penerapan Vektor</h2>\r\n<p>Vektor digunakan dalam berbagai bidang seperti fisika, teknik, dan ilmu komputer. Misalnya, dalam fisika, vektor digunakan untuk merepresentasikan gaya dan perpindahan, sedangkan dalam ilmu komputer, vektor digunakan untuk operasi pada grafik 3D.</p>', NULL, './image/menjelaskan.mp4'),
(4, 'Matematika', 'Bab 4: Matriks dan Determinan', '<h2>Pengenalan Matriks</h2>\r\n<p>Matriks adalah susunan angka dalam baris dan kolom yang digunakan untuk mewakili sistem persamaan linear, transformasi linier, dan berbagai aplikasi lain dalam matematika dan ilmu lainnya.</p>\r\n<p>Matriks biasanya dinotasikan dengan huruf besar seperti <strong>A</strong>, dan elemen-elemen di dalamnya dinotasikan sebagai <strong>a<sub>ij</sub></strong>, dimana <strong>i</strong> menunjukkan baris dan <strong>j</strong> menunjukkan kolom.</p>\r\n\r\n<h2>Operasi Matriks</h2>\r\n<p>Operasi pada matriks meliputi:\r\n<ul>\r\n<li><strong>Penjumlahan Matriks:</strong> Menambahkan dua matriks dengan menjumlahkan elemen-elemen yang bersesuaian. Matriks-matriks yang ditambahkan harus memiliki ukuran yang sama.</li>\r\n<li><strong>Pengurangan Matriks:</strong> Mengurangkan satu matriks dari matriks lain dengan mengurangkan elemen-elemen yang bersesuaian.</li>\r\n<li><strong>Perkalian Matriks:</strong> Melibatkan perkalian elemen-elemen baris satu matriks dengan elemen-elemen kolom matriks lain. Matriks yang dikalikan harus memiliki ukuran yang sesuai.</li>\r\n</ul></p>\r\n\r\n<h2>Determinan Matriks</h2>\r\n<p>Determinan adalah nilai skalar yang dapat dihitung dari matriks persegi (matriks yang memiliki jumlah baris dan kolom yang sama). Determinan digunakan untuk menentukan apakah suatu matriks memiliki invers dan juga dalam berbagai aplikasi lain seperti teori persamaan linear.</p>\r\n\r\n<h2>Invers Matriks</h2>\r\n<p>Invers dari suatu matriks adalah matriks lain yang jika dikalikan dengan matriks awal akan menghasilkan matriks identitas. Hanya matriks persegi yang memiliki invers, dan hanya jika determinannya tidak nol.</p>\r\n<p><img src=\"./uploads/subject/invers_matrix.png\"></p>\r\n\r\n<h2>Transformasi Linear dengan Matriks</h2>\r\n<p>Matriks digunakan untuk merepresentasikan transformasi linear seperti rotasi, penskalaan, dan translasi dalam ruang dua atau tiga dimensi. Misalnya, dalam grafik komputer, transformasi linear digunakan untuk memindahkan dan merubah bentuk objek 3D.</p>\r\n<p><img src=\"./uploads/subject/transformasi_linear.png\"></p>\r\n\r\n<h2>Penerapan Matriks</h2>\r\n<p>Matriks memiliki penerapan luas dalam berbagai bidang seperti ekonomi, fisika, ilmu komputer, dan lainnya. Misalnya, dalam ilmu komputer, matriks digunakan untuk menyimpan dan memanipulasi gambar dan video, sementara dalam ekonomi, matriks digunakan untuk memodelkan dan memecahkan masalah optimisasi.</p>', NULL, './image/menjelaskan.mp4'),
(5, 'Matematika', 'Bab 5: Barisan dan Deret', '<h2>Pengenalan Barisan</h2>\r\n<p>Barisan adalah suatu susunan bilangan yang diatur menurut aturan tertentu. Setiap angka dalam barisan disebut sebagai suku, dan letak suku dalam barisan disebut sebagai indeks atau urutan.</p>\r\n<p>Contoh barisan aritmatika adalah <strong>2, 4, 6, 8, ...</strong>, dimana setiap suku bertambah dengan selisih tetap, yang dalam hal ini adalah 2.</p>\r\n\r\n<h2>Barisan Aritmatika</h2>\r\n<p>Barisan aritmatika adalah barisan di mana setiap suku berikutnya diperoleh dengan menambahkan suatu bilangan tetap pada suku sebelumnya. Bilangan tetap ini disebut beda (difference).</p>\r\n<p>Rumus suku ke-n dari barisan aritmatika: <br><strong>U<sub>n</sub> = U<sub>1</sub> + (n - 1)d</strong>,</p>\r\n<p>di mana <strong>U<sub>n</sub></strong> adalah suku ke-n, <strong>U<sub>1</sub></strong> adalah suku pertama, dan <strong>d</strong> adalah beda.</p>\r\n<p><img src=\"./uploads/subject/barisan_aritmatika.png\"></p>\r\n\r\n<h2>Deret Aritmatika</h2>\r\n<p>Deret aritmatika adalah jumlah dari suku-suku dalam barisan aritmatika. Jika <strong>S<sub>n</sub></strong> adalah jumlah n suku pertama dari barisan aritmatika, maka:</p>\r\n<p><strong>S<sub>n</sub> = n/2 (2U<sub>1</sub> + (n - 1)d)</strong></p>\r\n<p><img src=\"./uploads/subject/deret-aritmatika.png\"></p>\r\n\r\n<h2>Barisan Geometri</h2>\r\n<p>Barisan geometri adalah barisan di mana setiap suku diperoleh dengan mengalikan suku sebelumnya dengan suatu bilangan tetap yang disebut rasio.</p>\r\n<p>Rumus suku ke-n dari barisan geometri: <br><strong>U<sub>n</sub> = U<sub>1</sub> * r^(n-1)</strong>,</p>\r\n<p>di mana <strong>U<sub>n</sub></strong> adalah suku ke-n, <strong>U<sub>1</sub></strong> adalah suku pertama, dan <strong>r</strong> adalah rasio.</p>\r\n<p><img src=\"./uploads/subject/barisan_geometri.png\"></p>\r\n\r\n<h2>Deret Geometri</h2>\r\n<p>Deret geometri adalah jumlah dari suku-suku dalam barisan geometri. Jika <strong>S<sub>n</sub></strong> adalah jumlah n suku pertama dari barisan geometri, maka:</p>\r\n<p><strong>S<sub>n</sub> = U<sub>1</sub>(1 - r^n) / (1 - r)</strong>, jika <strong>r ≠ 1</strong></p>\r\n<p><img src=\"./uploads/subject/deret_geometri.png\"</p>\r\n\r\n<h2>Penerapan Barisan dan Deret</h2>\r\n<p>Barisan dan deret banyak diterapkan dalam berbagai bidang, termasuk keuangan (misalnya, menghitung bunga majemuk), fisika (misalnya, menghitung jarak tempuh dalam gerak yang dipercepat), dan ilmu komputer (misalnya, analisis algoritma rekursif).</p>', NULL, './image/menjelaskan.mp4'),
(7, 'Kimia', 'Bab 1 Pengenalan Ikatan Kimia', '<p>Ikatan kimia adalah interaksi yang memegang atom-atom bersama dalam molekul atau senyawa. Ikatan ini sangat penting karena menentukan struktur dan sifat dari zat yang terbentuk. Pada bab ini, kita akan membahas jenis-jenis ikatan kimia dan bagaimana mereka mempengaruhi sifat fisik dan kimia dari senyawa.</p>\r\n\r\n<h2>Jenis-Jenis Ikatan Kimia</h2>\r\n<p>Terdapat tiga jenis utama ikatan kimia:</p>\r\n<ul>\r\n    <li><strong>Ikatan Ionik</strong>: Terjadi ketika elektron dipindahkan dari satu atom ke atom lain, menghasilkan ion dengan muatan berlawanan yang saling tarik menarik.</li>\r\n    <li><strong>Ikatan Kovalen</strong>: Terjadi ketika dua atom berbagi satu atau lebih pasangan elektron, membentuk molekul.</li>\r\n    <li><strong>Ikatan Logam</strong>: Terjadi antara atom logam, di mana elektron bebas bergerak di antara ion positif, menghasilkan konduktivitas listrik dan sifat logam lainnya.</li>\r\n</ul>\r\n<img src=\"./uploads/subject/ikatan_kimia.png\" alt=\"Jenis-Jenis Ikatan Kimia\">\r\n\r\n<h2>Teori Ikatan Kimia</h2>\r\n<p>Berbagai teori telah dikembangkan untuk menjelaskan ikatan kimia, termasuk Teori Valensi Elektron (VSEPR) yang memprediksi bentuk molekul, dan Teori Ikatan Valensi yang menjelaskan pembentukan ikatan kovalen. Teori Hibridisasi juga penting untuk memahami geometri molekul tertentu.</p>\r\n\r\n<h2>Polaritas Molekul</h2>\r\n<p>Polaritas molekul tergantung pada distribusi elektron dan geometri molekul. Molekul dengan distribusi elektron yang tidak merata cenderung bersifat polar, yang berarti mereka memiliki ujung dengan muatan positif dan negatif yang berbeda. Polaritas ini mempengaruhi sifat-sifat seperti titik didih, titik leleh, dan kelarutan.</p>\r\n<img src=\"./uploads/subject/polaritas_molekul.png\" alt=\"Polaritas Molekul\">\r\n\r\n<h2>Interaksi Antar Molekul</h2>\r\n<p>Selain ikatan kimia antar atom, interaksi antar molekul juga sangat penting. Interaksi ini meliputi gaya Van der Waals, gaya dipol-dipol, dan ikatan hidrogen. Interaksi antar molekul ini berperan dalam menentukan sifat fisik zat, seperti kekuatan tarik, kelarutan, dan titik didih.</p>\r\n<img src=\"./uploads/subject/interaksi_antar_molekul.png\" alt=\"Interaksi Antar Molekul\">\', \'\', \'./uploads/subject/molecule_interaction.jpg\');', NULL, './image/menjelaskan.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `materials2`
--

CREATE TABLE `materials2` (
  `material_id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bab` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `parent_bab_id` int(11) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials2`
--

INSERT INTO `materials2` (`material_id`, `subject`, `bab`, `content`, `parent_bab_id`, `video_path`) VALUES
(1, 'Matematika', 'Bab 1: Kalkulus Diferensial', '<p>Kalkulus Diferensial adalah salah satu cabang utama dari kalkulus yang berfokus pada konsep turunan fungsi. Turunan menggambarkan laju perubahan fungsi terhadap variabelnya.</p>\r\n<p>Pembahasan ini akan melibatkan konsep-konsep seperti:</p>\r\n<ul>\r\n    <li><strong>Limit:</strong> Limit digunakan untuk mendefinisikan turunan secara formal. Limit menghitung nilai fungsi saat mendekati suatu titik tertentu.</li>\r\n    <li><strong>Turunan:</strong> Turunan adalah hasil dari limit ketika perubahan dalam variabel independen mendekati nol. Ini sering digunakan untuk menemukan kemiringan garis singgung pada kurva.</li>\r\n    <li><strong>Aturan Turunan:</strong> Aturan seperti aturan rantai, aturan hasil kali, dan aturan bagi digunakan untuk menghitung turunan dari berbagai jenis fungsi.</li>\r\n</ul>\r\n<p>Secara umum, Kalkulus Diferensial memiliki banyak aplikasi dalam fisika, ekonomi, dan berbagai disiplin ilmu lainnya.</p>\r\n<p>Contoh aplikasi dari Kalkulus Diferensial adalah untuk menemukan kecepatan atau percepatan dalam gerak, dan dalam menentukan titik maksimum atau minimum dalam fungsi.</p>\r\n<img src=\"./uploads/subject/kalkulus_diferensial.jpg\" alt=\"Kalkulus Diferensial\">\r\n\', \'\');', NULL, './image/menjelaskan.mp4'),
(2, 'Matematika', 'Bab 2: Integral', '<p>Integral adalah salah satu konsep utama dalam kalkulus, selain turunan. Integral menghitung luas di bawah kurva suatu fungsi, serta memiliki aplikasi yang luas dalam berbagai bidang ilmu seperti fisika, teknik, dan ekonomi. Integral dapat dibagi menjadi dua jenis utama, yaitu integral tak tentu dan integral tentu.</p>\r\n<h3>Integral Tak Tentu</h3>\r\n<p>Integral tak tentu adalah integral yang tidak memiliki batas tertentu. Hasil dari integral tak tentu adalah sebuah fungsi asli dari turunan, ditambah dengan konstanta pengintegralan yang sering disebut sebagai C. Rumus dasar untuk integral tak tentu adalah:</p>\r\n<p>∫ f(x) dx = F(x) + C</p>\r\n<p>di mana F(x) adalah fungsi asli dari f(x), dan C adalah konstanta pengintegralan.</p>\r\n<p>Contoh:</p>\r\n<p>∫ 2x dx = x^2 + C</p>\r\n<h3>Integral Tentu</h3>\r\n<p>Integral tentu, di sisi lain, memiliki batas atas dan batas bawah. Hasil dari integral tentu adalah sebuah nilai numerik yang mewakili luas di bawah kurva fungsi dalam interval tertentu. Rumus untuk integral tentu adalah:</p>\r\n<p>∫[a,b] f(x) dx = F(b) - F(a)</p>\r\n<p>di mana F(x) adalah fungsi asli dari f(x), dan [a,b] adalah interval integrasi.</p>\r\n<p>Contoh:</p>\r\n<p>∫[1,3] 2x dx = [x^2] dari 1 ke 3 = 9 - 1 = 8</p>\r\n<h3>Aturan Dasar dalam Pengintegralan</h3>\r\n<p>Terdapat beberapa aturan penting yang harus dikuasai dalam melakukan integral, di antaranya adalah:</p>\r\n<ul>\r\n    <li><strong>Aturan Substitusi:</strong> Teknik ini digunakan ketika fungsi yang diintegralkan dapat disederhanakan dengan mengganti variabel tertentu. Substitusi biasanya melibatkan pengenalan variabel baru yang lebih sederhana.</li>\r\n    <li><strong>Aturan Parsial:</strong> Digunakan untuk mengintegrasikan hasil kali dua fungsi yang lebih kompleks. Metode ini melibatkan turunan dari satu fungsi dan integral dari fungsi lainnya.</li>\r\n    <li><strong>Aturan Integral Parsial:</strong> Ini adalah metode yang berguna ketika mengintegrasikan produk dari dua fungsi, dan sering kali diterapkan ketika aturan integrasi biasa tidak cukup.</li>\r\n</ul>\r\n<h3>Aplikasi Integral</h3>\r\n<p>Integral memiliki aplikasi yang sangat luas dalam kehidupan nyata. Beberapa contoh aplikasi integral antara lain:</p>\r\n<ul>\r\n    <li><strong>Penghitungan Luas:</strong> Integral digunakan untuk menghitung luas di bawah kurva, yang sangat berguna dalam geometri dan perhitungan area.</li>\r\n    <li><strong>Volume:</strong> Dengan menggunakan integral, kita dapat menghitung volume benda padat dengan memutar suatu daerah di sekitar sumbu tertentu.</li>\r\n    <li><strong>Massa dan Pusat Massa:</strong> Dalam fisika, integral digunakan untuk menghitung massa suatu benda jika kita mengetahui densitasnya, serta untuk menentukan pusat massa dari suatu objek.</li>\r\n    <li><strong>Energi:</strong> Integral juga digunakan untuk menghitung kerja dan energi dalam berbagai sistem fisika.</li>\r\n</ul>\r\n<p>Integral tidak hanya terbatas pada contoh-contoh di atas, tetapi juga meluas ke berbagai bidang lainnya seperti ekonomi untuk menghitung keuntungan atau biaya total, serta dalam teknik untuk memodelkan berbagai fenomena alam.</p>\r\n<img src=\"./uploads/subject/integral-calculus-formulas.png\" alt=\"Integral\">\r\n\', \'\');', NULL, './image/menjelaskan.mp4'),
(3, 'Matematika', 'Bab 3: Persamaan Diferensial', '<h2>Bab 3: Persamaan Diferensial</h2>\r\n<p>Persamaan diferensial adalah persamaan yang melibatkan fungsi dan turunan dari fungsi tersebut. Persamaan ini memainkan peran penting dalam berbagai bidang ilmu pengetahuan seperti fisika, teknik, biologi, dan ekonomi karena mampu memodelkan perubahan yang terjadi dalam sistem dinamis.</p>\r\n\r\n<h3>Jenis-Jenis Persamaan Diferensial</h3>\r\n<p>Persamaan diferensial dapat dibedakan menjadi beberapa jenis berdasarkan sifat-sifatnya, seperti:</p>\r\n<ul>\r\n    <li><strong>Persamaan Diferensial Biasa (PDB):</strong> Persamaan diferensial yang hanya melibatkan turunan satu variabel bebas.</li>\r\n    <li><strong>Persamaan Diferensial Parsial (PDP):</strong> Persamaan yang melibatkan turunan parsial dari beberapa variabel bebas.</li>\r\n    <li><strong>Persamaan Diferensial Orde Satu:</strong> Persamaan yang hanya melibatkan turunan pertama dari fungsi.</li>\r\n    <li><strong>Persamaan Diferensial Orde Tinggi:</strong> Persamaan yang melibatkan turunan kedua atau lebih tinggi dari fungsi.</li>\r\n</ul>\r\n\r\n<h3>Solusi Persamaan Diferensial</h3>\r\n<p>Menyelesaikan persamaan diferensial berarti menemukan fungsi yang memenuhi persamaan tersebut. Ada dua jenis solusi utama:</p>\r\n<ul>\r\n    <li><strong>Solusi Umum:</strong> Solusi yang mencakup semua kemungkinan solusi dari persamaan diferensial, biasanya dinyatakan dengan adanya konstanta integrasi.</li>\r\n    <li><strong>Solusi Khusus:</strong> Solusi yang didapat dengan menetapkan kondisi awal tertentu pada solusi umum.</li>\r\n</ul>\r\n\r\n<h3>Metode Penyelesaian Persamaan Diferensial</h3>\r\n<p>Berbagai metode dapat digunakan untuk menyelesaikan persamaan diferensial, tergantung pada jenis dan kompleksitas persamaan. Beberapa metode umum meliputi:</p>\r\n<ul>\r\n    <li><strong>Metode Pemisahan Variabel:</strong> Teknik ini digunakan ketika persamaan dapat dipisahkan menjadi dua bagian, masing-masing bergantung pada satu variabel bebas.</li>\r\n    <li><strong>Metode Integrating Factor:</strong> Digunakan untuk menyelesaikan persamaan diferensial linier orde satu yang tidak homogen.</li>\r\n    <li><strong>Metode Substitusi:</strong> Substitusi variabel tertentu dapat menyederhanakan persamaan diferensial yang kompleks.</li>\r\n    <li><strong>Metode Numerik:</strong> Dalam beberapa kasus, persamaan diferensial tidak dapat diselesaikan secara analitik dan memerlukan pendekatan numerik seperti metode Euler atau metode Runge-Kutta.</li>\r\n</ul>\r\n\r\n<h3>Aplikasi Persamaan Diferensial</h3>\r\n<p>Persamaan diferensial memiliki aplikasi yang luas dalam dunia nyata. Beberapa contohnya termasuk:</p>\r\n<ul>\r\n    <li><strong>Pemodelan Populasi:</strong> Persamaan diferensial digunakan untuk memodelkan pertumbuhan populasi dalam biologi, seperti model pertumbuhan eksponensial dan model logistik.</li>\r\n    <li><strong>Gerak Harmonis Sederhana:</strong> Dalam fisika, persamaan diferensial digunakan untuk memodelkan gerak osilasi seperti gerak bandul atau pegas.</li>\r\n    <li><strong>Transfer Panas:</strong> Persamaan diferensial parsial digunakan dalam teknik untuk memodelkan distribusi suhu dalam suatu benda.</li>\r\n    <li><strong>Ekonomi:</strong> Dalam ekonomi, persamaan diferensial digunakan untuk memodelkan perubahan dalam ekonomi, seperti model pertumbuhan ekonomi atau perubahan harga dalam pasar saham.</li>\r\n</ul>\r\n\r\n<p>Dengan memahami dan menyelesaikan persamaan diferensial, kita dapat memprediksi dan menganalisis perubahan dalam berbagai sistem dinamis, menjadikannya alat yang sangat penting dalam ilmu pengetahuan dan teknik.</p>\r\n<img src=\"./uploads/subject/persamaan_diferensial.jpg\" alt=\"Persamaan Diferensial\">\r\n\', \'\');', NULL, './image/menjelaskan.mp4'),
(4, 'Matematika', 'Bab 4: Integral Lipat', '<p>Integral lipat adalah salah satu konsep dalam kalkulus yang memungkinkan kita untuk menghitung volume, luas, dan massa pada bidang yang lebih kompleks. Integral lipat melibatkan integrasi ganda atau integrasi tiga kali (triple integrals), yang digunakan untuk menghitung besaran-besaran dalam ruang dua atau tiga dimensi.</p>\r\n\r\n<h3>Integral Lipat Dua</h3>\r\n<p>Integral lipat dua (double integrals) digunakan untuk menghitung volume di bawah permukaan dalam ruang dua dimensi. Rumus umum untuk integral lipat dua dalam koordinat kartesius adalah:</p>\r\n<p><img src=\"./uploads/subject/integral_lipat_dua.png\"></p>\r\n<p>Dalam bentuk ini, kita mengintegrasikan fungsi f(x, y) terlebih dahulu terhadap x, kemudian terhadap y, atau sebaliknya, tergantung pada batas-batas integrasi yang diberikan.</p>\r\n\r\n<h3>Integral Lipat Tiga</h3>\r\n<p>Integral lipat tiga (triple integrals) memperluas konsep integral lipat dua ke dalam ruang tiga dimensi. Triple integrals digunakan untuk menghitung volume dalam ruang tiga dimensi, serta untuk menentukan massa dari suatu benda dengan distribusi massa yang bervariasi. Rumus umum untuk integral lipat tiga dalam koordinat kartesius adalah:</p>\r\n<p><img src=\"./uploads/subject/integral_lipat_tiga.png\"></p>\r\n<p>Dalam integral lipat tiga, kita mengintegrasikan fungsi f(x, y, z) terlebih dahulu terhadap x, kemudian y, dan akhirnya z, atau dengan urutan lain, sesuai dengan batas-batas yang diberikan.</p>\r\n\r\n<h3>Koordinat Polar dan Sferis</h3>\r\n<p>Untuk menghitung integral lipat pada daerah yang lebih kompleks, kita sering menggunakan koordinat polar (untuk integral lipat dua) dan koordinat sferis (untuk integral lipat tiga). Koordinat-koordinat ini mempermudah perhitungan dengan mengubah bentuk batas-batas integrasi menjadi lebih sederhana.</p>\r\n<ul>\r\n    <li><strong>Koordinat Polar:</strong> Digunakan dalam integral lipat dua, terutama ketika daerah integrasi berbentuk lingkaran atau melingkar. Dalam koordinat polar, x dan y diubah menjadi r dan θ.</li>\r\n    <li><strong>Koordinat Sferis:</strong> Digunakan dalam integral lipat tiga untuk daerah yang berbentuk bola atau sferis. Dalam koordinat sferis, x, y, dan z diubah menjadi ρ (radius), θ (sudut azimut), dan φ (sudut elevasi).</li>\r\n</ul>\r\n\r\n<h3>Aplikasi Integral Lipat</h3>\r\n<p>Integral lipat memiliki berbagai aplikasi praktis, antara lain:</p>\r\n<ul>\r\n    <li><strong>Penghitungan Volume:</strong> Integral lipat digunakan untuk menghitung volume benda dengan bentuk yang tidak beraturan dalam bidang dua atau tiga dimensi.</li>\r\n    <li><strong>Penghitungan Massa:</strong> Dalam fisika, integral lipat digunakan untuk menghitung massa dari benda yang memiliki distribusi massa tidak uniform.</li>\r\n    <li><strong>Penghitungan Luas Permukaan:</strong> Integral lipat dua dapat digunakan untuk menghitung luas permukaan di bawah atau di atas kurva tertentu.</li>\r\n    <li><strong>Analisis Probabilitas:</strong> Integral lipat sering digunakan dalam statistika dan probabilitas untuk menghitung distribusi peluang pada bidang dua dimensi atau tiga dimensi.</li>\r\n</ul>\r\n\r\n<p>Dengan memahami konsep integral lipat, kita dapat memecahkan berbagai masalah kompleks yang melibatkan volume, massa, dan luas dalam ruang dua atau tiga dimensi, menjadikannya alat yang sangat penting dalam matematika dan ilmu terapan.</p>\r\n<img src=\"./uploads/subject/>\r\n\', \'\');', NULL, './image/menjelaskan.mp4'),
(5, 'Matematika', 'Bab 5: Deret Fourier dan Transformasi Fourier', '<p>Deret Fourier dan transformasi Fourier adalah alat matematika yang sangat penting dalam analisis sinyal dan fungsi periodik. Konsep ini memungkinkan kita untuk mengekspresikan fungsi periodik sebagai penjumlahan (atau integral) dari fungsi sinusoidal sederhana.</p>\r\n\r\n<h3>Deret Fourier</h3>\r\n<p>Deret Fourier adalah representasi dari suatu fungsi periodik sebagai jumlah tak hingga dari sinus dan kosinus. Dengan menggunakan deret Fourier, kita dapat mendekati fungsi kompleks dengan kombinasi fungsi sinus dan kosinus yang lebih sederhana.</p>\r\n<p><img src=\"./uploads/subject/deret_fourier.png\" alt=\"Rumus Deret Fourier\"></p>\r\n<p>Secara umum, deret Fourier untuk suatu fungsi periodik f(x) dengan periode T didefinisikan sebagai:</p>\r\n<ul>\r\n    <li><strong>a<sub>0</sub>/2:</strong> Komponen DC atau rata-rata nilai fungsi.</li>\r\n    <li><strong>a<sub>n</sub>:</strong> Koefisien kosinus untuk komponen frekuensi n.</li>\r\n    <li><strong>b<sub>n</sub>:</strong> Koefisien sinus untuk komponen frekuensi n.</li>\r\n</ul>\r\n\r\n<h3>Transformasi Fourier</h3>\r\n<p>Transformasi Fourier adalah alat yang lebih umum daripada deret Fourier, digunakan untuk menganalisis fungsi non-periodik atau sinyal yang tidak terbatas pada interval tertentu. Transformasi ini mengubah fungsi waktu ke dalam fungsi frekuensi, memungkinkan analisis frekuensi dari sinyal yang diberikan.</p>\r\n<p><img src=\"./uploads/subject/transformasi_fourier.png\" alt=\"Rumus Transformasi Fourier\"></p>\r\n<p>Transformasi Fourier dari fungsi f(t) diberikan oleh integral berikut:</p>\r\n<p>Dalam aplikasi praktis, transformasi Fourier digunakan untuk menganalisis spektrum frekuensi dari sinyal, memisahkan komponen frekuensi yang berbeda, dan memahami bagaimana sinyal berperilaku dalam domain frekuensi.</p>\r\n\r\n<h3>Aplikasi Deret dan Transformasi Fourier</h3>\r\n<p>Deret Fourier dan transformasi Fourier memiliki banyak aplikasi dalam berbagai bidang ilmu, termasuk:</p>\r\n<ul>\r\n    <li><strong>Analisis Sinyal:</strong> Dalam teknik elektro, Fourier digunakan untuk menganalisis sinyal listrik dan memproses komunikasi digital.</li>\r\n    <li><strong>Gambar dan Suara:</strong> Fourier digunakan dalam kompresi dan pemrosesan gambar serta dalam pemrosesan suara untuk musik dan teknologi suara lainnya.</li>\r\n    <li><strong>Fisik dan Mekanik:</strong> Fourier digunakan dalam analisis getaran, mekanika struktur, dan dinamika fluida.</li>\r\n    <li><strong>Pemrosesan Data:</strong> Dalam pemrosesan data dan analisis big data, Fourier membantu dalam pemfilteran dan pengenalan pola.</li>\r\n</ul>\r\n\r\n<p>Dengan memahami deret dan transformasi Fourier, kita dapat memecahkan berbagai masalah kompleks yang melibatkan analisis sinyal dan fungsi periodik, menjadikannya alat yang penting dalam matematika, fisika, dan teknik.</p>\r\n<img src=\"./uploads/subject/fourier_aplication.jpg\">\r\n\', \'\');', NULL, './image/menjelaskan.mp4'),
(6, 'Kimia', 'Bab 1 Pengenalan Termokimia ', '<p>Termokimia adalah cabang kimia yang mempelajari perubahan energi, khususnya panas, yang terjadi selama reaksi kimia. Pada bab ini, kita akan mempelajari konsep dasar termokimia, termasuk hukum-hukum termodinamika, dan bagaimana energi berpindah dalam reaksi kimia.</p>\r\n\r\n<h2>Hukum Pertama Termodinamika</h2>\r\n<p>Hukum pertama termodinamika, juga dikenal sebagai hukum kekekalan energi, menyatakan bahwa energi tidak dapat diciptakan atau dimusnahkan, tetapi hanya dapat diubah dari satu bentuk ke bentuk lain. Dalam konteks reaksi kimia, ini berarti bahwa energi total sistem dan lingkungannya tetap konstan.</p>\r\n\r\n<h2>Entalpi dan Perubahan Entalpi</h2>\r\n<p>Entalpi (H) adalah ukuran total energi dalam suatu sistem, termasuk energi dalam dan energi karena tekanan dan volume. Perubahan entalpi (&Delta;H) terjadi selama reaksi kimia, dan dapat diukur melalui kalor yang dilepaskan atau diserap. Reaksi eksoterm menghasilkan panas (−&Delta;H), sementara reaksi endoterm menyerap panas (+&Delta;H).</p>\r\n<img src=\"./uploads/subject/entalpi.png\" alt=\"Diagram Perubahan Entalpi\">\r\n\r\n<h2>Hukum Hess</h2>\r\n<p>Hukum Hess menyatakan bahwa perubahan entalpi total suatu reaksi kimia adalah jumlah dari perubahan entalpi reaksi-reaksi individu yang membentuk reaksi total. Ini berarti bahwa entalpi adalah fungsi keadaan, hanya bergantung pada kondisi awal dan akhir, bukan pada jalur yang ditempuh.</p>\r\n<img src=\"./uploads/subject/hukum_hess.png\" alt=\"Diagram Hukum Hess\">\r\n\r\n<h2>Energi Aktivasi dan Diagram Reaksi</h2>\r\n<p>Energi aktivasi adalah energi minimum yang diperlukan untuk memulai reaksi kimia. Diagram energi reaksi menggambarkan perubahan energi sepanjang jalur reaksi, menunjukkan energi aktivasi dan perbedaan energi antara reaktan dan produk.</p>\r\n<img src=\"./uploads/subject/energi_aktivasi.png\" alt=\"Diagram Energi Aktivasi\">\r\n\r\n<h2>Aplikasi Termokimia</h2>\r\n<p>Termokimia memiliki banyak aplikasi praktis, seperti dalam industri kimia untuk merancang reaktor yang efisien, dalam teknik bahan bakar untuk mengoptimalkan pembakaran, dan dalam pemahaman proses biokimia di tubuh makhluk hidup.</p>', NULL, './image/menjelaskan.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `profile_stickers`
--

CREATE TABLE `profile_stickers` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `sticker_path` varchar(255) NOT NULL,
  `pos_x` int(11) NOT NULL,
  `pos_y` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `z_index` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile_stickers`
--

INSERT INTO `profile_stickers` (`id`, `student_id`, `sticker_path`, `pos_x`, `pos_y`, `width`, `height`, `z_index`) VALUES
(102, 321, 'uploads/stickers/fototest.png', 570, 1925, 70, 100, 1),
(104, 321, 'uploads/stickers/pengumuman.png', 497, 1848, 200, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `student_id` int(11) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `title`, `description`, `due_date`, `created_at`, `updated_at`, `student_id`, `link`) VALUES
(1, 'asd', 'asd', '2024-08-15', '2024-08-12 20:22:30', '2024-08-13 20:34:37', 321, 'https://www.youtube.com/@penyu1913');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `class` varchar(50) DEFAULT NULL,
  `birth_place` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `religion` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `role` varchar(9) NOT NULL DEFAULT 'Murid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`student_id`, `name`, `nickname`, `email`, `class`, `birth_place`, `birth_date`, `gender`, `religion`, `address`, `phone`, `password`, `photo_path`, `role`) VALUES
(123, 'fare', 'fare', 'alexmcgowen54@gmail.com', '10', 'cirebon', '2024-08-16', 'Male', 'islam', 'asda', '08158585823', '$2y$10$/5sBzk7Izh8olM4hWrOkWua8kbBa4E3jsBqvGLdPp71UEHgvcBftq', './image/photo-placeholder.png', 'Murid'),
(321, 'dsa', 'dsa', 'mohamadrakha90@gmail.com', '12', 'cirebon', '2024-08-13', 'Male', 'islam', 'asdasqwd', '08158585858', '$2y$10$ktFPnsW7k.bEHDWjJoMuCuSJWdisV88.qgPct5KUHu6C2tnj8tC2i', 'uploads/profile_photos/images.jpg', 'Murid'),
(123456, 'faris', 'bangindang', 'asd@ggaming.com', '11', 'cirebon', '2014-06-24', 'Male', 'islam', 'asdasd', '1231312', '$2y$10$XtCR0WGN00HxZBy6hiRo8upg8pQ66DPFQ1Lyf9x0EPMuJq8qIG1Vu', NULL, 'Murid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `materials1`
--
ALTER TABLE `materials1`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `materials2`
--
ALTER TABLE `materials2`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `profile_stickers`
--
ALTER TABLE `profile_stickers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `student` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `materials1`
--
ALTER TABLE `materials1`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `materials2`
--
ALTER TABLE `materials2`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile_stickers`
--
ALTER TABLE `profile_stickers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`student_id`);

--
-- Constraints for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD CONSTRAINT `forum_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `forum_posts` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `forum_posts_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`student_id`);

--
-- Constraints for table `profile_stickers`
--
ALTER TABLE `profile_stickers`
  ADD CONSTRAINT `profile_stickers_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `student` FOREIGN KEY (`student_id`) REFERENCES `users` (`student_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
