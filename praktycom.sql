-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 06:21 PM
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
  `id_pracodawcy` int(11) NOT NULL,
  `lokalizacja` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oferty`
--

INSERT INTO `oferty` (`id`, `tytul`, `opis`, `id_pracodawcy`, `lokalizacja`) VALUES
(1, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(2, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(41, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(42, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(43, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(44, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(45, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(46, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(47, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(48, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(49, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(50, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(51, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(52, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(53, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(54, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(55, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(56, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(57, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(58, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(59, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(60, 'Staż Front-End developer', 'Firma ArtGate poszukuje kreatywnego i zdolnego stażysty dołączającego do naszego zespołu Front-End Developmentu.\r\nJeśli jesteś pasjonatem technologii webowych, chcesz zdobyć praktyczne doświadczenie w branży i rozwijać swoje umiejętności, to ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Tworzenie responsywnych interfejsów użytkownika z użyciem HTML, CSS i JavaScript.\r\n-Współpraca z zespołem projektowym w celu implementacji nowych funkcji.\r\n-Optymalizacja i utrzymanie istniejącego kodu.\r\n-Testowanie i dostosowywanie interfejsów pod kątem użytkownika.\r\nWymagania:\r\n\r\n-Znajomość HTML, CSS i JavaScript.\r\n-Zdolność do pracy w zespole.\r\n-Kreatywność i chęć nauki.\r\n-Dobra znajomość języka angielskiego (mile widziana).\r\n\r\nOferujemy:\r\n-Praktyczne doświadczenie w dynamicznym środowisku pracy.\r\n-Mentorstwo i wsparcie w rozwijaniu umiejętności.\r\n-Możliwość uczestnictwa w ciekawych projektach.', 1, 'Leszno'),
(61, 'Praktyka BackEnd', 'Firma MaxCom poszukuje ambitnego i zdolnego praktykanta, który dołączy do naszego zespołu Back-End Developmentu. Jeśli jesteś studentem lub absolwentem kierunku informatycznego, zainteresowanym programowaniem i chcesz zdobyć praktyczne doświadczenie w projektach Back-End, ta oferta jest dla Ciebie.\r\n\r\nObowiązki:\r\n-Udział w projektowaniu, implementacji i utrzymaniu aplikacji Back-End.\r\n-Praca z różnymi bazami danych i integracja z systemami.\r\n-Optymalizacja i rozwiązywanie problemów związanych z wydajnością.\r\n-Współpraca z zespołem programistycznym w ramach projektów.\r\n\r\nWymagania:\r\n-Znajomość co najmniej jednego języka programowania Back-End (np. Python, Java, PHP).\r\n-Podstawowa znajomość baz danych i SQL.\r\n-Znajomość zagadnień związanych z bezpieczeństwem aplikacji.\r\n-Dobra umiejętność rozwiązywania problemów i analitycznego myślenia.\r\n\r\nOferujemy:\r\n-Praktyki w dynamicznym środowisku zespołu programistycznego.\r\n-Mentorstwo i szkolenia, wspierające rozwój umiejętności programistycznych.\r\n-Możliwość uczestnictwa w różnorodnych projektach Back-End.', 2, 'Poznań'),
(62, 'Praktyka fryzjerstwo', 'Szukamy pasjonatów fryzjerstwa na praktyki!\r\n\r\nJesteśmy renomowanym salonem fryzjerskim zlokalizowanym w centrum miasta.\r\nPoszukujemy entuzjastów branży, którzy\r\nchcieliby zdobyć praktyczne doświadczenie\r\nw świecie fryzjerstwa.\r\n\r\nCzego możesz się spodziewać:\r\n- Możliwość uczestnictwa w\r\nprofesjonalnych szkoleniach fryzjerskich.\r\n- Praktyka przy cięciu, stylizacji i\r\nkoloryzacji włosów.\r\n- Bezpośredni kontakt z klientami i\r\nbudowanie relacji.\r\n- Praca w przyjaznym zespole\r\nprofesjonalistów.\r\n\r\nOczekujemy:\r\n- Zaangażowania i chęci nauki.\r\n- Kreatywności i umiejętności interpersonalnych.\r\n- Chęci rozwijania umiejętności fryzjerskich.\r\n\r\nZapewniamy:\r\n- Praktyki w pełnym wymiarze godzin.\r\n- Możliwość stałego zatrudnienia po zakończeniu praktyk.\r\n- Przyjazne środowisko pracy.\r\n\r\nJeśli jesteś gotowy/a dołączyć do naszego zespołu i zdobywać doświadczenie w zawodzie fryzjera, czekamy na Twoje zgłoszenie!\r\n\r\nDo zobaczenia w świecie piękna włosów!\r\n', 2, 'Wrocław'),
(63, 'Oferta Praktyki dla Mechanika', 'Opis firmy:\r\nABC Autoservice to renomowany serwis samochodowy specjalizujący się w naprawach, konserwacji i obsłudze pojazdów różnych marek. Nasza firma dąży do zapewnienia najwyższej jakości usług mechaniki samochodowej, a nasi doświadczeni specjaliści stanowią kluczową siłę naszego zespołu.\r\n\r\nOpis stanowiska:\r\nPoszukujemy ambitnego studenta/studentki kierunku mechaniki samochodowej, który/a chciałby/a zdobyć praktyczne doświadczenie w naszym serwisie. Podczas praktyki będziesz miała/miał okazję pracować pod opieką doświadczonego zespołu, zdobywać praktyczną wiedzę z zakresu diagnostyki, napraw i obsługi technicznej samochodów.\r\n\r\nObowiązki:\r\n\r\n-Diagnoza i naprawa usterek mechanicznych.\r\n-Konserwacja i obsługa techniczna pojazdów.\r\n-Współpraca z zespołem w celu realizacji projektów serwisowych.\r\n-Uczestnictwo w szkoleniach i warsztatach wewnętrznych.\r\n\r\nWymagania:\r\n-Studiowanie na kierunku mechanicznym lub pokrewnym.\r\n-Podstawowa wiedza z zakresu mechaniki samochodowej.\r\n-Chęć zdobycia praktycznego doświadczenia zawodowego.\r\n-Samodzielność i umiejętność pracy w zespole.\r\n-Dobre umiejętności komunikacyjne.\r\n\r\nOferujemy:\r\n-Możliwość zdobycia doświadczenia w renomowanym serwisie samochodowym.\r\n-Praktyczne szkolenia i wsparcie doświadczonego zespołu.\r\n-Stabilne warunki zatrudnienia po zakończeniu praktyki dla najlepszych kandydatów.\r\n-Atrakcyjne wynagrodzenie.', 1, 'Warszawa'),
(66, 'Oferta Praktyki dla Mechanika', 'Opis firmy:\r\nABC Autoservice to renomowany serwis samochodowy specjalizujący się w naprawach, konserwacji i obsłudze pojazdów różnych marek. Nasza firma dąży do zapewnienia najwyższej jakości usług mechaniki samochodowej, a nasi doświadczeni specjaliści stanowią kluczową siłę naszego zespołu.\r\n\r\nOpis stanowiska:\r\nPoszukujemy ambitnego studenta/studentki kierunku mechaniki samochodowej, który/a chciałby/a zdobyć praktyczne doświadczenie w naszym serwisie. Podczas praktyki będziesz miała/miał okazję pracować pod opieką doświadczonego zespołu, zdobywać praktyczną wiedzę z zakresu diagnostyki, napraw i obsługi technicznej samochodów.\r\n\r\nObowiązki:\r\n\r\nDiagnoza i naprawa usterek mechanicznych.\r\nKonserwacja i obsługa techniczna pojazdów.\r\nWspółpraca z zespołem w celu realizacji projektów serwisowych.\r\nUczestnictwo w szkoleniach i warsztatach wewnętrznych.\r\nWymagania:\r\n\r\nStudiowanie na kierunku mechanicznym lub pokrewnym.\r\nPodstawowa wiedza z zakresu mechaniki samochodowej.\r\nChęć zdobycia praktycznego doświadczenia zawodowego.\r\nSamodzielność i umiejętność pracy w zespole.\r\nDobre umiejętności komunikacyjne.\r\nOferujemy:\r\n\r\nMożliwość zdobycia doświadczenia w renomowanym serwisie samochodowym.\r\nPraktyczne szkolenia i wsparcie doświadczonego zespołu.\r\nStabilne warunki zatrudnienia po zakończeniu praktyki dla najlepszych kandydatów.\r\nAtrakcyjne wynagrodzenie.', 1, 'Wrocław');

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
-- Struktura tabeli dla tabeli `polubienia`
--

CREATE TABLE `polubienia` (
  `id_oferty` int(11) NOT NULL,
  `id_praktykanta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(2, 'MaxCom', 'maxcom@wp.pl', '$2y$10$ND99mw0kimSdE7cQyMrgKO9zd9HIAOgjw8Dz7DbzOmJ7P52cOPv8G'),
(3, 'PolPaka', 'polpaka@wp.pl', '$2y$10$RNfaYYwXOa8Jh3DQ39IrGOsj7hy14AyOw1dbbJ6i.c2T6ffSkXL3K');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `praktykanci`
--

CREATE TABLE `praktykanci` (
  `id` int(255) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `haslo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `praktykanci`
--

INSERT INTO `praktykanci` (`id`, `imie`, `nazwisko`, `email`, `haslo`) VALUES
(2, 'Maksymilian', 'Kopydłowski', 'maks.kopydlowski@gmail.com', '$2y$10$prjP99nnVtlu2sKLKAX16uiyijrTJJnSqy3BiB5vYcLsySUL8Vos.'),
(3, 'Rafał', 'Kraśko', 'rafal.krasko@wp.pl', '$2y$10$QF4ITooVWLpEBuAkownrTuoEcX/mi79mdhHr9TVFFm3jpXf9HM24u'),
(4, 'Piotr', 'Kaczmarek', 'p.kaczmarek@wp.pl', '$2y$10$H21ghQmlw4QYJJjsDpSfX.lbQs4NBBp7bfCcFecQF7HzK7XcV101C');

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
-- Indeksy dla tabeli `polubienia`
--
ALTER TABLE `polubienia`
  ADD KEY `id_oferty` (`id_oferty`),
  ADD KEY `id_praktykanta` (`id_praktykanta`);

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
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pracodawcy`
--
ALTER TABLE `pracodawcy`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `praktykanci`
--
ALTER TABLE `praktykanci`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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

--
-- Constraints for table `polubienia`
--
ALTER TABLE `polubienia`
  ADD CONSTRAINT `polubienia_ibfk_1` FOREIGN KEY (`id_oferty`) REFERENCES `oferty` (`id`),
  ADD CONSTRAINT `polubienia_ibfk_2` FOREIGN KEY (`id_praktykanta`) REFERENCES `praktykanci` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
