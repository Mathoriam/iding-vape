-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03 Okt 2020 pada 18.40
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Apple Iphone 6', 'banner1.png', 'index.php?page=detail&barang_id=5', 'on'),
(2, 'Samsung A3 A300H', 'banner2.png', 'index.php?page=detail&barang_id=6', 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `barang_id` int(10) NOT NULL,
  `kategori_id` int(10) NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 1, 'Galaxy Note 3', 'Layar 5.7\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-note-3.png', 7800000, 9, 'on'),
(2, 1, 'lenovo A7000 Dual SIM', 'Layar 5.5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'Lenovo-A7000.png', 2200000, 10, 'on'),
(3, 1, 'Mi 4i', 'Layar 5\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\r\n</p>', 'mi-4i.png', 2800000, 1, 'on'),
(4, 1, 'Samsung Grand Prime', 'Layar 5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-grand-prime.png', 2250000, 10, 'on'),
(5, 1, 'Apple iPhone 6', '<p>Layar 4,7&quot;, 128GB Memori</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p><p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.</p>', 'iphone-6-silver.png', 12700000, 2, 'on'),
(6, 1, 'Samsung A3 A300H', 'Layar 4.5\", 16GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'Samsung Galaxy-A3.png', 2900000, 5, 'on'),
(7, 1, 'Samsung Galaxy A8', 'Layar 5.7\", 32GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'samsung-galaxy-A8.png', 6134000, 5, 'on'),
(8, 1, 'Asus Zenfone C ZC451CG', 'Layar 4.5\", 8GB Memori <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'asus-zenfone.png', 1325000, 3, 'on'),
(9, 3, 'Nikon D5200 Lensa Kit 18-55mm', 'Layar 3\", 24.1 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'nikon-d5200.png', 6000000, 10, 'on'),
(10, 3, 'Nikon D3200 Lensa Kit VR II 18-55mm', 'Layar 3\", 24.1 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'nikon-d3200.png', 4800000, 4, 'on'),
(11, 3, 'Canon Eos 750D Kit 18-55mm IS STM', 'Layar 3\", 24 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'canon-eos-750d.png', 10100000, 2, 'on'),
(12, 3, 'Canon EOS 700D 18.0 MP 18-55mm IS STM', 'Layar 3\", 18 MP <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'canon-eos-700d.png', 7250000, 9, 'on'),
(13, 2, 'LG 32\" LED TV - 32LF550A', 'Layar 32\", Triple XD Engine <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'lg-32-led-tv-32LF550A.png', 2700000, 7, 'on'),
(14, 2, 'LG LED TV 32\" - 32LF520A', 'Layar 32\" <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'lg-led-tv32-32LF520A.png', 2750000, 3, 'on'),
(15, 2, 'Sharp 32\" LED LC-32LE265i', 'Layar 32\" <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis aliquam sagittis. Aliquam tristique neque elit, at ullamcorper ante sollicitudin quis. Fusce dictum sollicitudin aliquam. Aenean ut mi pretium, porta leo eget, consectetur nulla. Cras ut turpis ullamcorper, pharetra mi interdum, varius velit. Donec sagittis urna et dolor fringilla, fringilla hendrerit sapien vulputate. Nulla vel commodo leo. Ut sit amet eleifend nisl, vitae dictum tortor. Praesent ac vestibulum erat. Sed nec ligula vitae dui ornare vulputate. Vestibulum ante sem, elementum nec vestibulum in, pretium vitae arcu. Aenean ultricies commodo bibendum. Proin tempus, erat eget euismod luctus, lorem sapien laoreet ipsum, ut scelerisque ante mi non erat. Integer efficitur semper massa.</p>\n\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce eget feugiat felis. Donec aliquam odio arcu, ac sollicitudin nisi volutpat vitae. Nulla facilisi. Nam ex leo, molestie nec augue id, rutrum cursus enim. Nullam tempus iaculis velit. Praesent feugiat velit faucibus magna tristique sollicitudin. Mauris eu lectus velit. Phasellus sagittis diam velit, a hendrerit risus euismod at. Nullam at dignissim massa, vitae facilisis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In gravida sagittis hendrerit. Cras id arcu ornare sem feugiat malesuada quis auctor orci. Curabitur euismod finibus sagittis.\n</p>', 'sharp-32-led-32LE265i.png', 2750000, 10, 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(10) NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Smartphone', 'on'),
(2, 'Televisi', 'on'),
(3, 'Kamera', 'on'),
(4, 'Radio', 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int(10) NOT NULL,
  `pesanan_id` int(10) NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(8, 8, '06546854654654', 'ilham', '2020-01-30'),
(9, 9, '12231', 'ilham', '2020-01-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `kota_id` int(10) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int(10) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Jakarta', 6000, 'on'),
(2, 'Bandung', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Semarang', 9000, 'on');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int(10) NOT NULL,
  `kota_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(8, 1, 102, 'ilham', '086645455', 'Aceh', '2020-02-02 04:58:20', 2),
(9, 1, 102, 'Ilham Syahputra', '082213022489', 'jakarta', '2020-02-05 10:17:51', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int(10) NOT NULL,
  `barang_id` int(10) NOT NULL,
  `quantity` tinyint(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(8, 6, 1, 2900000),
(9, 13, 1, 2700000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(102, 'customer', 'Ilham', 'ilham@gmail.com', 'Aceh', '0823465462', 'ilham', 'on'),
(103, 'superadmin', 'Mathori Abdul Majid', 'mathoriam@gmail.com', 'Tigaraksa', '082213022489', 'asdasegaf', 'on'),
(104, 'superadmin', 'Mathori Abdul Majid', 'mathoriam@gmail.com', 'Tigaraksa', '082213022489', 'asdasegaf', 'on'),
(105, 'customer', 'Mathori Abdul Majid', 'asd@gmail.com', 'tag', '082213022489', 'asdasegaf', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
