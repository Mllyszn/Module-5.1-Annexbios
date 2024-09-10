-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 10 sep 2024 om 12:41
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

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
CREATE DATABASE IF NOT EXISTS `annexbios_woerden_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `annexbios_woerden_db`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL,
  `film_lengte` time NOT NULL,
  `leeftijdslimiet` int(11) NOT NULL,
  `release_datum` datetime NOT NULL,
  `film_banners` varchar(255) NOT NULL,
  `film_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `cbr_db`
--
CREATE DATABASE IF NOT EXISTS `cbr_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cbr_db`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `answers`
--

CREATE TABLE `answers` (
  `id` int(11) UNSIGNED NOT NULL,
  `Q_id` int(11) UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `true_false` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `answers`
--

INSERT INTO `answers` (`id`, `Q_id`, `answer`, `true_false`) VALUES
(1, 4, 'People with auditory impairments', 0),
(2, 4, 'Blind people', 0),
(3, 4, 'People have trouble walking', 0),
(4, 5, 'no', 0),
(5, 6, 'yes', 0),
(9, 6, 'Maximum speed', 0),
(10, 6, 'Minimum speed', 0),
(11, 6, 'Adversary speed', 0),
(12, 7, 'no', 0),
(13, 7, 'yes', 0),
(14, 8, 'Symbol B', 0),
(15, 8, 'Symbol A', 0),
(16, 8, 'Neither', 0),
(17, 9, 'brake', 0),
(18, 9, 'let go of gas', 0),
(19, 9, 'nothing', 0),
(20, 10, 'yes', 0),
(21, 10, 'no', 0),
(22, 11, 'Brake', 0),
(23, 11, 'Let go of gas', 0),
(24, 11, 'Nothing', 0),
(25, 12, 'no', 0),
(26, 12, 'yes', 0),
(27, 14, 'The concentration decreases', 0),
(28, 14, 'The concentration improves', 0),
(29, 13, 'More fuel use', 0),
(30, 13, 'less fuel use', 0),
(31, 13, 'nothing', 0),
(32, 15, '50 meters', 0),
(33, 15, '25 meters', 0),
(34, 15, '100 meters', 0),
(35, 16, 'Race track', 0),
(36, 16, 'Roundabout', 0),
(37, 18, 'No vehicles', 0),
(38, 18, 'Cyclists', 0),
(39, 18, 'Motor vehicles', 0),
(40, 18, 'Sign A', 0),
(41, 19, 'Sign B', 0),
(42, 19, 'Transport of dangerous materials', 0),
(43, 19, 'Deceleration lane motorway', 0),
(44, 19, 'Diversion', 0),
(45, 20, 'yes', 0),
(46, 20, 'no', 0),
(47, 21, 'Winter tyre', 0),
(48, 21, 'Normal tyre', 0),
(49, 21, 'Broad tyre', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `chapter`
--

INSERT INTO `chapter` (`id`, `category`) VALUES
(1, 'Engineering, maintenance and inspection of vehicles'),
(6, 'Environmentally-friendly and energy efficient driving'),
(2, 'General provisions'),
(16, 'Give priority at crossroads'),
(12, 'Give priority at turns'),
(8, 'Give priority to the blind, the disabled and pedestrians'),
(4, 'Interior, loading and towing of vehicles'),
(9, 'Place on the road and pre-sorting'),
(17, 'Priority vehicles, military convoys, funeral processions and trams'),
(15, 'Response to accidents and car failure while in transit'),
(7, 'Risks related properties and state own vehicle'),
(13, 'Risks related to the presence and behavior of other traffic'),
(14, 'Risks related to the state of the driver'),
(10, 'Speed'),
(3, 'Terms authorization to drive and driving licenses'),
(11, 'Traffic signs'),
(5, 'Use of seatbelts and helmets; seating area');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `exam`
--

CREATE TABLE `exam` (
  `id` int(11) UNSIGNED NOT NULL,
  `questions` varchar(255) NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `exam`
--

INSERT INTO `exam` (`id`, `questions`, `category_id`, `type`, `feedback`) VALUES
(2, 'after, how many years must a hybrid car first be APK tested?', 1, 1, 'Hybrid car must be, like a petrol-fuelled car, first be APK tested within the first 4 years.'),
(3, 'You are driving 50 km\\/h. How many meters is the braking distance?', 7, 1, '2 meters is the braking distance'),
(4, 'who are these signs meant for?', 8, 0, 'This sign is sign is meant for people with auditory impairment, someone could, for example, place this sign on the back of their moped.'),
(5, 'You want to turn left here, is that allowed?', 9, 2, 'It is too late, there is no more block marking to be seen. You are no longer allowed to turn left!'),
(6, 'What does his sign indicate?', 10, 1, 'The round sign with the red edge over the hectometre post indicates that this is the maximum speed for that road.\",\"o'),
(7, 'Do you expect a turn to the right if you see this sign?', 11, 2, 'With this board you expect a left turn as the arrow is pointing to that direction.'),
(8, 'Which of these symbols means: coolant?', 1, 1, 'Symbol B means that something is wrong with the car\'s cooling system, or that the coolant needs to be refilled.'),
(9, 'You\'re driving 50 km\\/h. What do you do?', 13, 4, 'You have a clear overview of the road and there are no other traffic participants. You can maintain this speed.'),
(10, 'You want to turn left. Do you need to give priority to the cyclist?', 12, 2, 'You need to give priority to the cyclist. After all, the cyclist is going straight on the same road as you are. This still concerns the same road, even if you are not on the same piece of road, because it is a bicycle path.'),
(11, 'You\'re driving 70 km\\/h. What do you do?', 13, 4, 'The driver in front of you is braking. You also brake to avoid a collision, even though the indicated maximum speed is 70 km\\/h. You do not know what happened down the road.'),
(12, 'You have driving licence B. Are you allowed to transport a 1750 kg trailer using a car that weighs 2000 kg?', 3, 2, 'With a driving licence B, the combination of the pulling vehicle and trailer may not be more than 3500 kg. In the case above, the total is 3750 kg, which is too much.'),
(13, 'Wat is het gevolg van een lage bandenspanning?', 6, 1, 'Door een te lage bandenspanning ontstaat er meer weerstand tussen de banden en het wegdek, waardoor het brandstofverbruik hoger ligt.'),
(14, 'What influence does fatigue have on the driver\'s concentration?', 14, 1, 'Fatigue has a negative effect on you when you are behind the wheel. It is important to see if you can still drive.'),
(15, 'What following distance do you minimally keep at 90 km\\/h?', 13, 1, 'To calculate the minimum following distance, you can calculate the following sum: (speed\\/2)+10%. So, with a speed of 90 km\\/h, the minimum following distance is 90\\/2=45 ? 45+10%=49,5. Then you choose the answer closest to the result of the sum, which is'),
(16, 'You are in the water with your car. Is it a good idea to turn off the contact?\"', 15, 2, 'When you disable the contact, the lights will also turn off. The lights will actually be usefull for help to find you. Also, the electronic windows will be inoperable.'),
(17, ' Are you allowed to park 2 meters before an intersection?', 16, 2, 'You are not allowed to park within 5 meters of an intersection.'),
(18, 'A bus wants to drive away in the built-up area. Does a funeral procession need to yield to the bus?', 17, 2, 'A funeral procession has priority regarding a bus that wants to drive away from the bus stop in a built-up area.'),
(19, 'Wich sign indicates the built-up area?', 10, 1, 'Sign B: \'Amsterdam\' indicates you are driving into the built-up area. Sign A indicates a maximum speed.'),
(20, 'What does this sign indicate?', 11, 1, 'When you are transporting dangerous goods, you have to follow this route.'),
(21, 'You are driving in the rain. Which tyre gives you the least chance on aquaplaning?', 7, 1, 'Winter tyres give you the smallest chance on aquaplaning, because those tyres have the deepest profile which helps them drain the water most effectively so no layer of water remains between the tyre and the road surface.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `img`
--

CREATE TABLE `img` (
  `id` int(11) UNSIGNED NOT NULL,
  `Q_id` int(11) UNSIGNED NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `img`
--

INSERT INTO `img` (`id`, `Q_id`, `photo`) VALUES
(1, 2, 'ef_270.JPG'),
(2, 3, '168.png'),
(3, 4, 'dsh.png'),
(4, 5, '336.png'),
(5, 6, '7R-A16-52,8.png'),
(6, 7, 'J05.png'),
(7, 8, 's_029.png'),
(8, 9, 'gvr_011a.jpg'),
(9, 10, '063.png'),
(10, 11, 'gvr_239b.jpg'),
(11, 12, '131b.png'),
(12, 14, 'ef_341.jpg'),
(13, 13, 'ef_180.JPG'),
(14, 15, '100.png'),
(15, 16, '149.png'),
(16, 17, '109.png'),
(17, 18, 'a01-50_h1.png'),
(18, 19, 'k14.png'),
(19, 20, '175.png'),
(20, 21, '162b.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answer` (`Q_id`);

--
-- Indexen voor tabel `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexen voor tabel `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category_id`);

--
-- Indexen voor tabel `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `img` (`Q_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT voor een tabel `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT voor een tabel `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answer` FOREIGN KEY (`Q_id`) REFERENCES `exam` (`id`);

--
-- Beperkingen voor tabel `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `category` FOREIGN KEY (`category_id`) REFERENCES `chapter` (`id`);

--
-- Beperkingen voor tabel `img`
--
ALTER TABLE `img`
  ADD CONSTRAINT `img` FOREIGN KEY (`Q_id`) REFERENCES `exam` (`id`);
--
-- Database: `deel1_db`
--
CREATE DATABASE IF NOT EXISTS `deel1_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `deel1_db`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `prod` varchar(255) NOT NULL,
  `images_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pictures`
--

INSERT INTO `pictures` (`id`, `prod`, `images_path`) VALUES
(1, 'Adidas tshirt', 'assets/img/Adidas-tshirt front.png'),
(2, 'Nike tshirt', 'assets/img/Nike-tshirt front.png'),
(3, 'nike tech jacket', 'https://www.kickscrew.com/cdn/shop/products/main-square_5ba7031c-2833-419e-8370-cc1b3f940225_1540x.jpg?v=1694780536'),
(4, 'nike tech broek', 'https://img01.ztat.net/article/spp-media-p1/a7107166045c44d7ae3332dbf8af6f59/05f01fcaf3db44668c876689da7709db.jpg?imwidth=762&filter=packshot');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `naam_product` varchar(255) NOT NULL,
  `prijs` float NOT NULL,
  `afbeeldingen` decimal(10,0) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `stof` varchar(255) NOT NULL,
  `maten` varchar(255) NOT NULL,
  `kleuren` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `naam_product`, `prijs`, `afbeeldingen`, `categorie`, `stof`, `maten`, `kleuren`, `merk`) VALUES
(2, 'Nike Sportswear  bvb       ', 25, 0, 'T-shirt', 'Cotton', 'XXS,XS,S,M,L,XL,XXL', 'Black', 'Nike'),
(3, 'Nike Sportswear Tech Fleece            ', 100, 0, 'Tracksuit Jacket', 'Cotton, Polyester', 'S,M,L,XL', 'Black', 'Nike'),
(4, 'Nike Sportswear Tech Fleece', 100, 0, 'Tracksuit Joggers', 'Cotton, Polyester', 'S,M,L,XL', 'Black', 'Nike'),
(5, 'Hoodrich Core Tracksuit', 115, 0, 'Tracksuit', 'Cotton, Polyester', 'XS,S,M,L,XL', 'Black', 'Hoodrich'),
(6, 'Lumi3re Sportif Mocca', 125, 0, 'Tracksuit', 'Cotton, Polyester', 'XXS,XS,S,M,L,XL,XXL', 'Mocca', 'Lumiere'),
(7, 'Men\'s tracksuit UA Challenger', 80, 0, 'Tracksuit', 'Polyester', 'S,M,L,XL,XXL', 'Grey', 'Under Armour'),
(8, 'NYC-SKULL DIAMANTE - Straight leg jeans', 150, 0, 'Pants', 'Cotton, Denim', 'S,M,L,XL', 'Bleach', 'Ed Hardy'),
(9, 'KENZO ORANGE\' CLASSIC T-SHIRT', 130, 0, 'T-shirt', 'Cotton', 'XS,S,M,L,XL', 'Off White', 'Kenzo'),
(10, 'Souvenir Graphic Tee        ', 120, 0, 'T-shirt', 'Cotton', 'S,M,L,XL', 'White', 'Bape'),
(11, 'Adidas originals trefoil essentials t-shirt    ', 28, 0, 'T-shirt', 'Cotton', 'XXS,XS,S,M,L,XL,XXL', 'Black', 'Adidas');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `fictie bedrijf`
--
CREATE DATABASE IF NOT EXISTS `fictie bedrijf` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `fictie bedrijf`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `receptenboek`
--

CREATE TABLE `receptenboek` (
  `id` int(11) NOT NULL,
  `schrijver` text NOT NULL,
  `recept_titel` text NOT NULL,
  `receptIngredienten` text NOT NULL,
  `recept_stap_1` text NOT NULL,
  `recept_stap_2` text NOT NULL,
  `recept_stap_3` text NOT NULL,
  `recept_stap_4` text NOT NULL,
  `recept_stap_5` text NOT NULL,
  `recept_stap_6` text NOT NULL,
  `recept_stap_7` text NOT NULL,
  `recept_stap_8` text NOT NULL,
  `Aangemaakt_recept_datum` text NOT NULL,
  `aangemaakt_recept_jaar` text NOT NULL,
  `aangemaakt_recept_maand` text NOT NULL,
  `aangemaakt_recept_dag` text NOT NULL,
  `aangemaakt_recept_uur` text NOT NULL,
  `aangemaakt_recept_minuten` text NOT NULL,
  `aangemaakt_recept_seconden` text NOT NULL,
  `recept_voor_aantal_personen` text NOT NULL,
  `bereidingstijdrecept` text NOT NULL,
  `RECEPTFOTO1` text NOT NULL,
  `receptfoto2` text NOT NULL,
  `gemiddelde_review_score_recept` text NOT NULL,
  `maximaal_aantal_calorieen` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `receptenboek`
--

INSERT INTO `receptenboek` (`id`, `schrijver`, `recept_titel`, `receptIngredienten`, `recept_stap_1`, `recept_stap_2`, `recept_stap_3`, `recept_stap_4`, `recept_stap_5`, `recept_stap_6`, `recept_stap_7`, `recept_stap_8`, `Aangemaakt_recept_datum`, `aangemaakt_recept_jaar`, `aangemaakt_recept_maand`, `aangemaakt_recept_dag`, `aangemaakt_recept_uur`, `aangemaakt_recept_minuten`, `aangemaakt_recept_seconden`, `recept_voor_aantal_personen`, `bereidingstijdrecept`, `RECEPTFOTO1`, `receptfoto2`, `gemiddelde_review_score_recept`, `maximaal_aantal_calorieen`) VALUES
(1, 'Herman den Blijker', 'Boerenkool met worst', '500 gr kruimige aardappels, 1 rookworst, 100 gram spekblokjes/reepjes, Snufje zout en peper, Scheutje azijn', 'Schil de aardappels en snijd grote aardappels in tweeën.', 'Doe de boerenkool en aardappels in een pan en voeg water toe totdat alles goed onderstaat. Breng het geheel aan de kook en kook de aardappels en boerenkool ongeveer 20 minuten totdat de aardappels gaar zijn.', 'Bereid de rookworst volgens de verpakking. Zelf kook ik de rookworst mee in de pan met de aardappels en boerenkool.', 'Bak ondertussen in een andere pan de spekblokjes bruin en krokant, zonder olie toe te voegen.', 'Na ongeveer 20 minuten zijn de aardappels gaar, en giet je het geheel af. Stamp de aardappels met de boerenkool, een snufje zout en peper, azijn en de boter fijn (evt. kun je de azijn ook weglaten). Als de stamppot nog wat te droog is, voeg je een beetje extra boter of wat melk toe.', 'Schep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.\r\n\r\nSchep als laatste de spekblokjes (met het vet) door de boerenkool stamppot en serveer het geheel met de rookworst.', '', '', '15 april 2024', '2007', '05', '17', '15', '10', '36', 'voor 2 personen', '30 minuten', '4oCwUE5HDQoaCgAAAA1JSERSAAAAw70AAADDgQgGAAAABMKNwrYqAAAAAXNSR0IAwq7DjhzDqQAAAARnQU1BAADCscKPC8O8YQUAAAAJcEhZcwAAFiUAABYlAUlSJMOwAADDv8KlSURBVHhew6zDvcO3X1V5xb7DrcKPw58_ZcKmwrtnwrrCq-KAnFUqSsOOOcOnHCXDpyRIEuKAmMKg4oKsw6TFk3MQJElGwrLLhsKBKEFAwqLigKLDs3RPdcKow67CuT_CrMOvesOvw4NRwrTCsMKrwrpnw67DnMO7w71Mw73CsB7Du3DDjj7igJjDvXzCrcO1esOvw7fDnsO7fx1-w7Etxb3CvsO8C17Fk8OUV8O_QcO9b8K8w7jDuuKAnsOEw58_w6rCv18vf8O_w7_DoMO_w6nCrzjDvMOiLzjCoMK2PsO-C8OGV8K_QsOlw501XMKvxb5FVMO-OCLDsiYRfHMMXkl9cOKAucOr4oCac8OsHThRxb3CscOdVA8cwrjCtMKPw6nigJ59w6zCsS53UMK3YR_DlSbDiS7CosOlWMO8O8Kiwp0SwrfDq2AVXAbDg0vDqcOQdk_igqxlcDoic-KAulB3dxJjCxt4w7TDrAjigLnDmy_CsMO4w6zigKLigJPCtz7DhMOKw7ZHWMOdw7kYT8W4f0LigLDDpcOHWMObw71EwqbCvU_CsMK-w78JNg7DnsOUwqfDmDzDvMOsWMW4w6PDmcOhF8OYOsO6CsObL8K-w4bDjsO7w7_igKDDpx_DvB7Cux_DvjvDtj7DugbDux_DvwEHxbjDvAnigKHFuMO-GUfFuHEb4oCTw4Rtw7dz4oSixb3CvsO4wqvCpBdfclvDvh7DicOXFRLCv8Kvw7Qbw7M1Dj7Dv8O24oCiw7jDugd8wq99wr7Cp1x7H8O_4oCYxbjDpcKPw5jDpcOn4oCYS3zCtuKAlBLFuMO1xpLDn2HDt8O9wq_CsMO7w6IrPMOnd3l-w7gldsO4w53CtsO3w7lddz_DgsO6w7bDu1h9wrbigLnCpcKnw6tYfMKy4oKs4oCmw6l5LMO0D2PCscKuFk9vw53DgFJMGB57wrtiw47DiQZTwrbDpsucwrQ2w4HFksK5EcOmxZINMWdo4oKsw7vDunrigJ3igJPCpBk9TUzDq1I64oCdwrYGwqbCtMOUMcKpwqnigKBxDRXDnFPCv8uGcXUFScO_w6s1w6DCv-KAmeKAuT_DhsOJDcOuR8Oow797dMOyw7d-Q0fDvMW4HHIDPcO4w7w_wrBxw7RnTDzDvQLigKIDw6vCuF4zxpLDmMKiceKAnsOnxZIjw7DDhjA8CcK8M8KBduKAnSTigqzDr-KAmcKgF8OAO8OEdMOBxb3CoMObEHQhw5vDqMObwrDigLkmw6wCw7jDiFbDmEQ0w4sULsOUSMOVU-KAnj7CpBzCpsO-wrnDkMK_4oCdAQ3igJRkw77CneKAucOkw5IOwrTCjT3DhsO0w4o-w4F_HcO6wqXCrcO3wrHCvMO9AVZ2PiTDuAJ-4oSiwr4LP2_Dr3_DjALDsMOxW8Khf3bDuMO_AMO0xbjDvcO5JcOwEsOo4oCdw7zDti7DtcWTxbjDp8Kkw6TDkOKAucOPwrrDu8Ohw6_DuMK5CTvDgX8uwoHDvyXDteKApgx8fsOfbcO-LsObWy_DsGxjF2vCqxtYfsKyxZLDhVnigJo_NOKAmuKApsW9TjzCrMKqw4TGksK0FExHBGPDnMOLAeKAnMO24oCgy5zCtiDDpMKmWsucM8OSw4YDA23DjBHDuFlqxaEawqdGDcK0MCZuw6tpw6PFvi5vw6tQWsWhy5zDkFTCoRTDscK_XnzDjR_DqWvDvjhCcsOYT8ObCE_DnsO_wqPDvsOPw6jDhMOvfUQdHsOrQMuGwo_Dr3_DscK_wrHDtcORXzDCtcO0KcOqw7rDl8KQw54w4oC5KyVjy4bDiBklw7AjBMK-B8W9V8OuEMOw4oCcOgbDvhh6w5vCqA7Cqh3DluKAmG3CsOKAsGzDp8OtV8OQW-KAoTcdwqvFvcKqJcOww5XCsA7Cq-KAmkVQGUzDvMOzYcOgcwvCusOuN8Kgw63FoQ7igJTDi-KApsOIwqzDqUfDt8O0U8OMwq7DrmNh4oCcxb0vXH_DqwhLdMO-ZTrDmMOrw6DDk8Ox4oCmw6jDvCcdw791w5c_HXrDicOtw79vQcO_BsOwAnLCocOXw4HDv8ODa8OQw4sdX3xWw7HihKLFuMK_T8Oww4XDpyfDuDsEf-KAocOfZ0fDgMOPw6_CuMOLw6_Dv3zDp33DrGwdYHPDoznFvj7DncOAw5ICw4F_w7AI4oC5E8KzeMOSP-KAmifCjS14XMKQ4oChB0nDkcucCXLDg-KAneKAuhnDhsOtCMK14oCmGsKmTFQwY8KkKgE_ZcKgxpIxalRIXwfDt8O0dXFPTxdjwrrCvMW4w6DCj2vCq8Ojxb7igJPDignDqMK_w7oRw7rDv8KrOsO5W1MCegnDtmPDrXLCncO1wo_Dv8Wgw6nDtcKvw5A-wrHigLnigJnDjgXCpMOVw44iwrF0HEEZw73CuOKAncOcC-KAlCsy4oChd8uGw604w5Ydw4Z5wqEuOFzDruKAmn3DtB06eTvCrBjDm8Ktw6jDpuKAmcOow6zCtuKAmMON4oCexb7Ct8ODw6rCqVpY4oCmw5ZQVeKAmcODWxF4wrPDgGLLnMO4FcOCw4g3wo8xPxtaLsOpw5DDt0jigKDDv8OVcuKAncK0xb3Co392A8OzAsO8wo1D4oCaLyQKw4BJw4cXw7pYAl_igJrDv23FvX8Mwr7DkMK6EMKhw5gkIMOPCMOKw7YHw7_igKBtwrrDpsO24oChwr_Dh8OOR3RQQsK1T8OgBMO4AsOKV8Oww4vCoD8UIsK8J8KBfuKAusOkwqDFuAbCu1wnXV4Sw7_DvuKAocKh4oCUJHN8AcO-DsK_w7fDtsOuB3jDtsO8BcOWwrbDt8KxwrrCvsKN4oCiw4UNwqzDji9jZcO6IeKAk-KAocOuYcKpwrMD4oC5w5XDpcucw4_DjsOAdHwYw4bigJrFkzDDpGbFkhHDgj9qwq7igJpxwrrDuz0Jw7TigJx6BcO9wqjFvTZGwrU1w6nDuBrigJ7Dvk3DkE_FoBvDm0vCncO2w7jCj8O6wq_Dk-KAsMOfWsWgw7LigJ3DjMOhw78Dw5vDnBjigJQ-w7wzRsW4fuKAoOKAoMKxbeKAncO1wq7CocKkw7spw7I74oCT4oCYw4p-PijCrcW4PXwHXAjCusuGw7ZOXDoKw6hjwqjDi3R7AsOvQMOgw60jGcOtI-KAnsKjE8Oww5BGw7bDqg0Ewrsew5bCocWSw7FhwrwdTMOYJQl3L-KAoXlQCcOMA8WgYErDoE18ZTLDssK6BQPCjyzDqMK4XOKApuKEosO3dUTCpsOVwqHDssO2NEYlw7B3CcO-ARbigKbDq2_DisKjwr4cfsORw6fDi8OA4oCUw7XDucOHw4DFuOKAnl5yw7zDl8Khw5844oCgfsOrw73Cr8KPw4E_AT3Du8OpwrfCgX8Sw7rigJxQwr_DucK3wpAMw7Rjw7HDuSfCgcOfw7_DpMO1PsO-TcO9UMOod8KPw7XDvMOFwr8ReH4XFuKCrG1Rw4zDqMO4W-KAoSLDocKww4U5w7zLhsOfw70jwqnDl8Ofw6RvwrfCvsK64oChwqcLxZLDvA8WwrA4OcaSJwNDy5xvw6_DhMO9w4oKw4zDnMK8xb3CqcK4MMWSBzpjw5zDlQzDtywMMGbCqMOLSMKv4oC5ST09TFDDo8Osw7figKbDrsOxw7bCqMKuLsOBF8Oww6sIwqfigJRHw7tTxZPDvkfDvcW44oCUHHTDqsOwawE6NzzCocKvKEbDj8Odw4_Dv8Wgw4XDvcOfw6HDruKAnMKPUMOWwr_FvcOMw6ZHw4huXUJuw7sqcsOaV8KQw5HDsMuGbj_CjUDCusK9e3wHwoHCvy3DieKAmOKAmUNvH8OdCXvDhnrCu0jDtsOydHnigLrLhibDicOVLcaSaiRZSMKqwqYEw6zigKIwDSjCocKzF0nDrm5Gwp3igJ7DnsOEO08Gwr57GnUVdgHDqcuGwrlR4oChwqrDtnHFksOMwq5gfmUXT8OW4oCmw6sfYMKBwq7Cv0DDqBfigKYYw7cXwrc_OsOdw7HDtz4iw7RCwrx9IMOEQkDDqMOXGMOzZcOgM8Omw5MZwrcEKB8SxaHCjxjDswnCvizDpn9Dw6gZw7U_w70jYcO_4oCcwqQXxbjCswAIfSHDtMOtw7HDssO1wr8PPmfCoThNxbjCscuGUMO7xbjDvsOh4oCiw7jDusKvwrnDvAnCncOWw5MLw6hlw73DvDHDtB_LhsK-XiYxNiHDhigkw6BFMcOjw7fDmnwhwr4jwr_DqxELxb5obQ4-w4PDlsOuwqfDmGJbwrTCvn7LhuKAouKAog0swrDDl380w7cYDybDpsOww6DDrgjDpuKAum9jwr7CtBwPMsOSMBsbwoEZH3dMOsOYYMOSw4wU4oCcBgbigJ7FuE7Cryt6em3FksKxEAjDqOKAoXV0MUjDvQjDvcO_bcKd4oKsw77DoBjDun0Cwr9HBxIjw7TCj3d-wo_CrsKpA8OkwrXCriHCucO8EcO1AFfDi8OmCMO6LBLFoGdwwqVwHEnDpVNIKBtDYHofw53Cvh3FveKAlMObX3N7aeKAnT7DqjbCoWcPT8OobRnDqUXFksK3JMOow6YEw50sQMKo4oCaKsKnw4pgw6xTSBXDgMOkwqUIw7tJecOzPsOGfEPCj8OrMHJN4oCeXVAaYjLDq1BDw7DigKFnVjHCt8O8HMKPCMO-w6NNAcO-McO0dHsBw70yw53DvuKAosOjw4vCoH9KZ3tKw7DFuArDsE9CL8K5w70Jw7Alw6jCvybDtHTDjWPDqMOfBMO_w7AYw75DIULDvMKmxb3CpOKAmsOAw5vDsnUoOcOo4oCZCMK5wpAAXSbDmcOr4oC5UcO6wrdpw7fCoz_DiEA_wqkPX8OXw7MPRAE4HcO6LX7Cty3CscKn4oCaw59Tw5LCgRjDnSfDuMO8bTbCtl_DoMOpw6Yu4oCTw5bCtsOweOKAsGlqcQUzw7PCjzA9PcaS4oSiwoFhw4zCtMOew4F0eS3Dpm5kYjrDtgomw7zDvTDDrsOkQMO4wo0xw4HLhj_CpsOHw7jCr8OPaE8Nw7PDr0FGw74fwqHDv8K_LQl4w4Z5asW4w7_igKE9w6o5w78X4oC6xZLCqA93f8KP4oCTwrFnwrhZM8KNw7jigJpJw4QXw53igJQU4oSiNQ7Dv2t3w6FzwrUXwoFpdxHigJw_4oCgw4TCsknDhBRMICBtAMKuUsOMwqfDq0vDgOKAuRF6AXvigLoEwrxs4oCewr4R4oCTwqHCr8KgN8O1wq_CoMOKw6nDqMOsw5_DvUpkw5B7w6fDksORKcOPw6PDpcKlfMOpfhnDtHTDv0t5BMO_JiN-OizCvFPDoBhyA1duw5LDsW_Cs8OHxbhZw4bDjMOqDh7DksOpH28dw6EJwoFfw5jDuuKCrMOgf0jDqMOpw7bDh8OQwr8aw5XDvxDCq8K7w5Qxw7hPGcO3xbjFoEE-w4Z9ScOHUX_igJzigqxsf3AMwr7DpMWTwrLCgT1JwqcVAUoUwoHigJzigJkKAuKAlMOyw4fDn-KAnXjDrknDiV9zwo9gw789w7ouw7RCw5_igKbDvsKlw4Rgw6Uhwr_FuMKkL8KwTcK3w5_Dpm_CsMK5w7M-w4E_w4TDmsKzAyzCrzNFwq0Sw77DpXU8ecK8xZLigKbDmUdYGOKAusOF4oCcxb5hLDbDnsOGw4PDkgrDnMOPwrzigLDDscO4WMWS4oCheGPDvOKAmT0GHcONw5BjwqbCjR5jDcOcNVTDg8KQwr7DmsKPw5DDv8Of4oCTPMOWw69Te8OULsO_B-KAunTDucK5wr3Dn8KhdWIHw6li4oCUXMO-CGIJw7TigKLDghnigJ5nwo3DgcO3Wh88w6LCusOhHsObRcOdwoFPcjdCbw5xwp1pScKhXMOHO8K54oCUw6Azw6oLw7DCpcOdcS1SL2_DjVhvLQbDq0Iow7bDr-KAk8WSw7Mmwr7FksOzw4cyw7UtIsOgAnQ6wrlnNsWSPOKAnm7CvQRfBsK8TBYsAA7DgSVwDC3igqxNw4ANOAbDn0BsVgPCqjonw5HDv2ANM3TDu-KAoXTDucOHxZLDtjLDqD9gf0_DsMK3ZMOg4oC54oCYfcOZw6g-4oCUcsOwJcKxGMOsw4rDgH8JPx1_Q-KCrH8cw7VFT8K8w4M-f-KAoX3DvnNpwrfLnBjDnT8Ww78WwrvDinbDmQbDrEnDhcOg4oCiw7bCj-KAucOCw5vDtArDsjd1OsOcb8OTfxXDtMOPw7h7bBDDvHVqTcK4PgvDqQrDoV9hUV1ew5zDhMOSw7waFmcWJcO4w6fDu-KAoHDCv8KzE8Ojw7XCtcucKMOMw4J4WhzigKBjQ8ORw69_CV1OwrbDqHMwQMK_4oCiw7bCj8OQw7_Dn8OUw4kRegHDvDZjw71Tw4bDicOpwp3Dj1A7wrLFvWvigKLDo-KAnsucw4AXTVAEw77igJPLnHjDkyVFeGdGdsOnwqgewrhEdsOC4oCibsOuEXdbGsOQwrtCw6jDo8Wgw68jKmcSwr4pd8OhLMKgF8OuHkbDoEMbwqla4oSiCMK8wpDigKIcesW4YuKAmsKdT2fDjyPDrMK3JMOgX0Iv4oCTXjkSw7gmAnjigJpvw6ZTAsOrwqAKwr5_LT9HJcOsQsOzYcOlxbjDjsK_byEuwr8FwqXDnVPDqMKdXcOGw6TDkjbDpsW4HsOg4oCwNMKww7c-wqHDv0DFocK8I0kMw65JI8O7wrxPw6g5b3MjXzkNw7rigJQDe8KvwqDigJRgw6HDsjnCncO_TcOtfsO0b8OHw7odIRRjAMKiCMOIbgvDrX_DjCLDsMKxw6zDtknCuEVieOKEoh5ew5PDqxB_xbhkwpDFuMOU4oC6w7HDvsKkxb3CocKnw4TDrjwZw7jigJ7FvsOfe-KAucKpw6cZE8OQMzHCuMO3w7wjFuKCrA_CpQk9a-KAukdYZVFdXsOZw4PDgsOSczx-wrTigLDDuQdMWMKzcxgbH8OFZG8XwqYbGzFVXMW9w6nigLrDucucSEjDgUjCtD_Dun0cf-KAnsO-wr9NBMO7wqTDnsOcJcO3w7zDi8O_wo3igKLCj8O-4oCa4oCY4oCiT1DDlcK_woHDuMOiKeKAnmUNI8K2cArigJjDucOjCCPDsD4pPXDigLlvwqV7N8OCIcKyAQ4RTRRvR8OUw4EpwqIWbsKxdQjDjcOoQnzDoSgSxaDDhhnDu0fDoX3CtcKdwo9Xw4MmwrRKwqbCkCrigJpeLgFrw4U-w57igJrigJjDnuKAngAbehXDgMOAPcOnWMOZw5TDjWNlQsOfPeKAuRLDt8OJZEbigKHCt2HCsXDDpGdwwo1p4oCaE8OBwrcNKcOhw6tmU-KEosO8HOKApsuGw4puRV7DgyjDmgbFvmB0bgtzSwd4wrxOw7A3CcO-MznDuGJUX8Osw5N_woElOsOZKzERy4YEcAzCvljDim_DiwvigqxwfcKxH18Ow77FvcuGw73DskJwxaHFvcOXecO-w6F3C8OBScK4ZQNvwqfDqTTCkMOfwq7CncO3w7_CncO6w71LbcK_w787w6o0w6DCj8Kh4oCUS-KAmsO_GHp-w48tCXzDocO44oCew79YAsO-dcO-PmvDvMKtVsW4wr3DgMOKw4YRw5ZWw7bCscKywrjGksOFR8OreDzCv8WSR1PCjzA_NOKAucO7w53Do8ucaR_DglTDnR3DjOKAk-KAk2HDombDlsKPw5DDv8K34oCwYMW4BMO-w6XCpBtqw7fDi8O_IMOww59idMOlM1TDtcKuIMKxaATDoTcHEOKEoj3FksKow5wRBMOfw6zGksO3wrV2RsO2ZknCvsOXWsOgd8K9DcOBaR3igJlCw5M6EcW-LuKAk8ONy4bDjcK-xpLCq8OFxpLDiMKo4oSiRGbDg33CvsOWEOKAmlPDm8OgHcOPwqIQXQXDp8uGcsOYBxcRw5pCWMO5w6bDg8OcJ0figJnCsWcWwoHDjuKAmsKhRybigJTDqeKAnRjCneKAlEvDvMKdIUk4wr9VYOKAsATCulN0LeKAuU8NC0k5LMO8GcO3w71zYRnCkMODYnILDmHigKbDsEvCqEZSbgcqw5smMTDCueKAoMO7T3bDsXjDrQgLdHwRw7VlA3zCssOdenLDuFd24oCeZMOQw4vCtcOMwo1caMOlGH4Bw77DuiHDu11JYnfDl8KnLADFuMK9w5TDlsORw6cywr14wqXDrcO3WSA-w7jigJnDoH9Jw7DCvyLDrCIRy4ZWw6A4HXwgRCc-dsOjw5clw5oHURBOw5dJwrhfQsO-4oCawpDCv8KmV8OA4oC5w4lGw5_igKIYw5DigJxJ4oCaxb7FuF_igqzDv8WSw6Bvw7LDu8OKwrVBw6cXWsKnw7PCr0nDoH_DgMOYw78-xb5twrzDgMOmw7oRNgjDv8OT4oCmw6dYfsO4DAvDt8OXw7FoegUPw4YWMDM44oC5wrnDnn5Mwrd3w7wIw71_4oC6CMO3acOQw6_igLkew77Dk29xb8O1I-KAncOdecuGwqTigJpeRGd2ICHCvw_Dl0pHwqhhwqRWxb3DolbDkwzDisK6xbjCoGFkA8Kdw5PDu8K4O8O_AcO6H37igJ7DgcOHH2PDpMOxJxhdw7gYwqNPPsOEw4jDokfigJlGw4VywoHCjz98H11TwrtoH3vigKDigKDCgcKnwqjCvMOzGCXDrXPCuFU_woHFksOyEVzDpcO74oCmwqc2w4I_wqESw64R4oCmwrALw4zigJrCqVcKDMOc4oCZwqDDpxwPw51jGcK4JcODw5A9BeKAk8K-w5lMFSXDsGDCqnDFvcKswqbDg-KAlEnDgOKAusO7FcOAw5zCtwAW4oCdwrlPHsOTw4Atw57DjuKAoHNYHsOCU2pRWDPigJ7DrsORRUw_w5nDhkNuxZPCj8K54oCYPmZEfcKyKXbDqx1iccO7SCZCL2bDtMOJdsOxUScKw4Arw7DCucOBS8K7w7lkU3hfTcOj4oCiw6k1w7BPFAAJfEoOw77DiXZABsK9DHLDieKAmMO_wrN6w43DiV_DqXTDoOKApsW9wqE_w67DqcK3w4R3OOKAoMO-GcK_w5PCqcOQPxfDkMOLw4Bfw5_CpsucxZM2w5hGwq3CrR_DosOpKsKjP2PDv8Oiw6MtPHnCuMKBecK6w7_DvQcPMDM9w7Ujw7TDv206BsO-JMO0EsOwH8O9ARPCqy_DkDDCuOKCrMOcw7p7w4hrxZPigKLDoMOswp19xb3DkcKlw7cxwr3DtinDpnfCvsOCw4LDvsOvwrHDtsORxbjCsMO9w7lfw7HDvOKAucO_wqDDvjfDtsW9dSAtw4V9YiIPw7XDuX9gw6fCs8K_YsO7w5NjfcOyFzxj4oCZw5jDvMOww49Ye8O_wo9YOsO8dzzDmcO9Gg_Ct8K-w4TDvcO1TzDCvcO6McOGxb4cwqJrbB0NPcKPUMOcOsKB4oCd4oCZOwhPwqvCgRt7dMOzS1dhw67igKIMGz_DtsOsYcK5TAzigKbCvMK_4oCabl4Fw6vDgFJYw7oUwr3igJ05ZcOKw7gvZMOCBGHDosKdBVvDv0wEJeKAnSPCp8KiF8K3B8OvY8WSG8Ohw73DlV3DjMKvH8OgIcKhf8OyTMK4w7_igLlXwrvDt8OE4oCZ4oCZJQDDmcKsPsO54oCdXsOZw4DDnwfigJnFvsKyw7_igJTDoMKnTsOCf1oCeBPDvMOtF8OHwq3DgXHDtOKAlMOpdFAlwp0GwrZcfMO8dMKQwr8rMcKtWMKuw43Gki9lIsOkYsOawrFcYsK3wp0Mw7bigJxiMXsDfgHCvcOYw7MhScO8HsWSw7tPWTDFuMOyd3vDisOfb-KAosKxf1nDjOKEoljDncOGw7wKf8Ozw6U1w4wuLcO_CMO9w7fDqgTCrG_DlWnDj-KAnOKAucK9wro0w4dbw7p9w79Kw6DDv0rDoCnCsS_DvjMCwrjDtxlmw5jDq8W9wq_CvCDDoMW4YH7Du8O3WH3DsS3FvuKAsMO9w4dfw75Vw5pfwr_Du8OFxbglw63igLBJJV9-4oC5I8OpwqAoMX1awrYUB01J4oCcecO4w7piBsW4w5Q2w7DCvcKlw5vCvMOvUMK8wq9Yw7LDtcO2w7l6w6I14oCmxb5_w7YXbH3DtGfDqltsf8OMw4LDsMOhwrdYO8O8BksHwr_Dh8Osw6YnGFs8QsOPw7Qzw5TDtz5EXsO9CDJKe-KAmMKQw5XigJrDkMKkcnhE4oCiMRUUE8O0QkliJF_DiMOcwqfigqzDgBccw6_Di8OPZcObcBPigKBuKcKww7JK4oChT3Q-UgvigLpZWCYwMMK3xaDihKLDlcOny5zDnzjCkMW9w5R7w4wNw7XDiTHDuAtiw5DDr8K1GX3CrxfigqwVw5HDi8Wgwo1cbMOscsOwCcK8w5zDuV_CgcO_OsO8wq_CgX8Sw7ofwqRTCsOBwrFOA8O6wrvDuuKAmRLDhxLFkwRcfsWTw4EJHQh3F-KAmUHDvibDrCfCoV8Xw5_igLrFvS9-B8Kxw7dDDOKAnsWgAVHDscOby4bDn2hFwrRMw6LCtxNFdWPFuAlrBw_FuG7DvwjDvcO3w6pNw4BPw5Npw487KcOpw4AO4oCaRwkIw4XDrjkJRuKAmndAwqfDn8O-w6QPdMOpb8KlSTkSwrzDksKswrxveVtATn3DgQJA4oCw4oSiZEdcw68F4oCUL3jDv-KAucKvw78kw6nLhjrDuMOqT8OYw6N9eywAw7vDoj0ow5nDjD7DsRp_w6TDs8KPw7XCpVhXFOKAmD8yDcOwwr0_w70DdsOYXsuGAsKww73DmcK3w5jDusO0w4_DmMOkw6cRCWTCncK9w6nDmsOhwr9JWsOYw77igJrDrsO8AeKAoB9swqFtw7AxE8OJFMKibnbDgCvCthLCtsKBwrkww7HCuiEBbnLigLDDrcKBdzZdxb7DssOK4oCe4oCwRzpMw5xTYcOidh0WHsOXw6EW4oCTwo3CpMWTJsOUdU9iw6gBw7vDvMKnwrvigJnDmwvDsB8xw67igLnDiC8dwrxzAsO8Nwvigqzigqxfw7TDvWJXw59TRn4xwrlHxaHDiitEIE4ewrYrxpJewrjCvRjDuBNRXxzCrivDl3EPfSrDpG_DquKAoQHDv8OSwr3CqeKAnMOQbxLDujdh4oCUTzl-TcOiwpDDmxNwwr9NG3vDvMW-YmBTy4Ytwo_DuA1WRMO7cyIJwr0sxZJSEcOgb0jDsBfDqcO8P0LDv306DcOyN3XDisOzxb0ow5lAw53igLBJN8K8wr1FbVDDj8O4y5w4y4ZGTMK1PWQkF3PDgl_CsAgICcKwwo8Ew6TFuMO_UeKAmXx6wqnLnE12w7TCuXhcwqzDh8O1RSFh4oCYEMKpQSTigqx9w4LCvcO3w6UfCMK8w5A34oCew7sbPsOGw6XigJTCv8Knw4PDvxtBZx_Du8O5JwTDvSM8w7vigJ49w6DigKHFkuKCrB8QwrDGkgNGw74XWMO_4oKsGyJ7w51Nw7bCuMOPPsO8PTbDn8O_HTbFvcO-TcOSGjfDnMK1xpLCr8KwwrrDtxXDk8OJV2wLPsOHw7DCo8O3w5E2wrrCgcOcw4YJXMK5dRvDngllcAjDicKmw7PCp0vDs8OyTTwp4oCabsOiTsORw63CjVzCr8OCw5g1EW4h4oSiSMOOwqPDo3dPEcO8wqfLnCHDuMOCw7EfbhDDvmM9wqbFvjDFvsK-VgBew4Ivd3zCscKBw4snw7gQw7jigJRzw7llOjnigJRfBsWhw7zDiMK9w6_DqmVPfUInH-KAnDnDtcObJUXDtMaSw4_DuV4CZiE5w6DCr0B_DW5KfMK-w6_LhsW4WwDDvUPDtArDuk8Iwr1sL-KAoQDDv2XDpOKAlEsUABbDilU6w78q4oC5w6bCj8OQf8W4w6Rgwr9Vw6I34oCc4oC5fx_DqxXDtMOsw53CucOOLsOBw5wmy5zDm3TDpG0Bw6cXYgbDmMOvwrHDh8KNYeKAlMOxfntxBxsPVsKxPMO1GMKPRmcww5t_D8OzXD7CuTfigKHDhcOJB1jigLpbw4LDk-KAoSvDlCrDlhbFuGFzbRdbW-KAocOYw53DuxDDu8WSwrHigKEffeKApsK9wo_Cv8OEw64nxbhjw6cTRsOZwo_DqH4vXsOQw4E_wqHigJwTy4YXB1g5w5rDhcOKw7vDi1jDuWABS0fCj8OwcGcWc1vigJzLnF3igLrDgMO0w7I0w6bDlhbCscK0w7PFkxHigJjigJh5w79zQsO-4oCmwrRcecO-CcKjw6PDh8OHw7oE4oC5O0LFuGHDscO5F1jDmMO5Eg_Dlj_DgcO4w5IRwrrCpzZQw54x4oCmw6TigJp2w7hcw4nigKHigKJPMsKjfRwMXMOiYcOoxZMAA8OHBMOoU0bDjuKAsHAJwrrigLDCpMOsRsOUdMKNY8Oww4EKwqPDvnHCj39Cwo_DlsKPw4HDnzgBPcO1wrrDm8K_4oCaw75tw6ALw4lB4oCcw4N_UifDoX9Tb8Kuw7vCpmTigqzCvwXDoFMkw78cw7LDp8OIP8OnScO9UMOwT0IvA1_DthtIw6nigKHCsEsDfcKnw6hHw6jCv0_CrwEuG-KAnuKAnEvDuuKAusK_4oSicFtJdG1JL-KAuQAlRXvDocOkdMOjD37Cjx3DtlrDmytreDrDswAPegYwWsOd4oCewrvihKLDmcOoSk5GS2wswqpDQ1AWw6DigKHFoCB_NERHwqAhJhLDtTERwqjFksOgw73DoSEoCQ9FZcOMZcOUJF9Fw7XDjXTCtBTDpMKhwr_CvhbCsz3CvXgwO-KAucK1wq1nw5jDmMOZw4HigJzDtRVCwrNMOMOXCcOnU0zCrsOMYcO6w6l9w5zDnx7DhMO9wp1ew4xuw7diZsKzG8OTw6sdy5xYasODw5h8J-KAoMOvw7dhdH4Cw7NPd8KwKAbDjwjigJxYLmwJw4cVw4fDjMOvwrPDrybFkhvCuxRvS8aScATigJjDqyzCslA8IsKQw7fFuB5gw6zDsTbDrkwuwqHCuG0cw5E3w6vDoBTFk0HCp0_igJ7CscOLVeKAmsW4TCXDgsOIKQ7DjkHDqcK44oCZWeKApsOyw7Yhw7RNLWBmaQfDs2t7w4cSw6Afw7F7wrDDh-KAlMOAf8Olw7h_D8O0EkRvw4Amwo_Dl8KvdDrDkDJ9w5fCocOfw5TDm8OgPU1yw7jDv8OWc8O-bsOow6XigJnCvsK7w7gNZMK9wr7CkBjDpX9TP0LDv3064oCgWw7CvMO8w4QW4oChw4fCj-KAuUHCsl3DtsOUw5tfw78RW1994oC5HcORU0sHdTDigJN_w77Dr3TDoC_CscK_c-KAnsKt4oCha3jDmDnigJrDkeKAmhrDtF9NR1vDhGXDlMO6w7nCocOcw50Zw6XFveKAkyh3MEPihKLCnTHDimwMUWbCrcKPUis94oCdWMOqUMOa4oCdw5bCsXR4wr8-SsKoImtDw6TDmBrDouKAk8KdEW454oSiIcOPw4sO4oCm4oCYIcK4wp1_C2PCrcO1y5zDqcOvw4DDtGgPJsOuD8Ohw57DvDAGw6_Dt2PDtMOJMMOGxb7CtlLCtRhbwq3DhcOoMsK1VMKNw6HDuTLDtE9XwqFrwqzFvsK6wo3CocOZKcOMLC_Dk3k3w6jDohvLnFtdw4fFkxjDvV3igJlpZmkdM-KAucObw5Rzw4wubcOhwoHLnA_Cvi4Kw40u4oCU4oCedcOrQ8OMb3_FkuKEog3CscOLcBfCjcO9wo_igJhZw5HCj8Kgw4Rywrp_CsO0wp3CrkDDhy4K4oCgxb0xBMO_GmIzw4pRw5Y84oKsw77DiSfLnF0Ww6AfUOKAoRLDtMKPJcOwZcOQwr8GP-KAucKNDHzDucuGw74rw7BfxpLDv0QReBPDvh_CouKAnMKQxb7CplfCsMKdOOKCrMOoLXrDrcOzw4h1EsOaY8O9w6fCoBd6BcO-wo_DkMO_IzoGw747w5BLEiPDpcOfwrJXw78GO1_Dvw7Dj8K_w7wdDj7Dux3DtsOfw78E4oC6G8OPwrA4N8aSw7nFvsObGC3DjUdnYjwaw7zDvVHDr8Om4oCgOkdbVMObxaHCoMOKWgfigKLDlhrCqMKyUUctVS9kfSwrNTRYwqrDimTCoeKAoMOGYzXLnFNmasKoNVVD4oCiwqkqSkxVwpBtfBHihKLDhsWgw4g0M0TCgcKzHcKq4oCafMOQEh_igKbDrsO8dHQ1FcOhblc1w67DtjdgYMKsFcKjc-KAohh9UMW9w6HCuTIW4oCaEsO0w58vw4LCncKxHMK0DcOkwqLCocKnCC19wrXDqBjDqUbDv8OMPcWSPsWTRcO_w6w4wronw4bDkDU64oCgwr7CsQkMT8OPw6LDnsOMQ8WSw48sYeKAmsWhxZN94oCew6nDmcO7y5zCuz_igLnDuTlqxb5tA-KAucOCY3FwCAF9w4RoPsK_w7Y-wqbigJRew6DDrsO0M-KAnTTCjyM8wqUcwrbCvlcJfTgVAgfDnzjDhMKmFcKjwqLDuS7DusKnFllIGMO1w5deEMO6F8OSLD7DocO2J8OB4oCUQy96w7vigJzDkMK_CcO-wqnCsAlYTsKBw7dteg3CqsOTdMO8wrrCp8K9w69pesOtwrPDiMO1w4Zrw74Qw6jDl8O5wrzigJx6w701fuKAnsO-PyfDgsO9OsO0AsO0w6PigJhxw6rDsMKrPzDCun_igKbCo8KPPsOBw4HDni42w6ZnMcOdw5nigJ5OAlcbF8uGw7oAB8OUwrnihKLCosOGVg91VjrigJ5ZGw1WGmjCsFFB4oCcw61FNMObKcKgRcOIVgHCrcO8wrvDjVYRw612w4rCuG3Cp-KAmjvFvRrDqHLDlELigJTGkhbDrsOYaUrDqsK0w5VEwrvCjSbDmlgsWsKsw5RRZ8Km4oCaAsO9w7PDiBPDksK5y4ZcXVXDpMOoayDDh0wfw7kuw6YoDMO3QEMaC0BZBuKAoMWhCzHDlkMNFGJ4wqgQw73Dg0XDqBouRFPDry0Uw5QkI8Knw7I6wqrDmuKAucORNsOYxaDDtsORLsK0DnTCoMK4wrHigJouLXbCtcOlwqDCsMK2CsKNwrdvwqPCu8OvLuKAoAbLnB7DusO6MMOUw53CgcOhw7YGDMK3VWLCpMKxBMaSwo3DpcK4w5fDneKAoOKAoeKAnMO3w7DDsMOBQzx8wrLigJrDucKlTTxYw5ljaiDDvCtHGMucw53DoMO7xZIiOsKlCFbDrhHDkMKzw7HigKbDvcKlKFxJJcO4TcaSw6jFuFhixaHDmMO9w5vDkEsxw7_DtX3DuHLDsE_DqlTDmF4Dw6R7dMOyecKnSMO-w7rCp8K9w7dp4oCZwq8vw5dpwq_DuSbDkMKnSsWT4oCeZOKAocOP4oCUw6vDpUlJw7jCugTDu8OHxb7Dvh_DlElnPwnCvWw_wrs4IcODN-KAnsO9Cxxsw65ic3wGc8OVw6XDqE0IQcK9wq8NasOdDcORw6DCpOKApjZ7DcOcwrZVQ8K7wrUKblvCq8Kiw4NWA8Kdw7bFocOodlLDh11XFcO0CTnCqcKgw5dRSFVSxbjCozrDul3CtDDDqMKuxpJBD10MwrnDq8Kiw59ZC3cdNSXDtcKxEMO0OmjCosOLWg1NwqYXUGXCrOKCrEojBeKAnRPDvFJ9BRQbXETFvuKAmDJyTcOUwpBjwq3igKYidzPCusK_M8Oa4oCZ4oCaMVjigJ3FksORwrpMw7TCt8OkwqDCuyMXTcK3c-KAmF_CneKAoBvigKZxwrhV4oCY4oCgw4rCtiI6fi1qwrtr4oCYw5dQ4oKsw5DDpHDDmAfCucOALsOIHQHCsSHCuOKEonMDw5XigKLCpWjCqCpETT7Dl0_Cj0VZxZMfw6rDosK9w5HFk8Oo4oCww4bCpEtow4_FoMOCSMOtLcWSd8K3YHx4CMKjUzMYwp1fw4TigJ5oD1bFuMOjw6HDkz3DjCxsYWDDqjEqW3oJf8W9BMK9w7PCpThEJRXCosKkwr4XfcO3FjDCvcK44oC5R3TDvMK3Qy_igLnDuCcnw67CvMKpw6_GksOu4oChw6pNMMOl4oCZP8O-w6bDu8O8UMKdfA9JJ0E-4oCTAFzCrsOXH8Ojw7PCvyPDmWjCvcOQacOAC8O9CMO9w5_CkOKCrF0-w7ouJsK6y4bDiS3DosOMKwfigJ7DvcOww5PCr8OYwqvDr8Oiw6nCvXFM4oCi4oCTwqM7w7oyWlxtw6jDlOKAnsWT4oKsd8OZKMKhw4daEX3CtuKAnsOZxb4ww5vCqxNUdQnDmH4nXQzCu8OpYcOUQwvCo8OuWhgmw6DDgy7DmuKAnQ5GXSnDgj7DosOGwr_DncK0MMOiwq7CjTFP4oCaw6_CosOBw6fCqcKhw59Ry4ZFw4FBwo3Cr8OPQmJ-AcKtFhfDkWR-EcKNVMK9wrkiwqot4oCdUWHCrsWSMjNl4oCdxaEqwqPLnCrCtFBFwqnGkj7CqsO8w63DkBDDq-KAocOWG-KAlMORVnwNTeKAosOpKC5JR05-MgrCqzJRw5LCkOKAucOSwrZCw6Q2w6QgJsOrCmzDvMOtwqHDo2AIbXsDy5w74oC6IyjDmAvCqcOxEcOITwpBfsWSJ8KyA8Ks4oCYw61py4ZyPyM0BMKzw5DigKYawqMhw4oWbSk-w6guwrnCgcOuw4ZqdHd3wqJ7bAzDvcOTcxh_wrDLhsO7T8OWJMO3F8Kzw4TCph7CrcOhw67DhCNUwrLCp8KPTS7CgXdIKsOBw49FSV03esOGw5g6PMOZw4bCo8Knw7vigJ7DvsOwJcO0L8OBf8K5w6_DvsOtw6DDvyDDkMO-DsK9DXrCocOTw57Dq-KAocOow6RrxZMGw73DqToJw7pJwp3igqzDvk3CveKAnl4Cw73CpE4Hw6B_wqIEw7TDkiHCr8OUc8KxP13DrCfCp8Kzw689w5_DhsOyw4www4YqwrPDkUHigqxaw5zDjcORQUfDrcK2UkXCtwTCucWgBMOmwpDigJwmw4bDqMOSw6PDrsO6GCPDjMOD4oCewr7FuMKxfcKQw6DFvcK6asOhxb4AxaFgD8OTw7XigKHCucO-KMOhxbjDtMOQw4figJ3igJQeJjwJwr_igLomw4XDtTxZIFgIXkHCr8KBQQcWATsWEuKAmi_DoMOvYcWgw6hjw4HDqXPDlGZxw5Fiw6FRRwvDgW8wwrvLhjrCpsKBWsOT4oC5wqhhK1DDisOWwqLDlOKAmMKQelrCozrDiAPCjVdCcMO7w5ZVwrQWwqbCo-KAmSooSkNWdSZSwqtuIsOwajDCrHxsYcOgaAR9O0PLnFvDqyPDgMOVAgk-DsOIw7U2R8K-4oC6LsOyw7nCvUo8w7RQw6XCo8KPJn8DwrTDuBvCoinDiBx14oCYTmjCvR7igLnDtnzCpuKAsMO6WjTDn8OuQEfDrxB64oCgJzA4OeKAocORw5lHy5x6wrjFksOZJ3TDv-KApm1MP8Oew4bDnXvigLkowq7DqUJcagFVw4jDm3fDkDV0H8Ojw7MsEsKrw6I0XG8HX8Ouw7jCr8Oiw74PLwI_RHIow5_igJ5ewq7Dl8OAPSHDucOzT8O7LEInw59DLgHCr-KCrMO64oCiXuKAocO9w63DgMOLJcOAw7_CrmTDs8O0RU9_w4rDhsO-P1bDh8K7w5fDpBIxw77DoCsxM8Ouwo_DmMO_w6LDt8OYf8O_Q8Oswq0sYsKtwq8DI1nigLBoCsK0R8K94oC5IcWhbcOYc8Kzwr_DrsKzJcOU4oCed-KCrMKwwo_CusOpYMO64oCZEcOuw7vFoWHDpuKAmTHCphjDt8OHw6nDpAJuwqExQj9OwpDDr8ORw5HDr-KAsAJATcKwQMOMeBvDosKBxbgxZn0MMUXDmCcJw5Qo4oC5xpJIBEPDjhoYIMO0A3zDvghjw77CqDPDoz9jw74gbw8yQQwIw7HCvn4nbXTDmcKpw6HCtuKAohLDmi0Vw5HDhjTDkGh6Hg1UNeKAuUA5XV_DrBXDiCfDhDk24oCgw4jDt8K0RcOlZX80ZiXCoyzDqypuZiXDoMOqwo04eOKAocK7w4PDjsOHBk7DvsW9w7DDsnfigJrCv8K3LcKiwr1twpDDqGHFvUxXPRTCs8ucVcO6y5zCoC7DkBzCjcOBZmgLMkUHw5UUZMKBwqpQW1TDhQTCoSotBVUlw4XCqGloRmN7F8Whw6_DnEU7w6HDrxrCuOKAocO-McOGw74Zw4I_wr_igJrDmeKApmdSw6TCv8O3w6Apw64Mw47CosK0wr4b4oSiBcO1BMW4w4ViYMWgw7fCr8K-BMO_JMO8w7LCqC_igKFfLE8W4oCawrfDgS_Dl2nDkMKdJjnDhMKnAS_Dl0nDmMOl4oCZP8O_wrTDt-KAk8Orw6TDu8OIdTrDjDLCrW7DszkndMOaOsKnSV5AfuKAnl7FvnDDhMOswrbigJRnShVLMW3DtsKPOMO4xZPDjsO-w6Ehxb5tL2Nxwqofw7fDqwpxLzkEw70-FsOoI2BSf21H4oCUJ8O4PXTDmn4COMOkTEjDqeKCrFNe4oCgy5zDsTHigJPDoMW4ZgTFvsO2MMKQw4AWxaHDssOU4oCUwqAXxaHDpMOf4oCcw656w5J9wrM-RgTDn-KCrOKApuKAmsOrH2vDiksfE8Osw63DhcK6I07DrMOtbVTCpMOlJAvDieKAnsK7AcOT4oCawq7igJ0ow65RY1xPw5Yyy4bDj8OCw4Rhwq_Fkl7igLrigLnDqMKyUsOAbcOTwrNoMnwPNeKAoArCqDBURuKAsOKAmDpKTMOFLkF9w6TDmRnCoyTDkB3DjcKpV8OQwpBzHcK5aTFITeKAucOEw5XDtEjDuOKAnjghMsOSA3FhLsK4FmjigLl0bzPDpHkYwqLFoAXCrTnDnA7DrcORDsK4HWXGkjsRFsOoCjVHM8KhLwvCskJhy4YXCsKuw4TCoCA7C8OFw6UVwqjCrG1GbWsnGjt7w5HDljPigqzDjsKBUcO0xZJMYmDDvD7DoX_FkuKAsMO5ZcOGw7l1w4wubsOSw51XccK7fxJlDXdQw5HDmMKNw7bCu8OjGOKAulvDgcOc4oCZy5w_wr4nw60afMOTw7lPw6rDjWIgHcKzL8K1AuKAncuc4oCcTknDs8OTf8KQwr47H0DDqE3DmE9CK8OXacKQwr_CqcOXw5YVJxZ5A8Oq4oCcWsOZYhE7wqHigJzCj8OJw6E-ecOf4oC6wo8Jw70Iwr0Axb7FvS5NZxUTaMOkYuKAncOfw73DsEtsw689w4fDmsOyfcOMDzRjwrjDsBp6wq54wqLDn8OP4oCeUVwNw5N2xaAYZ8WTHyTDrMK9dsWhw6hmw5zCvsOLw5g9SMKnFT3Duj3igJosAS_igKHFvsWhwqJzC8K4BcOMMsOYZcOAS8Kxw74Yw7rDqUtcesOrw6PCvsK3EeKAlCwCw7x7w4pDFAfigJgMdDDDhHg_w67DhsOXYRHihKLCpMObw54Tw7dTw5NMB8Kzwr7igJ0Pw5_Dl1vigLrCj2vCslDCsG0gw7wjw7zCrMO9w5YXccOXxaAFw4BCES3DhsOKwqjDlldBJVVlwqzigKZSC10Uw5rigLrCosWgw6DigLlYw57DicKow5_DlVDigqzDlsO2QiRcC0BkwqgD4oCZI8Kd4oCYGcOmy4bDnAAb4oCdw7jihKLCseKAocK3QkfFkjPCusOiXMORHcOn4oCewr4YO8Ocwo1mPx9i4oCwxaBgC8OkBcK4IjsqDMOZacKpw4grYFzCr8KoQWVjM8Oqw5o7w5F0R-KCrMOfwo_FvX7CusO-w5AYekcFw7zCs8WSw73CjzHDtXgVw7fDmcOzw48sbGBkZuKAmMOwT8KgwqFjEG19w6N8fEkCw7_DkcWhwqzDj3_Dk8O5w5_CvE_igqwvxpLCncK3wqVzw7JTw6LigJoc4oCdw7wYw77Dr-KAnAx8w4IjwqA5AcO94oC64oCZw4N7UifDoX7igLpeW-KAlOKCrH4_w7TDvDwvw7U6w7hvw5PCj8OQw4vDnV0MXgrDoMKlXW9_4oCTDkZ5w77DuR_CsMO1w5HDl8OYOHwfa1vDq1jFoRvDhWxTMcOGwq9HYiTDiAHGknTDrxFPRnEPNUzCucKpw6HFvsKjKuKAoMOsVcOpwqjFksO3w7bDrMKpwrnigJ3DnMW-TiwcWMK4w700JXN2wrowe8O0McOGw7VJLwPFkuKAucOoLnrDtmNoJ8K4w47CvMK_GVsCIzwgw7xzw57CpuKAnTHCpeKAoVk3FcOMw5LDgcKnWDgGxZPDtTBGwrcVw4XDoR7FuC8bH8OQIsO0BsucDzLDhsOjYCPDjAfDqsOiwoHCrxbDrsO7aMKyw5jCqGPDklUVw6PDjioYcFFBwq_igJwKOh3igJ3DkWh9AVXCpsOvwqHDjMO4PeKAncWhKMKgw5hcBcOFYsK0w5_DiQINUUHDqCPDuMO9wo3DuWjCqEhFWuKAmQ9SwqJdwpAZw6figLDFk1g3FMOEw5jCoiTDlhp14oCwxb1owr3DqsWSw5tJ4oCexbjDi8Oea8KuaMOnw63Culh74oCdw4YHIjsuChnDiUnDiMK84oCiwo3CvOKAmXLigJ3DlMOWwqPCqsKpBcK1bcK3CcOyHTR3w7fCoMKtw7cuIzzDoR_CvOKAocW-wrEpDE0_wqDDky9hdmkDc8OLWywCa8Osw7cfcMOdYcK0w7bFvcOxw7EFwqbCgS0pw64Lw7jigKbDq8OLxZNfSBQD4oSiwqTDk3BvHsK84oCaXRzCuy_DrjvigJPDuFtWBA7CpSLDsDbDicOgJ2zDh-KCrMK-CcKrw5DDt0EvG2sQw6MOwq9Lw77DuEsRw5DCv8OXw6nDn8K8T8KmV-KApsOhw6TDs8O_4oChQsO_CsO2V8OAwrNvw7_Dsg_DmMO5w6RrwqwdxaB_w54u4oCTw5figJTDsGRmSAJ-w6xaGCbigJocw6nCuGZ0T8Ohwrp0UeKAmj8pRsOfGcKjBwnCvsOowrXDhQDigLoAXh7DscOvMXpPEsOSSU8DCcOqYWdRDMOYw5PCszcXI8Oyw7fCvGTDkMKPwrpqwrMAcF0W4oCh4oChwoEWBMOVEMOzwr7Cpsucw7cxw4cDw4I9w6_Co8KP4oChw65qeMOswq1LFzfDgcKg4oChCWZY4oKsw67Dk8OVw4XDmOKCrMO4DOKAnEwCw5N8wr1Hw6zCqRcjwqhwQywEw7N5woE6LCAsCHR8AcO-wqDigLkyesWTFcORRXU4XkDigLnDnXnDlFrCvOKAoUrDgl9hwqrigqxyUxUUy5xpwqPDgMOeDFXDgcW-w6hmf8OfW8W-xb3CusO8OMOkw5HDscOzwq5TwqkBw4giw6DCtxIJw75VR8OUwqbCuMKhIcOF4oCiCcOBDR0Zxb5oScOzQHPFoScacsOjwpDFuMW-4oKsw5TCq3FIwr_ihKLFvcKswqJCFFRVM8KyN8KgwqrCuRnDlS1tw4fDsHfCosKl4oC6w47DnztIw7hHw5E1MsKBwrvDgsO1w68_4oCY4oKsxbhbw5piAcOYw4TDiMOsAlPDgcWSw6TDuMO9w6NiZH_Ds2XDlH8Fw75pw5ALw61LWsOYw5x7TcOyw7sXwrfCuMOOwqk64oCgX3J8w5lZfU5CKuKAocO7H-KApl5eTF5KQHwCw5LDr8OXw6vigqzDi8O0w6Z9wq_DksOAw79Aw6hfB17DnBbigJh-w68zAsO_w5HigJTDmMOYw6c_dX0NwqtLwo_CsDTDkcKPw6nDmgLFksKyf8K_F8Oqy4bDmQBLw4Iow7pzA0LCr8OHXlpEbQJHwpAHHcOVJQ04w4jDosK9w5AAwp1-w5RNRG_igJpJ4oChH3YWA20sCmIEw59eDUMuYlTDnsKQw4DDq2LigJ4FYuKAmj3DsgzCncO9woE0w7BHw6gZxbgXxpLDrcOxy5zDrzt34oCwQBPDkDl3DcK-wq8e4oCgwr3DjMKxHMOr4oChJ8OBNsO8W8K4wr0YJ8OQ4oCcPsOfUsK4JeKAkyPDjcKxFGHigJ7DhVDigJofYuKCrCfCgQbLnMOzYkpwU2fDmlDDgwhTQz_CocOvccK8y4Y7w7YKaMKzVkDigJzigKYCagl9NcKhLzPDk0DigJjigKIexaAcxZJRw6XDr-KAnk4Wwr3FvsKiZMK0w6XDh8KjNCMEwrdSw73igJjigJnDpOKAnsO0a8OOKCDDpFVZfmgQwrrDqcaSFsKxw4zDtEFTdgDFoUvigJnigJjigJwRwo_DuMOEaCTCpiUjNS8HwrllZSjCrsKpIcO4w7XCqGxqJsO8wq3CqGnCvS1Fw77igKDFvV7Cunk_w5rDrsW9wqBzcBx9w7dmw6nDqsKPMMOxcFXigJrDvsO-w5IzTD_DnsKQxZPCvmt44oCTw67DvxDigJwPw5fCpQtsw4gdw78kw7Qyw7Blw4cMfC_DtG_DlXEawpAuw5Ulw7TDisO14oCmTgPDvMKkZMKwwr8NeMKhw78Tw5DDs3XDhcOnPOKAk8Oswr5Xw6DDv8OP4oCexb7DvcK7wrhKwq_DmMOnwr7Ds8ORN1g5w7gcwo_DhUbCsMKyxZLigKInwrNYHsOpw4bDg8WgHMOMJuKAocOjfuKAnjPDpsaSw40Z4oC6CWLigqzCocOkw4LCojfCv0dYRwnDssKw4oCccHoxwqouw7bCneKAucuGT8KxwrfigJTDnF7FksOWcz0xxaEvLwbCogXDqMKlw4QIw7vigJ3CrwXDncOe4oCewqlA4oChwq3igqwBHgYRYi5FOyDCoF_igLl0w4FCwpA1ZsK9wrRxw59VCTPigJ5WFMKPCX9bw6xlw4YRbFfDjMO4WBB4U8OKCMKr4oCYxb3DmEl0w4PDmmUrwqxEGGPigJjDgC8GG2Ixy4bDoMO7w6vDo-KAmA8jwr_Ct3B9DX5-wrYl4oCewr7Dj1YBXeKAnsK-w53Fk8OgG8W4RwN7w70aS03igJ1TJcOmxaEowrPDkkbigKbCsxkaY33DkeKAmRHCgcOyw7QQwqQneSLDqcWhB8Kyw7NDUFUd4oChwrbigKBrw6hqwrzFvcOb4oCiw7FoKcK5xZLigKDDgig0FEXCo8KqOBkpw4nigJgIwrsc4oCewqjDpDgkZGUgwr0gxbjDoOKAlMKjwqjFocOgw5c3EsO8FuKAmsOfTsOwO8Oow7p3CH83GjrDuwjDvyBuD8OcQ8O3w6gMBsKmHmHDrMKBGMOkw5vDgMaSw6Udw6o5U8OAMnpGw6_Co3vDpD7Du8O8ZRbigJ5t4oCawr_Dt8K9w5DDv8O94oCZQS9SxpLDrMO14oCew7PDi8OB4oCUAcO7w73DkMK_CcO6ScO9Z8Khf11y4oCUPwnDveKAusOgw78P4oCaXsOew4cLw6DCv8OFw6HDp8OfQMWTPUVcdmnDusOpDsKm4oCUxb5iw6HDsTxWw4bDu8OwwqgmDw_CruKAoMOgceKAnhvCo8KyLR7DkznDpxnigJQfBsOqw5PigLDDpcOQw6tg4oCdMA8fAy93w7E-wrp4wq_CrcWhBMK3cHshaRbCncaSJmEXw5JCwo_CnRbigLkCw5sEX2vFkl8yw6dtwrFPXh_igLlhxb3Dkm7CuCnCusO-fcOGw7jCpyw4D-KApsOzwrPigKJ4w6DCocWgSRdVOjQjfuKAnTcOSsKzwrB8w5kHc8O-xb1sDSwww6Zhxb3Dp8OXA8Kx4oCUw67Cj8K1BEc8wo1mGggTw4DDq2LCgcO9w73igJrCvy7FvsO4w6nDoMKhwo82wqbDncOUMMOOwr7Dvh41w6LCoOKAnn5bJcO0WinCocOTTAkdZipoZl9fK8W9CTBXQ-KAouKEohoL4oKsBkpcwo1QHsOiy4bCusOUYDp7FMOyCsKiUFLigJTFksOaw5Z0wrTDnsOORm93AcOudsOmwqHCozEdTTUpaMKswrvFvcWhw6obSGdxCsKNDURYYgRiw5MT4oCY4oCZwp3CgeKAuuKApgLDvDLigJpf4oC5UuKAml_DkSgDwr_CusKlA8OVwq3CncKoacOrRsOdw61eNBHDvMO2wrsEf2QWw70TD8KlQTzDocOsAnABwr_LnMOYw5M3NuKAocOOwoFJw6lxURQePhUHw73Fk-KAnsW4wrc3w74eZ39Tw4fDkOKAucKrw7XDiMOHAsOow7jCrw_DsgnCvQHDr8KxTkLDv3LDr8OBCcOJHn9dfy_DtDLDkGXigJnDjjBMLRF0wrnDpMO3wq0cwr_DtsO_EMOoXznDvMORF8Oi4oCa4oCewr_igKHCuFjDoOKAnMKNTcOMLD3DgcOow6JDxZI_wrrCj8OFw7EhLDVWw6BBaiTDrkfDm2M-w4ICD8KjLMOxMMOSAsKPQsONw7EoQAzCsDHigKB7w6pJw7vDlUcIw7rCkMK0w59cw5bDj8OfJcO0wr12asOowrZR4oCiRsOzw7sddQnCvA7CgcOXRjdhw68iw6xdwrY6w6jCssORQcKPwr0BRj0tMMOKwqh-w5dRwo8FQ-KAucK9P13FuEsBwr7DmMKnwr8QaEtXZsKiwqAjw4_CusKrwrAYw7DDucKufMO_wqRow6xXF2I5OQhPw4I9MMOibuKAoH4fS8Osw6UnYyMnFuKAusK3IsKwecONC8OPYmzCsRouw5zFvsOAwrPCt3_DosKvxpLDh8K-w5rLnMOzw5TDhOKAniPCoXdQw4YoNWwvw7ZAwrDCoMKwWMO1c8OZw4HDj8OeYMKtTsOY4oCiUWJFWSvCo-KAncOfwqnCkMOfwqHDnMOfHk3igLDCgcKow4vigLlDdV06wqrDmsKyUE_DmDvDu0rDkcOVW8Wgw5bDthw0NGbCo8Kh4oSiasOJR2nDtU0kZUQhPDEY4oCUwq9FIsOlVgrDksOzM-KAmOKAmMW44oC5w6zDomLDpFVUwqHCuMK6xb7CrsOfxZLDisOGVjrDv21UwrUIw7DCuyTDsBvDrgwww67Cj8K_xZLDs8ODxZLDtsO3w4TDucOdFzcYw6t3wqQRw75BJsKBxb3CgQnCrjPCjcKxwrllw6l-w6HDsMKnQX86w7gCw6TCt8OpBMO0w4cSf8OLw7t8GcO4csO4wr8Lwr3CkAxmGcO0w7J5BHLDicOA4oCUFQXCucO-w5F4LzvCpcO4acOiOic-w4_DvwjDqMOFw753cR45wqHCvU_CvsKBOMKvxaHLnAI6w7nDqBE3wqAZxZLDnx_Dh8Ocw4QQHsOdwq7DhWxWAmZjwr3CsBjDq-KAnuKAosOLdngSZsKBw4cEw75JwrAZHsO54oC54oCYdH3DjHgIKDUJwr0awqM9QXFQ4oCc4oKsF8Ouw55twqshw43igLDDr8KiU8O2w5gLw6B1w6nDrgTCncOAd8OaaMKiwp0uw5pmwqnigKZ2KzrCvsaSAcOuOhlywqnigLk7VsKqGCDDsAPCtmwFwqzDhR4BTcK-4oCUGeKAoGwUw5FnfkbigJp-w4xVDR0Ebz4xDAcVWVjCvcOq4oChRyEOwrLCpBBo4oCww63igJp0bOKAnWfDo8KgwqUUw6ssAGvDl0LCsX7DheKApm3igJotw5bDuB3FvgYbYznDgOKCrDFf4oChwq3igJoawqbFk1UxJnbDpxHDumF7wr7Cv8KdAF_igKLigKZJ4oC5bk_Cp8K3VCLDuMWgKMKlw4oIfcKxHXt9fsOeKj9nVCfigKHCoMKuw7Qaw6HCvuKApsKmw5vDuWjDry5Be0chw6obMlFZwp3FvcWhw4ZMVMOxdkXDg03CujrDu8O5W-KAlOKAmOKAnRnigKbigLpFw5fDmMObX0fDksKNFFwTcT8_B8OZJcOFw4jCr8KsZMKvT8Onb2hCwrnDqMO1W8Oow7xtwp0Ewr8bwo0Ewr_CpWdUAsK7Z2zigJNxfx7Co3MLy5xeWMOHw5wyw7t8OsO8w7DDjBPDqXHCsT9fFAFxw5_DvMOqw7MfCMK9wrxvwqfDhMuGw77igLo6w7nCuFzigJ5ew6hHw6jDv8W4Ex3FvsKg4oC5fcOuw6I6ZcOiw7TDhiICw53igJQmfyxgZGYWwqNTY8ucHcOrw4PigJw7w7V4UOKAneKAmsOpeG88xZJmPCbDsMKrEVbDrMKpTcOxOMOAGA_DvQwxd0nCj8OAa0vDkE_CuWnDk8KB4oCmw4vCq8OgLsKhw6kjND3Dogg4Mw00G8KpwrBHw5ZE4oChwrXCtgTDkB0bAcK8y5waS8Ogwq01w5FqIVPigLrigKbDrD7CqRjLnCvDo8W94oCmMsK6TBXDkW5wFm3DusOvw5F9w5Vww4fDpAw6xZLDnsOB4oCe4oCcEsKhwrzLhhbDk8OzWMuGw7PDhnpaCGbigJosw7nDmcOMecK_MsKmQ8OMwrF-KwnDjxvDi3DDlMOXxaDCncOGSuKAmsW44oCwwo3igLoJWE4IYAFzw4YKw4FfDmLDpMO3w5XDhcK84oChJgvigLAG4oCcBF3FuMKpRcK4w70QwqEfZFLDqcOhw6cRxbjCucOVRgM1FgTDnsOiIkrDqcO2JSxmJXbDuih3wrZEbcK4N8OqMmLDkFDFvi45e3NLDlrDmgpQUOKAneKAnsOUG8Khw4grwo1HeX0qSmrCrsORw40TwpBVegV5VcOJw4jCqUhBXHoU4oCawq4Ew5PDvcKjEMW4w4HigJrCkHsT4oSiRcK5wrhVWsuGw6LDmirigJ01w5bCocK84oSiwrHCv-KApsOwwrfCtsKiwqbCvcaSfX4vw4EfIMOYI8Osw7MnGMOnw69jZMO2McOhfirCgS8Gw7pGZxfDkcOWdw_DtcK3w7vCpcOlw4jDjOKAmjTDssO_SDrDjHdXBsK9KABSxbjDv103FzoZw6NPw6rDpDovdTzCssO_KsOqwr8OwrtcP0LDv8OfKkZ6AcK9OAHDpOKAucKvwrHCtMO5PmYeb8Ogw57DvScY4oSixb7Dg8OAw4Q4RsOGBjHDm8OVy4bDu-KApsOXMeKEosOk4oChB-KAlB3CsBJtxpLCtShrLOKAocucw6EJI8O9IwIvduKAusOdw7ckw6zCrhp0eXVGcDHCt8W-w45Iw6jDuxxUGMOnVcOow64Ew5lUCw3DuipoNMOSQMK74oCmDm7Csx9uwqdrCgnDoOKAploIfOKAnMKpOmoN4oCdw5BgwqzLhhYzZRYKBTQRw7QGw63Dn8KiVsO9HVTCq8O9HB0mw6fDkMKqw78OxaF1f8WgfsOLd8ORL0bDmcO1f-KAsMK5IAtMB-KEomPLnMW4YSPDlBZDw5YXMMOta8uGw6XCpEAcw5bDpMOgwrDCvcWgw7BXw6HCoMK9GWvCtcOlWCvDjcOAGsO7w7DDtcOr4oCUwrASRsOwAw0wf0nCnTFfDcKzHsOqw7xOAnrCpgtCP0TDqMO7bMOUJcOwbxPDsgZCX2nCruKCrBLCun7igLDigKIaXV8HFVZGwqhwwrNDZcKkH8OKCX55w6FVVFXCpMKhwrAkGcOXbuKAniPDssWgJ2LigJk8ccO1RgDDosOTfRHigLrDpuKAsMK04oCaMMOkw5UkIsKzLAHDvsKxw67CsMO3wrHCgUvCoDNCEkJwNcOrKm4UZiDCuzQbJXXCpcKobsKvRV1HE1vigKE64oCaX-KAucOKw5Ymw5TCtsK3w5PDscK7w5DDmsOT4oChdsKxT394HHfDhwXDuMKPWMOAGcO3GcOzZeKAnHkWw5DDlDXigJ7ComoxTsOQ4oCmw67igJgZw7bDvk_DmcOrw4tOw7IhAX8Sw6jDo8K4LsOXW8KhwqfDo8W4wrwt4oChXgLDvyXDtALCrsOvw6rDvw3DqF994oCTw7_Cj0EvH8Ks4oCcw7XDsGLigJPDncOBw6fDn2DDq8O9T8O4A28zDj7CphvDjGDDqMOeOOKAoOKAoAcxOsOQ4oCm4oCwwr4mTMOXwqZhOsODG8O3E8KdwrAUa8KPdcO2w4Jr4oCY4oCTWAoxwqHDkxvDoWEAXV7DjHLDs8OSw4I4I8K2y5zDoTZMDVICw7puR8O2w4HDtmpoZR_DnETCoCsNVVDCoHUR4oCiwqbDrMKNw6nLnE0EwqjigJjDiwYbbcOUw5PDmcKrw401UGbCpMWSPMKtw7Mow5RSQBXigJxBwrUe4oCUGsK_ReKAosO6L1HCo8O5K8OefgfDtTrCv0XCo8O-GcOUacK-xpLCu8OmF8OQY8O6HlrDtX7Djjh-EcO3HOKAojBodhYLHnoYwrdUw4DCtOKAnMWhNMOuwrDigLoT4oCwwqVbccOYwqkvw4XDkcOQXRwOw7TDocKgwr8bB111eFbihKLigJp1w4LCuBpuwoHigKHDrMOtw6fCvcOUw7DigqzDoE_Cu8KqwrLCt1ckw7hKbCvigJ0Zw7HigKIJPsK_4oCUwrVILMWgLEwXUGPCosWgalM1VMucaMKiw5xUG2XDluKAoCjDs8K0RVnCpA_DshPigJpxLcOeD8OewqHFvcOwCMK24oCU4oCTXsOBDsOwDnfigJp34oCePQLCrjggOT8YBcKNScK4WR4Dwq9IO1h5GMOBKcOAFsKBV8O8CH0cwrLDi8OSwpDDj8K2wqDigJ5tQXVHPhrCusOLUMOVUcWg4oCZwqYiwrp-DR1fTMOow6lEY8OHXTR3D8KhwrV34oCewq4_xb3DnsKxGQxOP2TigLrCtiRFejHigKZ3dG7igJjDicOgLm4WVjA9w5TCosKlewTDow8Ew7jCosOHf8K1W8OvJcOUJ8OAfxvDtMOiw743xbjDtzrDvMOf4oCmw7fCpE4Dw77CvxN6w7ltw7F-w78f4oCaw754wrDDrsOrwr9I4oCZD8OYwq0ffMuGB8Krw6sYfTDigLnDvsKpYcO0w5HDmcO74oChCMO8w50uw4zDtjbDo35LASbDs0Iwwp1swo_DuXhbPMK9YuKAocONWEIfbeKAsMOFMAIfROKAocO3EeKAnHHDqMOww67Dqhg7w5Yow6EfwqDDk8OfZcOEFyfCumhjP8OeQBcXKiccNzUUwpDCqX3igJjDkVgdVVbFoeKAnRYqw5nDi-KAlMOSw6HDs8O14oCiwpDCpcKp4oKsNMOVM8K4wqF2DuKApkwGRcOaF1DCpHYGw6Uawr9B4oCiw7YZScOVOsOvwqLDgUABw5Vawr9FxbgFw5MEwqN9wrvDtsK_YMOAw7zCtxjCsTjGkiHCo19iw5zDohwGDX_CjQnCq3MEWQVr4oCww5bLnMuGMMOHw4rCrSjCvGgtw4cLwrrDo-KAucKBYRzDtcO3YsK9KhvDj8OSw4LCsB7Dq8Wgw4UgEyzDusOpMsOqa8OjwoHigJTLnMK4wqPigJpRJ2XFksKwy5wMEcO-fjslw5xlwqQXU3bDm8WSL8Kiw5FQDXVGw7wuw4YCfDrCvuKEoiZ7fAPigJ3DuTrCoMO6ShDCrkde4oCawrXCswEsXAxhw69lARt3czjDusOYw6JyShDDnT0OJcONw5dRdcOnBuKAlMOsw6nigLnCohDigLoR4oCawqTCrMOLSC9KJsOsN8OYw4dnw5PDkTNRw57igJnFvcOi4oCgayjCrEthAcK4w4nDuwvCqHLigJ03w5bCosKiwrEZNS1if34fGsK7w7oZw7fDhW49MeKEomfFk3F_FmMPxb5gZmnCjXHFuGnFvcOt4oC6aAlSc8WgwqgSVMK3w5xlwrJbOMOewrUnw5_Cp0_DicKhFsOAw78tw6gpOcO0L8OB4oCUF-KAuR_CocO_L8OSw5fCp8Ocw7c3JeKAucOyR1_DvlnDksOewqfCv8OHw5rDnuKAocOsw6nDljE8O-KAocK-e2PDrAUHw5AzMsuGwrsDw70Yw6_DrcOA4oCcw44aPCxLJsOwbsK4H2vigLAnMcOWWMKPwrPDh8OmFVvCrEZbw6BJwqghw67Du2lh4oCabjgqwqDCoATDsMO3PMK1wqTGklrDhMuGfcK3PXt3Ox3CtMOYw6rCosOOWgc1w5bCuijCt8OUReKAoMK2CsOiL8WTQeKAoMOOBRTCsAjDpBPigJ08Y1XDnCLDsGkaZ-KAmMKicgZJw4rCv8OFVcOld-KAmMKpwqvigJpMw40Lw4hWew9FxaHDr8KhTMOnLMOKwrTDj8KiXMOnPGoM4oCiUMOOw5tdVirDrMOvw5_igJzCoMOvZ8KPw59vw7Azw7TDq8O_FHfDtX8macOUw7Qdw7bDqWfCsBTCpOKAngnCj8KzWOKAucK3w4JuZjDDtsOzwrPCsVVaw4bDiMOf4oCgxpLDhnLDrMOlJWErJRBPLztJxb3Cv8OMJMOz4oCew7DDn8O3w5TDhOKAncK7KsOuwrkowr1MMmJgwq_Dl1IZwrdNFcORaMKs4oCeejFfw59U4oSiCUYcwq_Cr8OCwrjCr-KAsBJHI1QFwrrCoioxDEHDnsO2wrDCssOV4oChwo3CqznCvMODPBDigLoa4oCw4oCaw4oMVBLDnsWhwrYMw5TDnsK-w4HDqMW-w4HCvj0Fw5klV-KAmFN6HcO5FRkoJMO0ZWLDoMKvTSjGksK3wq_Co8KQw71_aW0GI3o-e8O0ckJew4fLhl_Dj8K_G8O4Wm3DkhTDnsKmwq4ew7bDrsO9dMO8IcO0xb3FoAHCvBlGw71HBFvDrMK3X8OBw6TDo0U0w7fDtCPDqUYeYsKvw6Ugwq_CrOKAosOrT3DCncKnw5LCvsO-R-KAnsO3wrFwcEosJQnCuE_igqx-GsOwL8KhwqdOwrrDvWkAw4vDtcO_AcOowo9dVVoew58nXcOJw6VYwq_CrcO7wo9JHMOLLiTDjlZzw7LigJ1VwqfCrSt9DgLDv0LFky_DvsOzP2LDr8Kjw59hbVcAw48eb8O6woHCtEF0DQ_DoQ7Do27Dp2A_wrrDr8O2YsKqwrsNw4vCjeKApljDjArDh8OjGDssCnfCvGzigLDDjTg7OsKhDeKAkyPDjMOow7J6y5zDscORw4QEYRh2VMOEAGN1P8KdwrDDn1nDjGjCo8OLw5PDncK7wqzCtcORYsKpwo0G4oCaXm1t4oKsagcTVDrFoSPDk1AXUcOnw48gxb5QZ8OoKVPigJ5dw6ciwq4zw44nwqnCvuKAuTjDpTPLhiXDtDFcJmpcQMKywqYi4oCZw5XDjsOiwqbDplkpw7bDp2vFvkcBw5NAwrHFvRLDssOUw59DwqPCqQJaDX7CjcOb4oCeflDDv8Onw5Q_Y8OAw7DFuAg_wqXDv08YM8O7GcOmHcOfw4HCosObb8Oww5jDseKAlHgWwqDFksK1AC3CrEY6Yzk1xaHDoGfDokVzLsW9wqrCs8KxxbjigLrigqzDtWR_FjZHwrYww6ZYZMO7w7LDkEfigKE9wr46wqbDneKAojHDrsKi4oCacWcNw4LCr07Ct1fCocObK8Khwp1qwqHDqi0uwqLDmlJICVViwrceW-KAkwpnU1QGwrojw7NyMELDvVwQGMOm4oCmw4vCqVHDiCvCv-KAsMKqwrpcw5Q2MMKyN8OQw6nDq8KvwqHCrDoJwrfDsmPigJh6Iwo3bsOFI8K34oCe4oKsV8KmwqHCvMKBBcKh4oCmw5A3ZcKg4oKsfcO_wq3igJpY4oCd4oCdX0N9cwHDmnvCq8OQNcOUQGDDq8ORw5hZR8Og4oC6wqgWw55uZ8OUw6_DoMO9XQTCv-KAlMO9w7sABsKmw4YIw7UsW8K5R8ucXVrDhMOEwqMnaMK4cxcxw4nDmQjFksK8xb3igJ3CrHIWxb1eJsK-eUzCsR14w4Bew7_DocO6xb50dl_CuU7igJrDvcOmfMO-4oCc4oCZw4DigJTCu8O9w4vDmXrCrwPDtzbDmMOlw7rDvxPDqF_Cj8ORYsOfwrc4I8Kswrhow4MBwoEX4oCUUzrDpDrCslND4oC5dcOlIsOAQlxH4oCZw7xvacO94oCcw487fk0xJ8O-w6vCv1LDosK4w7YTBeKCrMOrfVfDosO1RcKkw78Tw4Q1w4nDhS45AcO8w5DDpBzCugfDh8OQSSdoG8OqR8ObYC_DmsOuw7bCoMKvwqcTD8K7xaEYd29iw6XCqjfCgRczw5jDjMKxRsKnw59OcMKQwqBfCDXDghxdfsOaS8OEesK6xb7DgwXDtFrFuCfDpMOnccOHWgHCncWSwr5i4oCewrtNxZPDt8OOTBtVZnrCqMK0MUXCtcKrLSrCqQxjfUReOOKAuXDigKZfI-KAsMOwJjHCvicRw7hEwrp8LGN94oCdw7JvEE7DoMODwqhwwqV3cVnDpTzCrsKoxZPDg1XCtcOzSFdXQMK6w6o5ZFBpxZLDv8OJF3_igLASw7bDtsO1w7rCv8Kmw5PCv8aSAcK9X2DLnMOuPmLDti8YMsO9GXoIw73CqMOVw48wa8O3Dh5TCzY_w4fCqsO9L8Kxw6zDsEs8w7bCuCB9wr_DlcK0QBzigJ0nw6DCqCYb4oChdMOXw7XCtFAsXmZBCMK3w4JywrAZxb7DuMOqw6PDsSUtPHAXBxIResO2w7nDt8WTw5UxaMOLw57DnkoJbSw6wqLDsDRYXEA9wqHCr8KzUkQtw5NHLX_Gkjo7w7bDt8OOVsKoxZIJIcO4QQgPw7dCcEIgMgtSUMOJIlNV4oC6LsOBXlIR4oChxZPDvGjCpMOdCEPDssK1EMKkZ15GfkkKw4prbsKgwrY5G8KNw605aGrCv-KApsOixaAkPhbDhnXDo8OQw5xay4bDnsKhWsOcwr3Dl8OAwqTDlsOAwqLDnUDDgOKAusORw5bDm0jDoBsZw7F5wrvCr-KApkXCoRMD4oCcw70Ywp0dw4YINXp_xZPDgD_DgMO0wqIAf-KAsFF_CFFJw5nDsArFoEd4fBYy4oC5xaHDucO8CcWSw5xnKljDmeKAmcOA4oCUw6vigJgkw5ECCMK4fyjDtEJyy4Zl4oCZ4oKs4oCUwqAXBcOhLTpew6fDpMOzVgjDp8Obw7Vqwr3igJQSw4_igKLDq8K1w4fDvivCoeKAlOKCrMKnwqt-w71nw6lswrDDu8O8w7s5w4F_w77DpV_CscO7w6XFuMKkxpJXw4RRaxLDgMOyw6JAw4nDt-KAoksFw6EYYnE6wqo9w6rCucK0FMKg4oC5w4s0w7HDucOiUk3DvFt2EkpxMsOKY8Oo4oCmXsO7PCJxCMOgGcOp4oCmw4M_w78AwrMLw6sYwrh3H3fDukfDkcOZM8OAwo3Cog8Nw709wqjDqRMHdsK0YcO0TiPigJPDquKAucOww7RmFBbDqXbDgsOlxbjDhlhiO8OJAcOPwq86E3pbPAk2w4TCrMK3JiYJw4HLnMKzMl1eQMKvw4DLnH0RwrfDmV_Ct8KyV8KvZ8KPXm3CocOFOMKv4oChclszVMK7OcKgw5HDhxPDpcOuxb3CuMKmwq9Fy5zDjyLDsMOcO8uGUH4PwrHFksOvwrHDrMOzY8OUw57DpcO9wr9CwqDDosKvw6DCp3QGw54Xw4_DgMO_w7zCuwhmwoEIUzzDh3XCucW94oCZTOKAlHk7XMO5LAIUfsOJNsOhLMO7w74zwqjDkcO8NcOaNMOfQcK3w64vw5Fnw7JLw7QYw78CwrcFw7QOP8OHwrTDk8K_YsOaw7bFuDBrw71PeGLDuxM8wqYew5rDvwvigJNcL2A14oCew6DCp8O4Y8K_KAV7BMOtWcOuZcKsJnlhwp3DoMKv4oCgWWPDgcOPAOKAucOew5pMCnR7wrfigLnFksO6xaDigJnDow87MMOVw5jCqMKgw5NSEU3CpsOnw5FEw5gbw7gbw5RbEn7DtsO7wrUWasKoYcOSKcK3NkTCpeKAoSPDiiMDEMOlw6fDjMuGbwrCv1B3w5zCpOKAusOn4oCUXkVeSSxyw5nDi8Ofw4zFvURmVjRuZkYjPcaSaSA_ESVlKcKowqjCusW9xaEawrHDuy8TdQ3FksO8JQnCvD8ZbcKdw4XDqB9rQMO_eCN6w4bDqgh9NXvDuFp0wo_DlcKjc8K4FsKdLAg9Y03igJ7Dtw7Do3w_Jh4PYHTCvg_GksKzfRjFoRnCocOrP8OAw4zDoirigJQrwqhtG0DDsMOldFg6RcOAw403FeKAsGl1KG1gw7obxaHDhcK94oChTzHCt8KyxpJ5ccK1HQl-wrrCvsK8w69_A3bCucK-A8O9w7Fowr4cOsKxO8OvVUF4Q8OHw6vFvuKAncO8ecKyw73DvsKnS8K-w44P4oCYbMOEXsOswqZ7BcK9w5DDnwHCvXBTAcOYK-KAlOKAlOKCrMOkw73DouKAmUrigKHFuH7CjcKjwo8-w4bDkQcvcMO4w4E-DsOfP8OAw5HDu-KAocOSw59HH8K9wo8XH3_igJ4Xxbh8xaAXxbh_w4EYw747w6obRnLDkX_Ds3XDuMWhAnjDucK1w5zDhGXFoUR6EMOOL1LDgMOLVCDCpeKAnsOjBMOBwqVMfyXDsMOfw5LDoX8PccOtwq7DuwvDgsOhH8Ogw47DgCjDmsK7w7txw7tOL8Whw6_DnEEtY2Btw6dtw5xhLMWTbsKrw4LigJzDolQsJMO5w6JJJF3DvsKyOTbDomzDsSzDgU5awq5E4oSiw6NxwpAhZi5pw6Iew7vDuCECw59vwqvigqw-GzFPXQnCty3DlcKkw51uw7UEwr7DiuKAmsOxw5bDihDCtS52wrgdw6LCj8Kuw6gwVHg4I0lPHcOhKgrCuHTDph14wr_Du0sEwrEABDHDqgcqw74aw750bsOv4oC5wr_CgcO7w4V3w6F0TiZX4oCaw6_DgnZAw4hDw6EcPBUUw6B2QQEOSsOnYXXDrjcIZsORy4bCpzJ1L8OQw7UvwqBGw79dNBrDvCtaDH7FoFYJw7pfEMO6dzBlw7NTTFvDvDPDpsOMw78Zw7MWP8OBE0bDviXDh3cxY3sOC3TDvMKdxZIIwrzCqMOOw4BRFcOhw4_FvcOCTuKAmQ9TDuKAucWTwr8hFn10wrHDqMKlxb0Zwo_Ds8ucFiLDuGNOw4oYFCfDosKwVUbCu8O1BcK0UE0sfg0WQgJ6VULCr-KApkprPeKAncOYGsKiwpB9fTLCocK3NlPGksK1wp0Ow6LCr-KAoDDDhl_DgcKNw6xow5zDiMWgZMKswo9gwrzCj0NxaQrCgU9AdlYMw7Juw4UiPy8WBcO5V1BSHMKPwrLCssKrKBPDkcK-MQtdd8OLMXjCrw7DvcO3asOZwqJVwqLCvcK_BMK3B0rDmcKqVRDDtmrDnMKdwqjCp8Krwrczw47DtzLDjg_DkMOZw68Sw74-xZLDjcOfw4XDoMO0IOKAoMKmJzDDsXABU8KPxbhKw7PDtUvDq8K7w6DDpsW4AAPCqwBYwrlEw4M3Ih3CqXlsGcK6w4YxPMO3w7TDlcOVdMKpw78Mw7QSw7BCJ0E_KcO5w6Mnw7QKw5bDkyV_w7zigKHDqj8Jw70xw7DDksORaQTDvitxw6VUwqF_w4fDoScfw6BwbxXCuw_Du8KxNVDFvcKNw7ZUwqw2w4bCs1_FvcOD4oCZwqQEwqzCtiVjwqM7A8OP4oChw7LCsD9ZwoHDnSddeMK-McKBw53Dp8KPwrF3wrTigLDDg8KPwo_DsMOiwrPCj8OYwo9_Sn1Bw71OxaDDqsOSNcObRMKvLsOSAW8ffsOOQsOwOeKAlMK8w73DsjEuDz7DuUY6w6HDn8Os4oCcdQxNw40zw5LCj8Kjwr1nEG1dwr1owr19Bw3DrcK3UcOTw5bDisKNwqgZw71Nwo14WF_igJrDhVtxWMWSc8OBYsKkKcOWYsONwrHigKJk4oC5w40EW8OewrbDgFLigJ4JHgXDqWPigKBOL8O6w7lxN8K6wr3igLnLnH3Cp-KAmh7DhsOdDisNNOKEomvCoMOa4oCdPcKt4oCwJkrDjQ1QYW8lc3k3J8OcNDdGwrzCthpCw6jDlF7Dr8O-GsOOwr9-B8OuZ8Opw6p0c2_igKYzw7DCosOcFMOe4oCmw715AcO0ecucxZM7B-KAnMOz4oCdWErCtxVgfMO-IsO0LihBW0kJxaFKw4owUVbigKDCo8WhCgI0VRHCo8KjxaDDq8O6xaDDiDTDuCUKDcOeQeKApsOBw4_DkGXDuxvFksOYw74Kw6NWw69gw4bDohfLnDXDuRlmxZIJwr7DnS_CsGjDs0vDjFvDvRJPLinDo8OgwrovDgrCrsOgwqAiGUfDpSnDmBfDu8Ovw6NcwrEYbuKAsEUWwrolfx3DjMO7XMKgFMOYw6Nf4oCdw4AfdVJke8Kjy4YewrsLwrhtwqfigqw2w5vDs2jCscK64oKsBnMlw5TFocKpwrDCtcORYMOxYwF0MEAxHcK-OMOYFUk-wrbDsHYzRUx8AFJvw4YhKSXFoMWgRFxiIMKuwqXigKDCocKww7gacsOzEsKQ4oSiGsW9w4zDq8Khw4hlwo_FuMOHBCBUwpB3BWXCpcOJaGzDjMOGwp3FvmLDnB3CqUTDj0g5w5vCtEJGe-KEosK6RkrDkDdewoHDvsKpGsOCw5xIwqg7CH03wqbigJTCujDCucOQ4oCme8KPesORP8ORw4vDtQYIw78MJh8twrMwwqxhZMOmMXLDi-KAusOhcMOpMnTDjC7DgcOIJhDFvT7DscuGTC5CQV0vw67Fkj3DhsOE4oCcbcOMwq3DisKuwrQjw4B_BcO_w6sFw6Btw5DDv03igKE_4oCTNMKNw7figJ5e4oChw7V0w5jCpcOXPWXDvcK3w6k_AcO9McOsYikBw7jCrcK0w6_Du8Ogw5PDn2PDr8aSZcKsLcOUYMKxOwHDi8OlXlhJZ1_Fk2rLhsONdEPCrFPCq8OUMsO1NMOTBGs5FljDi8K1w4RGwqEdw5ZKHcKxXkvigKFp4oCww4ZyVzrFvg7CsVjDjHRgw7vDiQjFvsKvw41hf3cNB8Ovw6_DocOww4MXOMKgw7bCqcK9Dz_DhcO-R8O_w47DtxXCp8W-4oCTQS8V4oCaw4_Dvghxw73DrsK5w4V1DE7DnkcXe8O4wrbDngHCunsPYcOvQH1LO8Kq4oC6W1BVw5_igqzDpsOqRsOcw6NywqEiB-KAucKiwqdlxZJf4oCww6Znwo03w4PDtlU7w4Z7OsO9FTo_C8OBwqNgQsOvwqMhw4XDuwkRw7Fdw4VBNcKqw5zDsMOVcMObRuKAnC7Cp8W9KlM14oCd4oSiasKhw5BEB3lm4oCgwrhlbuKAmlRDPSRowqkhSsOlIgIvxZPGksOre8Ovw4HDpjfCv8KBw70Zwro4woF2wqfigLnCu8W-fw92w6fDjsOCw6Icw6E-dxHFoRcuQMOtwqLCkCJULypBw6XCojLigJ3igJ1UcEFFA8Onw5Q0cVZdGxdVwrXCoMKuwqwBQyU1w5jCq8Kpw4FLSwXCvlrDryLFoOKAmD9ew60Xwqgwwr_Lhi7Cs8OfwrDDh8O_BcKmTH_igLBZw6N3MG1Iw5c3w78pw6ZNf-KAmkXCq3_DgVPDj8OfYuKAusOfw7lZxaEfw6N9FMOBT8ODER13LzMYw4vCscO2LHZmWAozw4RCwpASFgIuw6LCscKPIsOueylKUX_DlFkRw73FvRfDkE3DncKhw5ptFMORbMKpIsKdd8K_w5rFksK_4oCmAMOfWgtlxb0GKMOzwrZBScuGG0I8w40RFsOhwoHigJ7igJ1o4oCeReKAocOCL8OIF8OefsO2CAh2w4TDtXQRw7Nj4oCY4oCYFMWSxZI4P2QlBsOhVlIIMuKAnEPCkEPDsMOLGcO54oC6xaFuw6FOdwl64oCg4oCmwrPDp8KzTcOLQmtvJuKAlMOZw6geKcKgw4vigJTCoH_CuhzDg8O3wqsZw4_Dq8Opw7DDjcucfMOSw4rDmy0Yy5xuZiJoQRPDm8K5xb3DgQE6w74cC8aSy5zCs8K_w4rDhx4iI8K_FmbFvUHDkDDDsuKAnsKBdTDCrMOcwq7DgDvDqhZSC1rDkMOQQ8OXf8KwxaAZw6lqOyLDquKAuWPDtQ8lwp0Ew79tw5BLOgHDuGs6fsO8dEhP4oCUeExMADrDucO6bz7DtzTDicKg4oCUw6kf4oCew75bAsO_w6_igJnFvQjDocORw7oswp09G09rPcKwWmjFksKtbEPDrMKlGcOjw6DFoQnFvVLFknB0XR8HwqlaOMOIUMOHQeKAkzrDtnPCtcKwW8Ko4oChw51SQ8OsVBhhwrvDihTigLpVLAQVBMKvw5QBS8Klwq5YwqnCuOKAnsKnw5UBWG8Iw4N2exzFvnckYcK7OxVrA3lYHG_DhsOGw5ojw4LDvxEOPsO7RnbDmcKow49-wo_DrcKjT8KkecO0w4PDvMKndg0yw5LDtw3CsG8nw7AdHcOS4oCexb3DksKmZhQ1w5TCo8KkwrocwrfCqXnCusO8alEi4oCT4oCcPMOYw4dbYMOzxaAxYcK3w4TDjjV74oCab8KPwo14a8Ksw4bLnMKzw483w4TGkgBtTHlpYlTFk3zDglEZdx3igJ3DkWXCr0bCpyPDtHTDuyoLDeKAnVvDqMKgy4ZOxbhrasuGVH1tw4RpwqjCsC_Cv-KCrGDDtsOkwr7FoMOnw6HDgMOobk7DoMONw47FvsKl4oC5K8OATMOhIkwYw53DtS8oEnZCTjfCv8KgwqjLhgvDiirDkMOSw5fCpwxgYGoOR3cPwrjDusO4QsOXw4Icw6fCtcK1cFZDHQpaWsK4wqjCqQklTXVoamjDgMuG4oCmw4FGw7ECLinCnUHigJnCgRJKxZLDj8Kiw4FEw6zDk8O_DcO6TX7FoHHDo8W4YkrDvyfLnGXDvF_CssO6KcOWXH7igLDCrUAVPOKAuTXDg3rFoQcOasOow7ZNWXjFvhXigJrCp1ddwrASa-KApsOlSCMs4oChaWE5SA1Pw7zigJ3DscOQRwkPwrzigKLDqMO4ShhxIcO4LsWSw7rDrMO1wrvDmMOrwrfCscOXbyDDuMOVw6Z0eybFuCpLTVTDmcOqwqDigJ3DoMOXw7jDmSE9w5QVwoHCvg4Ixb3DsMaSwrPCjxvDtMKtw43CoGfCqQ87NwtEw4XDuiHigKIufz3DhhfDl-KAmsOd4oCYFsOm4oCww4woX8OkJeKAocKiwpDDsV8awrnCp8OTdxDDusKuwoEiCcO24oCgO8Kpw5R1NHbCpcKiw63Drk3CunguesOHCiTDnR7DjEbDl2gBBsKnwqowPMOFPsW4w71-bXs5w4rigLrCq1B_wqfCnX3DuxDigKBnHmDDugnDgV9aZwrLnEfDksKNEsucw5gFQsOTw4QXxaFmw4HDkMKzwo3igJrGkn8yLsKnFcKiwqTCsQd3J8W4MDlsE3xxbcO3IzrCvgDDv-KAosOrf3cgw68Hw6gf4oCeXsOobcOJw6Bvw6sVw6zCsgHCvcOvwp3igJh3DMK8JHF24oSiL3DDsMORcxzCrA5iwrs3GeKAumXDjsOYw4olNDc1w7E8VQPCu1cJeeKAmTZFw5DCryrDoSBFAeKAoWnDrxHDusO3wrDFuHcewrvDhcWgw5gtV8ODdsK1JnbDqsK1wrHDl8Kowo_DvUYjHMOUW3ADwrTDhUHigKIdH8K3w4F2wqkFxb4V4oC6w6FZwqEJ4oCTw7MtMF_DilQwXOKAmsK9w53Dh0wZxbhgw78LJg1xaMOsw6HDh3jCuMK8xb3igJjCqcO7xZLDtMKjwrjDncOXw4_DisOewo3CusW9w5vCqGojw7DCjQ3DiMKrwq1FbnUFxaDDi8Oyw5BVXeKCrCc1wrfCsMWTFeKAoMOlK8O2WGcvwr_CnWDigKDCnRRbw6xed8OCTsKyPSPCvjXFvhLFoEVuw7zDs0HCusucw7LDlsOCy4bCqxrDusOtGcOtw4VUWwdCb8KnJcONwqzCq2IvW2bCqeKAuQJTPcOcNMOURsKywrYmYlXigJ0Rw4Jew5zDp8O8WcK4U8OWw6fDnsaSw7HDmXdhQMOQw7UUL0JHUQk6BFxdUQUKFy7Dol3CusO8WT7Dh8OAw5oKwoHigJTCo8OgHxXigKDDkCvDkUhMT0Fqw5YN4oCew4ZGQcOTVB_Dp8Oow6zDp8O0NGDDosOuBB07WxYBLcKowqjCskgoa8OBXFUFblpKSMOUwr_LhltGw6cJw6F7wqjCp8OLw7cYw78Lw4bDmMO3wo8bw7wED8Oow7gLdsO_xaAlwrd3w7AsQh3Dj8OEdy7CjcOCXkU8xb7Dp-KAnsOiIDcUw6tJxb3DvMOuw6bDmMuGYjILw5fDg-KAnABVPMOyUcKh4oCdMcOnwq3FkgkPJcWSxaDDneKAlMOuw6rDqHNSQ8Knwp0Se3wlw5TihKIrw7M9w5VeQl9uwq_igKFKd8OGw7zDiEvCuMOsw6sELw9bw5h5w5jDg8OQw5ESw7rCtibCsMO3wrRFJMKhT2LCvx_Di0QQw65hxpJYHwfCpEZ4IeKAuW7FuOKAlBvigKHDkkoCw556C8KNw63DmcKobUlHZXMyw7_FuMOxKMKpwr_DgmUcam5fQ1NvBlrDujLDkMOQwp3igKDDisO2ZMOUwrPigKbCvD1Yy4Y7w6zDucObwrrDheKAnsW-QsOkw7F_XsOSWMKNw7rDjg50MgUOw5HDpcKnF8Oow6LigLlrbBfCphHihKLLnMODQsOkB3UTP8Ko4oSi4oCmQMOLOgQmwq7CocOwwr3Fk8W9wqzDsjbDnBl94oCe4oCww4fDm3jCsCrCu8K2w55rw6DDvzdBL3TDmsO6P0zCr0PDvwPDpsOexbjigJ5eXB_CnTF7cxTDm8aSwqkE4oCUw47LnMKnwo9nGcOaeOKAk8OMwo0oXgnigLoxCsOYxaB5DztxZ8Kw4oCcw7BLw6wkw70rw53Dv8OnOMOMw7o1DsOyw5_DhUHDmQXDgsKtxaDCvQYNw6w1wrFAwrTDqsOhw6jCthFedMOYUsOuOMOqw7DDgkE7HcKow50Vwrstw47DmG10w4Zaw50lwqzDscW4wrrCtz7DhijDj8O3w7_DuhvDrH7DsUfDrHzDsCUWxb5uYnR64oCTw4APwqPCvVfFk3jCoeKAucO_w5zDm8Kobm9h4oCmb0BRXTXDsirDi3HCq8K0AMOF4oCmGcOowq_DjsOBcnUmVsOSw4QBKDZY4oC5McODZuKAmTl2UllsCMK9cMO6w41EOcO04oCgy5wPw5bDg8K0D8KhZ08vw6bDl3fDm8KrckNXR8Krw5hNJcKgwrfCosKrWcOqIcOPVBfDqcO6WkjDlFBFwrTigJkiAsOZxbh7EXQnw4rFkj3Cu8OewrkLw5BSUOKAnjrCnV1NQeKAsBFeGTrDmnrCsHLCsGfCrHTigKBjw4AleEUGw4Mtw4QH4oCTHnZwCXRHw5LDjcKrKMKpLUVmw6FNeOKAoF7igJrCgcKdKTQsDQnCvDkuGsOpQ0HDjxDCqkbDpsOQwqTFkkxNw6FgZ-KApmg7CyRbGyDDnVTigKbFuMOpXcOUxaHFuEHigJTDqcKvw5Fvw7pzxZLFocO9C8OmwqzDmcOfwrsTfMO_M8O8w64Gw5jDjsOywqLigJpwWBrigLnCo-KAmghswqbCuGIjw4EWw5siAUUZYzFY4oC5MV8NC8O-KnhCw43Du8KpYsOWVwPDo8OexaEYcsOTYAFUwqbDmyvCs8OVUUHCjRjDkMKzYjFkX1_DpcKowo8SIX9HZAd5w4DDk1ofxb3CruKAk8Owxb3DsMKBW8KwJ3wjwrwRFRfigJ5EAsW-dMOFH8KxYR7LhgnDt0BiLF0_KRAZxZLDtxXDtTfDqMOw4oCiwqhpw4tGYcO1VWTigKJew4bDlcKsACRlw7khwr3igqwtQGUM4oC5w7kVFDYkwqDCrMO9OsKqem7CosO2bg7CqjrDhMO6acO8xbhfR1rDvjXCpMOmwqcjwrvCvMKQ4oCmwqJexaHCocOXNTzDscOyQB1xw6bDncOGOyPDvDzCqVA1w7bigJoyHV_DnTwAGsOmfjDCsA_CgXtQCsOfwqsFw60Dw7MYf8K8w4U-X1xYU8K4wr5MYsW4w75jaS7Dv3HDlMO_PsK9wq0VeMKjCMOIIeKAlB7Do8K6w7Jew77DjcO1fsucw74uw6hPAk99w7kNxb3DtuKAk8KwNVrLhsKNag88E8OAwqfCq2I9UQVPwqPigJ3CsBJ8FuKAucKBwr_DgFLDoMK_YjXDvF_CsRbDvVPDtsOHw7_DjMOow7xTPE_DvzXDtnIUcFDCouKAmsaSasOCTuKAoT9owqbDg8K34oSiEXpLHHQ5w6HCoMOXEwcDwr7igJ0fDgYDWFjigJrCscOeF8Wg4oCiwrvDl8Kww73CsOKAuT3Dvg52wr7DvBrigLpMHMOrH3_Dgx_DowBTw7cfwqFvcATDrcOdwr1owrrDjcO-wr1dHMW9ScOg4oC6w6rCpcOrwq7DpVbigJMiwrskD-KEonnDqSjDiUvDhgjCgV_Cq0jDh8O6dX9uw7TCtljCv0JXS8Kxw4J2wrrDgzHDtMOsw6kTwqzCsBpregJ6bUJPZ2M_w59Fw6hvwrPCp29mT19nwq1Nw6jDtVBqYUDDgMO0JMOoE8OUVBBJw6cOZMK_w651w7YMHMOeOwPCo3NKBF4VKgoqUMK6QF3CpMOLa2jDg8Kdw5E9w7FmKuKAmXLDk3E5KxkOxZLCt8Kmw6zigKYtfWzDoRXDpeKAsMKixaEcdMKPw55mL8Ob4oCaw6vCuVfDocOgw6MMLStjxZPCp8Obwr_Cq8KpAkVDPWha4oSiccOjwrTigJohYXfDsHZDemIyMiPCosKQQEfCvcOKwqLigJ1rw43DuG3DtR7Dmi1-4oC5fuKAuV9jw5rDpsOXeMOow4rDvsOew6dfw7HDhFdBGsOAw5xOw7PDgmFJHA7CssaSwrF1w53igKJJ4oChw4U8w4ZKcsO7w6UwPcKs4oCgw6lgNVRDxaDDu-KAuUHDqngUwqTigKYZPy3FknnDik7CsX3igKHDqcKnw4Va4oCiw68jLsK8wqnGkhYXUzTDkMOlK8WTDVHDrmrigKDDigBnw4TDsj4_LyvigJ7Dh-KAsOKAnGnigJ4jxaDFoE0MRVJSGMKuwqfigLABwr5QJMKn4oCmI8O1ZhQyGcOt4oC5CG1VSw56w4Yaw5nCtzfCocKu4oCcw7_Dg1Jx4oCYSz_igJ4kwrggw67igKA_wq7DpeKApiEmw50Xw6HCqcW-wrjigJkT4oCew5TCqivCuMOVxZPigKDDnMOGG8K4XsKQy4bigJ7igLpXCMO8dSoNKcK5N8KQXVpKw6dvRcOzwp0Bw7TFvU7Do8Oew5wjw4wuwqxAHMKsU8OScAcOflfCoGLDqgUVEx8WABHDtwPDucK7RhLDvHTCvkYjWsOuTmN0fh3DksOFNcOFbsK9NXHCrT3CocOndH5xCMKvOCfDv-KAsF7Dvy16G8O0csOJYRXDq8uG4oCcwoHDjD99xb3igKF8L8KpYBzCr8OzxbjigLDDt8OfA8O9XyBOGinCu0gjXcO-w6PCj3Eww5_CgcKtw5YYbBbDmGItQw8rw7HFoFgMexcPw73DjjACw74awo99fuKAoEfigJR-xaDigKHDnj_Do30_w4XigJzCkMW4YyXDusOXWE94F1vCqRfDqCoqw5gtIMO0FcOGOMKqwrfDgmHCsx0Ow5vCncKxw5fDpcKBw6d3wr3CsTfDpMKPxpIROsOPeAQO4oCTMsKxwrdaxb3DrcKnXcOYP8OaYMKkw78aW1_DvRlrw6zDpRfDtj7DgcOMw6NlDMW9TcOgxb0YwrTCu30Hw7Vtw6LigJ1Lw43CqGhqQMKxcMO4wqpywrpDIW7DpMOnw6BmVirCqnPCr2HCuioDG8KlCXQ0L2zDhMOaSuKCrG9cZzvigJhmwo_Dp8OXHMKkEcO8w7V4S8Ksw4TLnGDCgT3DvXzCkBx6DWnFvX3Ct8aSOsKhw5dAE8KBwqrCs8OWJcO0w7ooO-KAoD5NTxNxKsOsw6fDj1_igqzDr8OZw7fDoHrDtsK3wrA5d0YawoFXJsOsCuKAnsO-xZPCojouwqhqQcOLw5DigJ7DrhLigKDFksKyXMOcwqzDjkPDmMKNKzDDsMKy4oKs4oCwwo8VXGM84oCYXHjigKLigJjCthh3w4cYL-KAoRrDqVhJwrBmRFYyw5LDhHvFksOxw69pKcOSwo10YcOiYAJTJ1PLnDjFocOBw4nDlwUxw7FxKMOOw41FScOGNcKkw5FRwq_Cuxkjw4_DoSIaw6zDjsOjwq7DtRnDjFDCj8WTw78ZwqvDvB8tw7vDvOKAmTFfC3tXbcKxdcONGcOPwqjDjRQXbCTDs3Ycf-KAoVgLwqxdNsOBw4ZlI2xEw6gQelVCwq_FoMOHQRrCuMOvwqvFoHEPwrY8TizigJ7igJ7Cvk1cU8OPWgMNAnpnEzTCueKAusKhw5rDlRBVdsO6wqjDscKyQW7igqwjLgfDmiE8w5oLwqHDscOBy4bCvhrigLDCuMKrEUjCuh7DiRbDpgrDksOyw6LigJhRwpAgHXZbw5XigJNLw4DDisORNljigLDFvsOxRsWSPcK8xpI7Y8K1KGvDiUQ64oC5U3DCogfDguKAnC8hKeKAocOPw4_igLlEWMWhD8K84oCcXMOh4oC6w4JWIi8KwqnigKIEwr00BSkFw4nDiMKpw45mwrzDjyfCtDdxPcOnFnJLa1DDlcOYwoHCtsW-QcO0w5_igLrDgMO4A1nDlB_FoV1AakEtxZLCneKAmsKhZMOoBmUDT8KoGcO7EMO8ABjDmuKAoMOBNcOgKhNGJWo7w4YxOMO9VAY-QcWTJ8Osw7PDq2Jiwo_DkA4hFWfDrcO5w5vDsMK_4oCew740HQMtOTshxbhfw53igJgOIBISBUDCvsW9fD3DuW0hAcO44oC6w7fDiSfDvsK8WQjDvibDtGLDksKNwrjDrsO6wr7DqMKjw5dnwrHDn8W4xaDDtSoPwqxlEcWgOEU8CHgHDy7DvQvDpi_DvRwzxb4_w4XCtMOrP2PDmsOxxbgxw6nDuDPFkjvCvcaSccK3w7cww6HDtS5mfMK5wrEFxbjDgXLDlHt44oCTwqjDgMO-X-KEosOOw4_FvsK-xZPDvXQjwoFjxZPDn8K_Q8Knw6_DscKmw5MHw6DDsMOeZRw-LcOGw77Ds07DrB3DjsOjw6DDk8KPwqQJP8K7X8O8CcOrR19gfmkDw4PDt8Kmw5DDlcObwo_DlsW9bjTCtHXCoMK2wrkV4oCiwo3CjSjCqcKrQT7CgcK_VVrDhA0pD8Kpw5nCucOISEtDE8Odw7RRaTLCtnJDwrBNw4DFuMOFw5PDoRMZZQnDulbigJkNxb5Jw6LDhh5Hw6jCucKxPwk3w4ADw7bDtAJ6cXkpMcOPwr7Dh0HGksOQa8Kh4oCYLl9jwqXigLkKRsO7Egt9CcO6VDp9LMKhDzt_4oCYLsO_HsOsw6jDsiYKw69CQ0kBChcvw6AMY8O9b-KAojRwTlMPwrrDlsK2CMWS4oC5w4bDjcKqPGTDlMOc4oCaX3IIxZJ8LCXCucOGeiI2O-KAoMW4P-KAosO9w6stw5TDnylDdkUaY8KxG8K04oSiLBTDtFhEDFXDoR3DqQsbFgITe0JPWcK7WcODO8OsEsKyC8OSw5HDksOGHsK2Mh85KXRPX0NkW8W4R8K3w7VZw4xZxb7DgeKAmjXCoXfDuyc8w7VhEgvDug0Ow6PCtHHCkMKgw4s2w4cUG8Kpwq544oCTw6vCj8KdW37DvMKNxZPCpcOfZjvDnsWTUcOfAMKrIRrigJnDkz8UEcOfw6PigJo0S8KxX8KkH0LDn07DqFtZCOKAum3DtMOQYMKvwo9qBx1UOMOqwrDCv8OXQsKlwqMhSsO9w63igJgaw6TigqxAwqYYxbggw7bDsFfigJrigJhyMw7ihKIEM-KAuuKCrGbDssO_csKjOEnCumpuTWchWgcqw5B1wq8eQ3PCt8ORP8ODw79rew4Kw6rDk-KAmFnigJjigJ7DsBRvBMOGwrshw6lWBFLigLlZBFLDvcOgHMOjCMOPJE8EwqYFITgtFMKBV0PLnAAiwpBRxaHigKBiw7bDtTfigLnCs-KAmHQjA2k54oCmKMKsakDDg8OtLnQNDknigJTDncW-eiTFvcOOW2fDr34fEcOXclhMPcO4w7sKw7DDncKlw4jCr2HDqgs9w6tgw5jCuMOHITTCrggFVcaSTCDDi8ucXhQDfGJ0f1PCusW9wr8AXzjDvknDqE8Dw787wqDFuMOUSWAJw70jFhZxCnABwr3CuH1ywp03ARd_fxfDulfCj8O9IMOow4VswrrDvcKvw7_FksOdwq_Cv8OGw4HigLlNw6zDjzTDo3lzCMOWw7NtwrHLnMKs4oCmwrlQw4LDrMOzL8K4w6_DsRPDnHfDuQnCph3DvhnDo8K2w7_Fkn7Dm8W4wrLDt8O9BcOuOMKdw4Edw7figLnDqMOxUsOHAMO7w6JRf03FkjMiTuKAocKyN8WSOOKAueKApsOYd8Kxcl3CgRsZI3_CpQ7FvRpNccOUw67LhsKjHsK6w73DqBXCrE9nYMO1cQ3Fvh88w4TDoRfFuMOgQMO0w7HFuDDDlsOzC0www5bDt8O0DxHDuE4Cw59Ow6BbUMOVw5DigqzDksOaGsO-U2TDgMOfKMOIQcOKLXHCqsKmDMKkJMOFwqPDqUYc4oCTSuKAnMKw4oCcG8uGw43CqzZSwrTDn07CtMOBDsKdTgbCvi3Du3nDtsO5VyzCsBRtxZLDh2HDusucCxIXwpAQw5BrwqHDl14Nwp3FksKxw6ISw5ENEsO0euKAnsOew6BlwrxPw5VTR8WSw5hNwqdwHsKuw6fDnsaSJcO7ecODw7PDp8KhwqbCqMuGcxcuw6I3w6zDqcOPwqhow6DigJrCriE3LHNYeDjDgTs2EMKhxZLCtx7DrGXDjQnigJ59y4Yz4oCaRcOULU7CplvDkcKtwql0QuKAmMOKwr8jwq9Hw4A1w4Qdw75XAhHFvhTFveKAusKlN8OgGcOiCQsnCxjDmRrDgcOMw4kMw7Y-w7YIwrkS4oCeEsKm4oChw7Z2wrpaaQZuw4Z6IMOOVhnDhVbDp8ORT8O4wqfCrcOew4HCvMODP2HDmcOrJ1jDs3sHw4_Dgy9iO0rihKLigKZOBxtpbjgo4oC5w4JBYSjDtm9ew4JOwrIjwqHCt8OAVsK0cHt9LDHDmsOPe8KrYMOaTUE6Kk_FkyrCrMOHVhXCnTbDqsOsw63DhUk3CMK9wp0ewqrDrXVQw67DgMO24oChw7figKLDs3bihKLCjzVyQlwQw65pBcOvS8O2w5LDnMO8WDrDvcK1W3HFksOp4oCeKcOR4oChwrHDnxtpBXEoYTxvw6guQsOvRCNGw6Y6w5A_w5vFoMKmw74yVMK0w59CfmM6EsOpw7DDnsORLCBxw67CuMWTHgQ_w4LDrhhlD8K3K8Ou4oCePgTCvknCgcKwCcKw4oCh4oCiwo8NIlPCo8Oow7Z5wrjigJPigJzigKDDiMKkWCTCpMKlIsKzwrAEw6UNw41oZUt44oCUSXFsw67igLB0SMOuw4TCow1UdwzDgSMsEWomLlAxciXDvMOudHzigJrDj8OIwq9pw6rDh8OiGsOJ4oCeduKAucObVw864oChH2FyYRNzT8K3w7Bgw60Zw6EXbi8Ow6IRbsO_N8KgFwfDqMK8TSfDgcOnbcKxwr5weMK5xb5sHMW4w6VHwr7DjgnCvQ14wqHDr-KAocO-eMWhw6vDgeKAlH_DhcOzwq_DvkDDmD7DhMORw4Y4xb3DujNxUMOu4oCgwo0bxZLCvVEXMMOpw4_CuMOow7UOwqZdw74Fw7ccw74VxpLDlsOvw6DFvcOVwrtow7QwRR_Du8K1w7nCsjzCrMOdbsOFw7bDkBDCticmwrAzPcW9wq3igLB-wqwNNGPCpT4L4oC5RRHLnMOPwrbDg3zigJM2VnLDlMOZMmhjwrPDnAI7bcOsw6vigKETw7FsNhvDq0sNw5h_w7FY4oCafsO34oC5f8OHGl1exZMbw63DrsOoOG7Ds8W4w5bDkMOWxaBqwrp7eV0txaDCqytRUFHFvcK8wrJiZBbDpcOhw7rCrRtIw4xIQWxSAsKuw4VGwqA9IwpP4oC5LmPDt-KAkzfCtlNsGMOtCT3DnX3igJTCri8Gw7DFviXDmRF6wrYt4oCeflnigJpeOMK9PsKh4oCUXTxSxZPDgVZcwo3CtuKEosK9a8KdwqU2wqrDhcOUW0tDFOKAusOTScKNdXBVRxkRwqpnwqVpwrXDtsWSw7XDhmfDj0PDu8WTMsO7eDXFk8K7SMKpwqlDUU_igJTDscORwpDDvcK4PjQsxZLCoGtvBBMPC8ucwrPigJQ3wrtkI8O1w7Quw5HFvsuGwrl1BcKxwrdiEMW-EQ7CvwRfw7jDhDHDglLDjmHCrnALw7NAw5TCtWjDhMKkw4XDgifigJkuw6fDr8OCwr7DkwM2w552wrDCpcKjesOyw7nDoXTCusOM4oCaVCTCp0YjOsOCC0kEwr8gw4IWNUwrxpLDtsWgGMK2w7wpHnnDvivCocO_JcOWw7x_xpLCtcKgc0xhw5rDmMKnw4MfVcOHw6FFTTwOw7PigJrCsHPDjQnDm3HDvMKdYk3DmAoYYDFAxpLCqU7ihKLigLBOwoHDoMKrSEfDo8OdFXs0w5jDsnTDmGrCo8OdVhfDjUxCwrV2BMOexb7CvxHigJTigKJ2Oihlw5wvY1JJw7VzQeKCrMK7LcOcPW3DoRbDoOKAnktRxb4ISgpgQQvDhuKAogzDtsO4w5kRw4gqT0I1wp3CvcKPw5HCvsKPw718w5dYHcK6JhrDkHHCrxYNA2USw7jDocOXwrwR4oCTw4TLhsOPOH_CtcOoCiIyQ8OgFcOnCcKvK8Oew7DFksO14oCgY8KwC38nT0Rdwr_igJrDtMKiLFzDjcK-4oCgw4sp4oCUEcW44oCTw4DDpCdOw59Vxb3DqsOWDnTDtMKPYmB8HsOjcysEf-KAnEVm4oCiwqnCqhXigJPDriFQMXTCpsOcwqBmJOKAucO6wqrDhn50fX8Yw5lFw4AjWMO0w7nCrWxDw67Cs8OPX8ODw4zDsjPDgk_DpyfDsMKiw4_Dv1vDkMO_TcK9wrkn4oKs4oCmw6DDjXVee8O8w7vDtMO3QC_CpsK5w659w7VXw6x-w7UNDj7DmsOFw6F8Ew4bQ3DCkGPigKDigKIkVsO6wqAzGMOzOcaSScOnX2PDgsO2N8OowrU9wo9OdwPFksKmRGBlw7guw7Y3N3F0w7gRxb0-w7waR8W4fkNow7_DiMOiw7HDr8OU4oCUw5IuwrfDg8KPXsOww7FtHMKsw43CsxjDtGLCrSsbT8KqAzBfw6rDgcKlH8W-dcOHYcOnQT7Fvm90w7DDveKAlMO5w7xPwrHDs8Oxwr_DoQnDu-KAnMOh4oSiR8OowrjDm8KPwqbDm8Osw6HDmcK_4oCUM8OOF1dXEMO2UsOk4oCdFCLCqyjFuD1iFsOjXCpiUxIRGRvigLDDqzEhw6jDisOgZ8OLYcK0w490w4dWxaAVATfDg3M6w77DvnXCulnCsj02w4QgHsOdfi3DrhXDtHPCgXrLnMK8wqTGkiFnLXTDm-KAsGvDjMKrwqLDmVIDdRbDnMKoLcOZw49bGcKhy4bDsGYSw7okQh_CqsO2LsOcFH8FK8ORw4vFuMK7CHUFw7bDsArFoTjCp8KsCRU9PcOoWOKEokLDi8OKDComAnxtXDRWxpIuw6PCr-KAosW4HSx8bcKhw67CoAfCo0vDpsOww6DDhsOre8OVH24xw64ww7Y04oCmxb7igLkBdMKdw7Rhw6phDsKnAGdcF8aSU3nCqXTDiHDDhMKmw4XDoSpb4oCUy4ZrUcOwwrsaTMK3C8aSN8W4HxTDr-KAocOAKF9Gfl_DhGdHwqMgOxw5w67igKBoc1BHD8Odw77CvsOHL8Kww6LDswvCrMO5wrzGksONw6DDs3h2w4UQw7vDmSzCuGUxOCzCj8OFEcObwqDGknRPwqYhS8Ksw5HDpcW4w5LDpeKAlMKpJ8K-asucw7NQZMOEV8OBy5wTI8K-wr3DmMKrwqHFvU5Gw7l24oCaw59kwqvigLBaw54Ww5DDl8OQw6XCq8OsdVHDomxIwrd3RF7CkBciPMOsw6DDpiLFvcK3wrfigqx14oKsLcO8w7g5E8KzLzPCuVxFRlEcbuKAk8OEwqPCoDYVwq3DrMOrOwbCq8KkwqjDnz5a4oC5O-KAnA1oZ29fw5HihKLigLlbNSlIZ8K0TynLhkUywqHCj8OLwr9M4oChw7figKZb4oCdOwLDqMO04oCwwrlXUcOYWMWgwqrFvSYm4oChKsOGe8O2w7TCt-KAmcKQesOrKlLCssucxb5ywrLCucONNMKgwqljAF0DUwRfxZNbf03DmifDnzvDsRhxGcOFw5DCscO04oCe4oCZPsOBZ3_Cr2LDpA1lIx9JaiZ-w5DCt2PFuB_Fk-KAoMKkxZN6w5R1T2DDuMOBU0zCr8OQw7EJwrzLnMK3L8KgfwnDvhvDkH7FuF7GksO2w7vCoD_ihKIQTsK7w68Ew7RicsKPXMO_w6vDpSHCq1_Dv-KAocKkwqNjHTDDmh9-w7k5xb3FvsONw6DDsG4Gw7ZLHMKwxb7CpuKApgcRwr_DgeKAnsOvO8ucdCfDtMK2wr9GxbjDtRnCtMO5w5nDoEFLFcO2NlYJw7lXeMOxw4Ufwqg_EcOWY31FSQfDkXxzfDDCjUxHX8O8xb7Dq8KzMMK8w78CB8Obw4vDmF4Yw4HDimQTxb4M4oCUw6PDqcOsbcOsbsOOw6NIFMuGL8K-w4bDpuKAucOPIC5zw5RH4oCUb8Orw6pAfVsDKhrDhOKEolTDqcOuw6Vi4oCdwr4ANwtzJMOgwq9mwqYhw7Z6EsOCw6LCosOYQ3og4oCiw644xaEaxaDCjeKAusKBw5jCvsOhxaDCrVQrbF0lw7TDicOWw5jCuW7Cj8O1a8K2WGUBWMKjw7M_JcO04oC5UWIfwr3LhsO2WhDigJTigLnigJnCoMK3w5VAwqvCuSoaTMOVw5BgZeKCrBobU-KAnVvigLojw5_DjAjDl8O1NBDCq3kRw4HDqsOnw6DCqnwGw6YXw6jDssOnVcKgwqzCoOKApsOzF8K0CMK9OuKAncO1dWDDqGABPXsLwqgzHcucwrs7w4A_IUTDqj_DhSXCoR3Dg13CoUFIdMKdDWDDoG4CLS41HHXCocOMdkLDi1EPdkHCoh3DsENkw5plbmwpw7DCjw3igJp_TCDigJkIw7zCtcOcFOKAnlwN4oCmBcO_D1ZBwrZwwo12w6fCusOew5LDuiHDl8KjEOKAlHUFKcOpbBsiHOKAmMOhw4LDj2_Dux7Cphx-4oCmR8W9P8OBwqLDp0_DscOUw7tXdHNdHGZ5YysrCAfDueKAmDjCuhXigJ7Co1R3HETihKJiK1DigLlp4oKsChYDelrDksK-w7s5TxXDqcWgOcOiw6TCoMOiLMK6PcK2Anx1wrRQw7XigJ7CvsOGxb5ib1_DjUJWw4HDglbDpWbCgcKqAMK6PXvDusOoEA8WJG86wrMfw7zDosO8GcOtAxB_Ixxp4oCmV8KQW30NZcON4oSiaMOqKUFLXxnCo34hxaEHw6jDjMOdBShuw4lEeUcOanlfWVs2blZcw4U1FsWgw4TDvBhEw50MR1J-POKAnEAuwqrCuivDkDbDksWS4oCgwr5aw6RVwqQjMysGw7lURX4CCsO4W8OcZErDisK54oCixb3DqsWhGsK0dcO0wqF7YBIjw5NiIsOOJsKmw5lDw5d3wo3DgC0oxb3DscW-w5AbE35DL8OKw7vCpeKAnQnCvuKAk8ucw4XDp8Kdw4DDhFXCjcOqw45JDDIlTAvDh18TxpJ7wrvCrx3CqivDm8Ktw7c6wrx_SychFsOuf1LCr8Odw7_DhnNewrvDr8OEwrpyw7jDpTrigKBeAC8uw7EkDmXigKLigLlAfsK04oCmxpIHw43DmG0Kw4dGwqYRHsOFKWEyw6DDpxjDt8O8F8WSwrvFk0HCv8ODeTTCucOpw6FhSy3DtnYPw6nDosK_Z8Khw7gT4oCc4oCaw6xEFsOiwqrCr0dfwrIAwrBNeEHDiGXDon1f4oC5IsOwZxxwwr19wq7Cv8O3w4XCt8Ky4oC5Rn7DhmLDsMOhw4fDmMObf8W9w53CnR0cHHzigJ4XHzMhfMO0Byxtwr7DgMOow7QDw5zDrsOrRX17EypZw4HigLnCq0vigJhbQXcvw43Dh8ONwqIcRi46fFYaYlLigJwQTMOgwr0jw7zDoB3DpMWSwqxoD0zCpQbDo8OZTT86wr0zwrYzwqzCsX3DjcWSfcK8KcOdwp1ORsOoxbhewrfDg1oywp0-w55SxaHCjTfDrcKjwoExdzUME-KAmX4HDXRawqnCocOew6giSsK1w4_Co0BbEcO5w7rFocOINzVExb7CuSnDksO0wrURwqXDhn5ew60CxZPigKLDj8OBw7TDggVoxb5XZ8K0w5fDhllFTcWTVVXGksKq4oCYLsWSHC1gw6_Dr8W9w7TDslzCtMW9w55Bw51AAzLCqsOS4oCYUMKQw4DDnuKAnT0jWyNVC3XCqDMmw6vCusucQsONRhfCqsOWw5p0ehPCuEfDuRDDrEh4w4cEMMOKw5vDg1TCuMKlwrcDXFjDlC7DkcORwq19w6zCoGHCqwNtJgITH0vDmOKApjozKcOwOWlRLBQRCE_DtEV4wqwLQsOdVOKAmCcOHsKyPcaSCeKAun_DhsWSw6M_YcOFw7MdwqzigKbCqsOww7fCsMOCwrPDq250w7lAwrzDiMOyw4EB4oCcw49ewqgBduKAmsK0wrHDhXjCv8OFw5_DpSnDgV_DsFPCp8OTK8Oixb7CsyJGHMOYw5vCs8Kvw6_Cs1HDgx0uW8OtWBjigKbDmzsww6YTw7oaFsKsGkcDVDsawqPDlsOHATlBLiw-xb7LhsuGw7HGkm98IMObER84w7nCsScPwrInw7hh4oCZw5sXw5XCpcKjw6EOYSfDuBXigJ7Cu8Kow6kGMsKrwq4iNjMYwqnDhcKxw4hjEihpw4lGVWcBMivCr8OhSlYEf8OTZOKAncK2w6fCo8KwKeKAusOrwqYgwqc2DXk1w5figJjDiRTCkHrDlQ_CueKAsH7CqGTDoS9Kw7JHRsK0F27DhAfCoeKAnsK9flN9A8K6wroHw5A_NsONwr5-GXPCq8OPGMOZ4oCU4oCYUVgHE-KAoUDCusK9wqsEwr3CosKxw7fCsXzCoMOIHl9Iw5Ui4oKsw4U7xb3DrVQpxaAaw6_ConvDsjEmFkTDlBfFvcK_wo_igKHigLrDlDHDuMOCw7FPw5NJcMOl4oCZQOKAojvDtuKAuk5-wqw3wqHigJTDvj7CpRDCvMOUw6nDkMOLdsORw4nCoT_DusOqc8K8eD7igLnDncKhbDwrdcOBSsWgNl1eEcOTw57Dr2DDisO9HQw6wr_igKFaZw1MVsOmYHdjC3vFuMO94oCYw63igqw4DMO2Wz5fHMWSIxzDvsKP4oCZJMOIw4VtccOpZ3HDqMKtwrhYwqTLnMOhJ-KAk199Kz1vw7figLnDv8OAc-KAmsO_xZMpYU_CtALFuMO9wrs0wq_DvsOFZ8OfYsO7w6jDnzDCt8Kwxb3CuyPDg2jDrmwnw7DCtSjCrCzDhS3DgsW-WcWTxpLDtOKAmkxcw4tJZyxjw69Gw6BDEi7Dgys8EMOOAcOuCMWgdENlGlvigKHCrBA8w4vCuuKAnsOtLMO2wqnihKI2eMW-ZsKBw6fDly3CseKAusOBxb4-w4sFw5s3XcKw4oSiYsKPwqfDrMOpBcO0c8O-w5rLnMOww5TDgMKQ4oCcOFHCpCrCoVdF4oC5wrkKasKN4oCiUWbCoOKAmhwdFcKkwqgpIUld4oCmw73CvDrCosOUL8OCX0UBTsOKCjDCucKgCMKNCxrCuMKowqjCjcO3GMOtw49pa0LDj8OBHMOuEcK-wrhecgPDncKzw71oGGpCcmkSw6ILwqMR4oC6F8OBwr40FMKuxZLCp8OadEU9RzPDmAd7w4DDhMOLFsOaduKAoMOQwrE34oCe4oCY4oC5GMO8wrPigKbigLDCqwV0wqzDtWHDqGgKAwdGfxsjw542w6dzRMOBw5DCgcK6wo0eWwZjwqYFS1gHwrrDgiXDkhsOw4FOwrAJwrDigJrCtcK_IVxcw5RxWVzCuOKAmcOgw7dYw78CwqPDlsO_4oCew4dewr_CoMaSxbjDh2rCtBY2Ek1w4oCdw6XDjBRkwoFnw5F6eBbCpsaSwq0wfcOswrDDpcOZxb0ywqbDm8OrYcORXwNzXsOKGHM8wo9hwrvigLnDkjHDt8K9w6JkGwTCvsOdXg1NwqLCryfDtMOCw6lry5xWBMO4VQTCv8Wgwr19SeKCrD0yQl0QEsOiBMKPGE_CuMKxAMK4wrPDn8O3CHFGOAtfKiN7fsO1dcO2w7XCt1B7Ow95w5UpwrwvBhHCqcK-CE7DskRaacWTNMWgxbjDhnjFuEXDoMOTxaDDo-KAmMOK4oCewpDDg8OIxbhdw43DlOKAnB_DhXYhxZItwpA44oCwRyIKw7hYasWTF8OSw7jDusO5EcOuLDpOSMO1wrHDhsO1IDvDpCQFwqHCtjgbwp1tLcK4w5s_y4YxxaHDisO04oCcVcOcX8OeRsOXw4g84oCaY8Kzy5zDkMOcw6jDuHR7wqNLBF7LhsOgH0PCr2jDog0VM18YOEbCsBjDn2QBw6pAw4fDmGPDnHvCvMaSGXHDgA7Co8K-w6www50Tw4fDqh8XwoHigJQpQMOeBsK8bAfDvkYqeAPDrOKAnMOPO8Otb8Kxw67Dt0Avxb3CjxfDu8OlBcK44oCew74zw4bDqsKlTsOswrVHYTPDhwQLScOqy5wOVMOAwrzDp8K7y5xzfw89TsOnw5HFuBbigJ7CrcOFw7s4w7zDuEvDrH3DuRfDgsOLw6figLnigLlBCsKgJR3Dgy1eV8OsDcKgw7vDr-KAuQN2wqTDtcOEex3igLnDtwvDrcKzKMOswrA4bMKzSGzigLk9B8KiIHzDum8QF-KAncK8d38KdwbDhATFkwbDpFfigJ3DoXpWNhLDksKvI8Ohw4Y1w7bCtcOxCMK6EkpnD-KCrMOPw6UQeEUEw4Ih4oKsG1TLhhfDosKuw7nCozk3FMKPc8aSwrHCncOj4oCwwp0cB8OsZMOZYjfDnRLDu2nDljjCoMOzw6_Dn8Oiw73DrMO1JcOoY8ONwrEYRsOow710MMOuwqHigLAhccO2GMK6WMKnJV3DjEIVwo3DpsOqwqg2w5VCwrHCsTbCssOow7BXNVQRwqnCpOKCrMOAC8Ovw4HigJTDgDvDscK2w4kFJULCrw5FZR1cw5Q24oKsKhPCgcK1wrczw6LCs8KuwqJ5wqQdXXM9SMKvTuKAplXCkDHCvOKAnMKdw6ASYwnDpygxesOvRMOow43CoW5tTHDDjWHDpmnDiz7DngYmblbDkMK0NuKCrMW9wq0RI8KlHSE3IcOww4bDkMK3wqfDrEzCoGtjw4zComIGdcK2HRdNwrTCoGFtw4JCYQljd1tGfmfLnMO7w5vDgsOIw48MWsOeWkwEJnAjwqA3w6jDkMKtdmfDkW_DvTPCpsK2xbjDoEnDkBnCrF9Ww4ZWwrw6xb3Dkgl3wqQSNsKjNcKwHcKj4oChwp1YE8Osw4bFoWE7w4IIaywAS8WSw7sPLinDsXnDpwnCvsK4YOKAoOKAoHTDlV5xMFIHw5UiwqYpSz3CvcKswq_Cr3bDkCXDtARfxZMzw5_DmwY3w5nigKA4cH0jd31Yw7nDmcOSw6Vdw6Edw67DgcO_xbgLIsO5w7_CulkS4oChw4LFoTRk4oCUXUUi4oC5YUjCogfDnELCrcOgGWHigLnDpMK8KMK2ACnDiMKn4oCcV8K0w51iwrTDjkdlezbDssOrwq8jwqsiHjnDlUkoa8ONQMO9wp0cw5Q0wqQjPcOZF-KAmMOuRsuGdcOQw4d1w75mw6kO4oCgSHcxRCZ_wo_igJpYZ1Rlw4fCoMKtwrYIfV3CnRge4oSiw4TCveKEoifDkll1Jx9twqDCqMKmF8OWbuKAlMKlw73DtgJ6GcO4J8Ocxb7Ct-KAolgIVE19wqHDrxgGw6_CqCzDnCjCvcaS4oCgw545w5zCnWbDnF96JkV9wrlOBV_igJpUAMO7OsK0b0oOwrocw7rDk8OWOSnDucO6fwN6McOrTsOAw7lXw6xLw708I8O64oC5FRxNFWFbw6zigJRPw6c_OVYRU34XMcOrw4hYw6h4Dl10wo3CtcKxNhx-cMOICMO_wo0MdsOJwrnDpcKgw4vDtQpuMTjCuC_CpcKBE8OAU8KiFXjDseKApjh6w65bw6nLnMO6HcOeJ8OAw5_DucOqG2x8w7Ahw64vPcOCw53CsV7CtHQ1wqHCrMKhxZN9ezZCYmPDocOgw6MJa09HacK2xaEtYcKww7HCseKApkPCoAtcw4M8w6HDg8W-w7daQQrDisK4w7HDtOKAnUZjwqkgAMK7w7nDrsOYw4t3w4LDni07w6zDn8K0w4Z-OnXDgwnDu1keeC7CoMK_w7YKw7oH4oCeXlzigKJ2w4TigLAbwrTCuOKCrOKApuKAojrDmi3DlWTDkOKAumnCocOEVAfDmQbCukjDkcOWw4JlFUUEKcW-xpLCt8OiWThcJMO0F-KAosKhwqHCpAFlDcO2w6XCphYwdMKyw4PCpRhGw5PFoEzigJ3DnGF_OlDigKbDqMK8UMOYR-KAuiPCuz0Fw5HDuUEww7LDluKApsKx4oCUOXTDmMO3w6s4WMOCw4DDmRI2fi7DrB0NwqFrZwQjZ3M4EsW9w5jDjATigJ4kRTDDksO7w7HDuzrDkMO5LVkUbMK4w5HihKJDw4VcD2d1VcK5MRpAw5vDluKAk-KApsaSw7fCu1nDgsOUw58GRsO-fF0fI8KmBwvCuHrLnCPDlcOfEuKAoi7FocWSw6TCv2VEw78nw4zDu8O-AmsRZ8KwEcOzHgE_wo_CjcKwM8OYwo_Dk2DDhDfDgsW-y5zCqizCoMKPEsK7w64MwqTCvn7Dhl0B4oCcw5TCtDt7e3cNw6nDisK5w71OWsKy4oCc4oCexaDCuQwSw7gnentHfcOUwrgYwqPDksOZDEXCvsO2w7DDpsO9wqomZ-KEolDDtGDDoWoOB08rKcOiO8O44oSiw4M_w5oZMSl-dFp3XAoXZ8OMdeKAph8BDU_DsUF-XSpqw68UwqDCocKnGMKtw6zDtcOb4oChKsORdcKvFsK9U3XDqBjCrUBddy5qw67DnEJzdwHCqlgcEsODwp0QZMKtwoEocw0k4oSiw6sgw4VCCxksRsO5fsOGwqjCuMOiy4bDisWSYDTigJ3CpMKhwqvCuQZ3e3oxMjbigKZpceKEosOs4oCmTcO0wo09QWxyKTTDqMOoSsOCw61POsK-w4klXDTDtsOCBSPDtsO7wqY-LMOIIcO8fyTDoVJENiLCrlXDoFZlF8OaBsKnwqRWQcWSFcOMPRXCvT7CnX_DozTDp-KAlMONw6figJQNAMK-w5pFw7dyV8OdGyDFuAbDveKAusO3ScOrwp10w7oTOh7CvRfDkAtYBcOww5QXxbjDoHDCvRsHPVfDsMKsw5Ae4oC5SRrLnMW9POKAoSkfBcO24oKsZ3HDl-KEosK9bn48dsW-bzDCssO_woHDj3kdw67Dr8OqwrvCoAvCvWolCMO-wrHDhAk0DsucGsKkNsOg4oC5b8KwwrbDtwITw7fDp8OQO8OQw4dow5_FksOCw6oiRsK3G8Owwo_Cj8KQNnTCscORw7vDhsKyd8K_w6wFw5dwZ3hcw7ZAcEoI4oCZw7LigJzDmMOnXUcew6Nfd3EkVuKAucO8CcK8O8O2w7Ndw6jDrA50eALDj8OefjfDgxHCuzfDncKw4oCcw454f1UcT28uHV7DusOAR-KAuhvCsxZGCcO94oKswrhywo01wqFnXy_CoMKvIcO0wqVmwrrDiDU2w4R1HS3DhDDDpuKAoSjFuOKAocKnw4J7wrBXOE_DqOKAosKgwqlKw4fDlTdmFMK3woHDhSVXw7gk4oCgIcK2w6AqYcKPRWDFoR_DnBLDrcOg4oCZaOKAucWhwrEKZMK2wqTDg8Oo4oCZGMKhN-KCrCbDo8K6xb3CneKEohTDsXXDqcOkwqrDpsOaBF8fw4YuZnAKcsOG4oCi4oC6ccuGSeKAuWPCq8OgLcOJ4oC5w718YALDkw3igLnigqzFoeKApjYUDMOUwqFkw4JiY2HDhcOXcOKAniHCoTfCuWQNKwJlFUjCqHzDnBF24oSiBUgcw5LDisucW8OpwqDFkkHDtsO2w7c9f8W9w4XDgHfDsDTDvB3CrAfDvQt2w4J_4oC5wqNELRwmG0vDkOKAucOddsObMSbDkkjDvmLCkMKmdMOmw505HxXDnMO3VsOGw7TCpQvCuMOnw47DvsOeTQvDvW46w6h2w5FFJ0FvwqMaHHVQw4fLhl9L4oCUwq9xNUEtw5vigJ0KJsKQFMKmGH3CvXPCuMKoew5awqbDqnDDtsKy4oCge8KgHUzFk8K0YcOOw5dwZCLDsQzCtkFgwqwbw50-DMKpw6zDjUXCj17Dn13LhuKAk8O-cmlZw5PihKJLw4gLw5AxUuKAsMKB4oSiZsOCX8KNw5rDjmxUwrbDnURDZw5q4oSiBuKAmcKjXBBowqnFvQhTDSRawrFIW8Orw6LCusKdJjLDncK0URJhwo3CqnQ_NBUnwqLCrTobbU3DpcOow63Dr8Kiw5vDj2JGw4zDjX_DvAzigKLDjUPCsMK_dAXFoMWSw7nFoMOHxb1_EnoRw7HDlS3GkmDDrHwZw5bigJTigJnDmMOjX8KBwrFjJFzigJrigJkR4oC6XuKAnsK8w5pOwrQMCMO4xbhidsO1OR4QYsORw6_Di0_DlCHCncKsxpLDkOKAuWPDtsOlwpDigLnigLA4QsOfB8O-w7fDqTTDoOKApk5AL3pvMXJPw6A-w5jDgcOBw4Nqw6zCtwdjLcOTAk9iVDEZw7guw7t5BcWSwrkowqAvw5DFky4vdsKnfXTDrMOswq9A4oCTw4Esw5fCq8KBQXnDm8OwEsO04oCcOgHCvcKQNMKow4jDpcO-wqfCv8ODw6LDhi7DhsKmZsOQR8OoW8OuwrQgwrc8H8OJw7nDqXDCj8Oy4oCh4oCg4oCiPkzDncKtcCUrXhrCucO1T8Oy4oCac8KkHTzDqAoR4oSiIcuGw40ORxbDo2BvcRTigJPDs31lw5DDp8K5Yi_Dm8W-TsOPfsW-EcO_ecWhPcK2U8OFNFR7wqwnWEvDkOKAuUs8w5_Cv8Kkw4nDuMKqLsKdHHLDgE7GksO9wq86bhPDugYzNVTihKJqSsOQw6fDkFEFw7TCscOqw4rDkgkzPBXDjhJ6OsK9EsKdXsKNw5Aby5wyfsObMcOGOsOwc8O5IMKuOBk3GsKzcMK1KhFew5fCnWF9w5kc4oSiwrdvwqFywqgGVwoTw6AWw60Jw4dQNxjCuMucw4LigJoxw5jCgcKQw6vCscW4V8Kzw5DDoHfDlWTCpDfigqxj4oKsI8Kjwq4Hwp1FHxrigJPDmkwRZsKwIEDigJPDrMO_w5UJw715AxXDtuKEosK6dH97FgV_eMKyGDgEOMOD4oCmwq_DqxzDgmTDpMOhSMOZw4PigKZtQ8O0JVvDnMKww5VE4oCcw4UvMMOow7JLTMK7w74M4oC5xb7Dv8WSNcW4xbjDoCDDqhwOw6PDlMKxE8KnxpLDrThDAm9EMcO24oChw6vCsjDDiMK0EMKs4oCmRwHCqsOcLi5gw5JLCcKjTEYDHsOaw6h3w5fDhV03PcOcccOTR8KrwrM-GsWTw7RRw6sswqA3QsKt4oC6GcKqw7jDnnk-TnDCt8OS4oCawrbCgSLCtAnCvcKdwrs5XHzDmcW9OMOrw4HFoMKxw5_DjsOTEB5Bw5bCuMWTw6LCj-KAncK8w4tSwqQXcV5Mw5xpw6wtQV1XIeKAosOPAlDFoMKuwrEaw7TFvcOXwqHCucK3EGVNw6nCqGjCuUHDqMOzw5DDkMWT4oCmw5REH-KAnjJlw4TDmMOqIeKAoikjw5vDnQLCtzxMwpDDp23LhsOiMEtUwqXDucKgwqU0Dk00CDHihKLCqcKxwrkcw71jA8ucesO4CA_igJM2w5A_ScK3Ty3CgcKqNMWgw68JRSNPXMKkLlBKwqbDnlDCtcOwZ3HFvcKgw7kQduKAmsKvaRnDgMK4w6_DjWLDrw8zw5dwwrgGJSEywqUAecOVw4LDuR9geH4DMysCw7ojw6oQDwXDsARUdk7CvlfDgMK_CcO-PwLCvXwMw6Atw5DigLnFvsO-TzLDuMK_w7o9DsO2HmF_Mhs7NW54xaHCrMKPRyEqy5zDtjlHXUDCr-KAugImwrLDgsKwwr3DvljFoQ8vw6vDocOf4oCew74Vw5xv4oCc4oKsw73DpcOBPMKnw6jCkMK9w7_Cs8O3P8OHw73DhcKnGB7FuOKAncWTwr7igLBOX1Rb4oCa4oCZw5ZK4oCewqTDhMKydzXigJ7CtsKNAQISA-KAmMOTwpDigKbigJnFvRxkN15HclkM4oCZw4tj4oCYVBjigKbDjFvDocOoKcWSw4RacSAOxaAuw6HigqzDoMOvZsOZY8Ov4oCgBcKBwqfGkl3Ct8OFVsWgAzbDqMOywqtXw6jDssOh4oCgeMOkwq_DjcOYwqrigKAxJ1VGX1XDtMKzwqfDr8KyUkXigLrigKYyw6rDhCnCoE1Uw5nDk2vDoeKAk8KBOMOQRhfigLDDmsOqCFPCvgDDr-KAucOnw6EgQcKvAg11Qm9ow4LDj2gBTTrCtxUBw7ZlAklrwrjigLDFk8KuW8Oww45w4oCmw4s1J2TCtGXCo2PCvh81Q8ONwrhe4oCYxb3DnOKAk1w4Rzgy4oCgG8ODw4zDi-KAnRvigJ02wp1E4oCiwq_CowEDRmFjZyPDmHjDm8KywrfCt-KApjJhOcKne0HigJnigJnCsRpUWMWSw45pK8OgwrweP8aS4oC5CcKuw6UnI8O8ajjCvFlwPEM9w6Ebw6kHwqtLTsKww7R24oCgc8KQJ-KAmuKAmsK9EMOtYOKAmlzDk8KzaMK2PcOLwrbDrVdYcsO6GcW-w7nDvAzigKFRw6dxGMKr4oCgwq1YLWzDhsOqY8OrMsOBwr9s4oCeZ8ORFOKAlOKAusOR4oCgWMKNw5Ajw7jFocucw7NTw4YUe8O8e15MRl7DmhjDtMOSIcO8wrrDqCLCvMOtwq4GaHYxQD3Du8OoGjdDw5TCuXMpJsOrEMOwOA8zy5wYKkPDh1QNejZaMMOnOsOOPlbDsMKPdOKApn_igJ0rQsKueCIuLRjDqeKApnF0w7lU4oCdwrVkSTPDs-KAnsOKW8Kzw6jDssO54oCZw4t3DFfCoMKlwq8YwqXCjcOpw4gq4oC5J2DDicKoZwrDqGBxKMOmc2PDmMOeRDkaw6LFoeKAnCkyCX3CrsKnKQrLnCQqwqLDrVDFuMOp4oChwrbDsitoKEtEbsOWZcOkF11HW3cjBsKmRsOYw5c_4oCZTsKzVcOeNAgbwo9YXMOUceKAoBIdw7_igJrCvjsuxaDCqMOPWMKvaRMCA8KnaMOoOUTCsggHQcOFw4RXOmhHTTxmw64HPcOrQMKm4oCUcMK4BCYjw7p6OcK_w4ddwrQNPMKiw7NvY3bDpRDDs2tHdHtxw5jDrsObw6PCvcOQPwTCvVxv4oKsfwLDum8pwrrDrMKnxbjDoGh9BMO7xpLDscOYKsK1w4ZSwqwGw7vCveKAucucw7Y6wo8pw6rCtuKAoSIWw5sLwrDDu8O-IcW-f8O1w4fDrwDDv18Fw73DgRd_w4LDssOzw7cxOsOHfn5kFD0Dwr3DvGfCtMKgwqTCsRTDhcKtw6XCuFrigJ0ON27DjMO2woHDjnDigLlwRzg3xb1bwo1pwqgaw4hDTsObNSTigKLigKAhwrEgBMK5BMK_wr80FsOrJcOBw5jDi2XDr8W-w6XFksOtNGvDigQ7w5cZWVNsCMK9wr00NVccXcO3KEgbwrPDnirLnHDCo3M5HV_DscOFRkU6w6984oC6wrkyak0VUWHCouKAmiIjTcKpwqfDjyDDtEk6GghXwr0IX0UFOCle4oCewrEEwr02w5TDtE3DqAzigKBQMsOX4oChNcKhwr_igJ0U4oKswqQqwrYcfTkIK8O2xpJp4oCdCeKAmWrDk8ORw7V4DMOtwrN3WcKsUlHDlcOPwrjDj8KNw5cpw4IWw5pMGQYuOsWSw6nDmiwAw4bCsMOzwrXigJoJwqE3cWYSYA9sw6hsw4LCpGMOM8KmHeKAoUA3BMOE4oCmIsK9OB0Jw5x4wqPDk8O8UcOZxb7igKHLhsOEUOKAnuKAsMOrw4bDhQYjNjEKwoHDscOhwrAhw6zFvRHCgcOwxaAI4oCgwo_Coy1iw7UvwqLDhOKAncOFw5zDoRxWHcO_FVs-P8OHYcO0OcOsw4coYiNaBWvDkVoEw50QWzEEw78Kf8K3ODMJw7zDlQhdLOKAoGjDoWHCoBrDnV4Jw6PigJTLnMWSy5zCkOKAoC7DkcOxPcK1w5DDrcKuw7cSw7oGCXrDtsO1LATDteKAnsK_w4rDmxLDmX42cDLDkyDDtMKqTC7DmsKww7fCtkJIxZI3QQ_Dh-KAosK0UDpsMBJv4oCgIyU3WhrDlcK_WRrCj8OMw7IkZFUkIMK3NhkVwrfCs8ORPFDFoMOGwrs04oCaw6YMwqQWXWbCoeKAuSRYw4low6wpRDvCocKvwqpOw4XCtVhPRMK6GiNeDMOiw7E3w4t0N0bCrsK3CcKq4oSiCG_Dp-KAocKhwqc-GcKdw7VpKCtKQGFpChpuV8Khe8K0V8K6QMOKw4zDklPDtMKNLyIywrEIw4piw7fCncW-CxR0XQjCvgdUw43DvMKgaxfDijQWw452KsKQwqDDu0HDlcOED8OKYjLCj8KxwrcEwr_CrADDuEHDizIQRsWSw73DoiQdEcOXw4pRWD_FksW-w7FVTD3DmcOGxpIVw7bDt8OSBTjigJ4Ew7xyfcK3CMOIw6HDv8K7xaDDgGnDkOKAueKAnE7FoMaSa8KkAcK8D8K3w7BiwqkZw7vDnSHDmMOKM8OFcuKAnQYeeF3CkC7CoDBEdeKAnlpgc2YIB8W4fCUbwq1_A8O4w78aw6jDv-KAmsK9T8O_wp1fchdDw5PCs8K4OzbigJrDnmFCw5_Dm8WSw6rFvSrCtMWSwrTCosOrfi86wqbCu1DDlVPDjWjFuADDn-KAnkvDsE3DtEBQw6olRGUHIsOq4oCTP8KiwrLDvMKQXRDCjcOBwqp4wqwVBWE34oC6Ln_DkxlbV8ONwrHihKLCoOKAucKtRAM8T8Kyw4JO4oCZHW_igLlob-KAoMOFMD3DjMO7a2LDilMFI8OOSsKyM8Omw5jCqcKiw4taxZLDnhN6E0XigJ0ZwqnCoMOQUA3DmcO6w5p0em0kacKrIlLDrQLDvBnDscKdFS_DgMOwwrwS4oCdLsWgU13DqcOiPW0twrzCq0cnczPigKHDr3XCthwsQOKEosOdw4lwS8K3woFROMObxpLDpmzDlE3DtiDCo8KxCHpeZsKwCWfCv1vigKLigJ5rFeKAsAhIw7HGkl_igJk3XMOpw7x2ATZwDnXigJpXwqQnAsKvBMOAM8OC4oCcfcKjK8OC4oCcw4LCpMaSSsOKw5rDisORNcOZ4oCmw6nDlRHCtA8XwqHCpD4KwrfFoMaSw6DDrmvFvRDCtg3DsUnDoRTCoWcRMMOxwrbigKFlIFvigLDCkCDDmMK4OcOBw5FYBUnDusWgw6jCtcK-y4Z5w4dfYMONw7vDp8OYDMO4BXvDu1_DoGnDkBlsRsKowrHCpyfDsMKxxZLDuMOiTEMEfzvDjgQbLAIrEcOaeCLFvcK8wqPDm0_CsMK_H8O1w6LDryZ2dRLDuj4Cw57DqWrLhhbCqsKBwqpmAcKoEgXigqzCrsObQMO4KsK8LHDigKJFw4vDnkITwqbFksOffuKAmGJOfhjigJluXMOGw5XDjMOLSMOIw6Bnwr4pwqbDp0Yi4oCw4oCwLT4rFHFZIUhmcksrwrvFksOMw6pE4oCdwrTCs-KAocOvKkDigJMYwrTDi-KAsMOCwrXDghgUNGXCoMO6Th4qGjPDqMOccUhiYsuGwrxk4oCgWH7igKBkwrp8VsKQLUpjXcOR4oCZGcWSwr7DqgTFksKyeMWSdhXCo8Krwq0Yw7UNBcKoaS5Dw7vDnQ5ue-KAnMOSKcK2Jh_CrsKhwqjCuhNmxb3CgTjCr2nDj8Oew54NSibFvsOQwrIOwqDDg-KAoULDkyrCkMK9wr4Yw6zCu0QdT8OgMcOyYcO64oCZS8K4wr_FuATCv-KAoEUAw6HCj-KAmlvLhijDjsK1wqhpH8OGw7DDtArDruKAuSPDt1bDhUE24oCheCzDqeKAoTnDvw8Cw79tw5DigLnCs8ORHsuGCTlHT8OwYsK-BMK7bcW-w5jDiMOUw4ciw7_DocO3CcO9PcOPw7dww5vDqV3FkmRGYHdjXTpdw5VrwrvDnU7DqDTDiMOfw5TDi37FvjoJwrvDrMOE4oC6f8OCw4bDkScQwqc2w6rFuBQXKhQXLMOsQmtfE8OjXCvDhuKAlMOHwrBww7QY4oC5L8W-wqB3wq4bGRXDlwl-LGLCsyIkQMWTw4LDrBFyPcuGG0YKKsOrMzFa4oCUQsKnD-KAmHbDjcOtE8O6w60kM2xeYcKvGm_igqzDnUTDtsO2CTbDmBEH4oCTMMOewq9dNsOGYsK4Ph4EaGHDgksNIy7CqsOSw7XDp8K7w4TDhBMLRcOUy5xcROKEosKhEsKhV0XFvcKBJjLDtTXigJjCosKr4oCaK8WhFxHCqsKmAHdFccKiSwUoxbhTw4V7xaBaw7jCjcKqJn7CqcKpxaBzJlpwy4bDskJceTwSw6oiYeKAumAE4oChJFvDhOKAucOYOsOUxaDDnDvigKIwC8K24oCmc8WTM8OSG8KuI-KAoRtzQkkcw5LCqsOTwpBSxaHDjMOU4oCZ4oKsw4T', '', '2 sterren', 'undefined');
INSERT INTO `receptenboek` (`id`, `schrijver`, `recept_titel`, `receptIngredienten`, `recept_stap_1`, `recept_stap_2`, `recept_stap_3`, `recept_stap_4`, `recept_stap_5`, `recept_stap_6`, `recept_stap_7`, `recept_stap_8`, `Aangemaakt_recept_datum`, `aangemaakt_recept_jaar`, `aangemaakt_recept_maand`, `aangemaakt_recept_dag`, `aangemaakt_recept_uur`, `aangemaakt_recept_minuten`, `aangemaakt_recept_seconden`, `recept_voor_aantal_personen`, `bereidingstijdrecept`, `RECEPTFOTO1`, `receptfoto2`, `gemiddelde_review_score_recept`, `maximaal_aantal_calorieen`) VALUES
(2, 'Ron Blaauw', 'Pasta Carbona', '400 gram spaghetti.\r\nverse peterselie.\r\n100 gram Parmezaanse kaas (geraspt).\r\n3 eieren.\r\nsnuf peper en zout.', '1. Doe de spekblokjes in een pan en bak ze mooi krokant. Ze hoeven niet helemaal uitgebakken te worden.', 'twee Zet ondertussen een grote pan water met een snufje zout op het vuur en als het water kookt voeg je de spaghetti toe. Kook de spaghetti in ongeveer 10 min al dente (of check de verpakking voor de bereidingswijze).', 'drei\r\n\r\nVoeg de pasta direct uit de pan waarin je het hebt gekookt toe aan de pan met spekjes toe en schep er doorheen. Zet het vuur uit van de pan met spekjes en spaghetti.', '4:\r\n\r\nVoeg de geraspte Parmezaanse kaas toe en voeg er een klein beetje pasta kookvocht aan toe, zodat de kaas smelt.', 'Kluts ondertussen de eieren en voeg ze daarna al roerend toe. Blijf roeren totdat het een romige saus.', 'Garneer de pasta carbonara eventueel met een beetje kaas en peterselie. Pasta carbonara is lekker met een frisse salade.', 'Zeven: \r\n\r\nLet op: Als de spaghetti te veel is afgekoeld, bindt de saus niet, maar als de spaghetti te heet is gaan de eieren stollen. Zet de pan daarom niet meer terug op het vuur.', 'Tip: voor een vegetarische variant kun je vegetarische spekjes gebruiken of ze vervangen door champignons of gezouten cashewnoten.', 'vijftien april \'24', '2019', '08', '21', '17:45', '45', '00', 'voor ongeveer 2 personen', '25', '/src/assets/images/receptenboek/pastacarbonara/pasta1.png', 'null', '3 x ster', NULL);
INSERT INTO `receptenboek` (`id`, `schrijver`, `recept_titel`, `receptIngredienten`, `recept_stap_1`, `recept_stap_2`, `recept_stap_3`, `recept_stap_4`, `recept_stap_5`, `recept_stap_6`, `recept_stap_7`, `recept_stap_8`, `Aangemaakt_recept_datum`, `aangemaakt_recept_jaar`, `aangemaakt_recept_maand`, `aangemaakt_recept_dag`, `aangemaakt_recept_uur`, `aangemaakt_recept_minuten`, `aangemaakt_recept_seconden`, `recept_voor_aantal_personen`, `bereidingstijdrecept`, `RECEPTFOTO1`, `receptfoto2`, `gemiddelde_review_score_recept`, `maximaal_aantal_calorieen`) VALUES
(3, 'Herman den Blijker', 'Burrito met kip', '4 grote tortilla wraps, 200 gr bonen, 160 gr stukjes kip (vegetarisch), 1 klein kropje sla, 100 ml tomatensaus, 1 teen knoflook, 1 kleine ui, 70 gr maïs, 1 paprika, handje geraspte kaas, 0.5 eetlepel burrito of Mexicaanse kruiden, 100 gr rijst, 125 ml zure room', 'Stap 1: Bereid de rijst\r\n\r\nSpoel de rijst grondig af onder koud water.\r\nBreng 200 ml water aan de kook in een pan.\r\nVoeg de rijst toe aan het kokende water en laat het sudderen op laag vuur tot al het water is opgenomen en de rijst gaar is, volg de instructies op de verpakking.\r\nHaal de pan van het vuur en laat de rijst afgedekt rusten.', 'Stap 2: Bereid de vulling\r\n\r\nSnijd de ui, knoflook en paprika fijn.\r\nVerhit wat olie in een pan op middelhoog vuur en voeg de gesneden ui en knoflook toe. Bak tot ze zacht en lichtbruin zijn.\r\nVoeg de paprika toe en bak deze tot hij zacht wordt.\r\nVoeg de stukjes kip (of vegetarische kip) toe aan de pan en bak ze tot ze gaar zijn.\r\nVoeg vervolgens de bonen en maïs toe aan de pan en verwarm alles door.\r\nBreng op smaak met de burrito- of Mexicaanse kruiden.', 'Stap 3: Bereid de wraps\r\n\r\nVerwarm de tortilla wraps kort in een droge koekenpan of magnetron om ze zachter te maken.\r\nVerdeel de bereide rijst gelijkmatig over de wraps.\r\nSchep het bonen-kipmengsel op de rijst.', 'Stap 4: Monteer de burrito\'s\r\n\r\nLeg een paar blaadjes sla bovenop het bonen-kipmengsel.\r\nLepel wat tomatensaus en zure room over de vulling.\r\nBestrooi elk burrito met een beetje geraspte kaas.', 'Stap 5: Vouw de burrito\'s\r\n\r\nVouw eerst de zijkanten van de tortilla naar binnen en rol deze vervolgens strak op vanaf de onderkant, zodat de vulling goed is ingesloten.', 'Stap 6: Serveer\r\n\r\nSnijd de burrito\'s doormidden en serveer ze warm.\r\nJe kunt ze serveren met extra zure room, salsa, guacamole of verse kruiden naar keuze.\r\nGeniet van je zelfgemaakte burrito\'s!', '', '', '2024-04-15', '2016', 'april', 'dinsdag 25', '16:30', '16:30', '16:30', '2', '30', '.base64 {\r\n  background-image: url(\"data:image/png;base64,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', '', '2', NULL);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `receptenboek`
--
ALTER TABLE `receptenboek`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `receptenboek`
--
ALTER TABLE `receptenboek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `muziekdb`
--
CREATE DATABASE IF NOT EXISTS `muziekdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `muziekdb`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categorieen`
--

CREATE TABLE `categorieen` (
  `categorie_id` int(11) NOT NULL,
  `naam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `nummers`
--

CREATE TABLE `nummers` (
  `nummer_ID` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `artiest` varchar(255) NOT NULL,
  `duur` time NOT NULL,
  `releasedatum` date NOT NULL,
  `categorie_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `nummers`
--

INSERT INTO `nummers` (`nummer_ID`, `titel`, `artiest`, `duur`, `releasedatum`, `categorie_id`) VALUES
(1, 'Sky ', 'Playboi Carti', '00:03:13', '2020-12-25', 'Mainstream rap'),
(2, 'Les', 'Childish Gambino', '00:05:17', '2011-11-15', 'R&B'),
(3, 'Kite', 'KANKAN', '00:01:58', '2021-03-22', 'Underground rap'),
(4, 'Break from Toronto', 'PARTYNEXTDOOR', '00:01:39', '2013-07-01', 'R&B'),
(5, 'cts-v', 'Osamason', '00:01:59', '2023-04-07', 'Underground rap'),
(6, 'Love Galore', 'SZA, Travis Scott', '00:04:34', '2017-06-09', 'R&B'),
(7, 'Twirlanta', '22Gz', '00:02:58', '2021-03-19', 'Drill'),
(8, 'Breitling', 'ADF Samski', '00:03:26', '2019-10-14', 'Nederlandse rap'),
(9, 'Champion Flow', 'ADF Samski', '00:03:10', '2021-01-29', 'Nederlandse rap'),
(10, 'Meltdown', 'Travis Scott, Drake', '00:04:05', '2023-07-28', 'Mainstream Rap');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categorieen`
--
ALTER TABLE `categorieen`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Indexen voor tabel `nummers`
--
ALTER TABLE `nummers`
  ADD PRIMARY KEY (`nummer_ID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categorieen`
--
ALTER TABLE `categorieen`
  MODIFY `categorie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `nummers`
--
ALTER TABLE `nummers`
  MODIFY `nummer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Gegevens worden geëxporteerd voor tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"deel1_db\",\"table\":\"products\"},{\"db\":\"deel1_db\",\"table\":\"pictures\"},{\"db\":\"fictie bedrijf\",\"table\":\"receptenboek\"},{\"db\":\"webdev_movies\",\"table\":\"movies\"},{\"db\":\"muziekdb\",\"table\":\"movies\"},{\"db\":\"muziekdb\",\"table\":\"categorieen\"},{\"db\":\"muziekdb\",\"table\":\"nummers\"}]');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Gegevens worden geëxporteerd voor tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'deel1_db', 'pictures', '{\"sorted_col\":\"`id` ASC\"}', '2024-05-15 12:22:01'),
('root', 'deel1_db', 'products', '{\"sorted_col\":\"`products`.`id` ASC\"}', '2024-04-26 07:32:42'),
('root', 'webdev_movies', 'movies', '{\"sorted_col\":\"`id` ASC\"}', '2024-04-17 12:16:49');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Gegevens worden geëxporteerd voor tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-05-21 11:02:51', '{\"Console\\/Mode\":\"show\",\"lang\":\"nl\"}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexen voor tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexen voor tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexen voor tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexen voor tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexen voor tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexen voor tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexen voor tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexen voor tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexen voor tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexen voor tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexen voor tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexen voor tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `tuinman_hendrik`
--
CREATE DATABASE IF NOT EXISTS `tuinman_hendrik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tuinman_hendrik`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `gebruikersnaam` varchar(255) NOT NULL,
  `wachtwoord` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `admin`
--

INSERT INTO `admin` (`id`, `gebruikersnaam`, `wachtwoord`) VALUES
(1, 'Hendrik', 'Hogendijk');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opdrachten`
--

CREATE TABLE `opdrachten` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `telefoonnummer` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `opmerking` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `opdrachten`
--

INSERT INTO `opdrachten` (`id`, `datum`, `voornaam`, `achternaam`, `adres`, `telefoonnummer`, `email`, `opmerking`) VALUES
(79, '2024-06-27 09:43:01', '1', '1', '1', '1', '1', '1'),
(80, '2024-06-27 09:43:08', '1', '1', '1', '1', '1', '1'),
(81, '2024-06-27 09:43:14', '1', '1', '1', '1', '1', '1'),
(82, '2024-06-27 09:43:21', '1', '1', '1', '1', '1', '1'),
(83, '2024-06-27 09:43:27', '1', '1', '1', '1', '1', '1'),
(84, '2024-06-27 09:43:36', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `recensies`
--

CREATE TABLE `recensies` (
  `id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `voornaam` varchar(255) NOT NULL,
  `achternaam` varchar(255) NOT NULL,
  `bericht` varchar(270) NOT NULL,
  `zichtbaar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `recensies`
--

INSERT INTO `recensies` (`id`, `datum`, `voornaam`, `achternaam`, `bericht`, `zichtbaar`) VALUES
(4, '2023-04-01 23:00:00', 'Hella', 'Hoes', '“Heel erg bedankt voor de efficiënte service, je was heel snel klaar en ik zal je nummer zeker behouden om je weer te gebruiken.”', 1),
(5, '2022-04-02 12:23:44', 'Henk', 'Haak', 'Ga alsjeblieft door met de bezoeken aan het huis van mijn vader, want je doet geweldig werk!', 1),
(6, '2020-04-03 09:11:00', 'Hans', 'Hogendijk', 'Zoals u weet ben ik altijd tevreden geweest met de service die u de afgelopen jaren heeft verleend. Vertel me alstublieft wanneer u klaar bent om volgend jaar weer te beginnen met het maaien van mijn gazons, aangezien ik graag uw diensten wil blijven ontvangen.', 1),
(7, '2022-04-04 17:28:22', 'Hugo', 'van Heren', 'Bedankt voor de grondige opruimbeurt die u aan mijn tuin heeft uitgevoerd. De tuin is er enorm van opgeknapt en weer bruikbaar gemaakt. Nogmaals bedankt.', 1),
(8, '2021-04-05 15:33:54', 'Helga', 'Hagel', 'Mijn tuin was een mijn jungle voor en achter. Ik ben zo blij met het resultaat; u heeft zo hard gewerkt en alles mooi en netjes achtergelaten. Aarzel niet om mijn opmerkingen te gebruiken in toekomstige advertenties. Nogmaals bedankt voor al je harde werk!', 1),
(24, '2024-06-27 09:45:35', 'test', 'test', 'test', 0),
(25, '2024-06-27 10:29:41', 's', 'ssss', 'cc', 0),
(26, '2024-07-05 09:14:37', 'JE', 'MOEDER', 'D#', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `opdrachten`
--
ALTER TABLE `opdrachten`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `recensies`
--
ALTER TABLE `recensies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `opdrachten`
--
ALTER TABLE `opdrachten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT voor een tabel `recensies`
--
ALTER TABLE `recensies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- Database: `webdev_movies`
--
CREATE DATABASE IF NOT EXISTS `webdev_movies` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `webdev_movies`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `movies`
--

CREATE TABLE `movies` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmdb_id` int(10) UNSIGNED NOT NULL,
  `original_title` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `original_language` varchar(255) NOT NULL,
  `overview` text NOT NULL,
  `poster` varchar(255) NOT NULL,
  `popularity` float NOT NULL,
  `release_date` date NOT NULL,
  `vote_average` float(6,2) NOT NULL,
  `vote_count` int(11) NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `movies`
--

INSERT INTO `movies` (`id`, `tmdb_id`, `original_title`, `title`, `original_language`, `overview`, `poster`, `popularity`, `release_date`, `vote_average`, `vote_count`, `last_edited`) VALUES
(1, 4935, 'ハウルの動く城', 'Howl\\\'s Moving Castle', 'ja', 'Sophie, a young milliner, is turned into an elderly woman by a witch who enters her shop and curses her. She encounters a wizard named Howl and gets caught up in his resistance to fighting for the king.', 'https://image.tmdb.org/t/p/original/6pZgH10jhpToPcf0uvyTCPFhWpI.jpg', 145, '2004-09-09', 8.41, 9342, '2024-04-17 10:04:50'),
(2, 680, 'Pulp Fiction', 'Pulp Fiction', 'en', 'A burger-loving hit man, his philosophical partner, a drug-addled gangster\\\'s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.', 'https://image.tmdb.org/t/p/original/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg', 119, '1994-09-10', 8.49, 26910, '2024-04-17 10:04:50'),
(3, 68718, 'Django Unchained', 'Django Unchained', 'en', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'https://image.tmdb.org/t/p/original/7oWY8VDWW7thTzWh3OKYRkWUlD5.jpg', 82, '2012-12-25', 8.18, 25451, '2024-04-17 10:04:50'),
(4, 16869, 'Inglourious Basterds', 'Inglourious Basterds', 'en', 'In Nazi-occupied France during World War II, a group of Jewish-American soldiers known as \\\"The Basterds\\\" are chosen specifically to spread fear throughout the Third Reich by scalping and brutally killing Nazis. The Basterds, lead by Lt. Aldo Raine soon cross paths with a French-Jewish teenage girl who runs a movie theater in Paris which is targeted by the soldiers.', 'https://image.tmdb.org/t/p/original/7sfbEnaARXDDhKm0CZ7D7uc2sbo.jpg', 81, '2009-08-02', 8.22, 21502, '2024-04-17 10:04:50'),
(5, 24, 'Kill Bill: Vol. 1', 'Kill Bill: Vol. 1', 'en', 'An assassin is shot by her ruthless employer, Bill, and other members of their assassination circle – but she lives to plot her vengeance.', 'https://image.tmdb.org/t/p/original/v7TaX8kXMXs5yFFGR41guUDNcnB.jpg', 53, '2003-10-10', 7.97, 16743, '2024-04-17 10:04:50'),
(6, 500, 'Reservoir Dogs', 'Reservoir Dogs', 'en', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice Guy Eddie -- unravel.', 'https://image.tmdb.org/t/p/original/xi8Iu6qyTfyZVDVy60raIOYJJmk.jpg', 58, '1992-09-02', 8.13, 13782, '2024-04-17 10:04:50'),
(7, 273248, 'The Hateful Eight', 'The Hateful Eight', 'en', 'Bounty hunters seek shelter from a raging blizzard and get caught up in a plot of betrayal and deception.', 'https://image.tmdb.org/t/p/original/jIywvdPjia2t3eKYbjVTcwBQlG8.jpg', 43, '2015-12-25', 7.75, 13707, '2024-04-17 10:04:50'),
(8, 4836, 'Layer Cake', 'Layer Cake', 'en', 'When a seemingly straight-forward drug deal goes awry, XXXX has to break his die-hard rules and turn up the heat, not only to outwit the old regime and come out on top, but to save his own skin...', 'https://image.tmdb.org/t/p/original/fSHQdLsf4O5iZQ5Qid7WRvgfPIZ.jpg', 32, '2004-09-30', 6.92, 1959, '2024-04-17 10:04:50'),
(9, 274857, 'King Arthur: Legend of the Sword', 'King Arthur: Legend of the Sword', 'en', 'When the child Arthur’s father is murdered, Vortigern, Arthur’s uncle, seizes the crown. Robbed of his birthright and with no idea who he truly is, Arthur comes up the hard way in the back alleys of the city. But once he pulls the sword Excalibur from the stone, his life is turned upside down and he is forced to acknowledge his true legacy... whether he likes it or not.', 'https://image.tmdb.org/t/p/original/9kKXH6eJpzoFGhCbTN3FVwSQK3n.jpg', 54, '2017-05-10', 6.54, 5504, '2024-04-17 10:04:50'),
(10, 10528, 'Sherlock Holmes', 'Sherlock Holmes', 'en', 'Eccentric consulting detective Sherlock Holmes and Doctor John Watson battle to bring down a new nemesis and unravel a deadly plot that could destroy England.', 'https://image.tmdb.org/t/p/original/momkKuWburNTqKBF6ez7rvhYVhE.jpg', 52, '2009-12-23', 7.21, 13524, '2024-04-17 10:04:50'),
(11, 58574, 'Sherlock Holmes: A Game of Shadows', 'Sherlock Holmes: A Game of Shadows', 'en', 'There is a new criminal mastermind at large (Professor Moriarty) and not only is he Holmes’ intellectual equal, but his capacity for evil and lack of conscience may give him an advantage over the  detective.', 'https://image.tmdb.org/t/p/original/y1MYZkwhZK6L0Jy4YMuPktzDOfn.jpg', 48, '2011-11-22', 7.14, 10025, '2024-04-17 10:04:50'),
(12, 420817, 'Aladdin', 'Aladdin', 'en', 'A kindhearted street urchin named Aladdin embarks on a magical adventure after finding a lamp that releases a wisecracking genie while a power-hungry Grand Vizier vies for the same lamp that has the power to make their deepest wishes come true.', 'https://image.tmdb.org/t/p/original/ykUEbfpkf8d0w49pHh0AD2KrT52.jpg', 74, '2019-05-22', 7.11, 9699, '2024-04-17 10:04:50'),
(13, 107, 'Snatch', 'Snatch', 'en', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jewelers fight to track down a priceless stolen diamond.', 'https://image.tmdb.org/t/p/original/56mOJth6DJ6JhgoE2jtpilVqJO.jpg', 59, '2000-09-01', 7.81, 8655, '2024-04-17 10:04:50'),
(14, 100, 'Lock, Stock and Two Smoking Barrels', 'Lock, Stock and Two Smoking Barrels', 'en', 'A card shark and his unwillingly-enlisted friends need to make a lot of cash quick after losing a sketchy poker match. To do this they decide to pull a heist on a small-time gang who happen to be operating out of the flat next door.', 'https://image.tmdb.org/t/p/original/wt2TRBmFmBn5M5MBcPTwovlREaB.jpg', 27, '1998-08-28', 8.12, 6297, '2024-04-17 10:04:50'),
(15, 203801, 'The Shawshank Redemption (Extended Edition)', 'The Shawshank Redemption (Extended Edition)', 'en', 'At the height of the Cold War, a mysterious criminal organization plans to use nuclear weapons and technology to upset the fragile balance of power between the United States and Soviet Union. CIA agent Napoleon Solo and KGB agent Illya Kuryakin are forced to put aside their hostilities and work together to stop the evildoers in their tracks. The duo\\\'s only lead is the daughter of a missing German scientist, whom they must find soon to prevent a global catastrophe.', 'https://image.tmdb.org/t/p/original/y5yZaForGSJbPD66Cvq9AT5WMAD.jpg', 38, '2015-08-13', 7.09, 6096, '2024-04-17 12:16:49'),
(16, 522627, 'The Gentlemen', 'The Gentlemen', 'en', 'American expat Mickey Pearson has built a highly profitable marijuana empire in London. When word gets out that he’s looking to cash out of the business forever it triggers plots, schemes, bribery and blackmail in an attempt to steal his domain out from under him.', 'https://image.tmdb.org/t/p/original/jtrhTYB7xSrJxR1vusu99nvnZ1g.jpg', 85, '2020-01-01', 7.68, 5432, '2024-04-17 10:04:50'),
(17, 1891, 'The Empire Strikes Back', 'The Empire Strikes Back', 'en', 'The epic saga continues as Luke Skywalker, in hopes of defeating the evil Galactic Empire, learns the ways of the Jedi from aging master Yoda. But Darth Vader is more determined than ever to capture Luke. Meanwhile, rebel leader Princess Leia, cocky Han Solo, Chewbacca, and droids C-3PO and R2-D2 are thrown into various stages of capture, betrayal and despair.', 'https://image.tmdb.org/t/p/original/nNAeTmF4CtdSgMDplXTDPOpYzsX.jpg', 46, '1980-05-20', 8.39, 16340, '2024-04-17 10:04:50'),
(18, 1892, 'Return of the Jedi', 'Return of the Jedi', 'en', 'Luke Skywalker leads a mission to rescue his friend Han Solo from the clutches of Jabba the Hutt, while the Emperor seeks to destroy the Rebellion once and for all with a second dreaded Death Star.', 'https://image.tmdb.org/t/p/original/jQYlydvHm3kUix1f8prMucrplhm.jpg', 56, '1983-05-25', 7.90, 15090, '2024-04-17 10:04:50'),
(19, 11, 'Star Wars', 'Star Wars', 'en', 'Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.', 'https://image.tmdb.org/t/p/original/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg', 121, '1977-05-25', 8.20, 19850, '2024-04-17 10:04:50'),
(20, 120, 'The Lord of the Rings: The Fellowship of the Ring', 'The Lord of the Rings: The Fellowship of the Ring', 'en', 'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.', 'https://image.tmdb.org/t/p/original/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg', 146, '2001-12-18', 8.40, 24187, '2024-04-17 10:04:50');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Database: `webshop_crud`
--
CREATE DATABASE IF NOT EXISTS `webshop_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webshop_crud`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `producten`
--

CREATE TABLE `producten` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `SKU` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `producten`
--

INSERT INTO `producten` (`id`, `name`, `description`, `SKU`, `category_id`, `price`, `product_image`) VALUES
(1, 'Blue Yeti USB microphone', 'Dankzij de verschillende karakteristieken is de Yeti voor veel doeleinden te gebruiken. Om dit te bewerkstelligen is hij voorzien van een innovatieve \'tri-capsule\'. Door deze verschillende capsules te combineren kunnen er 4 karakteristieken worden gevormd waarvan er één zelfs stereo te gebruiken is. Hierdoor kun je de microfoon gebruiken voor vocals, gitaren, gitaarversterkers en zachte percussie maar ook voor stereo ambient recordings. Kortom, een bijzonder veelzijdige microfoon met de bekende \'Blue-kwaliteit\'!', 'blue-yeti-silver-usb-microfoon', 1, 130, 'assets/img/product-images/'),
(2, 'Devine M-Mic PRO USB BK microphone', 'Eenvoudig en betaalbaar goede opnames maken doe je met de Devine M-Mic PRO USB. Deze usb grootmembraan condensatormicrofoon plug je direct in je computer of laptop. Ideaal voor videobellen via Skype, Zoom of Teams en tijdens het gamen. Dankzij de studiowaardige specificaties kun je de Devine M-Mic PRO USB ook gebruiken voor het maken van muziekopnames. Bijvoorbeeld akoestische gitaar en zang. Inclusief tafelstatief en kabel.', 'devine-m-mic-pro-usb-bk-usb-microfoon', 1, 64, 'assets/img/product-images/'),
(3, 'Sennheiser Profile Base Set Microphone', 'De Sennheiser Profile usb microfoon heeft een hoogwaardige condensatorcapsule met een cardioïde richtingskarakteristiek. Perfect om je stem tot in de kleinste details op te nemen of te streamen. In een live stream of online vergadering heb je geen tijd om in menuutjes te gaan zoeken naar instellingen. Daarom bedien je koptelefoonvolume, microfoon gain, monitor balans en mute direct vanaf de microfoon zelf. Die staat recht voor je op het stijlvolle meegeleverde tafelstatief. Dankzij het neutrale karakter is deze microfoon ook uitstekend voor akoestische instrumenten. In dat geval kun je de Sennheiser Profile ook gewoon op een vloerstatief monteren.', 'sennheiser-profile-base-set-usb-microfoon', 1, 120, 'assets/img/product-images/'),
(4, 'Devine M-Mic USB W condensator', 'Deze Devine M-Mic USB W condensatormicrofoon wit is een ware prijskraker. En dat is goed nieuws voor iedereen die interesse heeft in vlogging en singer-songwriting maar nog niet de volle mep neer wil leggen. Voor deze toch al bescheiden investering krijg je er ook nog een shockmount, een USB-kabel en een driepootstatief (met schroefdraadadapter) bij. Deze condensatormicrofoon is erg gevoelig, en pakt de finesse van je stem (of bijvoorbeeld je gitaar) prima op. Door de cardioïde richtingskarakteristiek wordt je stem of je muziekinstrument goed opgepakt door de microfoon. Andere geluidsbronnen rondom de microfoon zitten dan niet in je opname.', 'devine-m-mic-usb-w-condensatormicrofoon', 1, 64, 'assets/img/product-images/'),
(5, 'Samson Meteor Mic USB microphone', 'De Meteor Mic is een ideale, en compacte USB-studiomicrofoon. Deze condensator microfoon kun je gebruiken voor het opnemen van vocalen of instrumenten in je home studio. Maar is ook te gebruiken voor interviews, Skype of iChat.', 'samson-meteor-mic-usb-microfoon', 1, 89, 'assets/img/product-images/'),
(6, 'Beyerdynamic DT 770 Pro 80 ohm', 'De Beyerdynamic DT-770 Pro 80 is de 80-ohm versie van deze gesloten studio hoofdtelefoon. Dankzij de zachte en toch stevige hoofdband en comfortabele ooromsluitende oorkussen kan de DT-770 zonder problemen lange tijd worden gedragen. De Beyerdynamic DT770 is dan ook speciaal bedoeld voor het monitoren van geluidsopnames. De koptelefoon biedt ook een bijzonder prettig geluid, met een fantastisch krachtige en strakke bas, wat ook de kritische luisteraar zal kunnen bekoren. En met de afneembare 6.3 mm adapter, kun je je kabel ook in 3.5 mm aansluitingen stoppen.', 'beyerdynamic-dt-770-pro-80-ohm', 2, 141, 'assets/img/product-images/'),
(7, 'Devine PRO 2000', 'De Devine PRO 2000 is een comfortabele, accurate hoofdtelefoon met een gesloten constructie. Hij is uitstekend te gebruiken binnen studio\'s en voor monitordoeleinden, dankzij de brede frequentieweergave (15 Hz - 22 kHz). De efficiënte 40 mm grote NdFeB-drivers tekenen voor een levendig, natuurlijk geluid, van diepe bassen tot sprankelende hoge tonen. De oorschelpen zijn weg te klappen, wat makkelijk is bij kortstondige afluistering op één oor. De PRO 2000 is overal inzetbaar: in de studio, op locatie of bij live PA-systemen.', 'devine-pro-2000-studio-hoofdtelefoon', 2, 45, 'assets/img/product-images/'),
(8, 'Steven Slate Audio VSX Modeling Headphones - Essentials Edition', 'Met deze Steven Slate Audio VSX Modeling Headphone Essentials Edition wordt het de aspirant producer/mixing engineer/recording artist nog aantrekkelijker gemaakt om te mixen op een hoofdtelefoon. Normaal gesproken kreeg je bij de hoofdtelefoon namelijk een perperdure software suite aangeboden.Echter met de Essentials Edition versie van de hoofdtelefoon betaal je enkel voor de headphones zelf en de meest essentiële \'studioruimtes\'. Op deze wijze kun je professionele mixes creëren zonder last te krijgen van keuzestress. Wil je echter ook de extra software tot je beschikking krijgen dan kun je deze gewoon aankopen op de website van Steven Slate Audio, namelijk op de Steven Slate Audio VSX Marketplace. Voor de rest is dit gewoon, net als zijn voorganger, een uitstekende en comfortabel zittende studio hoofdtelefoon waarmee je eenvoudig te vertaalslag maakt naar stereo audio-installaties, bekende hifi- en studio hoofdtelefoons en kun je virtueel plaatsnemen achter enkele luze studio\'s, waaronder de persoonlijke studio van meneer Slate zelf. ', 'steven-slate-audio-vsx-modeling-headphones-essentials-edition', 2, 366, 'assets/img/product-images/'),
(9, 'KRK KNS-6402', 'Met de KRK KNS-6402 beschik je over een stevige koptelefoon voor de kritische luisteraar. Het gaat hier om een gesloten, over-ear koptelefoon met passieve geluidsisolatie en een accurate geluidsweergave. De passieve geluidsisolatie voorkomt dat geluid via je koptelefoon wordt opgepikt door je microfoon en maakt dat je je volledig kan focussen op de muziek zonder dat je afgeleid wordt door externe geluiden. De oorschelpen van de KNS-6402 zijn 90 graden draaibaar en zijn voorzien van comfortabele oorkussens van cellulair schuim en een verstelbare hoofdband met een kunstlederen hoofdkussen.', 'krk-kns-6402-studio-koptelefoon', 2, 81, 'assets/img/product-images/'),
(10, 'AKG K240 Studio Headphones', 'De AKG K240 Studio is een comfortabele semi-open studio hoofdtelefoon ontworpen voor professionele toepassingen zoals mixen en masteren. Je kunt hem natuurlijk ook gebruiken om lekker weg te dromen bij je favoriete muziek. De geavanceerde XXL transducers met Varimotion diafragma\'s hebben een groot dynamisch bereik en leveren een gedetailleerd en transparant geluid op elk geluidsniveau. Het semi-open ontwerp voorkomt interne resonanties en biedt een solide bas bereik en uiterst heldere hoge tonen.', 'akg-k240-studio-studio-koptelefoon', 2, 75, 'assets/img/product-images/'),
(11, 'appel', 'pixel art appel made with js', 'appel', 1, 30, 'assets/img/product-images/\r\n');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `producten`
--
ALTER TABLE `producten`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `producten`
--
ALTER TABLE `producten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
