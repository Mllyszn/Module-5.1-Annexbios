-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 sep 2024 om 15:46
-- Serverversie: 10.4.28-MariaDB
-- PHP-versie: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `annexbios_woerden_db`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL,
  `duration` time NOT NULL,
  `release_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `age_restriction` int(11) NOT NULL,
  `banner_path` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `actors` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `films`
--

INSERT INTO `films` (`id`, `title`, `description`, `rating`, `duration`, `release_date`, `age_restriction`, `banner_path`, `price`, `actors`) VALUES
(1, 'INTERSTELLAR (10TH ANNIVERSARY)', 'Onze tijd op aarde lijkt voorbij, dus begint een groep ontdekkingsreizigers aan de belangrijkste missie uit de geschiedenis van de mens. Ze gaan op zoek naar een plek in de ruimte waar de mensheid kan voortbestaan.', 4, '02:44:00', '2020-06-03 22:00:00', 12, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/fkm123kvkm6210fkl204c.jpg', 12, 'empty'),
(2, 'Fight Club', 'Een depressieve man die lijdt aan slapeloosheid, raakt verwikkeld in een ondergrondse vechtclub onder leiding van de charismatische Tyler Durden, wat leidt tot chaos en zelfdestructie.', 5, '02:19:00', '1999-10-14 22:00:00', 18, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/vkm214mksv0a9m32.jpg', 12, 'empty'),
(3, 'Jurassic World: Fallen Kingdom', 'When the islands dormant volcano begins roaring to life, Owen and Claire mount a campaign to rescue the remaining dinosaurs from this extinction-level event.', 4, '02:08:00', '2018-06-05 22:00:00', 12, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/vki14v901mvk.jpeg', 15, 'empty'),
(4, 'Pieter Konijn', 'Peter Rabbits feud with Mr. McGregor escalates to greater heights as both compete for the affections of the kind animal lover next door.', 4, '01:35:00', '2018-03-20 23:00:00', 6, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/vkltop34123km12f9lf.jpeg', 8, 'empty'),
(5, 'Deadpool 2', 'After surviving a near-fatal bovine attack, Wade Wilson struggles to fulfill his dream of becoming Mayberrys hottest bartender while also learning to cope with losing his sense of taste.', 4, '02:00:00', '2018-05-16 22:00:00', 16, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/caslk4012v813jkv09.jpg', 14, 'empty'),
(6, 'Inception', 'Een dief die dromen kan binnen dringen en ideeën steelt, wordt ingehuurd voor een onmogelijke taak: in plaats van iets te stelen, moet hij een idee inplanten.', 5, '02:28:00', '2010-07-15 22:00:00', 13, 'https://annexbios-server.onrender.com/img/k124e9ck123kmck/iv51nf91md01k49vk1l.jpg', 15, 'empty');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
