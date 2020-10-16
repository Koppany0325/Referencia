-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Okt 16. 08:42
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `logintest`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `grades`
--

CREATE TABLE `grades` (
  `Math` int(11) NOT NULL,
  `History` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Literature` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `grades`
--

INSERT INTO `grades` (`Math`, `History`, `English`, `Literature`, `name`) VALUES
(5, 4, 3, 2, 'user'),
(4, 3, 1, 5, 'test2'),
(1, 1, 1, 1, 'asd'),
(2, 2, 3, 5, 'asd2');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `logintest`
--

CREATE TABLE `logintest` (
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `logintest`
--

INSERT INTO `logintest` (`username`, `password`, `type`) VALUES
('admin', '1234', 'admin'),
('user', '1234', 'user'),
('test', 'test', 'test'),
('test2', 'test2', 'user'),
('asd', 'asd', 'user'),
('asd2', 'asd2', 'user'),
('admin2', 'admin2', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
