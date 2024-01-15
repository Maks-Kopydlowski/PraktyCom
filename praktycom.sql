-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 08, 2024 at 01:05 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praktycom`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferty`
--

CREATE TABLE `oferty` (
  `id` int(255) NOT NULL,
  `tytul` varchar(50) NOT NULL,
  `opis` text NOT NULL,
  `poziom` varchar(10) NOT NULL,
  `id_pracodawcy` int(11) NOT NULL,
  `lokalizacja` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oferty`
--

INSERT INTO `oferty` (`id`, `tytul`, `opis`, `poziom`, `id_pracodawcy`, `lokalizacja`) VALUES
(1, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(2, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(3, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(4, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(5, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(6, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(7, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(8, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(9, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(10, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(11, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(12, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(13, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(14, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(15, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(16, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(17, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(18, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(19, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(20, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(21, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(22, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(23, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(24, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(25, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(26, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(27, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(28, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(29, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(30, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(31, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(32, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(33, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(34, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(35, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(36, 'Staż Front-End developer', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!', 'Mid', 1, 'Leszno'),
(37, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(38, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(39, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(40, 'Praktyka BackEnd', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. A corporis sint quaerat ratione soluta animi excepturi eum nam nesciunt reprehenderit eligendi incidunt mollitia voluptates laudantium nostrum facere officiis accusamus fugiat, neque doloremque. A numquam incidunt ducimus voluptate nam quaerat ut distinctio est sint, beatae temporibus optio tempore doloribus suscipit voluptatum, molestias, voluptas veniam reprehenderit eaque quis non. Illo nihil vero amet? Consequuntur, numquam soluta. Ab earum alias, iure, dolorum minima sit fuga quibusdam fugiat eligendi, a deserunt! Enim aliquam ratione sapiente nisi? Voluptates sapiente non ad sit aperiam fuga tempore? Quae nostrum neque quibusdam qui nulla modi deserunt recusandae voluptate!\r\n', 'Junior', 2, 'Poznań'),
(41, 'Praktyka fryzjerstwo', 'Praktyka fryzjerska nanananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananananana', 'brak', 2, 'Wrocław');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia_tagi`
--

CREATE TABLE `ogloszenia_tagi` (
  `id_ogloszenia` int(11) NOT NULL,
  `id_tagu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ogloszenia_tagi`
--

INSERT INTO `ogloszenia_tagi` (`id_ogloszenia`, `id_tagu`) VALUES
(1, 2),
(1, 3),
(2, 1),
(2, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracodawcy`
--

CREATE TABLE `pracodawcy` (
  `id` int(255) NOT NULL,
  `firma` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracodawcy`
--

INSERT INTO `pracodawcy` (`id`, `firma`, `email`, `haslo`) VALUES
(1, 'ArtGate', 'artgate@wp.pl', '$2y$10$qvbJPfFHwVdb7DxFo.rBB.K2Rn2avMSwEK1XAuldUZwrSiNhMhiwy'),
(2, 'MaxCom', 'maxpolcom@max.com', '$2y$10$ND99mw0kimSdE7cQyMrgKO9zd9HIAOgjw8Dz7DbzOmJ7P52cOPv8G');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `praktykanci`
--

CREATE TABLE `praktykanci` (
  `id` int(255) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `praktykanci`
--

INSERT INTO `praktykanci` (`id`, `imie`, `nazwisko`, `email`, `haslo`) VALUES
(2, 'Maksymilian', 'Kopydłowski', 'maks.kopydlowski@gmail.com', '$2y$10$prjP99nnVtlu2sKLKAX16uiyijrTJJnSqy3BiB5vYcLsySUL8Vos.'),
(3, 'Rafał', 'Kraśko', 'raf.k@wp.pl', '$2y$10$QF4ITooVWLpEBuAkownrTuoEcX/mi79mdhHr9TVFFm3jpXf9HM24u');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tagi`
--

CREATE TABLE `tagi` (
  `id` int(11) NOT NULL,
  `tag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tagi`
--

INSERT INTO `tagi` (`id`, `tag`) VALUES
(1, 'backend'),
(2, 'frontend'),
(3, 'mid'),
(4, 'junior');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `oferty`
--
ALTER TABLE `oferty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pracodawcy` (`id_pracodawcy`);

--
-- Indeksy dla tabeli `ogloszenia_tagi`
--
ALTER TABLE `ogloszenia_tagi`
  ADD KEY `id_ogloszenia` (`id_ogloszenia`),
  ADD KEY `id_tagu` (`id_tagu`);

--
-- Indeksy dla tabeli `pracodawcy`
--
ALTER TABLE `pracodawcy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `praktykanci`
--
ALTER TABLE `praktykanci`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tagi`
--
ALTER TABLE `tagi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oferty`
--
ALTER TABLE `oferty`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pracodawcy`
--
ALTER TABLE `pracodawcy`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `praktykanci`
--
ALTER TABLE `praktykanci`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tagi`
--
ALTER TABLE `tagi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oferty`
--
ALTER TABLE `oferty`
  ADD CONSTRAINT `oferty_ibfk_1` FOREIGN KEY (`id_pracodawcy`) REFERENCES `pracodawcy` (`id`);

--
-- Constraints for table `ogloszenia_tagi`
--
ALTER TABLE `ogloszenia_tagi`
  ADD CONSTRAINT `ogloszenia_tagi_ibfk_1` FOREIGN KEY (`id_ogloszenia`) REFERENCES `oferty` (`id`),
  ADD CONSTRAINT `ogloszenia_tagi_ibfk_2` FOREIGN KEY (`id_tagu`) REFERENCES `tagi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
