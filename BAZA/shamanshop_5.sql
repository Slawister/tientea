-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: shamanshop.nazwa.pl:3306
-- Czas generowania: 01 Mar 2021, 16:15
-- Wersja serwera: 10.1.48-MariaDB
-- Wersja PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shamanshop_5`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `street` varchar(50) NOT NULL,
  `home_nr` int(4) NOT NULL,
  `local_nr` int(6) NOT NULL,
  `post_code` varchar(6) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `addresses`
--

INSERT INTO `addresses` (`address_id`, `name`, `surname`, `street`, `home_nr`, `local_nr`, `post_code`, `city`) VALUES
(1, 'admin', 'nowy', 'nowy', 1, 0, '11-111', 'Miasto'),
(2, 'karolina', 'arodz', 'lipowa', 11, 5, '55-140', 'Żmigród'),
(3, 'jaaa', 'jjaaaa', 'jakas', 1, 5, '56-400', 'Ligota Polska'),
(4, 'jkaa', 'jaa', 'jaa', 11, 0, '66-400', 'Zubrzyca Górna'),
(5, 'ja', 'j', 'jaa', 1, 0, '55-100', 'Trzebnica'),
(6, 'lukasz', 'miela', 'prusicka', 1, 5, '55-100', 'Trzebnica'),
(7, 'ja', 'ja', 'jaa', 1, 0, '55-100', 'Trzebnica'),
(8, 'asd', 'asdas', 'asdas', 21, 0, '55-101', 'Trzebnica'),
(9, 'asd', 'asd', 'asdas', 21, 0, '55-101', 'Trzebnica'),
(10, 'JA', 'JA', 'JA', 1, 5, '55-100', 'Trzebnica'),
(11, 'karolina', 'arodź', 'lipowa', 11, 5, '55-140', 'Żmigród'),
(12, 'karolina', 'arodz', 'lipowa', 11, 5, '55-100', 'Żmigród'),
(13, 'Magdalena', 'Szymańska', 'Odrowąża', 39, 0, '05-260', 'Marki'),
(14, 'Dawid', 'Kościelny', 'Główna', 104, 0, '47-200', 'Kędzierzyn-Koźle'),
(15, 'Tomasz', 'Kaniuka', '-', 0, 0, '50-500', 'Wrocław'),
(16, 'Tomasz', 'Kaniuka', 'Parnickiego', 1, 1, '00-000', 'Wrocław'),
(17, 'Paweł', 'Młynarczuk', 'Batalionu Parasol', 7, 5, '59-220', 'Legnica'),
(18, 'jaa', 'jaaa', 'jaaa', 1, 0, '54-120', 'Wrocław'),
(19, 'Karolina', 'Arodź', 'Wiosenna', 11, 5, '55-100', 'Trzebnica'),
(20, 'Anna', 'Sławska', 'Żeromskiego', 20, 1, '55-100', 'Trzebnica'),
(21, 'Karolina', 'Arodź', 'lipowa', 11, 5, '55-140', 'Żmigród'),
(22, 'Karolina', 'Arodź', 'Lipowa', 11, 1, '55-100', 'Trzebnica'),
(23, 'Karolina', 'Arodź', 'Lipowa', 11, 1, '55-100', 'Trzebnica'),
(24, 'Karolina', 'arodz', 'Wiosenna', 20, 1, '55-100', 'Trzebnica'),
(25, 'Łukasz', 'Malicki', 'jagodowa', 12, 3, '55-100', 'Trzebnica'),
(26, 'Anna', 'Arodź', 'jagodowa', 12, 3, '55-100', 'Trzebnica'),
(27, 'Karolina', 'Malicki', 'jagodowa', 12, 3, '55-100', 'Trzebnica'),
(28, 'Paweł', 'Młynarczuk', 'Batalionu Parasol', 7, 5, '59-220', 'Legnica'),
(29, 'Karolina', 'Arodź', 'Jagodowa', 12, 3, '55-100', 'Trzebnica'),
(30, 'Karolina', 'Arodź', 'Lipowa', 12, 0, '55-100', 'Trzebnica'),
(31, 'Karolina', 'Miela', 'Jagodowa', 12, 3, '55-100', 'Trzebnica'),
(32, 'Inka', 'Arodź', 'Lipowa', 11, 5, '55-140', 'Żmigród'),
(33, 'a', 's', 'd', 1, 0, '11-111', 'tarzan'),
(34, 'Mariusz', 'Brożek', 'Bodzanów', 237, 0, '32-020', 'Wieliczka'),
(35, 'Paweł', 'Młynarczuk', 'Batalionu Parasol', 7, 5, '59-220', 'Legnica'),
(36, 'Janina', 'Sobiło', 'Strzemienna', 1, 0, '65-548', 'Zielona Góra'),
(37, 'Jadwiga', 'Karpała', 'ul. Łokietka', 57, 82, '31-279', 'Kraków'),
(38, 'Rafał', 'Lesiński', 'Świderska', 65, 0, '05-400', 'Otwock'),
(39, 'Karolina', 'Kukla', 'Rybacka', 8, 0, '43-518', 'Ligota'),
(40, 'Marian', 'Niesłony', 'Mieszka I', 1, 11, '44-194', 'Knurów'),
(41, 'Marian', 'Niesłony', 'Mieszka I', 1, 11, '44-194', 'Knurów'),
(42, 'asdasd', 'asdasd', 'ads', 2, 0, '55-100', 'Trzebnica'),
(43, 'Piotr', 'Galczyk', 'postepu', 3, 0, '02-676', 'warszawa'),
(44, 'Arkadiusz', 'Brzeski', 'Lniana', 24, 93, '91-158', 'Łódź'),
(45, 'JOANNA', 'KUBACKA', 'PROSTA', 19, 0, '55-114', 'WISZNIA MAŁA'),
(46, 'Tomasz', 'Sikora', 'ul. Reptowska', 54, 11, '41-923', 'Bytom'),
(47, 'PRZEMEK', 'TOMICKI', 'OS.BOLESŁAWA ŚMIAŁEGO', 4, 70, '60-682', 'Poznań'),
(48, 'Joanna', 'Kwiatkowska', 'Olbrachta', 218, 0, '35-614', 'Rzeszów'),
(49, 'Aleksandra', 'Rachoń', 'Burgaska', 9, 7, '80-287', 'Gdańsk'),
(50, 'gfhgv', 'g,jhg', 'hg,kjhb', 3, 0, '05-220', 'Zielonka'),
(51, 'Emilia', 'Merzouk', 'Kościuszki 74 Sklep Bławatny', 74, 0, '30-114', 'Kraków'),
(52, 'Damian', 'Rybacki', 'Lechonia', 6, 3, '95-100', 'Zgierz'),
(53, 'Piotr', 'Ryszka', 'Rybnicka', 74, 0, '44-293', 'Szczerbice'),
(54, 'Centrum Izolacji', 'Katarzyna Kłos', 'Zemborzycka', 53, 0, '20-445', 'Lublin'),
(55, 'Centrum Izolacji', 'Katarzyna Kłos', 'Zemborzycka', 53, 0, '20-445', 'Lublin'),
(56, 'Katarzyna', 'oporska', 'Prosta', 1, 3, '76-200', 'SłupSłupsksk'),
(57, 'ŁUKASZ', 'PILCH', 'ZAKOPIAŃSKA', 166, 4, '30-435', 'Kraków'),
(58, 'trtre', 'tretre', 'tretre', 5, 5, '46-100', 'Namysłówdgfgf'),
(59, 'tomasz', 'świątek', 'motorowa', 1, 0, '04-035', 'Warszawa'),
(60, 'bartosz', 'bobkowski', 'wąska', 6, 28, '78-100', 'Kołobrzeg'),
(61, 'fasfas', 'fsafa', 'asfas', 34, 0, '53-574', 'Wrocław'),
(62, 'Marcin', 'Muszer', 'Kochanowskiego', 14, 0, '43-100', 'Tychy'),
(63, 'wojciech', 'bukowski', 'osiedle', 51, 2, '39-206', 'Pustków'),
(64, 'Karolina', 'Polańska', 'Stefana Batorego', 14, 0, '37-500', 'Jarosław'),
(65, 'wojciech', 'bukowski', 'osiedle', 51, 2, '39-206', 'Pustków'),
(66, 'Adrianna', 'Kręcijasz', 'Wiejska', 6, 41, '95-200', 'Pabianice'),
(67, 'Marcin', 'Łuckiewicz', 'Ceramiczna', 5, 23, '03-126', 'Warszawa'),
(68, 'Pro-Druk Mariusz', 'Motylewski', 'Kopernika', 13, 0, '32-050', 'Skawina');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `articles`
--

CREATE TABLE `articles` (
  `article_id` int(10) NOT NULL,
  `box_id` int(11) NOT NULL,
  `article_order` int(10) NOT NULL,
  `article_active` tinyint(1) NOT NULL,
  `article_alias` varchar(50) NOT NULL,
  `article_title` varchar(50) NOT NULL,
  `article_image` varchar(50) NOT NULL,
  `article_introdution` text NOT NULL,
  `article_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `articles`
--

INSERT INTO `articles` (`article_id`, `box_id`, `article_order`, `article_active`, `article_alias`, `article_title`, `article_image`, `article_introdution`, `article_content`) VALUES
(1, 1, 1, 1, 'jak_zaparzyc_pyszna_herbate', 'Jak zaparzyć pyszną herbatę', '', '<p>\r\n	Co każdy wiedzieć powinien o parzeniu herbaty</p>\r\n', '<p>\r\n	Często o osobach nieposiadających talentu kulinarnego m&oacute;wi się, że jedyne co potrafią to zaparzyć filiżankę herbaty. To żartobliwe powiedzenie sprawdza się znakomicie w przypadku herbat w saszetkach, jednak zaparzenie herbaty &bdquo;z prawdziwego zdarzenia&rdquo; wymaga pewnej wiedzy i umiejętności. Na szczęście jest to na tyle proste, że każdy, kto wykaże odrobinę chęci, może przygotować napar, kt&oacute;rego nie powstydziłby się nawet najbardziej zagorzały miłośnik herbaty!</p>\r\n<p>\r\n	Przygotowanie pysznej herbaty to proces składający się z kilku krok&oacute;w.</p>\r\n<p>\r\n	<strong>Krok 1:</strong> Aby poznać smak prawdziwej herbaty, trzeba się najpierw w taką herbatę zaopatrzyć. Tylko herbaty wysokogatunkowe, pochodzące z uznanych plantacji, pozwolą uzyskać napar wysokiej jakości. Pamiętajmy, że o tego typu herbaty należy odpowiednio dbać- szczelnie przechowywane na długo zachowają sw&oacute;j niepowtarzalny aromat i smak.</p>\r\n<p>\r\n	<strong>Krok 2:</strong> Kolejny ważny element to woda. Najodpowiedniejszą jest woda miękka, niskozmineralizowana, zawierająca jak najmniejszą ilość soli wapnia i magnezu. Jeżeli chcemy zaparzyć pyszną herbatą, zaopatrzmy się w butelkę wody źr&oacute;dlanej lub mineralnej niegazowanej, w niewielkim stopniu zmineralizowanej.</p>\r\n<p>\r\n	<strong>Krok 3:</strong> Częstym problemem przy przygotowywaniu herbaty liściastej jest ilość suszu, kt&oacute;rej należy użyć, temperatura wody oraz czas parzenia. W tabelce poniżej zamieściliśmy zbi&oacute;r informacji niezbędnych do prawidłowego przygotowania pysznego naparu:</p>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				Rodzaj herbaty</th>\r\n			<th>\r\n				Ilość suszu</th>\r\n			<th>\r\n				Temperatura</th>\r\n			<th>\r\n				Czas parzenia</th>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\">\r\n				Herbaty czarne</th>\r\n			<td>\r\n				<strong>1-2 łyżeczki na 200 ml wody</strong><br />\r\n				Intensywność naparu uzależniona jest od własnych upodobań- można użyć większej bądź mniejszej ilości suszu.</td>\r\n			<td>\r\n				<strong>95 &deg;C *</strong></td>\r\n			<td>\r\n				<strong>3-5 min</strong><br />\r\n				Czas parzenia uzależniony jest od kilku czynnik&oacute;w.<br />\r\n				Należy wydłużyć czas parzenia, gdy:<br />\r\n				-używamy twardszej wody;<br />\r\n				-liście herbaty są duże i zwinięte.<br />\r\n				<br />\r\n				Należy skr&oacute;cić czas parzenia, gdy:<br />\r\n				-liście herbaty są rozdrobnione.<br />\r\n				<br />\r\n				Pamiętaj!<br />\r\n				Herbatę Darjeeling należy parzyć max 3 min.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n				Jeżeli parzymy herbatę w czajniku, należy go ogrzać poprzez kilkakrotne zalanie gorącą wodą. Po osuszeniu wsypujemy odpowiednią ilość herbacianego suszu, kt&oacute;ry zalewamy wodą w drugim stadium wrzenia, tj. w&oacute;wczas gdy na jej powierzchni pojawiają się drobne pęcherzyki powietrza tak, że wydaje się ona biała (tzw. &bdquo;biały wrzątek&rdquo;). Najwyższymi walorami smakowymi odznacza się gorący, dopiero co przygotowany napar.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\">\r\n				Herbaty zielone</th>\r\n			<td class=\"odd\">\r\n				<strong>1 łyżeczka na 200 ml wody</strong></td>\r\n			<td class=\"odd\" style=\"text-align:center\">\r\n				<strong>70-85 &deg;C *</strong></td>\r\n			<td class=\"odd\">\r\n				<strong>2-4 min</strong><br />\r\n				Przestrzeganie rekomendowanego czasu parzenia jest bardzo istotne, gdyż zbyt długie pozostawienie liści w naparze spowoduje jego zgorzknienie.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"odd\" colspan=\"3\">\r\n				Aby ułatwić zaparzenie zielonej herbaty, polecamy stosowanie specjalnych zaparzaczy, czajnik&oacute;w lub kubk&oacute;w z sitkiem. Umożliwiają one bezproblemowe wyciągnięcie suszu oraz ponowne jego użycie (ten sam susz można parzyć nawet trzykrotnie).</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\">\r\n				Herbaty białe</th>\r\n			<td>\r\n				<strong>1-2 łyżeczki na 200 ml wody</strong></td>\r\n			<td>\r\n				<strong>75-85 &deg;C *</strong></td>\r\n			<td>\r\n				<strong>3-10 min</strong><br />\r\n				W zależności od gatunku herbaty- szczeg&oacute;łowe sposoby zaparzania białych herbat znajdą Państwo na stronie każdego produktu.</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n				Prawidłowo przygotowany napar cechuje się delikatnym aromatem, klarowną barwą oraz jest całkowicie wolny od goryczy.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\" style=\"padding:15px 0\">\r\n				Herbaty kwitnące</th>\r\n			<td class=\"odd\">\r\n				<strong>1 kulka na dzbanek</strong></td>\r\n			<td class=\"odd\">\r\n				<strong>75-85 &deg;C *</strong></td>\r\n			<td class=\"odd\">\r\n				<strong>5-7 min</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"odd\" colspan=\"3\">\r\n				Herbatę kwitnącą najlepiej zaparzyć w szklanym dzbanku, kt&oacute;rego przeźroczyste ścianki pozwolą obserwować przemianę niepozornej kulki w artystyczną kompozycję.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\" style=\"padding:15px 0\">\r\n				Herbaty czerwone<br />\r\n				(Pu-Erh)</th>\r\n			<td>\r\n				<strong>1 łyżeczka na 200 ml</strong></td>\r\n			<td>\r\n				<strong>96 &deg;C *</strong></td>\r\n			<td>\r\n				<strong>3-5 min</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n				Czerwoną herbatę najlepiej spożywać 30 minut po posiłku. Aby uzyskać jak najefektywniejsze działanie naparu, należy pić go bez cukru i innych dodatk&oacute;w.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th style=\"padding:15px 0\">\r\n				Oolong</th>\r\n			<td class=\"odd\">\r\n				<strong>1 łyżeczka na 200 ml</strong></td>\r\n			<td class=\"odd\">\r\n				<strong>90 &deg;C *</strong></td>\r\n			<td class=\"odd\">\r\n				<strong>3-4 min</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<th rowspan=\"2\">\r\n				Rooibos</th>\r\n			<td>\r\n				<strong>1-2 łyżeczki na 200 ml</strong></td>\r\n			<td>\r\n				<strong>95 &deg;C *</strong></td>\r\n			<td>\r\n				<strong>4-5 min</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\">\r\n				Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni naparu, do przygotowania naparu zalecamy używać specjalnego zaparzacza.</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"5\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				* w celu ustalenia pożądanej temperatury wody, można użyć <a href=\"/?go=herbaty&amp;category=akcesoria&amp;product=termometr\" style=\"font-size:14px;text-decoration:underline\">specjalnego termometru</a>. Jeżeli go nie posiadamy, należy poczekać aż woda przestygnie. Po upływie 3-4 min woda osiąga 90&deg;C, po 12-14 min 75 &deg;C</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	Powyższa tabelka prezentuje wartości przybliżone odnoszące się do wszystkich herbat z danego rodzaju. Należy mieć na względzie, że poszczeg&oacute;lne gatunki herbat mogą mieć indywidualny spos&oacute;b parzenia- szczeg&oacute;łowe informacje zamieściliśmy na stronach&nbsp; produkt&oacute;w w zakładce &bdquo;jak zaparzyć&rdquo;.</p>\r\n<p>\r\n	<strong>Krok 4:</strong> Filiżankę pysznej herbaty najlepiej degustować w gronie najbliższych bądź w samotności jako uzupełnienie relaksujących chwil spędzonych przy lekturze, ulubionej muzyce lub serialu. Bo &bdquo;herbatę się pija, by zapomnieć o hałasie świata&rdquo;....</p>\r\n'),
(2, 2, 1, 1, 'nie_wiesz_co_wybrac', 'Nie wiesz, co wybrać?', '/img/boxy/zapytanie.jpg', '<p>\r\n	Zdaj się na nas! Specjalnie dla Ciebie stworzyliśmy gotowe zestawy. Znajdziesz tu coś dla początkujących herbaciarzy, herbaty idealne dla niej/ dla niego, napary o mocy afrozydiakalnej i wiele innych...<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Nie możesz się zdecydować co wybrać i co chwila zmieniasz zdanie? Nie jesteś pewien, kt&oacute;re produkty spełniłyby Twoje oczekiwania? Zdaj się na nas!</p>\r\n<p>\r\n	Specjalnie dla naszych Klient&oacute;w przygotowaliśmy gotowe zestawy tematyczne. Każdy z nich składa się z 4-5 produkt&oacute;w o podobnym charakterze. Listę zestaw&oacute;w prezentujemy poniżej:</p>\r\n<p>\r\n</p>\r\n<h2>\r\n	<a href=\"#zestawy_herbaciane\">ZESTAWY HERBACIANE:</a></h2>\r\n<ul class=\"tea_sets\" style=\"margin-left:50px;\">\r\n	<li>\r\n		<a href=\"#zestaw_poczatkujacego\">Dla Początkujących<br />\r\n		pierwsze kroki w &bdquo;herbacianym świecie&rdquo;</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_dla_niej\">Dla Niej<br />\r\n		delikatnie i romantyczne</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_dla_niego\">Dla Niego<br />\r\n		zdecydowanie i odważnie</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_efektowny\">Efektowny<br />\r\n		czyli jak zaskoczyć gości</a></li>\r\n</ul>\r\n<p>\r\n	<a><br />\r\n	</a></p>\r\n<h2>\r\n	<a href=\"#zestawy_ziolowe\">ZESTAWY ZIOŁOWE:</a></h2>\r\n<ul class=\"tea_sets\" style=\"margin-left:50px;\">\r\n	<li>\r\n		<a href=\"#zestaw_wzmacniajacy\">Wzmacniający<br />\r\n		nie daj się chorobie!</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_energetyzujacy\">Energetyzujący<br />\r\n		aby mieć siłę do pracy i zabawy</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_odchudzajacy\">Odchudzający<br />\r\n		pręcz ze zbędnymi kilogramami</a></li>\r\n	<li>\r\n		<a href=\"#zestaw_milosny\">Miłosny<br />\r\n		aby podsycić żar namiętności</a></li>\r\n</ul>\r\n<br />\r\n<p>\r\n	Aby zakupić zestaw, wybierz ten, kt&oacute;ry Cię interesuje, kliknij dodaj, a wszystkie zawarte w nim produkty zostaną przeniesione do Twojego koszyka.</p>\r\n<p>\r\n	Pragniemy, abyście byli w 100% zadowoleni z zakupu, dlatego wprowadziliśmy możliwość modyfikacji zestaw&oacute;w (zmiany można dokonywać, gdy zestaw jest już w koszyku)- proponowane produkty można wymienić na inne, zmieniać ich ilości, usuwać te, kt&oacute;re Ci nie odpowiadają bądź dodawać nowe.</p>\r\n<p>\r\n	Wszystko po to, abyś stworzył zestaw idealny dla siebie!</p>\r\n<br />\r\n<p>\r\n	<a name=\"zestawy_herbaciane\"></a></p>\r\n<h1>\r\n	<a name=\"zestawy_herbaciane\">Zestawy herbaciane</a></h1>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_poczatkujacego\"></a>\r\n				<h2>\r\n					Dla Początkującego - czyli pierwsze kroki w &bdquo;herbacianym świecie&rdquo;</h2>\r\n				<p>\r\n					Tworząc zestaw dla początkującego, szukaliśmy herbat o dobrze znanych smakach, kt&oacute;re przypadną do gustu niemal każdemu. Dlatego znalazła się w nim herbata z truskawką, czekoladą oraz napar o odświeżającej nucie. Całości dopełniają akcesoria- ich użycie pozwoli w łatwy spos&oacute;b zaparzyć pyszny napar nawet najbardziej &bdquo;zielonym&rdquo; herbaciarzom.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"truskawkowe ciasteczko\" src=\"img/produkty/truskawkowe_ciasteczko_1.jpg\" width=\"170px\" /><br />\r\n				Truskawkowe Ciasteczko</td>\r\n			<td>\r\n				<img alt=\"Rooibos czekolada z pomarańczą\" src=\"img/produkty/rooibos_czekolada_z_pomarancza_1.jpg\" width=\"170px\" /><br />\r\n				Rooibos Czekolada z Pomarańczą</td>\r\n			<td>\r\n				<img alt=\"czas na relaks\" src=\"img/produkty/czas_na_relaks_1.jpg\" width=\"170px\" /><br />\r\n				Czas na relaks</td>\r\n			<td>\r\n				<img alt=\"termometr\" src=\"img/produkty/zaparzacz_kulka_1.jpg\" width=\"170px\" /><br />\r\n				Zaparzacz kulka</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"4,Truskawkowe Ciasteczko,?go=herbaty&amp;category=herbaty_zielone&amp;product=truskawkowe_ciasteczko,50,11.8,http://www.test.tientea.pl/img/produkty/truskawkowe_ciasteczko_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"41,Rooibos Czekolada z Pomarańczą,?go=herbaty&amp;category=herbaty_rooibos&amp;product=rooibos_czekolada_z_pomarancza,50,8.3,http://www.test.tientea.pl/img/produkty/rooibos_czekolada_z_pomarancza_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"48,Czas na relaks,?go=herbaty&amp;category=herbaty_czarne&amp;product=czas_na_relaks,50,9.86,http://www.test.tientea.pl/img/produkty/czas_na_relaks_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"120,Zaparzacz Kulka,?go=herbaty&amp;category=akcesoria&amp;product=zaparzacz_kulka,1,16,http://www.test.tientea.pl/img/produkty/zaparzacz_kulka_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"right\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_dla_niej\"></a>\r\n				<h2>\r\n					Dla Niej - delikatnie i romantyczne</h2>\r\n				<p>\r\n					Kompozycja DLA NIEJ dedykowana jest dla kobiet lubiących delikatne i subtelne, a zarazem wyraziste smaki. W zestawie dominują herbaty o owocowo- kwiatowej nucie- wyborny smak i zniewalający zapach w jednym!</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img alt=\"Malinowo-Waniliowa Konfitura\" src=\"img/produkty/malinowo-waniliowa_konfitura_1.jpg\" width=\"170px\" /><br />\r\n				Malinowo-Waniliowa Konfitura</td>\r\n			<td>\r\n				<img alt=\"truskawkowi w szampanie\" src=\"img/produkty/truskawki_w_szampanie_1.jpg\" width=\"170px\" /><br />\r\n				Truskawki w szampanie</td>\r\n			<td>\r\n				<img alt=\"Pai Mu Tan Romance\" src=\"img/produkty/pai_mu_tan_romance_1.jpg\" width=\"170px\" /><br />\r\n				Pai Mu Tan Romance</td>\r\n			<td>\r\n				<img alt=\"uspokajajaca\" src=\"img/produkty/uspokajajaca_1.jpg\" width=\"170px\" /><br />\r\n				Uspokajająca</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"49,Malinowo-Waniliowa Konfitura,?go=herbaty&amp;category=herbaty_czarne&amp;product=malinowo-waniliowa_konfitura,50,10.66,http://www.test.tientea.pl/img/produkty/malinowo-waniliowa_konfitura_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"102,Truskawki w Szampanie,?go=herbaty&amp;category=herbaty_zielone&amp;product=truskawki_w_szampanie,50,12.2,http://www.test.tientea.pl/img/produkty/truskawki_w_szampanie_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"45,Pai Mu Tan Romance,?go=herbaty&amp;category=herbaty_biale&amp;product=pai_mu_tan_romance,50,18.4,http://www.test.tientea.pl/img/produkty/pai_mu_tan_romance_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"51,Uspokajająca,?go=herbaty&amp;category=herbaty_rooibos&amp;product=uspokajajaca,50,9.4,http://www.test.tientea.pl/img/produkty/uspokajajaca_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_dla_niego\"></a>\r\n				<h2>\r\n					Dla Niego - zdecydowanie i odważnie</h2>\r\n				<p>\r\n					Herbaty o intensywnym aromacie i stanowczym smaku. Znajdziemy w nich akcenty alkoholowe, owocowe a także słodkie, deserowe. Z pewnością przypadną do gustu Panom w r&oacute;żnym wieku.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/very_cherry_rum_1.jpg\" width=\"170px\" /><br />\r\n				Malinowo-Waniliowa Konfitura</td>\r\n			<td>\r\n				<img src=\"img/produkty/choco_irish_cream_1.jpg\" width=\"170px\" /><br />\r\n				Choco Irish Cream</td>\r\n			<td>\r\n				<img src=\"img/produkty/golden_monkey_1.jpg\" width=\"170px\" /><br />\r\n				Golden Monkey</td>\r\n			<td>\r\n				<img src=\"img/produkty/wino-gronowe_grono_1.jpg\" width=\"170px\" /><br />\r\n				Wino-gronowe Grono</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"25,Very Cherry Rum,?go=herbaty&amp;category=herbaty_czarne&amp;product=very_cherry_rum,50,8.97,http://www.test.tientea.pl/img/produkty/very_cherry_rum_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"33,Choco Irish Cream,?go=herbaty&amp;category=herbaty_czarne&amp;product=choco_irish_cream,50,9.3,http://www.test.tientea.pl/img/produkty/choco_irish_cream_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"65,Golden Monkey,?go=herbaty&amp;category=herbaty_czarne&amp;product=golden_monkey,50,15.1,http://www.test.tientea.pl/img/produkty/golden_monkey_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"11,Wino- gronowe Grono,?go=herbaty&amp;category=herbaty_zielone&amp;product=wino-gronowe_grono,50,9.8,http://www.test.tientea.pl/img/produkty/wino-gronowe_grono_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_efektowny\"></a>\r\n				<h2>\r\n					Efektowny - czyli jak zachwycić gości</h2>\r\n				<p>\r\n					Herbaciane perełki! Ich wygląd, smak i aromat wywołuje słowa zachwytu. Każda z proponowanych herbat zawiera w sobie inną niespodziankę. Napary, kt&oacute;re znakomicie sprawdzą się podczas spotkań w gronie znajomych i rodziny- słowa zachwytu gwarantowane</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/jasmine_lichi_1.jpg\" width=\"170px\" /><br />\r\n				Jasmine Lichi</td>\r\n			<td>\r\n				<img src=\"img/produkty/owocowy_mus_1.jpg\" width=\"170px\" /><br />\r\n				Owocowy Mus</td>\r\n			<td>\r\n				<img src=\"img/produkty/jak_w_ulu_1.jpg\" width=\"170px\" /><br />\r\n				Jak w Ulu</td>\r\n			<td>\r\n				<img src=\"img/produkty/fujian_white_kokos-wanilia_1.jpg\" width=\"170px\" /><br />\r\n				Fuijan White Kokos-Wanilia</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"87,Jasmine Lichi,?go=herbaty&amp;category=herbaty_biale&amp;product=jasmine_lichi,50,32.8,http://www.test.tientea.pl/img/produkty/jasmine_lichi_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"21,Owocowy Mus,?go=herbaty&amp;category=herbaty_zielone&amp;product=owocowy_mus,50,9.7,http://www.test.tientea.pl/img/produkty/owocowy_mus_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"28,Jak w Ulu,?go=herbaty&amp;category=herbaty_czarne&amp;product=jak_w_ulu,50,8.9,http://www.test.tientea.pl/img/produkty/jak_w_ulu_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"55,Fujian White Kokos-Wanilia,?go=herbaty&amp;category=herbaty_biale&amp;product=fujian_white_kokos-wanilia,50,17.3,http://www.test.tientea.pl/img/produkty/fujian_white_kokos-wanilia_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<a name=\"zestawy_ziolowe\"></a></p>\r\n<h1>\r\n	ZESTAWY Ziołowe:</h1>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_wzmacniajacy\"></a>\r\n				<h2>\r\n					Wzmacniający - nie daj się chorobie</h2>\r\n				<p>\r\n					Zestaw idealny dla tych, kt&oacute;rzy chcą wzmocnić sw&oacute;j organizm w okresie jesienno-zimowym. Ceniony od tysiącleci Żeń-szeń w postaci czystej oraz w połączeniu z pyszną herbatą to pokrzepienie dla ciała i umysłu. Lapacho w kompozycji z leśnymi owocami nie tylko znakomicie smakuje, ale r&oacute;wnież wspiera układ odpornościowy. Maca zalecana jest w stanach zmęczenia- dostarcza naszemu organizmowi naturalnych aminokwas&oacute;w, fitohormon&oacute;w, witamin i minerał&oacute;w. Zestaw WZMACNIAJĄCY to 100% naturalne produkty, kt&oacute;re są znane i cenione na całym świecie.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/zen-szen_zmielony_1.jpg\" width=\"170px\" /><br />\r\n				Żeń-szeń (zmielony)</td>\r\n			<td>\r\n				<img src=\"img/produkty/lapacho_owoce_lasu_1.jpg\" width=\"170px\" /><br />\r\n				Lapacho Owoce Lasu</td>\r\n			<td>\r\n				<img src=\"img/produkty/tien_zen-szen_tea_1.jpg\" width=\"170px\" /><br />\r\n				Tien Żeń-szeń Tea</td>\r\n			<td>\r\n				<img src=\"img/produkty/maca_1.jpg\" width=\"170px\" /><br />\r\n				Maca</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"94,Żeń-szeń (zmielony),?go=herbaty&amp;category=ziola&amp;product=zen-szen_zmielony,50,36.8,http://www.test.tientea.pl/img/produkty/zen-szen_zmielony_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"105,Lapacho Owoce Lasu,?go=herbaty&amp;category=ziola&amp;product=lapacho_owoce_lasu,50,9.6,http://www.test.tientea.pl/img/produkty/lapacho_owoce_lasu_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"57,Tien Żeń-szeń Tea,?go=herbaty&amp;category=ziola&amp;product=tien_zen-szen_tea,50,12.4,http://www.test.tientea.pl/img/produkty/tien_zen-szen_tea_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"97,Maca,?go=herbaty&amp;category=ziola&amp;product=maca,50,28,http://www.test.tientea.pl/img/produkty/maca_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_energetyzujacy\"></a>\r\n				<h2>\r\n					Energetyzujący &ndash; aby mieć siłę do pracy i zabawy</h2>\r\n				<p>\r\n					Zestaw ENERGETYZUJĄCY to propozycja dla os&oacute;b prowadzących aktywny tryb życia- zar&oacute;wno w wymiarze fizycznym, jak i intelektualnym. Składa się z całkowicie naturalnych składnik&oacute;w pobudzających, kt&oacute;re znakomicie zastępują szkodliwe energetyki z puszki.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/guarana_1.jpg\" width=\"170px\" /><br />\r\n				Guarana</td>\r\n			<td>\r\n				<img src=\"img/produkty/orzeszki_cola_1.jpg\" width=\"170px\" /><br />\r\n				Orzeszki cola</td>\r\n			<td>\r\n				<img src=\"img/produkty/sencha_guarana_1.jpg\" width=\"170px\" /><br />\r\n				Sencha Guarana</td>\r\n			<td>\r\n				<img src=\"img/produkty/ilex_guayusa_1.jpg\" width=\"170px\" /><br />\r\n				Ilex guayusa</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"91,Guarana,?go=herbaty&amp;category=ziola&amp;product=guarana,50,18,http://www.test.tientea.pl/img/produkty/guarana_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"89,Orzeszki cola,?go=herbaty&amp;category=ziola&amp;product=orzeszki_cola,50,7.2,http://www.test.tientea.pl/img/produkty/orzeszki_cola_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"59,Sencha Guarana,?go=herbaty&amp;category=herbaty_zielone&amp;product=sencha_guarana,50,12.5,http://www.test.tientea.pl/img/produkty/sencha_guarana_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"92,Ilex guayusa,?go=herbaty&amp;category=ziola&amp;product=ilex_guayusa,50,35.3,http://www.test.tientea.pl/img/produkty/ilex_guayusa_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_odchudzajacy\"></a>\r\n				<h2>\r\n					Odchudzający - precz ze zbędnymi kilogramami!</h2>\r\n				<p>\r\n					Zestaw ODCHUDZAJĄCY bazuje na niezr&oacute;wnanym mordercy tłuszczu- herbacie Pu-Erh. Pu-Erh ma najlepsze właściwości odchudzające spośr&oacute;d wszystkich znanych na świecie herbat- obniża zawartość tłuszczu w organizmie, redukuje poziom cholesterolu oraz wspomaga procesy trawienne. W zestawie umieściliśmy r&oacute;wnież guaranę, kt&oacute;ra wpływa korzystnie na przemianę materii, przez co zwiększa redukcję tkanki tłuszczowej i wspomaga odchudzanie.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/pu-erh_slim_1.jpg\" width=\"170px\" /><br />\r\n				Pu-Erh Slim</td>\r\n			<td>\r\n				<img src=\"img/produkty/pu-erh_gniazda_1.jpg\" width=\"170px\" /><br />\r\n				Pu-erh Gniazda</td>\r\n			<td>\r\n				<img src=\"img/produkty/guarana_1.jpg\" width=\"170px\" /><br />\r\n				Guarana</td>\r\n			<td>\r\n				<img src=\"img/produkty/pu-erh_jezynowo-truskawkowy_1.jpg\" width=\"170px\" /><br />\r\n				Pu-Erh Jeżynowo- Truskawkowy</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"38,Pu-Erh Slim,?go=herbaty&amp;category=herbaty_pu_erh&amp;product=pu-erh_slim,50,8.3,http://www.test.tientea.pl/img/produkty/pu-erh_slim_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"80,Pu-erh Gniazda,?go=herbaty&amp;category=herbaty_pu_erh&amp;product=pu-erh_gniazda,50,13.6,http://www.test.tientea.pl/img/produkty/pu-erh_gniazda_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"91,Guarana,?go=herbaty&amp;category=ziola&amp;product=guarana,50,18,http://www.test.tientea.pl/img/produkty/guarana_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"53,Pu-Erh Jeżynowo- Truskawkowy,?go=herbaty&amp;category=herbaty_pu_erh&amp;product=pu-erh_jezynowo-truskawkowy,50,9.2,http://www.test.tientea.pl/img/produkty/pu-erh_jezynowo-truskawkowy_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td align=\"left\" colspan=\"4\" style=\"text-align:justify\" valign=\"top\">\r\n				<a name=\"zestaw_milosny\"></a>\r\n				<h2>\r\n					Miłosny - aby podsycić żar namiętności</h2>\r\n				<p>\r\n					Zestaw miłosny to przede wszystkim afrodyzjaki. Damiana pobudzi zmysły Jej, zaś Catuaba i Muira Puama rozbudzi żądze Jego. A Czerwone Serduszko świetnie sprawdzi się dla NICH obojga</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				<img src=\"img/produkty/damiana_1.jpg\" width=\"170px\" /><br />\r\n				Damiana</td>\r\n			<td>\r\n				<img src=\"img/produkty/catuaba_1.jpg\" width=\"170px\" /><br />\r\n				Catuaba</td>\r\n			<td>\r\n				<img src=\"img/produkty/muira_puama_wyciag_1.jpg\" width=\"170px\" /><br />\r\n				Muira Puama wyciąg</td>\r\n			<td>\r\n				<img src=\"img/produkty/czerwone_serduszko_1.jpg\" width=\"170px\" /><br />\r\n				Czerwone serduszko</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"4\">\r\n				<form action=\"?go=koszyk\" method=\"post\">\r\n					<input name=\"product_1\" type=\"hidden\" value=\"100,Damiana,?go=herbaty&amp;category=ziola&amp;product=damiana,50,12,http://www.test.tientea.pl/img/produkty/damiana_1.jpg\" /> <input name=\"product_2\" type=\"hidden\" value=\"101,Catuaba,?go=herbaty&amp;category=ziola&amp;product=catuaba,50,11.5,http://www.test.tientea.pl/img/produkty/catuaba_1.jpg\" /> <input name=\"product_3\" type=\"hidden\" value=\"107,Muira Puama wyciąg,?go=herbaty&amp;category=ziola&amp;product=muira_puama_wyciag,50,75,http://www.test.tientea.pl/img/produkty/muira_puama_wyciag_1.jpg\" /> <input name=\"product_4\" type=\"hidden\" value=\"54,Czerwone Serduszko,?go=herbaty&amp;category=herbaty_czarne&amp;product=czerwone_serduszko,50,8.8,http://www.test.tientea.pl/img/produkty/czerwone_serduszko_1.jpg\" /> <input class=\"form_submit\" name=\"cart\" type=\"submit\" value=\"Dodaj Zestaw\" />&nbsp;</form>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"separator\" colspan=\"4\">\r\n				&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n'),
(3, 3, 0, 1, 'nasze_sprawdzone_przepisy', 'Nasze sprawdzone przepisy', 'http://test.tientea.pl/img/boxy/kucharz.jpg', '<p>\r\n	Zapraszamy do zapoznania się z przepisami na nasze ulubione potrawy! Uwielbiamy prostą kuchnię, kt&oacute;rej sekretem są dobrej jakości składniki. Zobacz, jak w błyskawiczny spos&oacute;b można z nich stworzyć dania tak pyszne, że aż palce lizać!</p>\r\n', '     \r\n	 <p>Naszym najbardziej rozwiniętym zmysłem jest zdecydowanie zmysł smaku! Uwielbiamy próbować, kosztować, degustować....</p>\r\n<p>Kuchnia to koronne miejsce w naszym domu. To w niej spędzamy najwięcej czasu eksperymentując i tworząc dania. Niekiedy, na drodze prób i błędów, udaje nam się wymyślić coś całkowicie nowego, innym razem posiłkujemy się gotowymi przepisami- zwykle je modyfikujemy i... WUALA! Otrzymujemy pyszne dania, których wykonanie zajmuje zazwyczaj parę chwil, a swój niepowtarzalny smak zawdzięczają dobrym składnikom i prostym połączeniom smakowym. </p>\r\n<p>Jeżeli ktoś z Państwa chciałby zasilić poniższy zbiór recepturami na swoje kulinarne specjały, to bardzo chętnie zamieścimy je na naszej stronie, a jeszcze chętniej wypróbujemy.</p>\r\n\r\n<p>Smacznego!!</p>\r\n\r\n\r\n<h1>Przekąski:</h1>\r\n<h2>Zapiekany ser twarogowy</h2>\r\n<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n<div>\r\n	<ul>\r\n		<li>400 g sera twarogowego (najlepiej chudy lub półtłusty)</li>\r\n		<li>2 ząbki czosnku</li>\r\n		<li>2 pomidory</li>\r\n		<li>grecki oregano lub bazylia (wg uznania)</li>\r\n		<li>2 łyżki oliwy z oliwek KALLISTO</li>\r\n		<li>sól, pieprz (wg uznania)</li>\r\n	</ul>\r\n</div>\r\n</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Ser kroimy w plastry (grubość 0,5-0,8 cm lub wg uznania). Następnie układamy na blasze do pieczenia wyłożonej folią aluminiową.</p>\r\n<p>Zmiażdżony czosnek mieszamy z oliwą oraz ziołami. Połową powstałego sosu polewamy ser. Na wierzchu układamy plastry pomidora. Całość skrapiamy pozostałą ilością sosu. </p>\r\n\r\n<p>Ser zapiekamy w piekarniku nagrzanym do temperatury 160 stopni przez ok. 20-30 minut. W trakcie pieczenia z sera może wyciec serwatka, która łączy się z oliwą i ziołami- można ją zlać i wykorzystać do innych potraw. </p>\r\n\r\n\r\n<h2>Po prostu SER</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n		<div>\r\n		<ul>\r\n			<li>ser twarogowy (najlepiej chudy lub półtłusty)</li>\r\n			<li>oliwa z oliwek KALLISTO</li>\r\n			<li>greckie oregano lub bazylia (wg uznania)</li>\r\n			<li>chrupiące pieczywo, np. bagietka (w wersji zdrowszej chleb pełnoziarnisty- my używamy chleba żytniego)</li>\r\n			<li>szczypiorek (opcjonalnie)</li>\r\n		</ul>\r\n		</div>\r\n	</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Przekąska bardzo prosta, zdrowa i smaczna. Aby ją przygotować wystarczy pokroić ser w plastry, polać dużą ilością oliwy (tak, aby móc w niej maczać pieczywo) oraz posypać ziołami i pokrojonym drobno szczypiorkiem. </p>\r\n<p>Smak dania zależy od jakości użytej oliwy. Lekko pikantny smak greckiej oliwy Kalisto znakomicie zaostrzy delikatny smak sera, nadając całości apetycznego charakteru.</p>\r\n\r\n\r\n<h2>Twarożek z suszonymi pomidorami</h2>\r\n<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<strong>Wersja podstawowa:</strong>\r\n		<ul>\r\n			<li>twarożek</li>\r\n			<li>1-2 łyżki jogurtu naturalnego</li>\r\n			<li>pomidory suszone ALDORO</li>\r\n			<li>grecka bazylia </li>\r\n			<li>szczypta soli morskiej</li>\r\n		</ul>\r\n\r\n		<strong>Dodatki:</strong>\r\n		<ul>\r\n			<li>szczypiorek</li>\r\n			<li>prażone ziarna słonecznika</li>\r\n			<li>czosnek</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Twarożek mieszamy z jogurtem naturalnym tak, aby uzyskać gładką konsystencję. Pomidory odsączamy z zalewy i kroimy na drobne kawałki. Łączymy z serem. Następnie solimy do smaku oraz dodajemy bazylii. Danie można urozmaicić uprażonymi na suchej patelni pestkami słonecznika, ząbkiem czosnku lub pokrojonym drobno szczypiorkiem.</p>\r\n<p>Znakomita pasta kanapkowa. </p>\r\n\r\n	 \r\n<h1>Dania główne</h1>\r\n<h2>Pikantna rybka</h2>\r\n<img src=\"img/artykuly/przepisy/papryka.jpg\" src=\"pikanta_papryka\" />\r\n<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>2 filety białej ryby, np., dorsza</li>\r\n			<li>2-3 ząbki czosnku</li>\r\n			<li>1 papryczka piri-piri lub połowa ostrej papryki z nasionami</li>\r\n			<li>sól</li>\r\n			<li>pieprz</li>\r\n			<li>3-4 liście laurowe</li>\r\n			<li>25 ml octu winnego z białego wina</li>\r\n			<li>pomidory w puszce</li>\r\n			<li>4-5 łyżek oliwy z oliwek KALLISTO</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Filety rybne posypujemy solą i pieprzem. Dodajemy do nich rozgnieciony czosnek, drobno pokrojoną papryczkę i rozdrobniony liść laurowy. Macerujemy 30 minut, po czym dodajemy pomidory i ocet. Macerujemy przez kolejne 30 minut. </p>\r\n<p>Po ok. 1 h oczyszczamy rybę z marynaty. Smażymy ją na rozgrzanej oliwie, po czym wkładamy do naczynia żaroodpornego, aby nie wystygła.</p>\r\n<p>Marynatę zagotowujemy, odparowując wodę. Następnie przecieramy przez sito w celu uzyskania jednolitej masy. Usmażone filety polewamy sosem.</p>\r\n\r\n\r\n<h2>Spaghetti z suszonymi pomidorami i oliwkami</h2>\r\n<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n		<li>makaron spaghetti (najlepsze makarony wytwarzane są z semoliny- mąki otrzymywanej z pszenicy twardej Durum)</li>\r\n		<li>czarne oliwki KALAMATA (ilość wg uznania)</li>\r\n		<li> pomidory suszone ALDORO (5 lub więcej, wg uznania)</li>\r\n		<li>średnia cebula</li>\r\n		<li>pomidory w puszce</li>\r\n		<li>1 ząbek czosnku</li>\r\n		<li>do smażenia: oliwa z oliwek KALLISTO lub zalewa z suszonych pomidorów ALDORO</li>\r\n		<li>grecka bazylia</li>\r\n		<li>garść natki piertuszki</li>\r\n		<li>parmezan</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Cebulę oraz czosnek kroimy w kosteczkę. Podsmażamy na rozgrzanej patelni- należy uważać, aby czosnek się nie przypalił, gdyż nada potrawie gorzki smak. </p>\r\n<p>Oliwki i suszone pomidory kroimy, wrzucamy na patelnię i lekko podsmażamy. Następnie wlewamy pomidory z puszki, całość mieszamy. Doprawiamy do smaku bazylią, wg uznania można dodać również inne przyprawy- należy uważać na ich ilość i intensywność, gdyż mogą zagłuszyć smak potrawy.</p>\r\n<p>Makaron gotujemy al’dente. Nitki nie posklejają się, gdy do gotującej wody dodamy parę kropel oliwy lub oleju. Makaron łączymy z sosem. Podajemy z parmezanem i natką pietruszki.</p>\r\n<p>Makaron ugotowany al’dente ma niższy indeks glikemiczny- nie tuczy oraz daje uczucie sytości na dłużej. Dla diabetyków polecamy makaron pełnoziarnisty.</p>\r\n\r\n\r\n<h2>Pizza na cieście pełnoziarnistym z kaparami, łososiem i śmietaną</h2>\r\n<img src=\"img/artykuly/przepisy/pizza_losos.jpg\" alt=\"pizza łososiowa\" />\r\n<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<strong>Ciasto:</strong>\r\n			<li>2 szklanki mąki pełnoziarnistej</li>\r\n			<li>1 szklanka mąki pszennej</li>\r\n			<li>0, 5 kostki drożdży</li>\r\n			<li>1 szklanka przegotowanej, wystudzonej wody (lub trochę w razie potrzeby)</li>\r\n			<li>3 łyżki oliwy z oliwek KALLISTO</li>\r\n			<li>1 łyżeczka soli</li>\r\n			<li>greckie oregano/ bazylia</li>\r\n\r\n\r\n			<strong>Dodatki:</strong>\r\n			<li>mały słoiczek koncentratu pomidorowego</li>\r\n			<li>2-3 ząbki czosnku</li>\r\n			<li>greckie oregano/ bazylia</li>\r\n			<li>2 łyżki półtłustej śmietany</li>\r\n			<li>200 g filetu z łososia</li>\r\n			<li>3-4 łyżeczki kaparów ALDORO (odsączamy z zalewy)</li>\r\n			<li>pomidory suszone ALDORO (wg uznania)</li>\r\n			<li>ser feta</li>\r\n			<li>1-2 czerwone cebule</li>\r\n			<li>sól, pieprz </li>\r\n			<li>pół cytryny</li>\r\n			<li>1 łyżka oliwy z oliwek KALLISTO</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Łososia doprawiamy solą, pieprzem, czosnkiem oraz skrapiamy sokiem z cytryny- odstawiamy na ok 30 minut do lodówki.</p>\r\n<p>Mąkę wysypujemy na stolnicę, rozkruszany drożdże, dodajemy oliwę, sól, przyprawy, wodę. Całość mieszamy. Jeżeli ciasto klei się do rąk, podsypujemy je pszenną mąką. Gotowe ciasto rozwałkowujemy i przekładamy do blaszki. Nie czekam aż urośnie, ponieważ rośnie w piekarniku pod wpływem wysokiej temperatury. Blaszkę z ciastem wstawiamy do rozgrzanego na 200 stopni piekarnika na ok. 15-20 min. </p>\r\n<p>Koncentrat pomidorowy mieszamy z oliwy z oliwek, czosnkiem, ziołami. Powstały sos rozsmarowujemy na podpieczonym cieście. Następnie rozsmarowujemy śmietanę i układamy na niej pokrojonego w paski łososia. Przybieramy kaparami (część kaparów odkładamy i posypujemy nimi już gotową pizzę), krążkami cebuli, na wierzchu rozkładamy plasterki fety, kawałki suszonych pomidorów, całość przyprawiamy pieprzem i ziołami. Pieczemy w temperaturze 200 stopni przez ok. 30-40 minut. </p>\r\n\r\n\r\n<h2>Faszerowane papryki</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>3 czerwone i 6 białych papryk (ilość i rodzaj papryk zależy od własnych upodobań)</li>\r\n			<li>50 dag mięsa mielonego (najlepsze jest wołowe, ale może być również wieprzowina)</li>\r\n			<li>2 cebule</li>\r\n			<li>3 ząbki czosnku</li>\r\n			<li>3 pomidory</li>\r\n			<li>mały koncentrat pomidorowy</li>\r\n			<li>sól, pieprz, papryka słodka, papryka ostra, greckie oregano</li>\r\n			<li>puszka czerwonej fasoli</li>\r\n			<li>oliwa z oliwek KALLISTO do smażenia</li>\r\n			<li>ser żółty</li>\r\n		</ul>\r\n	</div>\r\n	</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Paprykę myjemy, odcinamy kapelusiki i wydrążamy w środku.</p>\r\n<p>Na rozgrzanej oliwie podsmażamy pokrojoną w kostkę cebulę. Następnie do cebuli dodajemy mięso mielone, które przyprawiamy solą, pieprzem, papryką słodką i ostrą. Do mięsa dodajemy parę łyżeczek koncentratu pomidorowego, pokrojone w kostkę pomidory i przeciśnięty przez praskę czosnek. Podsmażamy jeszcze chwilę i wsypujemy fasolę z puszki. Całość należy odparować, aby sos nie był za rzadki.</p>\r\n<p>Papryki lekko solimy od środka, napełniamy farszem, na którego wierzchu kładziemy kawałki sera żółtego. Zamykamy kapelusikami- można je przymocować wykałaczkami. Pieczemy w rozgrzanym do 180 stopni piekarniku przez ok. 20-30 minut.</p> \r\n<p>Nasza rada!</p>\r\n<p>Aby pomidory nie rozwodniły farszu, przed pokrojeniem należy usunąć z nich nasiona.</p>\r\n\r\n\r\n<h2>Pasta Melitzanosalata</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>1 kg bakłażanów</li>\r\n			<li>2-3 ząbki czosnku</li>\r\n			<li>oliwa z oliwek KALLISTO</li>\r\n			<li>1 czerwona papryka</li>\r\n			<li>ser feta</li>\r\n			<li>koperek</li>\r\n			<li>pietruszka</li>\r\n			<li>sól, pieprz do smaku</li>\r\n			<li>ocet winny</li>\r\n		</ul>\r\n	</div>\r\n	</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Bakłażany rozcinamy wzdłuż. Delikatnie rozchylamy i nacieramy solą od środka, dzięki której po upieczeniu nie będą one gorzkie. Tak przygotowane pieczemy w temperaturze 180 stopni przez ok. 30 minut. </p>\r\n<p>W międzyczasie myjemy paprykę, usuwany z niej nasiona oraz wstawiamy do piekarnika na ok. 15 min., aby zmiękła.</p>\r\n<p>Po wskazanym czasie wyciągamy bakłażany i paprykę. Bakłażany spłukujemy wodą- usuwamy w ten sposób sól oraz schładzamy je. Z jeszcze ciepłych ściągamy skórkę. Miąższ z bakłażanów kroimy w kostkę. W kostkę kroimy również paprykę (można z niej wcześniej ściągnąć skórkę). Paprykę i bakłażany mieszamy. </p>\r\n<p>2-3 ząbki czosnku wkładamy do blendera, zalewamy oliwą z oliwek i miksujemy. Powstałym sosem polewamy masę bakłażanowo-paprykową. Dodajemy drobno pokrojony koperek, pietruszkę, pieprz i odrobinę soli (uwaga, aby nie przesolić!), parę kropel octu winnego. Całość mieszamy. Ewentualnie dodajemy oliwy z oliwek, aby osiągnąć lepszą konsystencję. Na górę sypiemy pokruszony ser feta.</p>\r\n\r\n<p>Pasta idealna do pieczywa, grzanek i mięsa mielonego.</p>\r\n\r\n<p>Jak kupić dobrego bakłażana?</br>\r\nSzypułka musi być świeża, zielona. Skórka powinna być jędrna i lśniąca, bez plam.</p>\r\n\r\n<h1>Koktajle</h1>\r\n<h2>Koktajl energetyczny: guarana z bananem</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>2 łyżeczki guarany (guaranę można zastąpić 2-3 łyżeczkami orzeszków cola)\r\n			<li>2 dojrzałe banany\r\n			<li>1 szklanka mleka\r\n			<li>1 łyżeczka miodu (polecamy grecki miód pomarańczowy)\r\n		</ul>\r\n	</div>\r\n	</div>\r\n	<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Podane ilości dodatków można zmieniać według uznania i własnego smaku.</p>\r\n<p>Wszystkie składniki miksujemy przez parę minut. </p>\r\n<p>Koktajl polecamy spożywać przed wysiłkiem intelektualnym bądź fizycznym.</p>\r\n\r\n\r\n<h2>Koktajl energetyczny: guarana z truskawkami i wanilią</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>2 łyżeczki guarany (guaranę można zastąpić 2-3 łyżeczkami orzeszków cola)\r\n			<li>1-2 szklanki truskawek bez szypułek\r\n			<li>1 laska wanilii (do koktajlu potrzebne będą nam nasionka)\r\n			<li>brązowy cukier (wg uznania)\r\n		</ul>\r\n	</div>\r\n	</div>\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Wanilię rozcinamy na pół i delikatnie wyskrobujemy nasionka.</p>\r\n<p>Wszystkie składniki miksujemy przez parę minut.</p>\r\n\r\n<p>Koktajl polecamy spożywać podczas wysiłku intelektualnego i fizycznego. </p>\r\n\r\n\r\n\r\n<h2>Napój wysokobiałkowy: maca z mlekiem i miodem</h2>\r\n	<div  class=\"ingredients\"><h3>Składniki:</h3>\r\n	<div>\r\n		<ul>\r\n			<li>1-2 łyżeczki maca\r\n			<li>szklanka mleka\r\n			<li>1 łyżeczka miodu (polecamy grecki miód tymiankowy)\r\n		</ul>\r\n	</div>\r\n	</div>\r\n\r\n<br style=\"clear:both\" /><h3>Przygotowanie</h3>\r\n<p>Całość podgrzewamy do momentu aż maca i miód rozpuszczą się w mleku.</p>\r\n\r\n<p>Koktajl polecamy spożywać godzinę przed treningiem (maca wpływa na wzrost wydolności mięśni oraz chroni je przed uszkodzeniem ) lub godzinę po treningu ( przyspiesza regenerację organizmu). Osoby nietrenujące mogą spożywać macę niezależnie od pory dnia.</p>\r\n\r\n'),
(4, 4, 1, 1, 'herbaty_kwitnace', 'Herbaty kwitnące', 'http://test.tientea.pl/img/boxy/kwitnace.jpg', '<p>\r\n	Chcesz zaskoczyć gości podczas spotkania przy herbacie lub podraować komuś oryginalny prezent? Zapraszamy do zapoznania się z ofertą herbat kwitnących.</p>\r\n', '<p>\r\n	Herbaty kwitnące to ręcznie zwinięte kulki, w kt&oacute;rych wnętrzu ukryty jest kwiat, a jego ukazanie się stanowi istny &bdquo;herbaciany spektakl&rdquo;...</p>\r\n<p>\r\n	W kontakcie z gorącą wodą herbaciana kulka niespiesznie otwiera się, ukazując przepiękny kwiat. Herbaty kwitnące najlepiej zaparzyć w szklanym dzbanku, kt&oacute;rego przeźroczyste ścianki pozwolą obserwować przemianę niepozornej kulki w artystyczną kompozycję. Świetnie sprawdzi się na przyjęciach oraz spotkaniach w gronie rodziny i przyjaci&oacute;ł jako element, kt&oacute;ry ubarwi wiecz&oacute;r oraz zaskoczy nawet najbardziej wymagających gości..</p>\r\n<p>\r\n	Artystyczne kulki herbaty kwitnącej to znakomity pomysł na oryginalny i wykwintny prezent. Pięknie zapakowane z pewnością zachwycą każdego obdarowanego.</p>\r\n<div style=\"float:left\">\r\n	<img src=\"img/produkty/golden_yuanbao_1.jpg\" style=\"margin-left:20px;margin-top:35px;\" />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-left:30px\">\r\n			<a>Golden Yuanbao</a></li>\r\n	</ul>\r\n</div>\r\n<div style=\"float:left;background: url(\'images/line_v.jpg\') repeat-y left;\">\r\n	<img src=\"img/produkty/jasmine_lichi_1.jpg\" style=\"margin-top:35px;margin-left:20px;\" /><br />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-top:6px;;margin-left:30px\">\r\n			<a>Jasmine Lichi</a></li>\r\n	</ul>\r\n</div>\r\n<div style=\"float:left;background: url(\'images/line_v.jpg\') repeat-y left;\">\r\n	<img src=\"img/produkty/century_lover_1.jpg\" style=\"margin-left:20px;\" /><br />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-left:30px\">\r\n			<a>Century Lover</a></li>\r\n	</ul>\r\n</div>\r\n'),
(5, 1, 0, 0, 'ice_tea', 'Ice Tea', '', '<p>\r\n	&nbsp;Czyli najlepsza herbata na upalne dni</p>\r\n', '<p>\r\n	asd</p>\r\n'),
(8, 1, 4, 1, 'grecja_ze_az_slinka_cieknie', 'Grecja, że aż ślinka cieknie!', '', '<p>\r\n	Zapraszamy do świata oryginalnych greckich smakołyk&oacute;w!</p>\r\n', '<p>\r\n	Jadąc po raz pierwszy do Grecji, nie zdawaliśmy sobie sprawy, że stanie się ona naszą kolejną wielką pasją.<br />\r\n	Zachwyciliśmy się&nbsp; malowniczymi krajobrazami, beztroskimi ludźmi, a przede wszystkim przewspaniałą kuchnią!</p>\r\n<p>\r\n	Z miłości do Grecji postanowiliśmy wprowadzić trochę jej powiewu do naszego sklepu- nasze uwielbiane herbaty musiały ustąpić trochę miejsca greckim smakołykom:)</p>\r\n<p>\r\n	Serdecznie zapraszamy do skosztowania wypieszczonych słońcem, pachnących latem oraz wytwarzanych według tradycyjnych receptur specjał&oacute;w, kt&oacute;re sprowadzamy prosto ze słonecznej Hellady.</p>\r\n<div style=\"padding-right:10px;float:left\">\r\n	<img src=\"img/produkty/oliwa_z_oliwek_1.jpg\" style=\"margin-left:20px;\" />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-left:30px\">\r\n			<a>Ekologiczna Oliwa z Oliwek<br />\r\n			Kallisto Extra Virgin </a></li>\r\n	</ul>\r\n</div>\r\n<div style=\"padding:0 10px;float:left;background: url(\'images/line_v.jpg\') repeat-y left;\">\r\n	<img src=\"img/produkty/pomidory_suszone_1.jpg\" style=\"margin-top:68px;\" /><br />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-left:30px\">\r\n			<a>Pomidory suszone na słońcu</a></li>\r\n	</ul>\r\n</div>\r\n<div style=\"padding:0 10px;float:left;background: url(\'images/line_v.jpg\') repeat-y left;\">\r\n	<img src=\"img/produkty/miod_pomaranczowy_1.jpg\" style=\"margin-top:68px\" /><br />\r\n	<ul>\r\n		<li style=\"text-align:center;margin:0;margin-left:15px\">\r\n			<a>Mi&oacute;d pomarańczowy</a></li>\r\n	</ul>\r\n</div>\r\n<br style=\"clear:both\" />\r\n<br />\r\n<li style=\"text-align:center;margin:0;margin-left:30px\">\r\n	<a>Przejdź do strony kategorii</a></li>\r\n'),
(7, 1, 0, 0, 'spokojnie_to_tylko_odchudzanie', 'Spokojnie, to tylko... odchudzanie!', '', '<p>\r\n	Z Tientea schudniesz zdrowo i naturalnie!</p>\r\n', '<p>\r\n	Czerwona herbata Pu-Erh zwana &bdquo;pogromcą tłuszczu&rdquo; oraz&nbsp; zioła energetyzujące, kt&oacute;re dodadzą energii do ćwiczeń, to znakomity spos&oacute;b na uzyskanie wymarzonej sylwetki!Czerwona herbata Pu-Erh zwana &bdquo;pogromcą tłuszczu&rdquo; oraz&nbsp; zioła energetyzujące, kt&oacute;re dodadzą energii do ćwiczeń, to znakomity spos&oacute;b na uzyskanie wymarzonej sylwetki!</p>\r\n'),
(9, 6, 0, 1, 'o_nas', 'O nas', '', '', ''),
(10, 6, 0, 1, 'regulamin', 'Regulamin', '', '', '');
INSERT INTO `articles` (`article_id`, `box_id`, `article_order`, `article_active`, `article_alias`, `article_title`, `article_image`, `article_introdution`, `article_content`) VALUES
(11, 6, 0, 1, 'wysylka_i_platnosci', 'Wysyłka i płatności', '', '', '<h1>\r\n	Płatność</h1>\r\n<p>\r\n	Aby wyjść naprzeciw potrzebom naszych Klient&oacute;w oraz zapewnić im maksymalną wygodę i bezpieczeństwo, przygotowaliśmy kilka sposob&oacute;w płatności do wyboru:<br />\r\n	<strong>&bull; Standardowy przelew na konto</strong><br />\r\n	Przelew możesz wykonać w banku lub w okienku pocztowym.<br />\r\n	Nasz rachunek bankowy to: 91 1050 1575 1000 0023 2587 1867.<br />\r\n	Wszelkie potrzebne do wykonania przelewu informację otrzymasz w e-mailu, kt&oacute;ry wyślemy do Ciebie zaraz po złożeniu zam&oacute;wienia.<br />\r\n	Przelew zostanie zaksięgowany na naszym koncie najp&oacute;źniej na drugi dzień roboczy po jego wykonaniu.<br />\r\n	<strong>&bull; Szybki przelew internetowy</strong><br />\r\n	To szybki, komfortowy i sprawdzony spos&oacute;b dla posiadaczy kont obsługujących płatności elektroniczne.<br />\r\n	W momencie wybrania tego rodzaju płatności za złożone zam&oacute;wienie, zostaniesz automatycznie przeniesiony na stronę swojego banku. Po zalogowaniu się na konto, będzie czekać na Ciebie wypełniony formularz przelewu. Gdy zatwierdzisz przelew, zostanie on niezwłocznie zaksięgowany na naszym koncie, a my rozpoczniemy realizację Twojego zam&oacute;wienia. Płatności wykonywane są we wsp&oacute;łpracy z firmą.....<br />\r\n	<strong>&bull; Płatność przy odbiorze (za pobraniem)</strong><br />\r\n	Płatność got&oacute;wką przy odbiorze to idealne rozwiązanie dla tych, kt&oacute;rzy nie korzystają ze standardowych i elektronicznych przelew&oacute;w.<br />\r\n	Wyb&oacute;r tej metody gwarantuje rozpoczęcie realizacji zam&oacute;wienia tuż po jego złożeniu. W momencie gdy zostanie ono wysłane, otrzymasz informację odnośnie przewidywanego terminu, w kt&oacute;rym zakupy trafią do Twojego domu. Zapłacisz za nie got&oacute;wką listonoszowi, kurierowi bądź w okienku pocztowym.</p>\r\n<h1>\r\n	Dostawa</h1>\r\n<p>\r\n	Jednym z naszych priorytet&oacute;w jest jak najszybsza wysyłka przy zachowaniu możliwie najniższych koszt&oacute;w dostawy. Zam&oacute;wienia realizujemy za pośrednictwem Poczty Polskiej bądź firm kurierskich. Warto zaznaczyć, że <strong>waga przesyłki nie ma wpływu na koszty dostawy.</strong><br />\r\n	&nbsp;</p>\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>\r\n				Spos&oacute;b wysyłki</th>\r\n			<th>\r\n				Przewidywany czas dostawy</th>\r\n			<th>\r\n				Przelew</th>\r\n			<th>\r\n				Za pobraniem</th>\r\n			<th>\r\n				Darmowa wysyłka</th>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Poczta Polska</td>\r\n			<td>\r\n				2-3 dni</td>\r\n			<td>\r\n				9,90 zł</td>\r\n			<td>\r\n				14zł</td>\r\n			<td>\r\n				Od 180 zł</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				Kurier DPD</td>\r\n			<td>\r\n				24h</td>\r\n			<td>\r\n				14.99</td>\r\n			<td>\r\n				21zł</td>\r\n			<td>\r\n				Od 180 zł</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<strong>Ważne!</strong><br />\r\n	Darmowa wysyłka dotyczy zam&oacute;wień opłaconych przelewem standardowym bądź szybkim przelewem internetowym.<br />\r\n	W przypadku braku zam&oacute;wionego produktu okres oczekiwania na przesyłkę może się nieznacznie wydłużyć, o czym zostaną Państwo bezzwłocznie poinformowani.<br />\r\n	Przy każdym produkcie podany jest czas realizacji zam&oacute;wienia. Jest to czas, kt&oacute;ry upływa od momentu złożenia zam&oacute;wienia do chwili wysłania zakupionych towar&oacute;w.<br />\r\n	Przesyłki realizowane prze firmę DPD dostarczane są w godzinach pracy kuriera (w dni robocze 9.00-20.00). Jeżeli w tych godzinach odbi&oacute;r zam&oacute;wienia w domu jest niemożliwy, proponujemy jako adres dostawy podać adres miejsca pracy. Zmiana adresu dostawy możliwa jest przed wysłaniem zam&oacute;wienia. Może się jednak zdarzyć, że kurier skontaktuje się telefonicznie z odbiorcą- w&oacute;wczas, za zgodą kuriera, paczka może być dostarczona pod inny adres. Jeśli płacisz za przesyłkę got&oacute;wką, upewnij się, że posiadasz odliczoną kwotę, potrzebną do zapłaty - unikniesz w ten spos&oacute;b ewentualnych problem&oacute;w z wydaniem reszty przez kuriera.<br />\r\n	Przesyłki realizowane przez Pocztę Polską dostarczane są w godzinach 8.00-19.00. Jeśli listonosz nie zastanie Cię pod wskazanym adresem, zostawi awizo. Awizo należy zabrać ze sobą do wskazanego Urzędu Pocztowego &ndash; upoważnia oni do odbioru przesyłki w przeciągu <strong>14 dni kalendarzowych.</strong></p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
(12, 6, 0, 1, 'reklamacje', 'Reklamacje', '', '', '<p>\r\n	<strong>Reklamacje- błyskawicznie, bez problemu i formalności!</strong><br />\r\n	<strong>Twoje zadowolenie jest dla nas najważniejsze!</strong></p>\r\n<p>\r\n	Kupując w Tienea.pl okazujesz nam zaufanie- zrobimy wszystko, żeby Cię nie zawieść!<br />\r\n	<br />\r\n	Jeżeli znajdziesz wadę w otrzymanym produkcie, poinformuj nas o tym niezwłocznie! Stawiamy sobie za cel jak najszybsze i bezkonfliktowe rozwiązanie każdego zaistniałego problemu, dlatego wystarczy jedynie Tw&oacute;j telefon lub wiadomość e-mail. Nie wymagamy wypełniania żadnych zbędnych druk&oacute;w czy formularzy.</p>\r\n<p>\r\n	Reklamację zrealizujemy zgodnie z Twoimi oczekiwaniami:<br />\r\n	&bull; ponosimy wszystkie koszty związane z wymianą wadliwego produktu<br />\r\n	&bull; jeżeli wymiana na ten sam produkt nie jest możliwa, proponujemy wymianę na inny produkt z naszej oferty<br />\r\n	&bull; jeśli powyższe rozwiązanie nie satysfakcjonuje Cię, podaj swoje konto lub adres, a zwr&oacute;cimy Ci całą wpłaconą należność.</p>\r\n<p>\r\n	Jesteśmy cały czas do Twojej dyspozycji. Z przyjemnością odpowiemy na wszelkie pytania i wyjaśnimy zaistniałe wątpliwości.<br />\r\n	<strong>e-mail: sklep@tientea.pl<br />\r\n	gg:5455560</strong></p>\r\n<p>\r\n	Przypominamy, że zgodnie z ustawą o ochronie praw konsument&oacute;w (z dnia 2.03.2002 r.) Kupujący ma prawo do rezygnacji z zakupionego produktu bez podawania przyczyn w ciągu 10 dni od otrzymania przesyłki. <strong>Tak... ale nie u nas!</strong><br />\r\n	Zapewniamy aż 30 dni na zwrot zakupionych produkt&oacute;w! Bez żadnych pytań z naszej strony, bez żadnych formalności. Jeśli zmienisz zdanie, po prostu powiadom nas o tym, a my niezwłocznie zwr&oacute;cimy Ci wpłaconą należność na wskazane konto (pokrywasz jedynie koszty przesyłki zwrotnej).</p>\r\n<p>\r\n	Zwracany produkt musi być w takim stanie, w jakim został zakupiony.</p>\r\n'),
(13, 6, 0, 1, 'gwarancja_jakosci', 'Gwarancja jakości', '', '', '<p>\r\n	<strong>Dlaczego warto kupować w Tientea.pl?</strong><br />\r\n	<br />\r\n	Drodzy Klienci!<br />\r\n	Tientea.pl to sklep, w kt&oacute;rym najwyższym dobrem jest zadowolenie naszych Klient&oacute;w- to właśnie dzięki Wam istniejemy!<br />\r\n	<br />\r\n	Dlaczego więc warto kupować w Tientea.pl?<br />\r\n	-naszym priorytetem są ekspresowe wysyłki- pragniemy żeby zakupiony towar dotarł do Twojego domu jak najszybciej;<br />\r\n	-paczki pakujemy z najwyższą starannością, aby do minimum zredukować ryzyko uszczerbku towaru w czasie przesyłki;<br />\r\n	-do opakowań z herbatami i ziołami dołączamy sticker z logiem sklepu, kt&oacute;ry daje pewność, że nikt niepowołany nie otwierał zam&oacute;wionego przez Ciebie towaru;<br />\r\n	-zaopatrujemy się wyłącznie u sprawdzonych i zaufanych dostawc&oacute;w;<br />\r\n	-zanim jakiś produkt trafi do naszego sklepu, sami go najpierw pr&oacute;bujemy. Sprzedajemy wyłącznie to, czym się zachwycimy, co nam zasmakuje i gości na naszym stole. Dzięki temu mamy pewność, że oferujemy tylko dobre produkty, za kt&oacute;re możemy wziąć pełną odpowiedzialność;<br />\r\n	-wszystkie produkty przechowujemy w należytych warunkach, dbając o ich jakość;<br />\r\n	-herbaty i zioła pakowane są w specjalne, tr&oacute;jwarstwowe opakowania, kt&oacute;re gwarantują zachowanie smaku i aromat na jak najwyższym poziomie;<br />\r\n	-za każde wydane 50 zł umożliwiamy wyb&oacute;r darmowej pr&oacute;bki z kategorii GRATISY- chcemy dać Ci szansę bezpłatnego spr&oacute;bowania produkt&oacute;w, kt&oacute;re Cie zainteresowały;<br />\r\n	-jeżeli mimo wszystko będziesz chciał zwr&oacute;cić zakupiony towar, to masz aż 30 dni (zamiast ustawowych 10) na odesłanie go w stanie nienaruszonym. Każdy taki zwrot przyjmujemy bez zbędnych pytań i formalności.<br />\r\n	<br />\r\n	Każde złożone w naszym sklepie zam&oacute;wienie jest wyrazem zaufania, kt&oacute;rym obdarzają nas nasi Klienci.&nbsp; Nasz cel jest tylko jeden- nie zawieść tego zaufania!&nbsp;</p>\r\n'),
(14, 1, 2, 1, 'jesienna_rozgrzewalnia', 'Jesienna Rozgrzewalnia', '', '<p>\r\n	Rozgrzewająco-wzmacniające napary na jesienne dni</p>\r\n', '<p>\r\n	Gdy za oknem kr&oacute;luje zimny deszcz i wiatr, a dni i wieczory są coraz chłodniejsze, najlepszym sposobem na rozgrzanie się jest- oczywiście- kubek ciepłej herbaty!</p>\r\n<p>\r\n	Wszystkich przemarzniętych, przemokniętych i przytłoczonych jesienną aurą serdecznie zapraszamy do Jesiennej Rozgrzewalnii.<br />\r\n	Zebraliśmy w niej napary (i nie tylko) idealne na chłodne dni- rozgrzewające, wzmacniające i chroniące przed przeziębieniem.</p>\r\n<p>\r\n	Życzymy miłego rozgrzewania się!</p>\r\n<h1>\r\n	Czarne</h1>\r\n<p>\r\n	<img alt=\"herbata malinowa\" src=\"img/produkty/rozkoszna_malina_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Najlepszy domowy spos&oacute;b na przeziębienie to oczywiście MALINY! Już nasze prababcie tworzy przer&oacute;żne malinowe &bdquo;mikstury&rdquo;, kt&oacute;re w mig stawiały na nogi. Idealny jesienno-zimowy zestaw to: koc, dobra książka i przepyszna herbatka z malinami?</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<!--\r\n<img alt=\"herbata czas na relaks\" src=\"img/produkty/czas_na_relaks_1.jpg\" style=\"float:left;margin-right:20px;\" />\r\n	<p style=\"padding-top:25px;\">\r\n		Kojąca czarna herbata z dodatkiem melisy, hibiskusa, skórki roży, pomarańczy i cytryny oraz truskawką.<br>\r\n		Czas na relaks to witaminowa eksplozja! Owocowe dodatki stanowią znakomite źródło naturalnej witaminy C, a ziołowy dodatek w postaci melisy uspokaja i poprawia samopoczucie. Cóż więcej potrzeba, gdy za oknem słońca brak?\r\n	</p>\r\n\r\n	<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n	<br style=\"clear:both;\" />\r\n	<div class=\"h_line\">&nbsp;</div>--><p>\r\n	<img alt=\"herbata lipa i miód\" src=\"img/produkty/lipa_i_miod_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Herbata o klasycznym składzie: kwiat lipy, rumianek, płatki słonecznika oraz miodowa nuta.<br />\r\n	Znakomite zestawienie, dzięki kt&oacute;remu bez trudu przetrwasz jesienną szarugę. Opr&oacute;cz właściwości zwalczających przeziębienie, rumianek, lipa i mi&oacute;d działają relaksacyjnie oraz zapewniają spokojny i regenerujący sen.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata korzenna opowieść\" src=\"img/produkty/korzenna_opowiesc_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Jesienno-zimowa kompozycja smak&oacute;w: czarna herbata, cynamon, jabłko, kawałki imbiru, owoc i liść porzeczki, kawałki pomarańczy, saflor. Korzenny napar z mocą witaminy C.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata mozaika smaków\" src=\"img/produkty/mozaika_smakow_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Herbata obfita w smaki i zapachy! Jest w niej goździk, czerwona porzeczka, gruszka, żurawina, płatki nagietka oraz trawa cytrynowa.<br />\r\n	Przepyszny napar, kt&oacute;rego składniki wzmocnią naszą odporność, a ponadto mają moc wprawiania w dobry nastr&oacute;j.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata malinowo waniliowa konfitura\" src=\"img/produkty/Malinowo-Waniliowa_Konfitura_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Aromatyczny napar z suszonymi malinami i kawałkami wanilii.<br />\r\n	Przywodzi na myśl smak herbaty, w kt&oacute;rej Babcia rozpuściła konfiturę, czyniąc z niej napar pełen troski, ciepła i serdeczności...</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata kalifornijska pomarańcza\" src=\"img/produkty/kalifornijska_pomarancza_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Kalifornia....kt&oacute;ż nie chciałby przenieść się do niej, gdy za oknem nieprzyjemny chł&oacute;d i plucha?<br />\r\n	Wszystkim tęsknym za słońcem polecamy nasyconą letnim aromatem Kalifornijską Pomarańczę ze sk&oacute;rką pomarańczy i saflorem.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<h1>\r\n	Zielone</h1>\r\n<p>\r\n	<img alt=\"herbata żeń szeń\" src=\"img/produkty/Tien_Zen_szen_Tea_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Od wiek&oacute;w osławione są właściwości żeń-szenia- dodaje energii, zmniejsza zmęczenie, wspomaga układ odpornościowy, poprawia samopoczucie. W połączeniu z bogatą w witaminę C pomarańczą tworzy napar, dzięki kt&oacute;remu w mig przegonisz jesienną apatię!</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata żurawinowa\" src=\"img/produkty/tien_zurawina_tea_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Żurawinowy owoc jest mały i niepozorny, a kryje w sobie tyle zdrowia! Nasze prababki sięgały po niego, gdy tylko wyczuły zbliżające się przeziębienie. Bogata w witaminy żurawina jest znakomitym dodatkiem do jesiennych napar&oacute;w. A jak miło popatrzeć na jej fantastyczny kolor!</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata sencha pigwa\" src=\"img/produkty/sencha_pigwa_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Pigwa to nieoceniona skarbnica witaminy C - zawiera jej więcej niż cytryna! W połączeniu ze sk&oacute;rką pomarańczy i ognistym imbirem w mig rozgrzeje nawet najbardziej zziębniętych spacerowicz&oacute;w.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"herbata green pepper\" src=\"img/produkty/green_pepper_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Korzenne nuty niepodzielnie kr&oacute;lują jesienią! Green Pepper to połączenie aromatycznego cynamonu, goździka oraz, dodającego pikanterii, czerwonego pieprzu.<br />\r\n	Parujący napar przeniesie nas w rozgrzane orientalnym słońcem zakątki świata</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<h1>\r\n	Zioła</h1>\r\n<p>\r\n	<img alt=\"Lapacho Czerwona Pomarańcza\" src=\"img/produkty/lapacho_czerwona_pomarancza_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Gdy czujesz, że łapie Cię przeziębienie, filiżanka Lapacho to strzał w dziesiątkę! Napar z Lapacho znakomicie wspiera układ immunologiczny- pomaga w leczeniu przeziębień, grypy oraz chor&oacute;b g&oacute;rnych dr&oacute;g oddechowych. Dodatki w postaci sk&oacute;rki pomarańczy oraz liści malin (bogate w witaminy z grupy C) zwiększają wzmacniający potencjał naparu.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"Lapacho Owoce Lasu\" src=\"img/produkty/lapacho_owoce_lasu_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Lapacho Owoce Lasu z dodatkiem czarnej porzeczki, czarnego bzu, malin i jeżyn to znakomita broń przeciwko jesiennym dolegliwością! Napar pełen witamin i minerał&oacute;w- pity reguralni uchroni Cię przez aptecznymi kolejkami i toną zużytych chusteczek higienicznych.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"Żeń-Szeń\" src=\"img/produkty/zen-szen_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Gdy jesienią czujemy się zmęczeni i ospali, warto zadbać o zastrzyk energii i witalności. Dzięki żeń-szeniowi nasz organizm będzie silniejszy, lepiej dotleniony, odporny na zmęczenie fizyczne i psychiczne. Ta niezwykła roślina ma r&oacute;wnież moc poprawiania samopoczucia- nawet gdy pogoda za oknem nie rozpieszcza.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Żeń-szeń</a></li>\r\n<li style=\"text-align:right\">\r\n	<a>Żeń-szeń (zmielony)</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<p>\r\n	<img alt=\"Muna Muna\" src=\"img/produkty/Muna_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Muna-muna znakomicie sprawdza się w okresach nasilonego występowania chor&oacute;b g&oacute;rnych dr&oacute;g oddechowych. Łagodzi katar i ułatwia odksztuszanie, pomaga w leczeniu zapalenia oskrzeli i płuc. Jest to w pełni naturalny i bezpieczny środek- warto mieć go pod ręką w domowej apteczce.</p>\r\n<li style=\"text-align:right\">\r\n	<a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n<h1>\r\n	Dodatki</h1>\r\n<p>\r\n	<img alt=\"miod tymiankowy\" src=\"img/produkty/miod_pomaranczowy_1.jpg\" style=\"float:left;margin-right:20px;\" /></p>\r\n<p style=\"padding-top:25px;\">\r\n	Jesienna Rozgrzewalnia nie mogałby istnieć bez miodu! Nazywany przez starożytnych Grek&oacute;w &bdquo;płynnym złotem&rdquo; ma doskonałe właściwości lecznicze i terapeutyczne.<br />\r\n	Herbata z miodem i cytryną to fantastyczny spos&oacute;b na walkę z przeziębieniem i b&oacute;lem gardła. A do tego mi&oacute;d, zwłaszcza pomarańczowy, działa uspokajająco- spożyty przed snem ułatwia zasypianie i zapewnia kolorowe sny.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<li style=\"text-align:right\">\r\n	<a>Mi&oacute;d Tymiankowy</a></li>\r\n<li style=\"text-align:right\">\r\n	<a>Mi&oacute;d pomarańczowy</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\">\r\n	&nbsp;</div>\r\n'),
(15, 1, 3, 1, 'afrodyzjaki', 'Afrodyzjaki', '', '<p>\r\n	Rozpalą zmysły i podniosą temperaturę nawet w najchłodniejsze wieczory!</p>\r\n', '<img src=\"img/artykuly/afrodyzja-ikona.jpg\" alt=\"afrodyzjaki\" style=\"float:right;margin-right:10px;margin-left:20px\"/><p>Długie jesienne wieczory są wspaniałą okazją do spędzenia czasu tylko we dwoje. Przygotowując romantyczny wieczór, \r\nwarto zadbać o stworzenie wyjątkowej atmosfery. Pasji i namiętności wspólnym chwilom nadadzą AFRODYZJAKI! </p>\r\n\r\n<p>Znane i stosowane od stuleci „napoje miłosne” znakomicie rozpalają zmysły, rozbudzają fantazje i sprawiają,\r\n że nawet najchłodniejsze wieczory stają się naprawdę gorące...</p>\r\n\r\n<p>W naszej ofercie znajdziecie afrodyzjaki, które pomagają w osiągnięciu satysfakcjonującego życia seksualnego. Dzięki nim jesień stanie się Waszą ulubioną porą roku!</p>\r\n\r\n<img src=\"img/produkty/damiana_1.jpg\" alt=\"damiana\" style=\"float:left;margin-right:20px;\">\r\n<p style=\"padding-top:25px;\">Damiana znakomicie pobudza popęd płciowy, wzmacnia libido oraz jest naturalnym środkiem regulującym kobiecą gospodarkę hormonalną. Szczególnie polecamy dla Niej.</p>\r\n<li style=\"text-align:right\"><a>Przejdź do strony produktu</a></li>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\"></div>\r\n\r\n<img src=\"img/produkty/catuaba_1.jpg\" alt=\"damiana\" style=\"float:left;;margin-right:20px;\">\r\n<p style=\"padding-top:20px;\">Catuaba to coś dla Niego! Skutecznie walczy z impotencją, nie wywołując żadnych efektów ubocznych, za co jest szeroko znana i ceniona na całym świecie.</p>\r\n<p style=\"text-align:right\">\r\n<li style=\"text-align:right\"><a>Przejdź do strony produktu</a></li>\r\n</p>\r\n<br style=\"clear:both;\" />\r\n<div class=\"h_line\"></div>\r\n\r\n<img src=\"img/produkty/muira_puama_1.jpg\" alt=\"damiana\" style=\"float:left;;margin-right:20px;\"><p style=\"padding-top:22px;\">Muira Puama to tonik seksualny dla mężczyzn, który bije rekordy popularności w Europie Zachodniej. Jego skuteczność oraz bezpieczne składniki sprawiają, że jest numer jeden wśród alternatyw dla znanej Viagry.</p>\r\n<p style=\"text-align:right\">\r\n<li style=\"text-align:right\"><a>Przejdź do strony produktu</a></li>\r\n</p>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `bugs`
--

CREATE TABLE `bugs` (
  `bug_id` int(11) NOT NULL,
  `bug_subject` varchar(100) NOT NULL,
  `bug_category_id` int(11) NOT NULL,
  `bug_severity_id` int(11) NOT NULL,
  `bug_status_id` int(11) NOT NULL,
  `bug_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `bugs`
--

INSERT INTO `bugs` (`bug_id`, `bug_subject`, `bug_category_id`, `bug_severity_id`, `bug_status_id`, `bug_description`) VALUES
(7, 'Sortowanie w panelu Admina', 1, 2, 2, 'Sypneło się sortowanie w panelu admina.'),
(14, 'slinik: Poprawić template_export()', 2, 2, 2, 'Aby wypluwało wszystko(razem z tr lub w ogóle bez tabeli)- potem stylami css dostosować wyglad.'),
(22, 'Historia zmiany statusów', 2, 0, 0, 'Przydałaby się historia zmiany statusów z datami godzinami.rnNarazie tyle zauważyłem:)'),
(32, 'Program magazynowy', 2, 0, 0, 'na razie może poczekać- zajmij się tym, co widzi klient'),
(40, 'Rejestracja-nr telefonu', 2, 0, 3, 'W procesie rejestracji trzeba dodać rubrykę numeru telefonu'),
(45, 'Rejestracja- newsletter', 2, 0, 3, 'W rejestracji pod &quot;oświadczam, że ....&quot; niech będzie opcja “Dodaj mnie do Tientea newsletter” , która jest z góry zaznaczona ptaszkiem.'),
(46, 'Logowanie', 2, 0, 3, 'Obok kluczyka w logowaniu niech pojawia się opcja &quot;pamiętaj&quot;, która będzie automatycznie pamiętać dan osobę na tym kompie.rnTo coś nie działa'),
(48, 'Koszyk - ilości w menu rozwijanym', 2, 0, 3, 'W koszyku &quot;ilość&quot; i &quot;waga&quot; wyszczególnione z opcja zmiany poprzez rozwijane okienko z już na sztywno wpisanymi wartościami (np. 50 g, 100g....'),
(49, 'Koszyk -cena za opakowanie', 2, 0, 3, 'Jeżeli klient kupi więcej niż jedn sztukę tego samego produktu, to pod suma napisać w nawiasie (np. 24,55- cena za jedno opakowanie)rnrnZobacz to jeszcze raz, bo u mnie nie pojawia się wiadomość, że jest to za jedno opakowanie'),
(65, 'możliwość dodania drugiego zdjęcia', 0, 0, 0, 'Możliwość dodania drugiego zdjęcia na stronie produktu'),
(69, 'Koszy- suma do zapłaty', 1, 0, 0, 'błąd w koszyku - chodzi o przeliczanie sumy. Wyskoczyło mi do zapłaty 35.519999999999996 zł'),
(70, 'Kategoria gratisy', 2, 0, 3, 'Trzeba stworzyć kategorię &quot;Gratisy&quot;, z której klienci będą wybierać darmowe próbki'),
(72, 'Informacja o gratisach w koszyku', 2, 0, 3, 'W koszyku pod info o darmowej wysyłce, niech znajdzie się informacje o gratisach:rn&quot;Do otrzymania gratisu brakuje:xxx&quot;rn&quot;Ta kwota upoważnia Cię do wyboru 1 gratisu. Kolejny gratis otrzymasz, gdy przekroczysz kwotę: (100, 150, 200)'),
(73, 'Dymki', 2, 0, 3, 'Zmienić dymki- są na dropboxie w folderze &quot;artykuły&quot;'),
(76, 'Funkcja check w security.php', 1, 0, 0, 'Za dużo razy sprawdza.'),
(77, 'logowanie-brak przypmnienia hasla', 2, 0, 3, 'podczas logowania brakuje opcji przypomnienia hasla gdy klient nie pamieta swojego.'),
(78, 'zakladka moje konto', 1, 0, 0, 'zakładka moje konto, zmiana hasła, w polu &quot;hasło&quot; odrazu jest coś wpisane.'),
(79, 'Podczas wyświetlania dymka jest odstęp', 1, 0, 0, ''),
(80, 'wyrzucić is_tea', 2, 0, 0, 'categories.php line 74\r\n\r\npo prostu zastąpić to odpowiednim aliasem w panelu'),
(81, 'Tablica głowna-nie dziala`', 1, 0, 0, 'nie dziala na stronie produktu, nie przewija sie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_isTea` tinyint(1) NOT NULL DEFAULT '1',
  `large_image` varchar(70) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `category_alias` varchar(25) NOT NULL,
  `image` varchar(70) NOT NULL,
  `category_description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`category_id`, `category_isTea`, `large_image`, `category_name`, `category_alias`, `image`, `category_description`) VALUES
(1, 1, 'http://www.test.tientea.pl/img/kategorie/cat_biale.png', 'Białe', 'herbaty_biale', 'http://test.tientea.pl/img/kategorie/biale.png', '<p>\r\n	<strong>Biała herbata</strong>, nazywana &bdquo;<strong>eliksirem młodości&rdquo;</strong>, to najdroższy i <strong>najbardziej ceniony</strong> gatunek herbaty. Wytwarzana jest wyłącznie z pąk&oacute;w liści zbieranych wczesną wiosną przez kobiety, kt&oacute;re zakładają do tej czynności jedwabne rękawiczki. Picie białej herbaty <strong>zapobiega przedwczesnemu starzeni się, działa pobudzająco, wspomaga koncentrację, a przede wszystkim przeciwdziała powstawaniu zmian nowotworowych.</strong></p>\r\n'),
(3, 1, 'http://www.test.tientea.pl/img/kategorie/cat_zielona.png', 'Zielone', 'herbaty_zielone', 'http://test.tientea.pl/img/kategorie/zielone.png', '<p>\r\n	<strong>Zielona herbata</strong> powstaje z liści niepoddanych procesowi fermentacji. Świeżo zebrane zostają wysuszone, dzięki czemu zachowują <strong>cenne składniki</strong>, tj. polifenole (op&oacute;źniają proces starzenia), mikroelementy, witaminy A, B1, B2, C, E, K oraz teinę. Zielona herbata jest sojusznikiem <strong>odchudzania</strong>, zawarte w niej garbniki<strong> zapobiegają nowotworom</strong>,&nbsp; zmniejsza <strong>ryzyko chor&oacute;b serca</strong>. Jest szczeg&oacute;lnie polecana przy długotrwałym wysiłku umysłowym.<br />\r\n	&nbsp;</p>\r\n'),
(4, 1, 'http://test.tientea.pl/img/kategorie/cat_czerwona.png', 'Pu-Erh', 'herbaty_pu_erh', 'http://test.tientea.pl/img/kategorie/czerwona.png', '<p>\r\n	Pu-Erh jest <strong>czerwoną herbatą</strong>, kt&oacute;ra zyskała miano <strong>mordercy tłuszczu</strong>. Znany na całym świecie pogromca nadwagi atakuje jedynie zbędne pokłady tkanki tłuszczowej, dlatego osoby szczupłe nie muszą obawiać się niekorzystnej utraty kilogram&oacute;w.<br />\r\n	Regularne spożywanie czerwonego naparu pomaga w <strong>osiągnięciu wymarzonej wagi</strong>, <strong>obniża poziom złego cholesterolu</strong>, <strong>oczyszcza organizm z toksyn</strong>. Napar cechuje się korzenno-ziemistym smakiem.</p>\r\n'),
(7, 0, 'http://www.test.tientea.pl/img/kategorie/ziola.png', 'Zioła', 'ziola', 'http://www.test.tientea.pl/img/kategorie/cat_ziola.png', '<p>\r\n	Stosowanie roślinnych specyfik&oacute;w jest czymś <strong>naturalnym i znanym od wiek&oacute;w</strong>. Pomimo tego, iż w dzisiejszym świecie medycyna idzie do przodu<strong> wiele zi&oacute;ł jest nadal niezastąpionych</strong>.<br />\r\n	Kategoria <strong>ZIOŁA</strong> to efekt naszego wewnętrznego, popartego własnymi doświadczeniami, przekonania w <strong>skuteczność działania roślin leczniczych</strong>. W naszej ofercie znajdują się zioła <strong>energetyzujące</strong>, <strong>wzmacniające</strong>, <strong>oczyszczające</strong> oraz <strong>poprawiające jakość życia seksualnego</strong>.</p>\r\n'),
(5, 1, 'http://www.test.tientea.pl/img/kategorie/cat_afryka.png', 'Rooibos', 'herbaty_rooibos', 'http://test.tientea.pl/img/kategorie/afryka.png', '<p>\r\n	<strong>Rooibos</strong>, czyli czerwonokrzew afrykański, jest rośliną uprawianą wyłącznie w Republice Południowej Afryki. Do Europy dotarł pod koniec XX wieku. Dzięki kuszącej rubinowej barwie, delikatnemu smakowi oraz <strong>wyjątkowym właściwościom zdrowotnym</strong>, szybko zyskał dużą popularność. Jego największa zaleta to <strong>brak zawartości teiny i kofeiny</strong>, dlatego jest doskonałym napojem <strong>dla dzieci, kobiet w ciąży, karmiących piersią oraz os&oacute;b starszych.</strong></p>\r\n'),
(2, 1, 'http://www.test.tientea.pl/img/kategorie/czarne.png', 'Czarne', 'herbaty_czarne', 'http://test.tientea.pl/img/kategorie/czarne.png', '<p>\r\n	Legenda głosi, iż czarna herbata <strong>powstała przypadkowo</strong>, w wyniku zmoknięcia ładunku zielonej herbaty przewożonej kliprem do Anglii. Cechuje się ona <strong>przyjemnym,</strong> lecz ulotnym aromatem. Jedynie <strong>ciepły napar </strong>ma właściwy sobie smak. Czarna herbata potrafi <strong>zachwycić samą sobą,</strong> stanowi r&oacute;wnież <strong>idealną bazę</strong> dla wszelkich dodatk&oacute;w, tj. cukier, mi&oacute;d, konfitura, mleko.</p>\r\n'),
(8, 0, 'http://test.tientea.pl/img/kategorie/akcesoria.png', 'Akcesoria', 'akcesoria', 'http://www.test.tientea.pl/img/kategorie/cat_akcesoria.png', '<p>\r\n	<font face=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;Times\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" new=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" size=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;3\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" style=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;BACKGROUND-COLOR:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\">Wydobycie bogactwa smaku i aromatu z herbacianych liści wiąże się z wiedzą, umiejętnościami oraz często <strong>posiadaniem odpowiednich narzędzi.</strong></font></p>\r\n<p>\r\n	<font face=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;Times\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" new=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" size=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;3\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\" style=\"\\&quot;\\\\&quot;\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;BACKGROUND-COLOR:\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&quot;\\\\\\\\\\\\\\\\&quot;\\\\\\\\&quot;\\\\&quot;\\&quot;\">Aby <strong>ułatwić </strong>Państwu<strong> przygotowanie prawdziwie pysznego naparu,</strong> w poniższej kategorii zebraliśmy <strong>najważniejsze herbaciane akcesoria.</strong> Ich prawidłowe użycie oraz stosowanie się do wyznaczonych zaleceń (m.in. temperatura wody, czas parzenia) <strong>gwarantuje przyrządzenie naparu najwyższej jakości!</strong></font></p>\r\n'),
(9, 0, 'http://test.tientea.pl/img/kategorie/grecja.png', 'Grecja', 'grecja', 'http://www.test.tientea.pl/img/kategorie/cat_grecja.png', '<p>\r\n	Jadąc po raz pierwszy do<strong> Grecji</strong>, nie zdawaliśmy sobie sprawy, że stanie się ona naszą <strong>kolejną wielką pasją</strong>. Zakochaliśmy się w malowniczy krajobrazach, beztroskich ludziach, a przede wszystkim w <strong>przewspaniałej kuchni</strong>!</p>\r\n<p>\r\n	Tworząc poniższą kategorię, kierowaliśmy się jednym celem: zebrać w niej to, czym sami się <strong>zachwyciliśmy</strong> i bez czego nie wyobrażamy sobie naszych posiłk&oacute;w. Wszystkie produkty&nbsp;<strong> wytwarzane są w Grecji</strong>, oznaczają się <strong>wysoką </strong><strong>jakością</strong> oraz stanowią <strong>pyszne </strong>i <strong>zdrowe</strong> dopełnienie codziennej diety.</p>\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `supply_id` int(10) NOT NULL DEFAULT '0',
  `payment_id` int(10) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_surname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `address_id` int(11) NOT NULL,
  `registered` int(1) DEFAULT NULL,
  `rand` int(32) NOT NULL,
  `customer_points` int(10) NOT NULL,
  `password_forgotten` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `customers`
--

INSERT INTO `customers` (`customer_id`, `supply_id`, `payment_id`, `password`, `birthday`, `customer_name`, `customer_surname`, `email`, `telephone`, `address_id`, `registered`, `rand`, `customer_points`, `password_forgotten`) VALUES
(1, 0, 0, '21232f297a57a5a743894a0e4a801fc3', '1999-01-01', 'admin', 'nowy', 'admin@admin.pl', '', 1, 1, 1707614871, 280, 0),
(10, 0, 0, 'd33705295fcff065fd3bbc79ae8b2619', '1986-12-12', 'karolina', 'arodz', 'karla2002@wp.pl', '', 12, 1, 0, 2355, 1),
(6, 0, 0, '7815696ecbf1c96e6894b779456d330e', '1968-02-01', 'asd', 'asdas', 'nowy@wp.pl', '', 8, NULL, 0, 0, 0),
(7, 0, 0, '0cc175b9c0f1b6a831c399e269772661', '1986-11-01', 'asd', 'asd', 'nowy@w2p.pl', '', 9, NULL, 0, 0, 0),
(11, 0, 0, '9eb1ac50213a7a73aea5ce334208d33f', '1992-07-05', 'Magdalena', 'Szymańska', 'shoo_hai@vp.pl', '', 13, 1, 0, 108, 0),
(12, 0, 0, '07ab048381bfa312ffb57e7f761c08e9', '1982-06-06', 'Dawid', 'Kościelny', 'koscielny@gmail.com', '', 14, NULL, 0, 209, 0),
(13, 0, 0, 'a1e9d10f3f39612885ace58a44b98a09', '1984-12-20', 'Tomasz', 'Kaniuka', 'kaniuka@gmail.com', '', 16, NULL, 0, 0, 0),
(14, 0, 0, '51c92a0080161e6227e6afa20f81a65f', '1988-09-12', 'jaa', 'jaaa', 'lukasz_ashaneen@tlen.pl', '', 18, NULL, 0, 282, 0),
(15, 0, 0, '4efb411d12fc5ea175a803e8e25c4b23', '1986-06-21', 'Karolina', 'Arodź', 'karolina.arodz@wp.pl', '', 19, NULL, 0, 133, 0),
(16, 0, 0, '85d92fbfc11624cce8da21f5509c8342', '1986-09-12', 'Anna', 'Sławska', 'annska77@wp.pl', '', 20, NULL, 0, 1, 0),
(17, 0, 0, '85d92fbfc11624cce8da21f5509c8342', '1986-06-30', 'Łukasz', 'Malicki', 'lukasz@wp.pl', '', 25, NULL, 0, 0, 0),
(18, 0, 0, '9efa0b283c813c5987412396b61d65e9', '1987-09-22', 'Karolina', 'Arodź', 'magda@wp.pl', '', 30, NULL, 0, 0, 0),
(19, 0, 0, '81d902dd41f47d956ab04babfcea6a47', '2004-08-23', 'Inka', 'Arodź', 'inka@wp.pl', '', 32, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_active_tab`
--

CREATE TABLE `dict_active_tab` (
  `active_tab_id` int(1) NOT NULL,
  `active_tab_name` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_active_tab`
--

INSERT INTO `dict_active_tab` (`active_tab_id`, `active_tab_name`) VALUES
(1, 'Jak przygo'),
(2, 'Skład'),
(3, 'Pochodzeni');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_boxes`
--

CREATE TABLE `dict_boxes` (
  `box_id` int(10) NOT NULL,
  `box_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_boxes`
--

INSERT INTO `dict_boxes` (`box_id`, `box_name`) VALUES
(1, 'Artykuły'),
(2, 'Box1'),
(3, 'Box2'),
(4, 'Box3'),
(5, 'Pozostałe'),
(6, 'Pasek Górny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_bugs_categories`
--

CREATE TABLE `dict_bugs_categories` (
  `bug_category_id` int(11) NOT NULL,
  `bug_category_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_bugs_categories`
--

INSERT INTO `dict_bugs_categories` (`bug_category_id`, `bug_category_name`) VALUES
(1, 'Błąd'),
(2, 'Zmiana');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_bugs_severities`
--

CREATE TABLE `dict_bugs_severities` (
  `bug_severity_id` int(11) NOT NULL,
  `bug_severity_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_bugs_severities`
--

INSERT INTO `dict_bugs_severities` (`bug_severity_id`, `bug_severity_name`) VALUES
(1, 'Pierdoła'),
(2, 'Normalne'),
(3, 'Ważne');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_bugs_statuses`
--

CREATE TABLE `dict_bugs_statuses` (
  `bug_status_id` int(11) NOT NULL,
  `bug_status_name` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_bugs_statuses`
--

INSERT INTO `dict_bugs_statuses` (`bug_status_id`, `bug_status_name`) VALUES
(0, 'nowy'),
(2, 'w toku'),
(3, 'Rozwiązane');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_order_statuses`
--

CREATE TABLE `dict_order_statuses` (
  `order_status_id` int(11) NOT NULL,
  `status_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_order_statuses`
--

INSERT INTO `dict_order_statuses` (`order_status_id`, `status_name`) VALUES
(1, 'Zamówienie przyjęte'),
(2, 'Wysłane'),
(3, 'Anulowane'),
(4, 'W trakcie realizacji');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_review_statuses`
--

CREATE TABLE `dict_review_statuses` (
  `review_status_id` int(1) NOT NULL,
  `review_status_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_review_statuses`
--

INSERT INTO `dict_review_statuses` (`review_status_id`, `review_status_name`) VALUES
(1, 'Zaakceptowany'),
(2, 'Nowy'),
(3, 'Odrzucony');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dict_units`
--

CREATE TABLE `dict_units` (
  `unit_id` int(1) NOT NULL,
  `unit_value` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dict_units`
--

INSERT INTO `dict_units` (`unit_id`, `unit_value`) VALUES
(1, 'gram'),
(2, 'sztuka'),
(3, 'opakowanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `KLIENCI`
--

CREATE TABLE `KLIENCI` (
  `ID_KLIENTA` char(8) NOT NULL,
  `IMIE` varchar(20) NOT NULL,
  `NAZWISKO` varchar(20) NOT NULL,
  `NR_KARTY_KREDYT` char(20) DEFAULT NULL,
  `FIRMA` varchar(40) DEFAULT NULL,
  `ULICA` varchar(24) NOT NULL,
  `NUMER` char(8) NOT NULL,
  `MIASTO` varchar(24) NOT NULL,
  `KOD` char(6) NOT NULL,
  `NIP` char(12) DEFAULT NULL,
  `NR_TELEFONU` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `KLIENCI`
--

INSERT INTO `KLIENCI` (`ID_KLIENTA`, `IMIE`, `NAZWISKO`, `NR_KARTY_KREDYT`, `FIRMA`, `ULICA`, `NUMER`, `MIASTO`, `KOD`, `NIP`, `NR_TELEFONU`) VALUES
('00000001', 'JAN', 'KOWALSKI', NULL, NULL, 'KOCHANOWSKIEGO', '3', 'WROCLAW', '37-300', NULL, '167-763-234'),
('00000002', 'TOMASZ', 'ADAMCZAK', 'HH 12345678', 'KOWALSKI S.C.', 'KWIATOWA', '4/9', 'WARSZAWA', '01-900', '543-123-456', '46-744-431'),
('00000003', 'PIOTR', 'MALCZYK', 'HF 12445661', 'ADA S.C.', 'ROZANA', '9', 'WARSZAWA', '01-900', '443-133-251', '16-742-114'),
('00000004', 'PAWEL', 'FIODOROWICZ', 'DD 76545321', 'KRAWIECTWO', 'ARMII KRAJOWEJ', '22A', 'WARSZAWA', '01-200', '555-233-256', '44-342-116'),
('00000005', 'ANIELA', 'DALGIEWICZ', NULL, 'MODNA PANI', 'BOHATEROW GETTA', '24', 'WROCLAW', '37-200', '456-134-153', '144-188-415'),
('00000006', 'JOANNA', 'KWIATKOWSKA', NULL, NULL, 'TUWIMA', '2/5', 'SWIDNICA', '58-100', NULL, '963-733-231'),
('00000007', 'BOZENA', 'MALINOWSKA', NULL, NULL, 'LELEWELA', '34/1', 'SWIDNICA', '58-100', NULL, '965-553-778'),
('00000008', 'TOMASZ', 'NOWAK', NULL, NULL, 'ZEROMSKIEGO', '5A/8', 'SWIDNICA', '58-100', NULL, '911-135-536'),
('00000009', 'KRZYSZTOF', 'DOMAGALA', NULL, NULL, 'LESNA', '5', 'SWIDNICA', '58-100', NULL, '922-233-232'),
('00000010', 'ARKADIUSZ', 'DOCZEKALSKI', NULL, NULL, 'LESNA', '2', 'SWIDNICA', '58-100', NULL, '922-233-267'),
('00000011', 'ANNA', 'KOWALSKA', 'KJ 98765412', 'MODNIARSTWO', 'POWSTANCOW SLASKICH', '4', 'WROCLAW', '37-200', '422-132-354', '444-283-901'),
('00000012', 'KRZYSZTOF', 'DOBROWOLSKI', NULL, 'KAMIENIARSTWO', 'STRZEGOMSKA', '124', 'WROCLAW', '37-400', '433-133-332', '443-285-202'),
('00000013', 'MARCIN', 'KRZYKALA', NULL, NULL, 'KONOPNICKIEJ', '1/4', 'WROCLAW', '37-400', NULL, '442-211-109'),
('00000014', 'ANETA', 'PAPROCKA', NULL, NULL, 'TUWIMA', '2', 'WROCLAW', '37-400', NULL, '442-671-899'),
('00000015', 'SEBASTIAN', 'KOWNACKI', NULL, NULL, 'GLOWACKIEGO', '2/9', 'WROCLAW', '37-400', NULL, '423-681-129'),
('00000016', 'MICHAL', 'MICHALSKI', NULL, NULL, 'KWIATOWA', '9/3', 'WROCLAW', '37-500', NULL, '499-621-921'),
('00000017', 'MICHAL', 'SZYKOWNY', 'WW 12398765', NULL, 'LESNA', '3', 'WARSZAWA', '00-100', NULL, '191-221-622'),
('00000018', 'MARCIN', 'MARCINKOWSKI', 'WQ 14368781', NULL, 'OKREZNA', '33', 'WARSZAWA', '00-200', NULL, '122-127-647'),
('00000019', 'RAFAL', 'RAFALSKI', 'WS 12358672', 'NAPRAWA SAMOCHODOW', 'PRZEMYSLOWA', '1', 'WARSZAWA', '00-200', '999-765-120', '822-324-742'),
('00000020', 'ROBERT', 'NOWAK', 'AS 61333699', 'TAPICERSTWO', 'MOSTOWA', '9B', 'WARSZAWA', '00-100', '987-765-333', '811-311-147');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `MIEJSCA`
--

CREATE TABLE `MIEJSCA` (
  `ID_MIEJSCA` char(6) NOT NULL,
  `ULICA` varchar(24) NOT NULL,
  `NUMER` char(8) NOT NULL,
  `MIASTO` varchar(24) NOT NULL,
  `KOD` char(6) NOT NULL,
  `TELEFON` char(16) DEFAULT NULL,
  `UWAGI` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `MIEJSCA`
--

INSERT INTO `MIEJSCA` (`ID_MIEJSCA`, `ULICA`, `NUMER`, `MIASTO`, `KOD`, `TELEFON`, `UWAGI`) VALUES
('000001', 'LEWARTOWSKIEGO', '12', 'WARSZAWA', '10-100', '228-277-097', NULL),
('000002', 'ALEJE LIPOWE', '3', 'WROCLAW', '32-134', '388-299-086', NULL),
('000003', 'KOCHANOWSKIEGO', '8', 'KRAKOW', '91-200', '222-312-498', NULL),
('000004', 'LOTNICZA', '9', 'POZNAN', '22-200', '778-512-044', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`) VALUES
(1, 'products'),
(2, 'categories'),
(3, 'weights');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `address_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `supply_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL DEFAULT '1',
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_nr` int(10) NOT NULL DEFAULT '0',
  `comment` varchar(200) NOT NULL,
  `order_points` int(10) NOT NULL,
  `points_payment` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `order`
--

INSERT INTO `order` (`order_id`, `address_id`, `customer_id`, `payment_id`, `supply_id`, `order_status_id`, `order_date`, `order_nr`, `comment`, `order_points`, `points_payment`) VALUES
(42, 31, 0, 2, 2, 1, '2012-08-11 11:03:11', 1, '', 0, 0),
(43, 19, 15, 1, 1, 2, '2012-08-11 12:57:20', 2, '', 133, 0),
(44, 12, 10, 2, 1, 1, '2012-10-19 15:32:42', 3, '', 403, 0),
(45, 12, 10, 1, 1, 1, '2012-10-19 15:33:54', 4, '', 108, 0),
(46, 33, 0, 1, 1, 1, '2013-01-03 19:06:49', 5, 'asd', 0, 0),
(47, 34, 0, 2, 1, 1, '2013-04-12 13:25:56', 6, '', 0, 0),
(48, 35, 0, 1, 2, 1, '2013-05-22 16:07:31', 7, 'Przesyłkę odbiorę przez Sławka Kidonia', 0, 0),
(49, 36, 0, 2, 1, 1, '2013-11-04 09:29:59', 8, '', 0, 0),
(50, 37, 0, 1, 1, 1, '2013-12-07 13:23:51', 9, '', 0, 0),
(51, 38, 0, 1, 1, 1, '2013-12-30 07:54:15', 10, '', 0, 0),
(52, 1, 1, 1, 1, 1, '2014-01-14 19:09:18', 11, 'test', 35, 0),
(53, 39, 0, 1, 1, 1, '2014-03-03 08:35:40', 12, 'Proszę o kontakt drogą mailową:\r\nkarolinakukla93@o2.pl\r\n', 0, 0),
(54, 40, 0, 2, 1, 1, '2014-04-12 19:01:09', 13, '', 0, 0),
(55, 41, 0, 2, 1, 1, '2014-04-17 17:56:17', 14, '', 0, 0),
(56, 18, 14, 2, 2, 1, '2014-09-01 14:00:12', 15, '', 261, 0),
(57, 42, 14, 2, 1, 1, '2014-09-01 14:07:50', 16, '', 282, 261),
(58, 43, 0, 1, 1, 1, '2014-10-16 16:41:05', 17, '', 0, 0),
(59, 44, 0, 1, 1, 1, '2014-12-30 19:46:31', 18, '', 0, 0),
(60, 45, 0, 1, 1, 1, '2015-03-02 10:45:47', 19, '', 0, 0),
(61, 46, 0, 1, 1, 1, '2015-03-04 19:56:08', 20, '', 0, 0),
(62, 47, 0, 1, 1, 1, '2015-03-05 10:30:50', 21, '', 0, 0),
(63, 48, 0, 1, 1, 1, '2015-03-15 18:42:44', 22, '', 0, 0),
(64, 49, 0, 1, 1, 1, '2015-04-12 13:18:10', 23, 'trzykrotnie nie udało mi się zarejestrowac do sklepu', 0, 0),
(65, 50, 0, 1, 2, 1, '2015-04-24 19:06:21', 24, '', 0, 0),
(66, 51, 0, 2, 2, 1, '2015-06-10 18:23:41', 25, 'Sklep Bławatny jest otwarty od godz.11:00 do 18:00', 0, 0),
(67, 52, 0, 1, 1, 1, '2015-08-31 20:29:10', 26, 'Jeżeli udało by się Państwu wysłać na Paczkomat w Zgierzu na Kasprowicza 6 było by rewelacyjnie - w innym wypadku może być poczta polska ... :)', 0, 0),
(68, 53, 0, 1, 1, 1, '2015-09-06 19:01:25', 27, '', 0, 0),
(69, 54, 0, 1, 2, 1, '2015-09-07 10:40:16', 28, 'Dostawa : Centrum Izolacji / Katarzyna Kłos\r\nZemborzycka 53 , 20-445 Lublin, 504 168 314', 0, 0),
(70, 55, 0, 1, 2, 1, '2015-09-07 10:40:52', 29, 'Dostawa : Centrum Izolacji / Katarzyna Kłos\r\nZemborzycka 53 , 20-445 Lublin, 504 168 314', 0, 0),
(71, 56, 0, 2, 1, 1, '2015-09-22 19:13:15', 30, '', 0, 0),
(72, 57, 0, 1, 1, 1, '2015-09-29 19:55:53', 31, '', 0, 0),
(73, 58, 0, 1, 1, 1, '2015-10-03 14:51:10', 32, '', 0, 0),
(74, 59, 0, 2, 2, 1, '2015-10-08 20:11:37', 33, '', 0, 0),
(75, 60, 0, 1, 1, 1, '2015-10-09 11:42:48', 34, '', 0, 0),
(76, 61, 0, 1, 1, 1, '2015-10-18 15:42:11', 35, '', 0, 0),
(77, 62, 0, 1, 1, 1, '2016-01-12 06:22:33', 36, '', 0, 0),
(78, 63, 0, 1, 1, 1, '2016-01-29 17:53:53', 37, '', 0, 0),
(79, 64, 0, 1, 1, 1, '2016-02-01 22:20:52', 38, '', 0, 0),
(80, 65, 0, 2, 1, 1, '2016-02-06 17:28:57', 39, 'wojtus1952@wp.p   tel 514736193', 0, 0),
(81, 66, 0, 1, 1, 1, '2016-02-14 09:37:22', 40, 'Uprzejmie proszę o szybką realizację zamówienia. Dziękuję.', 0, 0),
(82, 67, 0, 1, 1, 1, '2016-03-17 08:05:14', 41, '', 0, 0),
(83, 68, 0, 2, 1, 1, '2016-04-08 08:31:00', 42, '', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_products`
--

CREATE TABLE `order_products` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_product_price` float NOT NULL,
  `order_product_weight` int(10) NOT NULL,
  `order_product_quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `order_products`
--

INSERT INTO `order_products` (`order_product_id`, `order_id`, `product_id`, `order_product_price`, `order_product_weight`, `order_product_quantity`) VALUES
(87, 42, 38, 16.5, 100, 1),
(88, 43, 3, 33.2, 200, 1),
(89, 44, 42, 8.26, 50, 3),
(90, 44, 35, 34.8, 200, 1),
(91, 44, 102, 23.8, 100, 1),
(92, 44, 55, 17.3, 50, 1),
(93, 45, 46, 8.3, 50, 1),
(94, 45, 67, 18.7, 100, 1),
(95, 46, 4, 44.6, 200, 1),
(96, 46, 4, 11.8, 50, 1),
(97, 46, 10, 0, 0, 0),
(98, 47, 95, 27, 50, 1),
(99, 48, 120, 16, 1, 1),
(100, 48, 133, 35, 200, 1),
(101, 48, 132, 0, 0, 0),
(102, 49, 99, 72.9, 200, 1),
(103, 49, 48, 0, 0, 0),
(104, 50, 92, 35.3, 50, 1),
(105, 51, 92, 19.4, 25, 2),
(106, 52, 22, 8.6, 50, 1),
(107, 53, 99, 19, 50, 1),
(108, 54, 99, 36.7, 100, 1),
(109, 55, 99, 36.7, 100, 1),
(110, 56, 87, 65.1, 100, 1),
(111, 56, 10, 0, 0, 0),
(112, 57, 87, 65.1, 100, 1),
(113, 57, 12, 15.7, 100, 1),
(114, 57, 10, 0, 0, 0),
(115, 58, 92, 19.4, 25, 1),
(116, 59, 92, 19.4, 25, 1),
(117, 60, 102, 12.2, 50, 1),
(118, 60, 11, 9.8, 50, 1),
(119, 60, 16, 11.5, 50, 1),
(120, 61, 92, 35.3, 50, 1),
(121, 62, 92, 35.3, 50, 1),
(122, 63, 92, 65, 100, 1),
(123, 63, 18, 0, 0, 0),
(124, 64, 95, 85, 200, 1),
(125, 64, 14, 0, 0, 0),
(126, 65, 92, 19.4, 25, 1),
(127, 66, 92, 35.3, 50, 1),
(128, 67, 92, 65, 100, 2),
(129, 67, 48, 0, 0, 0),
(130, 68, 92, 35.3, 50, 1),
(131, 69, 92, 35.3, 50, 1),
(132, 70, 92, 35.3, 50, 1),
(133, 71, 95, 85, 200, 2),
(134, 71, 95, 27, 50, 1),
(135, 72, 92, 35.3, 50, 1),
(136, 73, 92, 35.3, 50, 1),
(137, 74, 92, 65, 100, 2),
(138, 74, 10, 0, 0, 0),
(139, 74, 18, 0, 0, 0),
(140, 75, 92, 65, 100, 1),
(141, 76, 92, 19.4, 25, 1),
(142, 77, 92, 35.3, 50, 1),
(143, 78, 92, 19.4, 25, 1),
(144, 79, 92, 35.3, 50, 1),
(145, 80, 92, 19.4, 25, 1),
(146, 81, 92, 35.3, 50, 1),
(147, 82, 92, 35.3, 50, 1),
(148, 82, 66, 10.8, 50, 1),
(149, 82, 107, 16, 10, 1),
(150, 83, 92, 65, 100, 1),
(151, 83, 48, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_name` varchar(50) NOT NULL,
  `payment_cost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_name`, `payment_cost`) VALUES
(1, 'Przelew', 0),
(2, 'Płatność przy odbiorze', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `PRACOWNICY`
--

CREATE TABLE `PRACOWNICY` (
  `ID_PRACOWNIKA` char(4) NOT NULL,
  `IMIE` varchar(20) NOT NULL,
  `NAZWISKO` varchar(20) NOT NULL,
  `DATA_ZATR` date NOT NULL,
  `DZIAL` varchar(20) NOT NULL,
  `STANOWISKO` varchar(20) NOT NULL,
  `PENSJA` decimal(8,2) DEFAULT NULL,
  `DODATEK` decimal(8,2) DEFAULT NULL,
  `NR_MIEJSCA` char(6) NOT NULL,
  `NR_TELEFONU` char(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `PRACOWNICY`
--

INSERT INTO `PRACOWNICY` (`ID_PRACOWNIKA`, `IMIE`, `NAZWISKO`, `DATA_ZATR`, `DZIAL`, `STANOWISKO`, `PENSJA`, `DODATEK`, `NR_MIEJSCA`, `NR_TELEFONU`) VALUES
('0001', 'JAN', 'KOWALSKI', '1997-02-01', 'OBSLUGA KLIENTA', 'SPRZEDAWCA', '1100.00', '123.00', '000001', '987-231-123'),
('0002', 'ANNA', 'KAMINSKA', '1997-01-01', 'OBSLUGA KLIENTA', 'SPRZEDAWCA', '1200.00', '115.00', '000002', '987-231-124'),
('0003', 'KRZYSZTOF', 'ADAMSKI', '1997-05-01', 'OBSLUGA KLIENTA', 'KIEROWNIK', '2000.00', NULL, '000001', '987-231-125'),
('0004', 'PIOTR', 'MICHALSKI', '1998-06-01', 'TECHNICZNY', 'MECHANIK', '1700.00', '76.00', '000001', '987-231-131'),
('0005', 'BOZENA', 'DOMANSKA', '1997-02-01', 'OBSLUGA KLIENTA', 'SPRZEDAWCA', '1300.00', '134.00', '000003', '987-231-126'),
('0006', 'WOJCIECH', 'BURZALSKI', '1998-12-01', 'TECHNICZNY', 'MECHANIK', '1800.00', '80.00', '000003', '987-231-132'),
('0007', 'MARZENA', 'KOWNACKA', '1997-05-01', 'KSIEGOWOSC', 'KASJER', '1400.00', '105.00', '000001', '987-231-141'),
('0008', 'DAMIAN', 'MACHALICA', '1997-05-01', 'TECHNICZNY', 'KIEROWNIK', '2200.00', NULL, '000001', '987-231-133'),
('0009', 'ALICJA', 'MAKOWIECKA', '1999-07-01', 'OBSLUGA KLIENTA', 'SPRZEDAWCA', '1400.00', '120.00', '000004', '933-241-525'),
('0010', 'WOJCIECH', 'BAGIELSKI', '1998-04-01', 'OBSLUGA KLIENTA', 'SPRZEDAWCA', '1200.00', '100.00', '000001', '457-531-143');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) NOT NULL,
  `unit_id` int(1) NOT NULL DEFAULT '1',
  `product_order` int(11) NOT NULL,
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `product_alias` varchar(32) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `product_description` mediumtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `smal_photo` varchar(70) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `tab1` mediumtext NOT NULL,
  `tab2` mediumtext NOT NULL,
  `tab3` mediumtext NOT NULL,
  `active_tab_id` smallint(1) NOT NULL DEFAULT '1',
  `is_gratis` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `subcategory_id`, `unit_id`, `product_order`, `product_name`, `product_alias`, `product_description`, `photo`, `smal_photo`, `tab1`, `tab2`, `tab3`, `active_tab_id`, `is_gratis`) VALUES
(1, 3, 1, 1, 33, 'Bananowa Wyspa', 'bananowa_wyspa', '<p>\r\n	Banany to niewątpliwie owoce pełne słońca. Ich miękki i subtelny smak przywodzi na myśl chwilę błogiego relaksu w hamaku rozwieszonym pomiędzy palmami.</p>\r\n<p>\r\n	W Bananowej Wyspie błogi, wakacyjny nastr&oacute;j wzbogacony jest słodkimi plastrami truskawki oraz cząstkami orzeźwiającego kiwi. Całość tworzy egzotyczny napar na bazie Senchy i Gunpowder. Charakterystyczną cecha tego napoju jest brak, typowej dla zielonych herbat, goryczki.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Bananowa_Wyspa_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong>&nbsp; 2-4 minuty<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha z dodatkiem Herbaty Gunpowder, kiwi, banan, truskawki, płatki kwiatu bławatka, trawa cytrynowa.</p>\r\n', '', 2, 1),
(2, 2, 1, 1, 8, 'Tien Vanilla Tea', 'tien_vanilla_tea', '<p>\r\n	Tien Vanilla Tea stworzona jest na bazie czarnej herbaty Ceylon BOP1, pochodzącej z g&oacute;rskich plantacji cejlońskich, osłodzonej aksamitnym waniliowym aromatem oraz kawałkami lasek wanilii. Całość tworzy wykwintny napar rozpalający zmysły...<br />\r\n	&nbsp;</p>\r\n<p>\r\n	Wanilia jest przyprawą, kt&oacute;rej niezwykłe walory kulinarne zostały docenione już przez Aztek&oacute;w. Jednakże używali oni jej nie tylko w kuchni- kwiatem wanilii płacono podatki, a samą wanilię Aztecy stosowali jako afrodyzjak. Do Europy wanilię sprowadzili hiszpańscy konkwistadorzy w XVI w. Dziś jest to jedna z najbardziej cenionych przypraw świata.<br />\r\n	&nbsp;</p>\r\n<h3>\r\n	Szanowni Klienci!</h3>\r\n<h3>\r\n	Aby uprzyjemnić Wam degustację Tien Vanilla Tea, do każdego opakowania 100 i 200 gramowego dołączamy w prezencie laskę prawdziwej wanilii.</h3>\r\n', 'http://www.test.tientea.pl/img/produkty/Tien_Vanilla_Tea_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, kawałki wanilii</p>\r\n', '', 2, 0),
(4, 3, 1, 1, 8, 'Truskawkowe Ciasteczko', 'truskawkowe_ciasteczko', '<p>\r\n	Truskawki.... kt&oacute;ż nie zna ich przyjemnego, słodkiego, pełnego aromatu smaku. Niekt&oacute;rzy delektują się nimi zaraz po zerwaniu, inni uwielbiają je jako dodatek do ciast i deser&oacute;w, ale niezależnie od formy podania każdy zwolennik truskawek przyzna, że są one jedyne w swoim rodzaju...<br />\r\n	<br />\r\n	Truskawkowe Ciasteczko to harmonijne połączenie smak&oacute;w: zdrowotnej Senchy z aksamitną, liofilizowaną truskawką. Dzięki procesowi liofilizacji truskawka zachowała wartości świeżego produktu- barwę, zapach, witaminy oraz wszystkie składniki odżywcze. Niewątpliwym atutem naszego &quot;ciasteczka&quot; jest możliwość cieszenia się smakiem truskawek przez cały rok.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/truskawkowe_ciasteczko_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, plastry liofilizowanej truskawki</p>\r\n', '', 2, 0),
(5, 3, 1, 1, 20, 'Różane Jabłuszko', 'rozane_jabluszko', '<p>\r\n	R&oacute;żane Jabłuszko to typ herbaty, kt&oacute;ra cieszy zar&oacute;wno zmysł smaku, jak i dostarcza atrakcyjnych wrażeń wizualnych. Tuż po otwarciu herbacianej paczuszki, dostrzeżemy pączki młodych r&oacute;ż, zaś gdy przyjrzymy się chwilę dłużej, odkryjemy kawałki pieczonego jabłuszka.&nbsp; Tak jak w ogrodzie mojej babci, w kt&oacute;rym jabłoń i r&oacute;ża rosły zgodnie obok siebie, tak i w R&oacute;żanym Jabłuszku te dwa składniki tworzą perfekcyjny duet.<br />\r\n	<br />\r\n	R&oacute;żane Jabłuszko cechuje się zharmonizowanym smakiem. Słodycz pieczonego jabłka wsp&oacute;łgra z subtelnym aromatem r&oacute;ży. Każdy kolejny łyk naparu coraz bardziej odpręża, przenosząc myśli do ogr&oacute;dka ukochanej babuni.<br />\r\n	<br />\r\n	Herbata idealna dla os&oacute;b gustujących w łagodnych, domowych smakach oraz dla początkujących &quot;herbaciarzy&quot;.&nbsp; Świetna jako prezent!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/rozane_jabluszko_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, pączki r&oacute;ż, kawałki pieczonego jabłka, płatki nagietka</p>\r\n', '', 2, 0),
(6, 3, 1, 1, 28, 'Alhambra Enjoy', 'alhambra_enjoy', '<p>\r\n	Alhambra Enjoy łączy w sobie dwie nuty smakowe. Kwaśno- orzeźwiający smak żurawiny i porzeczki połączony jest ze słodyczą soczystej truskawki.<br />\r\n	<br />\r\n	Składnik Alhambry Enjoy tworzą barwny kontrast: przygaszona zieleń Senchy przeciwstawia się głębokiej czerwieni owoc&oacute;w. Jednakże mimo kolorystycznej odmienności, składniki Alhambry Enjoy mają wsp&oacute;lną cechę- ogromne walory zdrowotne.<br />\r\n	<br />\r\n	Żurawina i porzeczka to maleńkie owoce o dużych możliwościach. Kryją w sobie wiele witamin i minerał&oacute;w korzystnych dla naszego zdrowia i dobrego samopoczucia. Są źr&oacute;dłem witaminy C, dzięki czemu wzmacniają odporność organizmu. Ponadto żurawina ma leczniczy wpływ na drogi układu moczowego.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Alhambra_enjoy_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, owoc żurawiny, truskawki liofilizowane, czerwona porzeczka, płatki nagietka</p>\r\n', '', 2, 0),
(7, 3, 1, 1, 16, 'Chwila Orzeźwienia', 'chwila_orzezwienia', '<p>\r\n	Chwila Orzeźwienia cechuje się niezwykłymi walorami smakowo- zapachowymi. Swą nietypowość zawdzięcza goździkom, kt&oacute;rych nie spos&oacute;b pomylić z czymś innym ze względu na ich lekko pikantny i korzenny aromat. To właśnie ten charakterystyczny smak i zapach sprawia, że goździki mają właściwości &quot;odświeżania oddechu&quot;. Zauważyli to już starożytni Chińczycy- dworzanie odwiedzający cesarza mieli obowiązek trzymania w ustach kilku goździk&oacute;w, aby ich oddech zachował świeżość.<br />\r\n	<br />\r\n	Chwila Orzeźwienia to kunsztowna kombinacja trzech zielonych herbat: Senchy, Gunpowder oraz Chun-Mee. Dodatki w postaci: goździk&oacute;w, jarzębiny, pączk&oacute;w r&oacute;ż i nagietka nadają naparowi odświeżających właściwości. Chwila Orzeźwienia to idealna propozycja na upalne dni.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/chwila_orzezwienia_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielone herbaty: Sencha, Gunpowder, Chun-Mee, goździki, owoce suszonej jarzębiny, pączki r&oacute;ż, płatki nagietka</p>\r\n', '', 2, 1),
(8, 3, 1, 1, 31, 'Różana Pokusa', 'rozana_pokusa', '<p>\r\n	Jak m&oacute;wi znane porzekadło &quot;mężczyzna jest głową, a kobieta szyją, kt&oacute;ra tą głową kręci&quot;, tak i w tej herbacie pierwsze skrzypce gra r&oacute;żany &quot;kobiecy&quot; aromat, zaś energetyczny &quot;męski&quot; pomarańczowy akcent sytuuje się na drugim tle, subtelnie orzeźwiając napar.<br />\r\n	<br />\r\n	R&oacute;żana Pokusa jest idealnym prezentem dla każdej miłośniczki herbacianych doznań. Przygoda z tą herbatą rozpoczyna się tuż po otwarciu opakowania, kiedy kwiatowy aromat wypełnia całe pomieszczenie. Jest to doskonała propozycja na chwilę relaksu i błogości dla każdej zabieganej kobiety.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rozana_Pokusa_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, kawałki pomarańczy, płatki r&oacute;ż</p>\r\n', '', 2, 0),
(9, 3, 1, 1, 21, 'Tien Żurawina Tea', 'tien_zurawina_tea', '<p>\r\n	Tien Żurawina Tea to napar o głębokim smaku dojrzałej żurawiny. Prawdziwie owocowy aromat osiągnięty został dzięki połączeniu kandyzowanych i suszonych żurawinowych kulek. Bazę naparu stanowi zdrowotny susz Senchy oraz wysokogatunkowy Gunpowder.<br />\r\n	<br />\r\n	Tien Żurawina Tea to herbata, kt&oacute;rej smakiem można cieszyć się cały rok. W ciepłe, letnie dni delikatnie orzeźwi, zaś w mroźne, zimowe wieczory zadba o nasze zdrowie.<br />\r\n	&nbsp;</p>\r\n<p>\r\n	Niepozorne kulki żurawiny kryją w sobie niezwykłe bogactwo naturalnych składnik&oacute;w odżywczych.Żurawina od wiek&oacute;w ceniona była w lecznictwie ludowym. Jej drobne, czerwone owoce nasze prababki wykorzystywały&nbsp; w leczeniu przeziębień, stan&oacute;w zapalnych i r&oacute;żnego rodzaju dolegliwość układu moczowego.<br />\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Tien_Zurawina_Tea_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', 'Zielona herbata Sencha i Gunpowder, owoc żurawiny, trawa cytrynowa', '', 2, 0),
(10, 2, 1, 1, 19, 'Mozaika Smaków', 'mozaika_smakow', '<p>\r\n	Mozaika Smak&oacute;w to misternie przygotowana kompozycja. Bazę, dla szerokiego wachlarza dodatk&oacute;w, stanowi wysokiej jakości czarna herbata Ceylon BOP 1. Jej świeży aromat i ożywczy smak idealnie wsp&oacute;łgra z goździkiem- motywem przewodnim naparu. Dodatki w postaci porzeczki i żurawiny wzbogacają aromat o lekko kwaskowatą nutę, gruszka to odrobina słodyczy, zaś trawa cytrynowa to szczypta orzeźwienia. Wszystkie elementy mozaiki łączą się w niepowtarzalną całość o zachwycającym i wyjątkowym smaku.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Mozaika_Smakow_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata Ceylon BOP 1, goździki, czerwona porzeczka, gruszka, żurawina, płatki nagietka, trawa cytrynowa</p>\r\n', '', 2, 1),
(15, 2, 1, 1, 7, 'Rozkoszna Malina', 'rozkoszna_malina', '<p>\r\n	W malinach bez wątpienia można zakochać się od pierwszego wejrzenia...a właściwie skosztowania.<br />\r\n	<br />\r\n	Podbiły one serca niejednego poety! Leśmian wykorzystał je w swoich erotykach (&bdquo;W malinowym chruśniaku&rdquo;), zaś Słowacki umieścił w nieco bardziej tragicznej scenerii (&bdquo;Balladyna&rdquo;). Czy można się temu dziwić? Maliny to przecież owoce pełne pasji i namiętności. Ich słodki, a zarazem trochę cierpki aromat nadaje herbacie głęboki i pełen uniesienia smak- idealny nie tylko dla zakochanych...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rozkoszna_Malina_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, maliny liofilizowane, bławatek</p>\r\n', '', 2, 0),
(12, 2, 1, 1, 2, 'Tien Apple&amp;Cinnamon Tea', 'tien_apple_cinnamon_tea', '<p>\r\n	Są dni, kiedy m&oacute;j umysł opanowuje jedna, uporczywa myśl- szarlotka.. Słodka, aromatyczna, rozpływająca się w ustach, a najlepiej taka, jaką robi moja mama...Pycha! Niestety, w codziennym zabieganiu często brak mi czasu na stworzenie tego kulinarnego cuda. Wtedy moim wybawieniem jest Tien Apple &amp; Cinnamon Tea .<br />\r\n	<br />\r\n	Tajemnicą Tien Apple &amp; Cinnamon Tea jest&nbsp; połączenie smaku pieczonego jabłuszka z lekko pikantnym aromatem kruszonej kory cynamonu. Podczas pierwszego zaparzenia wyczujemy korzenny, cynamonowy smak, zaś drugie zalanie nasycone jest aromatem słodkiego jabłka.<br />\r\n	<br />\r\n	Napar pełen dobrze znanych smak&oacute;w i zapach&oacute;w z kuchni naszych mam i babć. Znakomicie uzupełni leniwe chwile popołudniowego relaksu...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Tien_AppleCinnamom_Tea_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, kawałki cynamonu, jabłko</p>\r\n', '', 2, 0),
(11, 3, 1, 1, 7, 'Wino- gronowe Grono', 'wino-gronowe_grono', '<p>\r\n	<font><font><font>Dionizos- grecki b&oacute;g wina i płodności, chcąc uczynić życie na ziemi weselszym, nauczył ludzi uprawy winorośli. Od tamtej chwili świat zakochał się w tej boskiej roślinie i umiłował wszelkie powstałe z niej trunki... a jednym z nich jest pyszny, herbaciany napar.&nbsp;&nbsp;<br />\r\n	<br />\r\n	Wino- gronowe Grono to herbata, w kt&oacute;rej klasyczna Sencha spotyka się z suszonymi owocami winogron. Z połączenia tych składnik&oacute;w uzyskujemy delikatny i wykwintny, a zarazem niezwykle owocowy napar, kt&oacute;ry stanowi, podobnie jak wino, doskonałe dopełnienie dobrego posiłku zjedzonego w gronie roześmianych przyjaci&oacute;ł.</font></font></font></p>\r\n', 'http://www.test.tientea.pl/img/produkty/wino-gronowe_grono_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, rodzynki, aromat winogronowy</p>\r\n', '', 2, 0),
(14, 3, 1, 1, 3, 'Grejpfrutowe Zatrzęsienie', 'grejpfrutowe_zatrzesienie', '<p>\r\n	Owoce cytrusowe wywołują w nas wiele dobrych emocji-&nbsp; są ciepłe, pełne wigoru, dodają energii oraz sprawiają, że czujemy się lekko i świeżo. Ich niewątpliwym atutem są właściwości odchudzające. Naukowcy potwierdzają, że spożywanie grejpfrut&oacute;w obniża poziom cukru we krwi, co sprzyja odchudzaniu i osiągnięciu wymarzonej wagi.<br />\r\n	<br />\r\n	Grejpfrutowe Zatrzęsienie to&nbsp; połączenie czerwonych cząstek grejpfruta ze sk&oacute;rką soczystej pomarańczy, kwiatem jaśminu i słonecznika oraz świeżym cytrusowym aromatem. Całość tworzy słomkowo- zielony napar z delikatnie zarysowaną kwasowością i wyczuwalną grejpfrutową nutą.<br />\r\n	<br />\r\n	Grejpfrutowe Zatrzęsienie to uczta zmysł&oacute;w. Zar&oacute;wno kunsztowny smak, orzeźwiający zapach, jaki i pełen słońca wygląd tej herbaty nastraja optymistycznie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/grejpfrutowe_zatrzesienie_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha z dodatkiem sk&oacute;rki pomarańczy, owocem grejpfruta, kwiatem jaśminu oraz płatkami słonecznika</p>\r\n', '', 2, 1),
(16, 3, 1, 1, 22, 'Letnie trele-morele', 'letnie_trele-morele', '<p>\r\n	Letnie trele-morele to wyborne trio: jabłko, malina, morela. Doskonale wyważone połączenie owocowego smaku z kwiatowym akcentem w postaci płatk&oacute;w nagietka. Całość przyprawiona delikatnym cytrusowym aromatem.<br />\r\n	<br />\r\n	Wonnej kompozycji towarzyszy zielona Sencha z niewielką domieszką, wysoko cenionej na całym świecie, herbaty Chun-Mee (zwanej potocznie &quot;szlachetnymi brwiami&quot; lub &quot;rzęsami ślicznotki&quot;).<br />\r\n	<br />\r\n	Subtelne, łagodne, przyjemne, lekkie- takie jest właśnie Letnie trele-morele. To rewelacyjna propozycja dla miłośnik&oacute;w smak&oacute;w delikatnie pieszczących podniebienie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Letnie_trele-morele_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha z niewielką domieszką herbaty Chun-Mee z dodatkiem jabłka, maliny, moreli oraz płatk&oacute;w nagietka</p>\r\n', '', 2, 0),
(17, 3, 1, 1, 5, 'Odjechana Mięta', 'odjechana_mieta', '<p>\r\n	Mięta to niezwykle wdzięczne ziele. Starożytni Rzymianie wierzyli, że pobudza m&oacute;zg do myślenia, zaś muzykalni benedyktyni pili miętowy napar, aby zapewnić swoim głosom słodycz i czyste brzmienie.<br />\r\n	<br />\r\n	Dziś osławione są&nbsp; nieocenione właściwości mięty w niwelowaniu problem&oacute;w żołądkowych. Ale to nie wszystko! Mięta ma działanie uspokajające i przeciwb&oacute;lowe. A ponadto jest ziołem niezwykle przyjaznym urodzie.<br />\r\n	<br />\r\n	M&oacute;wiąc o mięcie, nie można zapomnieć o jej orzeźwiającym smaku i zapachu, kt&oacute;ry można rozpoznać nawet z zamkniętymi oczami. A jak ten dobrze znany miętowy aromat sprawdza się w połączeniu&nbsp; z chińską herbatą Gunpowder? Smacznie i zdrowo!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/odjechana_mieta_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>70-80 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong>&nbsp; 2-4 minuty<br />\r\n	Temperatura parzenia w istotny spos&oacute;b wpływa na smak herbaty. Zalanie suszu wrzątkiem daje silny i gorzki smak- jest on ceniony przez wytrawnych herbaciarzy. Używając wody o temperaturze ok. 80 stopni C, otrzymamy napar o łagodnym aromacie, zaś parzenie w temperaturze ok. 50 stopni C przez 2-3 godziny wzmocni miętowy smak herbaty.</p>\r\n', '<p>\r\n	Zielona herbata Gunpowder, liść mięty</p>\r\n', '', 2, 0),
(18, 3, 1, 1, 18, 'Lady Ginkgo', 'lady_ginkgo', '<p>\r\n	Lady Ginkgo to pyszny spos&oacute;b na zdrowie. Dzięki połączeniu Ginkgo Biloby z kawałkami papai, napar jest zar&oacute;wno pełen leczniczych właściwości, jak i przyjemnie słodkiego aromatu. Lady Ginkgo z pewnością przypadnie do gustu wszystkim ceniącym zdrowe smaki w apetycznym wydaniu.<br />\r\n	<br />\r\n	Ginkgo Biloba (Miłorząb Dwuklapowy) jest stosowana w medycynie naturalnej od wiek&oacute;w. To jeden z najstarszych, przetrwałych gatunk&oacute;w drzew- może żyć nawet ponad 1000 lat. Jest bardzo odporny na działanie negatywnych czynnik&oacute;w zewnętrznych. Uważa się, że ta niesamowita wytrzymałość Ginkgo związana jest ze specjalnymi właściwościami substancji zawartych w jego liściach.<br />\r\n	<br />\r\n	Wyciąg z liści Miłorzębu poprawia ukrwienie tkanki m&oacute;zgowej, dzięki czemu znacznie usprawnia pamięć i zdolność koncentracji. Ma r&oacute;wnież pozytywny wpływ na krążenie krwi w kończynach, zapobiega efektowi zimnych st&oacute;p- polecamy wszystkim zmarzluchom.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/lady_ginkgo_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, liście Miłorzębu dwuklapowego (Ginkgo biloba), papaja kandyzowana, kwiat słonecznika</p>\r\n', '', 2, 1),
(19, 3, 1, 1, 24, 'Tien Mate Tea', 'tien_mate_tea', '<p>\r\n	Tien Mate Tea to mieszanka kultur. W jednej filiżance spotyka się klasyczna japońska Sencha z południowoamerykańską Yerba Mate. Z tego niecodziennego związku otrzymujemy aromatyczny i pełen zdrowia herbaciany napar.<br />\r\n	<br />\r\n	Jest to świetna propozycja dla os&oacute;b, kt&oacute;re doceniają zdrowotne walory Yerba Mate, ale nie przepadają za jej specyficznym smakiem. Dodatki w postaci cząstek pomarańczy i mango łagodnie orzeźwiają napar.<br />\r\n	<br />\r\n	Yerba Mate przygotowuje się z liści ostrokrzewu paragwajskiego. Ceniona jest ze względu na szereg witamin i minerał&oacute;w występujących w jej składzie. Znamienne są r&oacute;wnież jej właściwości pobudzające. Dzięki zawartości kofeiny, likwiduje objawy zmęczenia, zwiększa sprawność fizyczną i intelektualną oraz poprawia koncentracje. Miłośnicy Mate uwielbiają ją r&oacute;wnież za właściwości odchudzające- poprawia perystaltykę jelit, przyspiesza przemianę materii oraz oczyszcza organizm z toksyny.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/tien_Mate_Tea.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, Yerba Mate, kawałki pomarańczy, mango kandyzowane, jabłko</p>\r\n', '', 2, 0),
(20, 3, 1, 1, 30, 'Green Pepper', 'green_pepper', '<p>\r\n	Green Pepper to napar o niecodziennym charakterze. Degustowanie go możemy por&oacute;wnać do wędr&oacute;wki po kolorowym arabskim bazarze pełnym wonnych, orientalnych przypraw.<br />\r\n	<br />\r\n	Oryginalność naparu uzyskana jest dzięki połączeniu aromatycznych nut korzennych ze smakiem czerwonego pieprzu. Nap&oacute;j o nietypowym, lekko pikantnym smaku, może stanowić miłą odmianę od dobrze znanych owocowych kompozycji.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Green_Pepper_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, czerwony pieprz, cynamon, goździk, kwiat słonecznika</p>\r\n', '', 2, 0),
(21, 3, 1, 1, 12, 'Owocowy Mus', 'owocowy_mus', '<p>\r\n	Owocowy Mus to apetyczna mieszanka doznań. Nap&oacute;j przyciąga zar&oacute;wno pięknym wyglądem, jak i bogactwem dodatk&oacute;w. Herbata lekka, o idealnie wyważonych proporcjach. Kunsztowne połączenie świeżych cytrus&oacute;w ze słodką maliną, przełamane cierpką porzeczkową nutą. Podstawę naparu stanowi zielona Sencha oraz Honeybush - gatunek spokrewniony z Rooibos o miodowym smaku i orzeźwiającej nucie zapachowej.<br />\r\n	<br />\r\n	Owocowy Mus urzeka swoimi walorami. Obfitość dodatk&oacute;w i apetyczny smak, czynią z tej herbaty idealny prezent, kt&oacute;ry zaspokoi oczekiwania nawet najbardziej wymagających smakoszy.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/owocowy_mus_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, honeybush, malina, kwiat i owoc pomarańczy, porzeczka, sk&oacute;rka grejpfruta, bławatek</p>\r\n', '', 2, 0),
(22, 3, 1, 1, 2, 'Tien Jaśmin Tea', 'tien_jasmin_tea', '<p>\r\n	Herbata jaśminowa to wyjątkowo szlachetny napar. Jej historia zaczyna się 800 lat temu na dworze chińskiej dynastii Song, kt&oacute;rej członkowie delektowali się herbatą aromatyzowaną kwiatem jaśminu. Od tamtego czasu ten unikalny i wyrafinowany nap&oacute;j cieszy się niesłabnącą popularnością, zyskując miano jednej z najbardziej cenionych herbat świata.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Sencha jaśminowa zaskarbiła sobie uznanie wielu koneser&oacute;w. Powstaje ona na drodze mieszania herbacianych listk&oacute;w z kwiatem jaśminu, kt&oacute;ry przesyca je słodkim aromatem. Smak naparu dodatkowo wzbogacony jest jaśminowymi płatkami.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Według podań chińskich mędrc&oacute;w czarka jaśminowej herbaty potrafi ukoić nawet najbardziej skołataną duszę.&nbsp; Jaśminowy napar uspokaja oraz wprowadza w stan r&oacute;wnowagi i wewnętrznej harmonii. To chwila wyciszenia i oderwania od chaosu świata...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/tien_jasmin_tea_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, płatki jaśminu</p>\r\n', '', 2, 0),
(23, 2, 1, 1, 22, 'Kalifornijska Pomarańcza', 'kalifornijska_pomarancza', '<p>\r\n	Aromatyczny nap&oacute;j na bazie czarnej herbaty cejlońskiej. Sk&oacute;rka pomarańczy oraz naturalny aromat z czerwonych pomarańczy nadają naparowi słodki i delikatny smak. Przyjemny dla oka herbaciany kolor urozmaicają czerwone niteczki safloru.<br />\r\n	<br />\r\n	Kalifornijska Pomarańcza przypadnie do gustu sympatykom słodkich, soczystych i rozpływających się w ustach pomarańczy.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Kalifornijska_Pomarańcza_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, sk&oacute;rka pomarańczy, saflor</p>\r\n', '', 2, 0),
(24, 2, 1, 1, 10, 'Morelowa Trufla', 'morelowa_trufla', '<p>\r\n	Trufle to najdroższy i najbardziej pożądany produkt świata. Cenione są przede wszystkim ze względu na sw&oacute;j unikatowy zapach- to on nadaje ton potrawom, do kt&oacute;rych trufle są dodawane.<br />\r\n	<br />\r\n	Morelowa Trufla charakteryzuje się bogatym smakiem i pełnym aromatem. Słodki, morelowy napar pachnący truflami i drzewem sandałowym to wykwintna mieszanka, dzięki kt&oacute;rej poczujesz się wyjątkowo.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Morelowa_Trufla_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi &quot;odkryciami&quot;.</p>\r\n', '<p>\r\n	Czarna herbata, morela, aromat truflowy</p>\r\n', '', 2, 1),
(25, 2, 1, 1, 13, 'Very Cherry Rum', 'very_cherry_rum', '<p>\r\n	Very Cherry Rum to napar, kt&oacute;ry skradł niejedno serce! Jest to niezwykle wonna mieszanka o pięknej bordowej barwie. Podczas każdego łyku, wyczuwamy słodki posmak wiśni i intensywny rumowy aromat. Uzupełnieniem smakowym bukietu są rubinowe płatki hibiskusa.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Very Cherry Rum to klasyczne i kultowe herbaciane połączenie. Reprezentuje herbaty o nasyconej energii. Cechuje się rozluźniającymi i rozgrzewającymi właściwościami, dzięki czemu stanowi świetne dopełnienie wieczornych rozm&oacute;w przy kominku.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Very_Cherry_Rum_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi &quot;odkryciami&quot;.</p>\r\n', '<p>\r\n	Czarna herbata, wiśnia, hibiskus, aromat rumowy</p>\r\n', '', 2, 0),
(26, 3, 1, 1, 24, 'Sencha Strzała Amora', 'sencha_strzala_amora', '<p>\r\n	Sencha Strzała Amora to herbata, kt&oacute;ra ma w sobie to &quot;coś&quot;. To pełnia owocowo - kwiatowych aromat&oacute;w doprawiona przyjemną słodyczą cukrowych serduszek, rozpływających się powoli w naparze.<br />\r\n	<br />\r\n	Sencha Strzała Amora to niewinny flirt Wino-gronowego Grona z Czerwonym Serduszkiem. Nap&oacute;j o łagodnym winogronowo- landrynkowym smaku i słodkiej nucie zapachowej zaskakuje i zachwyca. Wyśmienicie sprawdzi się jako podarunek- nie tylko dla ugodzonych strzałą Amora:-)</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Sencha_Strzala_ Amora.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, cukrowe serduszka, rodzynki, płatki malwy i słonecznika</p>\r\n', '', 2, 0),
(27, 3, 1, 1, 33, 'Pięć Zielonych Pereł', 'piec_zielonych_perel', '<p>\r\n	Pięć Zielonych Pereł to zestaw wysoko cenionych herbacianych odmian w jednej filiżance. Napar tworzą następujące gatunki:<br />\r\n	<br />\r\n	<strong>Sencha</strong>- klasyka wśr&oacute;d japońskich zielonych herbat o intensywnym smaku i aromacie<br />\r\n	<br />\r\n	<strong>Gunpowde</strong>r &ndash; wysokogatunkowa chińska zielona herbata o liściach ciasno zwiniętych w drobne kulki, kt&oacute;re rozwijają się podczas parzenia. Charakteryzuje się lekko ziołowym i cierpkim smakiem<br />\r\n	<br />\r\n	<strong>Chun Mee </strong>&ndash; jest rodzajem zielonej herbaty pochodzącej z chińskiej prowincji Jiangxi. Potocznie zwana&nbsp; &bdquo;drogocennymi brwiami&rdquo; albo &bdquo;rzęsami ślicznotki&rdquo;. To herbata o zdecydowanym smaku. Zawiera dużą ilość teiny, dzięki czemu jest niezwykle pobudzająca i orzeźwiająca<br />\r\n	<br />\r\n	<strong>Pai Mu Tan</strong> &ndash; &bdquo;Biała piwonia&rdquo;- Klasyka białej herbaty o łagodnym, lekko kwaskowatym smaku i gładkim aromacie. Jej liście pokryte są srebrnym puszkiem.<br />\r\n	<br />\r\n	<strong>Pi Lo Chun</strong> &ndash; jest jedną z najsłynniejszych chińskich zielonych herbat. Rośnie w otoczeniu krzew&oacute;w i drzew owocowych, co znacznie wpływa na jej smak i aromat. Liście Pi Lo Chun zwijane są ręcznie w maleńkie, lekko poskręcane spirale z delikatnym puszkiem i srebrno - złotymi tipsami. Napar cechuje się słodkim i świeżym smakiem oraz miodową barwą.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Ta niecodzienna herbaciana kompozycja charakteryzuje się delikatnym i harmonijnym smakiem. Napar wzbogacony jest kawałkami ananasa, plastrami liofilizowanej truskawki oraz płatkami słonecznika. Nap&oacute;j wyśmienicie smakuje zar&oacute;wno na ciepło, jaki i po wystudzeniu, ze względu na brak typowej dla zielonych herbat goryczki.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Piec_Zielonych_Perel_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong>&nbsp; 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielone herbaty: Sencha, Gunpowder, Chun Mee, Pai Mu Tan, Pi Lo Chun, ananas kandyzowany, truskawka liofilizowana, kwiat słonecznika</p>\r\n', '', 2, 0),
(28, 2, 1, 1, 21, 'Jak w Ulu', 'jak_w_ulu', '<p>\r\n	Niewątpliwa gratka dla sympatyk&oacute;w łakoci! Miodowy nap&oacute;j pełen kuszących aromat&oacute;w ma siłę łączącą pokolenia- przypadnie do gustu zar&oacute;wno dzieciom, jak i dorosłym.<br />\r\n	<br />\r\n	Słodki aromat Jak w Ulu zawdzięcza kostkom toffe (można ich skosztować jeszcze przed zalaniem!) oraz delikatnie palonemu cukrowi. Smak napoju jest idealnie wyważony- słodki, lecz nie przesadzony. Kwiatowe dodatki wzbogacają napar i ożywiają jego barwę o optymistyczne, ż&oacute;łte akcenty.<br />\r\n	<br />\r\n	Filiżanka Jak w Ulu świetnie zaspokoi gł&oacute;d na &quot;coś słodkiego&quot;, jednocześnie unikając przy tym&nbsp; zbyt dużej ilości kalorii.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Jak_w_Ulu_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, kostki toffi, cukier palony, płatki słonecznika oraz płatki nagietka, całość przyprawiona kwiatem jaśminu</p>\r\n', '', 2, 1),
(29, 2, 1, 1, 18, 'Tien Tiramisu Tea', 'tien_tiramisu_tea', '<p>\r\n	Świat dzieli się na miłośnik&oacute;w kawy i entuzjast&oacute;w herbaty. Czy istnieje nap&oacute;j, kt&oacute;ry zadowoli jednych i drugich?<br />\r\n	<br />\r\n	Tien Tiramisu Tea to niepowtarzalne połączenie świeżo parzonej kawy z filiżanką herbacianego napoju. W naparze można doszukać się słodkich dodatk&oacute;w w postaci kostek toffe i palonego cukru. Całość okraszona jest czekoladowym akcentem dopełniającym smakowe doznania.&nbsp;<br />\r\n	<br />\r\n	Tien Tiramisu Tea to przepyszna herbata deserowa, kt&oacute;rej filiżanka osłodzi poobiednią sjestę- bez wyrzut&oacute;w sumienia!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Tien_Tiramisu_Tea_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, ziarno kawy, toffi, cukier palony, kawałki czekolady</p>\r\n', '', 2, 0),
(30, 2, 1, 1, 11, 'Earl Grey Blue', 'earl_grey_blue', '<p>\r\n	Mieszanka herbat cejlońskich BOP 1 ciesząca się uznaniem nawet najbardziej wymagających koneser&oacute;w. Napar o bursztynowej barwie i ożywczym smaku wzbogacony cytrusowym aromatem olejku z pomarańczy bergamoty oraz płatkami bławatka. Prawdziwa herbaciana arystokratka!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Earl_grey_blue_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, płatki bławatka, olejek bergamoty</p>\r\n', '', 2, 0),
(31, 2, 1, 1, 1, 'Słodki Pudding', 'slodki_pudding', '<p>\r\n	Egzotyczne przyprawy: imbir, wanilia i cynamon sprawiają, że dobrze znana czarna herbata nabiera orientalnego charakteru. Korzenna nuta wzbogacona jest sk&oacute;rką pomarańczy oraz kwiatowym akcentem w postaci płatk&oacute;w r&oacute;ży, dryfujących po powierzchni bursztynowego naparu.<br />\r\n	<br />\r\n	Aromatyczne dodatki znakomicie wsp&oacute;łgrają ze sobą, tworząc nap&oacute;j o kojącym zapachu i niezwykle gładkim, budyniowo - śmietankowym posmaku. Każdy kolejny łyk pozostawia w ustach przyjemnie wspomnienie skosztowanego naparu.<br />\r\n	<br />\r\n	W chłodne wieczory, filiżanka parującego napoju znakomicie rozgrzeje i wprawi w stan błogiego uniesienia...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Slodki_ Pudding_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, imbir, wanilia, cynamon, pomarańcza, płatki r&oacute;ż</p>\r\n', '', 2, 0),
(32, 2, 1, 1, 5, 'Ceylon Mint', 'ceylon_mint', '<p>\r\n	Ceylon Mint to herbata o wyrazistym charakterze. Napar, na bazie czarnej herbaty liściastej, cechuje się mocnym i nasyconym smakiem. Dominującą nutę stanowi mięta oraz trawa cytrynowa, kt&oacute;rych odświeżający smak pozostaje w ustach na długo. Na drugim tle sytuuje się delikatnie wyczuwalny cytrusowy akcent.<br />\r\n	<br />\r\n	Ceylon Mint usatysfakcjonuje koneser&oacute;w zdecydowanych smak&oacute;w, miłośnik&oacute;w mięty oraz entuzjast&oacute;w Odjechanej Mięty.&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/ceylon mint_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, trawa cytrynowa, liść mięty, owoc i kwiat pomarańczy, całość dopieszczona cytrusowym aromatem</p>\r\n', '', 2, 0),
(33, 2, 1, 1, 3, 'Choco Irish Cream', 'choco_irish_cream', '<p>\r\n	Mieszanka o niezwykle kuszącym smaku i aromacie. Sw&oacute;j doborowy charakter Choco Irish Cream zawdzięcza aromatowi znanego i cenionego likieru Irish Cream powstałego z połączenia irlandzkiej whisky oraz świeżej śmietanki. Bursztynowy napar wzbogacony jest czekoladowymi guziczkami, kt&oacute;re okraszają całość słodką nutą.<br />\r\n	<br />\r\n	Choco Irish Cream przypadnie do gustu wszystkim lubiącym słodkie desery oraz kremy alkoholowe o smaku czekoladowym. Naszym zadaniem podbije r&oacute;wnież podniebienia entuzjast&oacute;w Morelowej Trufli.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Choco_Irish_Cream_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata z kawałkami czekolady, aromat whisky-śmietankowy</p>\r\n', '', 2, 1),
(34, 4, 1, 1, 7, 'Pu-Erh  Exotic', 'pu-erh_exotic', '<p>\r\n	Pu-Erh Exotic to mieszanka na bazie odchudzającej czerwonej herbaty Pu-Erh, kt&oacute;rej głęboki aromat oraz nieco ziemisty smak został złagodzony kawałkami egzotycznego ananasa oraz płatkami r&oacute;ży i słonecznika.<br />\r\n	<br />\r\n	Degustacja&nbsp; Pu-Erh Exotic opr&oacute;cz przyjemnych doznań smakowych, przynosi r&oacute;wnież wymierne korzyści dla naszego zdrowia. Napar wypity trzydzieści minut po obfitym posiłku niweluje uczucie przejedzenia oraz pomaga w walce ze zbędnymi kaloriami.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Pu-Erh Exotic polecamy osobą chcącym osiągnąć smukłą sylwetkę, ale nieprzepadającym za ziemistym smakiem i zapachem czerwonej herbaty. Dzięki kawałkom kandyzowanego ananasa, Pu-Erh Exotic ma przyjemny słodko-egzotyczny smak i aromat.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Pu-Erh Exotic to odchudzanie w tropikalnym wydaniu!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Pu-erh_Exotic_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-erh, ananas, płatki r&oacute;ży, kwiat słonecznika</p>\r\n', '', 2, 0),
(35, 4, 1, 1, 3, 'Pu-Erh Cytrus-Mint', 'pu-erh_cytrus-mint', '<p>\r\n	<font>Pu-Erh Cytrus-Mint to kompozycja bazująca na czerwonej herbacie Pu-Erh wzbogaconej orzeźwiającymi dodatkami w postaci: mięty syryjskiej, peruwiańskiej Muny, kawałk&oacute;w pomarańczy oraz sk&oacute;rki cytrynowej.<br />\r\n	<br />\r\n	Podobnie jak każdy Pu-Erh, r&oacute;wnież ta mieszanka, pita regularnie, ma dużą skutecznością w zakresie redukcji zbędnej tkanki tłuszczowej.&nbsp; Pozytywne działanie czerwonej herbaty Pu-Erh zostało wzmocnione peruwiańskim ziołem </font><font>Muna-Muna</font><font>.<br />\r\n	<br />\r\n	Muna-Muna rozpowszechniona jest w p&oacute;łnocnej części Ameryki Południowej. Jej gł&oacute;wnym składnikiem jest olejek o zapachu miętowym, kt&oacute;remu zawdzięcza sw&oacute;j przyjemny smak i aromat. Stosowana jest w celu wspomagania proces&oacute;w trawiennych, ponadto łagodzi dolegliwości jelitowe i objawy kolki.<br />\r\n	<br />\r\n	Regularne picie Pu-Erh Cytrus-Mint pomaga w walce z niechcianymi kilogramami oraz wpływa korzystnie na nasze samopoczucie, likwidując uczucie ciężkości i przejedzenia.</font></p>\r\n', 'http://www.test.tientea.pl/img/produkty/Pu-Erh_Cytrus-Mint_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-Erh,<font> Muna-Muna</font>, mięta syryjska, kawałki pomarańczy, sk&oacute;rka cytrynowa</p>\r\n', '', 2, 0),
(38, 4, 1, 1, 1, 'Pu-Erh Slim', 'pu-erh_slim', '<p>\r\n	<font>Pu-Erh Slim to odchudzający mix czerwonej herbaty z yerbą mate wzmocniony grejpfrutową siłą, kt&oacute;ry stanowi doskonałe uzupełnienie zbilansowanej diety i zdrowego stylu życia.<br />\r\n	<br />\r\n	Czerwona herbata Pu-Erh, zwana &bdquo;mordercą tłuszczu, cieszy się na całym świecie niebywałym powodzeniem ze względu na właściwości wspomagające redukcję nadmiaru tkanki tłuszczowej. Badania naukowe dowiodły r&oacute;wnież, że południowoamerykańska Yerba Mate przyspiesza metabolizm, blokuje wchłanianie tłuszczu, usprawnia proces przemiany materii, w efekcie czego skutecznie wspiera odchudzanie i pomaga utrzymać prawidłową masę ciała.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Pu-Erh Slim to kompozycja, w kt&oacute;rej typowy smak czerwonej herbaty został złagodzony orzeźwiającą grejpfrutowo-pomarańczową nutą. </font></p>\r\n', 'http://www.test.tientea.pl/img/produkty/pu-erh_slim_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-erh, yerba mate zielona, kawałki pomarańczy, jabłko, aromat grapefruitowy</p>\r\n', '', 2, 0);
INSERT INTO `products` (`product_id`, `category_id`, `subcategory_id`, `unit_id`, `product_order`, `product_name`, `product_alias`, `product_description`, `photo`, `smal_photo`, `tab1`, `tab2`, `tab3`, `active_tab_id`, `is_gratis`) VALUES
(40, 5, 1, 1, 4, 'Roobios Wspomnienie Lata', 'rooibos_wspomnienie_lata', '<p>\r\n	Rooibos Wspomnienie Lata to smak wakacyjnych chwil ukryty w filiżance herbaty. Każdy kolejny łyk apetycznego naparu przywodzi na myśl obraz letnich, leniwych dni.<br />\r\n	<br />\r\n	Plastry soczystej truskawki, owoc smakowitej porzeczki, pyszne jabłuszko oraz barwne kwiatowe akcenty tworzą nap&oacute;j pełen słońca i słodyczy, kt&oacute;remu towarzyszy delikatna porzeczkowa cierpkość.&nbsp;<br />\r\n	<br />\r\n	Rooibos Wspomnienie Lata posmakuje wielbicielom lekkich, lecz głębokich owocowych aromat&oacute;w. Nap&oacute;j znakomity zar&oacute;wno na ciepło, jak i po wystudzeniu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rooibos_Wspomnienie_Lata_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, plastry truskawek liofilizowanych, kawałki jabłka, owoc porzeczki liofilizowanej, płatki słonecznika i bławatka</p>\r\n', '', 2, 0),
(42, 5, 1, 1, 5, 'Rooibos Vanilla Tea', 'rooibos_vanilla_tea', '<p>\r\n	Wyśmienity waniliowy aromat, kapitalny waniliowy smak!<br />\r\n	<br />\r\n	Klasyczny miodowy aromat Rooibos wzbogacony kawałkami prawdziwej wanilii to uczta dla zmysł&oacute;w.<br />\r\n	<br />\r\n	Urzekający smak Rooibos Vanilla Tea przypadnie do gustu zar&oacute;wno dzieciom, jak i dorosłym. Rooibos jest herbatą bezteinową, dlatego spożywanie jej, nawet w znacznych ilościach, jest całkowicie bezpieczne dla os&oacute;b w każdym wieku.<br />\r\n	<br />\r\n	Ze względu na swoje właściwości i niepowtarzalne walory smakowe, filiżanka Rooibos Vanilla Tea znakomicie dopełni atmosferę każdego rodzinnego spotkania.<br />\r\n	&nbsp;</p>\r\n<h3>\r\n	Szanowni Klienci!</h3>\r\n<h3>\r\n	Aby uprzyjemnić Wam degustację Rooibos Vanilla Tea, do każdego opakowania 100 i 200 gramowego dołączamy w prezencie laskę prawdziwej wanilii.</h3>\r\n<p>\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rooibos_Vanilla_Tea_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, kawałki wanilii</p>\r\n', '', 2, 0),
(41, 5, 1, 1, 3, 'Rooibos Czekolada z Pomarańczą', 'rooibos_czekolada_z_pomarancza', '<p>\r\n	Rooibos Czekolada z Pomarańczą to kombinacja barw, smak&oacute;w i zapach&oacute;w.<br />\r\n	<br />\r\n	Ma delikatny, lecz nasycony smak z wyczuwalną czekoladową nutą, kt&oacute;ry uzupełniony jest plastrami soczystej pomarańczy. Ze względu na sw&oacute;j słodko-owocowy aromat Rooibos Czekoladę z Pomarańczą polecamy w szczeg&oacute;lności dzieciom. Będzie to dla nich zar&oacute;wno porcja zdrowia, jak i smaczne co nieco.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rooibos_Czekolada_z_Pomarancza_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, plastry pomarańczy, płatki r&oacute;ż, aromat czekoladowy, płatki bławatka i słonecznika</p>\r\n', '', 2, 0),
(43, 3, 1, 1, 32, 'Charlize', 'charlizeasdasd', '<p>\r\n	Tien faworytka! Choć jesteśmy miłośnikami wszystkich Tien herbat, to Charlize zajmuje w naszym sercu szczeg&oacute;lne miejsce! Swoją nazwę zawdzięcza największej fance tego przepyszne naparu - wsp&oacute;łwłaścicielce sklepu Karolinie.&nbsp;<br />\r\n	<br />\r\n	W momencie otwarcia herbacianej paczuszki nasze nozdrza wypełnia anyżkowa woń. Podziwiając susz, zobaczymy: kawałki słodkiej pomarańczy, rodzynki, strączki kardamonu, aromatyczny goździk, anyżowe gwiazdki, r&oacute;żane płatki i kawałki przepysznej czekolady, kt&oacute;rej nie spos&oacute;b oprzeć się jeszcze przed zlaniem. Składniki Charlize tworzą niezwykle czarującą kompozycję smakowo - zapachową.&nbsp;<br />\r\n	<br />\r\n	Charlize to miłość od pierwszego skosztowania! Nadzwyczajnie bogaty aromat, delikatny, nasycony smak, kt&oacute;ry nie spos&oacute;b opisać słowami. Herbata, kt&oacute;ra kusi, zdobywa i na długo pozostaje w pamięci...<br />\r\n	<br />\r\n	Czy uważasz tak samo?</p>\r\n', '', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, kawałki pomarańczy, gwiazdy anyżu, kardamon, goździki, kawałki czekolady, płatki r&oacute;ży</p>\r\n', '', 2, 0),
(44, 3, 1, 1, 27, 'Sencha Pigwa', 'sencha_pigwa', '<p>\r\n	Pigwa to nieoceniona skarbnica witaminy C - zawiera jej więcej niż cytryna! Ceniona ze względu na walory smakowe i przetw&oacute;rcze. To doskonały dodatek do herbaty, kt&oacute;ry w połączeniu z zieloną Senchą, kawałkami ognistego imbiru i sk&oacute;rką pomarańczy tworzy niewiarygodne smakowite połączenie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Sencha_pigwa_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, korzeń imbiru, sk&oacute;rka pomarańczowa, pigwa kandyzowana</p>\r\n', '', 2, 0),
(45, 1, 1, 1, 5, 'Pai Mu Tan Romance', 'pai_mu_tan_romance', '<p>\r\n	Szlachetna biała herbata Pai Mu Tan (Biała Piwonia) wytwarzana jest ze starannie wyselekcjonowanych srebrno-białych pąk&oacute;w oraz młodych liści. Ręcznie zbierane, otoczone niezwykłą troskliwością dają napar o złocistym kolorze i wykwintnym aromacie. Znakomitym dopełnieniem aksamitnej Białej Piwonii są jedwabiste płatki r&oacute;ż. Powstały nap&oacute;j to gustowna kompozycja o &quot;miękkim&quot; smaku i wyraźnie wyczuwalnej kwiatowej nucie bez cienia goryczki.<br />\r\n	<br />\r\n	Wysublimowany smak Pai Mu Tan Romance podbije serca wielbicieli herbacianych napar&oacute;w o delikatnym, lecz unikatowym charakterze. Pai Mu Tan Romance to luksus, piękno i elegancja zawarta w jednej małej filiżance...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pai_ mu_ tan_ romance_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 70-85 stopni C<br />\r\n	<strong>Ilość: </strong>1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Ten sam susz można zaparzyć trzykrotnie. Każdorazowo listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '<p>\r\n	Biała herbata Pai Mu Tan, płatki r&oacute;ży</p>\r\n', '', 2, 0),
(46, 5, 1, 1, 2, 'Rooibos Choco Chili', 'rooibos_choco_chili', '<p>\r\n	Nap&oacute;j Choco Chili Rooibos łączy w sobie głębokie tony słodkiej czekolady z pikantnym akcentem, kt&oacute;ry narasta w miarę stygnięcia naparu. Intrygująca kompozycja urozmaicona kawałkami jabłka, egzotycznym kardemonem oraz płatkami słonecznika przyjemnie drażni podniebienie.<br />\r\n	<br />\r\n	Choco Chili Rooibos to mieszanka o nieprzeciętnym charakterze. Bazę bursztynowego naparu stanowi tzw. herbata życia &ndash; Rooibos, kt&oacute;ra powstała z liści czerwonokrzewu afrykańskiego. Jej niewątpliwą zaletą jest brak substancji pobudzających- kofeiny i teiny (znakomita dla kobiet w ciąży, matek karmiących, dzieci oraz os&oacute;b starszych!). Rooibos działa kojąco na układ nerwowy oraz dostarcza organizmowi kompedium witamin i soli mineralnych.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rooibos_Choco_Chilli_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, kawałki jabłka, kawałki czekolady, pieprz r&oacute;żowy, kardamon, kwiat słonecznika</p>\r\n', '', 2, 0),
(48, 2, 1, 1, 9, 'Czas na relaks', 'czas_na_relaks', '<p>\r\n	&quot;Herbatę się pija, by zapomnieć o hałasie świata&quot;... Czy istnieje zatem coś przyjemniejszego po ciężkim i stresującym dniu pracy od filiżanki aromatycznego naparu?<br />\r\n	<br />\r\n	Czas na Relaks swoje kojące właściwości zawdzięcza znanemu i cenionemu &quot;uspokajaczowi&quot; - melisie. Łagodzi ona napięcie nerwowe oraz przeciwdziała wszelkim dolegliwością z nim związanym- uśmierza b&oacute;le głowy, spowalnia zbyt szybkie bicie serca, ułatwia zasypianie.<br />\r\n	<br />\r\n	Czas na relaks to chwila odprężenia, kt&oacute;rej towarzyszy przyjemny owocowy aromat uzyskany dzięki dodatkom w postaci: hibiskusa, jabłka, sk&oacute;rki r&oacute;ży, truskawki oraz sk&oacute;rki pomarańczy i cytryny.<br />\r\n	<br />\r\n	Relaksujący napar o odświeżającej nucie polecamy wszystkim pragnącym wyciszenia oraz ukojenia duszy i ciała...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Czas_na_relaks_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi &quot;odkryciami&quot;.</p>\r\n', '<p>\r\n	Czarna herbata, melisa, hibiskus, jabłko, sk&oacute;rka r&oacute;ży, sk&oacute;rka pomarańczy i cytryny, truskawka</p>\r\n', '', 2, 1),
(49, 2, 1, 1, 25, 'Malinowo-Waniliowa Konfitura', 'malinowo-waniliowa_konfitura', '<p>\r\n	Wyborny napar, w kt&oacute;rym czarnej herbacie cejlońskiej towarzyszą suszone owoce maliny i kawałki wanilii.<br />\r\n	<br />\r\n	Parujący nap&oacute;j przywodzi na myśl smak herbaty, w kt&oacute;rej Babcia rozpuściła konfiturę, czyniąc z niej napar pełen troski, ciepła i serdeczności...<br />\r\n	<br />\r\n	Słodki, a jednocześnie trochę cierpki smak maliny znakomicie komponuje się z kremowym aromatem wanilii. Filiżanka ciepłego napoju dopełni chwile wieczornego relaksu z książką, ciekawym filmem lub ulubioną muzyką.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/malinowo-waniliowa_konfitura_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, owoc maliny, kawałki wanilii</p>\r\n', '', 2, 0),
(50, 5, 1, 1, 6, 'Rooibos Kremowa Brzoskwinia', 'rooibos_kremowa_brzoskwinia', '<p>\r\n	Rooibos Kremowa Brzoskwinia to bogactwo owocowych smak&oacute;w w jednej filiżance. Dominującą nutę stanowi ostro-słodki aromat brzoskwini, kt&oacute;ry doskonale komponuje się z naturalnie słodkim smakiem herbaty Rooibos. Całość doznań dopełnia bukiet apetycznych owoc&oacute;w- pomarańczy, aronii, maliny, truskawki oraz jeżyny. Kwiat jaśminu stanowią idealne zwieńczenie pełnego słońca naparu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Rooibos_Kremowa_ Brzoskwinia_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, pomarańcza, aronia, malina, truskawka, brzoskwinia, jeżyna, kwiat jaśminu</p>\r\n', '', 2, 0),
(51, 5, 1, 1, 1, 'Uspokajająca', 'uspokajajaca', '<p>\r\n	Herbata o wyciszającym potencjale. Uspakajająca kompozycja na bazie czerwonokrzewu afrykańskiego Rooibos z dodatkiem melisy, sk&oacute;rki pomarańczy, hibiskusa i sk&oacute;rki r&oacute;ży.<br />\r\n	<br />\r\n	Napar o przyjemnym, pomarańczowym aromacie łagodzi i relaksuje. Ze względu na zawartość melisy oraz brak substancji pobudzających- Rooibos wolna jest od kofeiny i teiny- filiżanka uspokajającego naparu znakomicie sprawdzi się przed snem.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Uspokajajaca_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>ok. 95 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki<br />\r\n	<strong>Czas parzenia: </strong>4-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie tego samego suszu.<br />\r\n	Napar można posłodzić bądź dodać do niego plasterek cytryny. Z uwagi na mały rozmiar igiełek Rooibos, kt&oacute;re z łatwością unoszą się na powierzchni, do przygotowania napoju zalecamy użycie specjalnego zaparzacza.<br />\r\n	<br />\r\n	Rooibos można pić zar&oacute;wno na ciepło, jak i w postaci mrożonego napoju.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <b>Rooibos Ice Drink</b><br />\r\n	3 łyżki stołowe suszu zalać 1 litrem wrzątku. Po zaparzeniu napar przecedzić, ostudzić, dodać łyżkę miodu i sok z płowy cytryny. Całość dokładnie wymieszać, po czym wstawić na kilka godzin do lod&oacute;wki.</p>\r\n', '<p>\r\n	Rooibos, melisa, sk&oacute;rka pomarańczy, hibiskus, sk&oacute;rka r&oacute;ży</p>\r\n', '', 2, 0),
(52, 4, 1, 1, 4, 'Pu-Erh Czerwona Wiśnia', 'pu-erh_czerwona_wisnia', '<p>\r\n	Moc czerwonej herbaty Pu-Erh wzbogacona wiśnią, czarną porzeczką i hibiskusem.<br />\r\n	<br />\r\n	Pu-Erh Czerwona Wiśnia to starannie wyważona kompozycja, kt&oacute;ra łączy w sobie walory odchudzające i smakowe. Typowa dla Pu-Erha ziemistość została zniwelowana smakiem aromatycznej wiśni, kt&oacute;ry pozostaje w ustach na długo po wypiciu i przeciąga chwile delektowania się apetycznym naparem.<br />\r\n	<br />\r\n	Pu-Erh Czerwona Wiśnia to kolejna propozycja dla os&oacute;b pragnących zgubić zbędne kilogramy.&nbsp; Napar wypity trzydzieści minut po posiłku likwiduje uczucie sytości, zaś pity regularnie pomaga w redukcji wagi i umożliwia wymianę garderoby na kilka rozmiar&oacute;w mniejszą:-)</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Pu-Erh_Czerwona_Wisnia_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-erh, wiśnia, czarna porzeczka, hibiskus</p>\r\n', '', 2, 0),
(53, 4, 1, 1, 9, 'Pu-Erh Jeżynowo- Truskawkowy', 'pu-erh_jezynowo-truskawkowy', '<p>\r\n	Jeżyny i truskawki są esencją lata... Ich kolor, smak i aromat przywodzi na myśl rozgrzane promienie słońca.<br />\r\n	<br />\r\n	Pu-Erh Jeżynowo-Truskawkowy to letnia wariacja na temat odchudzającej herbaty Pu-Erh. Apetyczny smak jeżyn i truskawek wsp&oacute;łgra z korzennym aromatem czerwonej herbaty- uprzyjemnia go, ale nie zagłusza całkowicie. Dodatek w postaci liści maliny- posiadających właściwości oczyszczających organizm z toksyn- wzbogaca napar o dodatkowe wartości zdrowotne.<br />\r\n	<br />\r\n	Pu-Erh Jeżynowo-Truskawkowy przypadnie do gustu miłośnikom tradycyjnych polskich owoc&oacute;w oraz tym, kt&oacute;rzy lubią, gdy&nbsp; oryginalny posmak czerwonej herbaty jest wyczuwalny.&nbsp;<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Pu-Erh_Jezynowo-Truskawkowy_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-erh, jeżyna, truskawka, liść maliny</p>\r\n', '', 2, 0),
(54, 2, 1, 1, 6, 'Czerwone Serduszko', 'czerwone_serduszko', '<p>\r\n	Czerwone Serduszko to odrobina miłości zamknięta w herbacianej paczuszce. To szczypta rozkoszy wydobywająca się z parującego naparu. To dedykacja dla ukochanej osoby, przyjaci&oacute;ł, bliskich.<br />\r\n	<br />\r\n	Niezwykle urzekający związek czarnej herbaty z cukrowymi serduszkami wzbogacony truskawkowo - śmietankowym aromatem. Atrakcyjna kompozycja wizualna- gęsto usiane czerwone serduszka świetnie prezentują się na tle herbacianych listk&oacute;w. Zapach naparu nasycony jest słodką, truskawkową nutą.<br />\r\n	<br />\r\n	Cukrowe serduszka nadają herbacie wiele romantyzmu. Gorący napar najlepiej smakuje w towarzystwie bliskiej sercu osoby, w szczeg&oacute;lności podczas długich, miłosnych wieczor&oacute;w...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/czerwone_serduszko_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, serduszka cukrowe, szczypta romantyzmu:)</p>\r\n', '', 2, 0),
(55, 1, 1, 1, 2, 'Fujian White Kokos-Wanilia', 'fujian_white_kokos-wanilia', '<p>\r\n	Fujian White to wysokiej klasy biała herbata powstała z najmłodszych listk&oacute;w krzewu herbacianego. Delikatny meszek, kt&oacute;ry pokrywa srebrzysty susz świadczy o jego świeżości oraz szlachetności. Napar cechuje się słodkim aromatem oraz łagodnym smakiem.&nbsp;&nbsp;<br />\r\n	<br />\r\n	Fujian White Kokos-Wanilia łączy w sobie delikatność białej herbaty z nutą egzotycznego kokosa oraz kuszącą wanilią. Napar zachwyca lekkością oraz fantastycznym smakiem, kt&oacute;ry czule pieści podniebienie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/fujian_white_kokos-wanilia_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 70-80 stopni C<br />\r\n	<strong>Ilość: </strong>1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 7 minut<br />\r\n	Po zaparzeniu listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '<p>\r\n	Biała herbata Fujian White, wi&oacute;rki kokosowe, kawałki wanilii</p>\r\n', '', 2, 0),
(56, 2, 1, 1, 15, 'Lipa i Miód', 'lipa_i_miod', '<p>\r\n	&bdquo;Gościu, siądź pod mym liściem, a odpoczni sobie!&rdquo;...<br />\r\n	<br />\r\n	Już najwybitniejszy poeta polskiego renesansu opiewał niezwykłość drzewa lipowego. Trudno się temu dziwić. Miododajna lipa od dawna jest szeroko ceniona za swoje właściwości. Złocisty napar z wysuszonych kwiat&oacute;w jest niezawodnym domowym środkiem na przeziębienia.<br />\r\n	<br />\r\n	Lipa i Mi&oacute;d to herbata, kt&oacute;ra potrafi zauroczyć. W momencie otwarcia herbacianej paczuszki, spowije nas słodko-miodowy zapach. Kwiat lipy, rumianek oraz słonecznik nasycają napar ziołowo-roślinnym aromatem.<br />\r\n	<br />\r\n	Filiżanka aromatycznego naparu rozgrzeje w chłodne jesienno-zimowe wieczory. Polecamy delektować się nią przed snem, bo jak m&oacute;wiła lipa w wierszu Jana Kochanowskiego:<br />\r\n	<br />\r\n	&bdquo;...sprawić umiem snadnie,<br />\r\n	Że człowiekowi łacno słodki sen przypadnie.&rdquo;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Lipa_i_Miod_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, kwiat lipy, rumianek, płatki słonecznika, miodowa nuta</p>\r\n', '', 2, 0),
(57, 3, 1, 1, 4, 'Tien Żeń-szeń Tea', 'tien_zen-szen_tea', '<p>\r\n	Tien Żeń-szeń Tea łączy w sobie zdrowotne właściwości chińskiego żeń-szenia z walorami japońskiej Senchy. Napar, o delikatnym aromacie i przyjemnie ziołowym smaku, wzbogacony jest saflorem oraz kawałkami pomarańczy. Herbaciany susz odznacza się niesamowicie odświeżającym zapachem.<br />\r\n	<br />\r\n	Właściwości żeń-szenia, zwanego przez wielu wszechlekiem, zostały docenione już 4 tysiące lat temu.<br />\r\n	<br />\r\n	Żeń-szeń:<br />\r\n	- wzmacnia układ immunologiczny<br />\r\n	- wzmaga siły witalne organizmu<br />\r\n	- stymuluje układ nerwowy, dzięki czemu poprawia pamięć i koncentrację<br />\r\n	- zwiększa odporność na stres<br />\r\n	<br />\r\n	Jeżeli uważasz, że herbata ma nie tylko smakować, ale r&oacute;wnież wpływać korzystnie na nasze zdrowie, to Tien Żeń-szeń Tea jest trafnym wyborem! Aby w pełni skorzystać z dobroczynnych wartości naparu, zalecamy pić go regularnie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/tien_zen_szen_tea_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie</p>\r\n', '<p>\r\n	Zielona herbata Sencha, korzeń Żeń-szenia, kawałki pomarańczy, saflor, rumianek rzymski</p>\r\n', '', 2, 0),
(58, 3, 1, 1, 10, 'Sencha Słodki Granat', 'sencha_slodki_granat', '<p>\r\n	Granat jest od wiek&oacute;w symbolem płodności i obfitości. Po dziś dzień na greckich weselach rozgniata się owoc granatu- ma to zapewnić nowożeńcom dobrobyt, liczne potomstwo i szczęśliwe życie.<br />\r\n	<br />\r\n	Sencha Słodki Granat to herbata pełna owocowej energii. Słodki i orzeźwiający granat, soczysta truskawka, egzotyczna papaja oraz sk&oacute;rka cytryny tworzą &quot;wybuchową&quot; mieszankę smak&oacute;w i aromat&oacute;w! Napar przynosi przyjemne orzeźwienie.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/sencha_slodki_ granat_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, truskawka, cytryna kandyzowana, granat, papaja, płatki słonecznika</p>\r\n', '', 2, 0),
(59, 3, 1, 1, 15, 'Sencha Guarana', 'sencha_guarana', '<p>\r\n	Sencha Guarana to aromatyczny napar o cytrusowym zapachu oraz orzeźwiajcym smaku.<br />\r\n	<br />\r\n	Bazę naparu stanowi Guarana, kt&oacute;rej niezwykłe właściwości zauważyli Indianie żyjący w Amazonii. Spożywają ją po dziś dzień przed wyczerpującą pracą bądź długimi wyprawami, gdyż Guarana daje siłę i pokrzepienie.<br />\r\n	<br />\r\n	Guarana uznawana jest za największe znane źr&oacute;dło naturalnie występującej kofeiny (zawiera do trzech razy więcej kofeiny niż kawa!). Kofeina pochodząca z guarany, w przeciwieństwie do tej zawartej w herbacie czy kawie, jest lepiej przyswajana przez organizm. To znakomita propozycja dla os&oacute;b, kt&oacute;re unikają kawy, a cenią sobie jej stymulujące działanie. Guarana przynosi natychmiastowe orzeźwienia zar&oacute;wno umysłu, jak i ciała, kt&oacute;re utrzymuje się nawet do 6 godzin! Dlatego jest bardzo popularna wśr&oacute;d student&oacute;w, sportowc&oacute;w oraz wszystkich tych, kt&oacute;rzy potrzebują energii. Poza działaniem pobudzającym wspomaga r&oacute;wnież odchudzanie- ogranicza apetyt oraz wzmaga przemianę materii.<br />\r\n	<br />\r\n	Sencha Guarana stanowi znakomitą alternatywę dla kawy. Zachęcamy wszystkich kawoszy, i nie tylko, do spr&oacute;bowania!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/sencha_guarana_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, Guarana, płatki słonecznika</p>\r\n', '', 2, 0),
(60, 4, 1, 1, 5, 'Pu-Erh Cynamonowa Róża', 'pu-erh_cynamonowa_roza', '<p>\r\n	Cynamon i jabłko jest dobrze znanym, i przez wielu uwielbianym, połączeniem. Szarlotka, ryż z jabłkami i cynamonem, kompot jabłkowo-cynamonowy to niezapomniane smaki dzieciństwa.<br />\r\n	<br />\r\n	W Cynamonowej R&oacute;ży ten tradycyjny duet został wzbogacony r&oacute;żanym aromatem oraz płatkami migdał&oacute;w. Napar pełen naturalnej słodyczy oraz odchudzającego potencjału.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pu-erh_cynamonowa_roza_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier neutralizuje większość jej leczniczych właściwości.<br />\r\n	&nbsp;</p>\r\n', '<p>\r\n	Pu-erh, cynamon, jabłko, płatki migdał&oacute;w, płatki r&oacute;ży</p>\r\n', '', 2, 0),
(61, 3, 3, 1, 19, 'Kokeicha', 'kokeicha', '<p>\r\n	Kokeicha pochodzi z położonej w środkowej Japonii prefektury Shizuoka. Odmiana ta charakteryzuje się złotozielonym naparem o nieco mętnej konsystencji. Kokeicha nie należy do typowych herbat, gdyż przygotowywana jest w niecodzienny spos&oacute;b. Sproszkowane liście miesza się ze sproszkowanym ryżem, następnie zbija i przeciska przez specjalne sito, uzyskując w ten spos&oacute;b charakterystyczne &bdquo;igiełki&rdquo;.<br />\r\n	<br />\r\n	W naparze wyczuwalna jest goryczka połączona z lekko cierpkim smakiem, kt&oacute;re r&oacute;wnoważy słodycz ryżu. Kokaicha znana jest z dużej zawartości teiny przez co jej działanie ma charakter pobudzający. Można ją parzyć kilkakrotnie aż do momentu, gdy herbata całkowicie się rozpuści.<br />\r\n	<br />\r\n	Szeroko znane są zdrowotne właściwości Kokeichy. Według informacji podawanych przez Japońskie Stowarzyszenie Herbaciane odmiana ta kryje w sobie bogate pokłady witamin B1, B2 oraz C a także jest źr&oacute;dłem żelaza, cynku i magnezu. Ponadto Kokeicha zawiera liczne antyoksydanty, kt&oacute;rych przeciwnowotworowe działanie zostało wielokrotnie dowiedzione. Ze względu na swoje właściwości lecznicze oraz niezwykły smak, aromat i kolor jest wysoko ceniona w Japonii.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/kokeicha_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-80 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Kokeichy nie trzeba oddzielać od powstałego naparu. Można ją zalewać 3-krotnie do całkowitego rozpuszczenia igiełek.</p>\r\n', '', '', 1, 0),
(145, 9, 0, 1, 23, 'Grecki Rozmaryn', 'ziola_grecki_rozmaryn', '<p>\r\n	Rozmaryn to ziele pachnące śr&oacute;dziemnomorskim słońcem. Starożytni Grecy wierzyli, że poprawia pamięć i koncentrację, dlatego uczniowie przygotowujący się do egzamin&oacute;w wplatali we włosy rozmarynowe gałązki.<br />\r\n	<br />\r\n	Smak rozmarynu jest gorzkawy z delikatną nutą korzenności. Zazwyczaj doprawiane są nim tłuste potrawy, np. kaczka czy baranina (opr&oacute;cz ulepszania smaku rozmaryn ułatwia trawienie tłuszczy). Ponadto doskonale sprawdza się w pieczeniu i grillowaniu wszystkich rodzaj&oacute;w mięs i wędlin. Świetnie smakuje r&oacute;wnież z rybami i ziemniakami. Warto dodawać go do zup jarzynowych, gdyż znacznie poprawia ich smak.<br />\r\n	<br />\r\n	Rozmaryn ma intensywny smak, dlatego już niewielka ilość wystarczy do uzyskania oczekiwanego efektu!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/rozmaryn_1.jpg', '', '', '', '', 1, 0),
(62, 1, 3, 1, 4, 'Pai Mu Tan', 'pai_mu_tan', '<p>\r\n	Pai Mu Tan (tzw. Biała Piwonia) to wysokiej jakości biała herbata liściasta pochodząca z prowincji Fujian. Jest ręcznie zbierana wyłącznie w Chinach. Zrywane wiosną pędy, pochodzące ze specjalnych krzew&oacute;w herbacianych zwanych Big White, składają się z jednego pąka i dw&oacute;ch liści. Kształtem przypominają kwiat piwonii, kt&oacute;remu herbata ta zawdzięcza swoją nazwę. Pędy poddawane są naturalnemu procesowi utraty wilgoci, a następnie suszone. Powstałe w ten spos&oacute;b pączki mają srebrzysty odcień. Jasnoż&oacute;łty napar Pai Mu Tan odznacza się lekko kwiecistym, ziołowo - orzeszkowym aromatem.</p>\r\n<p>\r\n	Ciekawy smak nie jest jedynym atutem Pai Mu Tan. Kr&oacute;tki proces produkcji oraz wielka troskliwość jaką otaczane są herbaciane listki pozwalają zachować wszystko to, co w białej herbacie najcenniejsze- począwszy od kompleksu witamin, gł&oacute;wnie A,D,E poprzez bogactwo związk&oacute;w mineralnych, szczeg&oacute;lnie takich, kt&oacute;re odpowiadają za piękny wygląd, świeżą i zdrową cerę. Z tego powodu Pai Mu Tan nierzadko nazywana jest herbatą młodości.</p>\r\n<p>\r\n	Ten drogocenny gatunek herbaty znalazł swoje zastosowanie w przemyśle kosmetycznym. Koi podrażnienia i nawilża. Zapobiega powstawaniu zmarszczek oraz dodaje sk&oacute;rze blasku i witalności.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pai_mu_tan_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 70-85 stopni C<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Ten sam susz można zaparzyć trzykrotnie. Każdorazowo listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '', '', 1, 0),
(63, 2, 3, 1, 4, 'Yunnan Golden Dynasty', 'yunnan_golden_dynasty', '<p>\r\n	Chińska czarna herbata pochodząca z prowincji Yunnan o dużych, mięsistych liściach, kt&oacute;re zaraz po zaparzeniu znacznie się rozrastają. Napar o głębokim kolorze i przyjemnym, właściwym tylko dla tej odmiany, smaku czynią z Yunnan Golden Dynasty prawdziwy rarytas</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Yunnan_Golden_Dynasty_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>80-90 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-4 minuty<br />\r\n	Po wskazanym czasie listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '', '', 1, 0),
(64, 1, 3, 1, 7, 'Jade Eyes', 'jade_eyes', '<p>\r\n	Wyjątkowa odmiana białej herbaty pochodząca z prowincji Yunnan o delikatnym słomkowym naparze i owocowym aromacie.<br />\r\n	<br />\r\n	Do produkcji Jade Eyes&nbsp; używane są jedynie świeże zielono &ndash; srebrzyste listki, kt&oacute;re ręcznie zwijane w owalne bryłki przypominają swym kształtem jadeitowe oczy. Warto podkreślić właściwości zdrowotne tej odmiany. Napar obniża poziom cholesterolu, reguluje krążenie krwi oraz niweluje stres i napięcie.&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/jade_eyes_1.jpg', '', '<p>\r\n	<b>Temperatura</b>: 70-80 stopni C<br />\r\n	<b>Ilość</b>: 1 łyżeczka na filiżankę<br />\r\n	<b>Czas parzenia</b>: pierwsze parzenie 2-3 minuty, kolejne 7-8 minut. Po wskazanym czasie listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '', '', 1, 0),
(65, 2, 3, 1, 12, 'Golden Monkey', 'golden_monkey', '<p>\r\n	Wysokogatunkowa herbata Golden Monkey jest wytwarzana w niewielkich ilościach (tylko 2000 kg) z liści krzew&oacute;w uprawianych w rejonie g&oacute;r Wu Yi w chińskiej prowincji Yunnan, kt&oacute;ra uważana jest za miejsce narodzin herbaty. W Chinach herbata ta nazywana jest Golden Hou. Golden (złoty) odnosi się do koloru liści, zaś Hou oznacza małpę.<br />\r\n	<br />\r\n	Golden Monkey charakteryzuje się słodko-miodowym smakiem z lekko zaznaczoną dymną nutą. Jest to ekskluzywna herbata o dużej ilości złotych tips&oacute;w (nierozwiniętych pączk&oacute;w liści) stanowiących dopełnienie wyjątkowego naparu. &nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Golden_Monkey_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>90-95 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-3 minuty</p>\r\n<p>\r\n	Naszym zdaniem słodki aromat herbaty świetnie podkreśli łyżeczka miodu oraz odrobina cytryny.</p>\r\n', '', '', 1, 0),
(66, 2, 3, 1, 14, 'Five o&#039;clock Tea', 'five_oclock_tea', '<p>\r\n	Historia picia herbaty w Wielkiej Brytanii sięga XVIII wieku, kiedy to Anna Maria Russell, księżna Bedford, wprowadziła zwyczaj podwieczorku, czyli popołudniowych posiłk&oacute;w, podczas kt&oacute;rych serwowano bogaty wyb&oacute;r przekąsek spożywanych zawsze w&nbsp;towarzystwie herbacianego napoju. Podwieczorek był podawany wyspiarskiej arystokracji o godzinie 17:00 &ndash; stąd właśnie pochodzi nazwa Five o&rsquo;clock Tea.<br />\r\n	<br />\r\n	Five o&rsquo;clock Tea to kunsztowne połączenie herbaty chińskiej, cejlońskiej oraz indyjskiego Darjeelingu. Napar o zdecydowanym smaku oraz świeżym aromacie z&nbsp;wyczuwalną nutką goryczy. Choć świetnie smakuje sam w sobie, to doskonałą propozycją jest podanie go z plastrem cytryny, kroplą miodu bądź jako dodatek do słodkich przekąsek- nie tylko o godzinie 17:00!<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Five_oclock_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>95 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-3 minuty<br />\r\n	&nbsp;</p>\r\n', '', '', 1, 0),
(67, 3, 3, 1, 6, 'Genmaicha', 'genmaicha', '<p>\r\n	Genmaicha to niepowtarzalne połączenie herbaty Bancha z prażonym ryżem pochodzącym z upraw ekologicznych. Napar o słomkowej barwie, orzeźwiającym smaku i aromacie przywodzi na myśl zapach orzech&oacute;w.<br />\r\n	<br />\r\n	W Japonii Genmaicha podawana jest zwykle po posiłkach. Warto pić ją r&oacute;wnież podczas upał&oacute;w, gdyż cechuje się orzeźwiającymi właściwościami. Zawiera stosunkowo mało teiny, dlatego mogą spożywać ją dzieci i osoby starsze. Idealna na każdą porę dnia!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/genmaicha_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: 80 stopni Celsjusza<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 2-4 minut<br />\r\n	Susz można parzyć 2-3 razy.</p>\r\n', '', '', 1, 0),
(68, 2, 3, 1, 16, 'Wędzona Lapsang souchong', 'wedzona_lapsang_souchong', '<p>\r\n	Lapsang souchong (&quot;herbata wędzona&quot;) pochodzi z chińskiej prowincji Fujian. Produkowana jest z sz&oacute;stego liścia krzewu herbacianego (Pekoe Souchong).<br />\r\n	<br />\r\n	Niezwykle wyrazisty smak i pełen aromat herbata Lapsang souchong zawdzięcza tradycyjnemu chińskiemu procesowi wędzenia. Zaraz po zerwaniu herbaciane listki osuszane są nad ogniskiem. Następnie są zwijane i poddawane procesowi wstępnej fermentacji w drewnianych beczkach. Leżakują w nich do momentu uzyskania pożądanego aromatu. W końcowym etapie wytwarzania herbata przenoszona jest do bambusowych koszy umieszczanych nad ogniskiem. W kłębach wonnego sosnowego dymu Lapsang souchong nabiera dymnego posmaku przypominającego aromat suszonych śliwek.<br />\r\n	<br />\r\n	Lapsang souchong nazywana jest &quot;męską herbatą&quot; z uwagi na sw&oacute;j zdecydowany smak, kt&oacute;ry bywa por&oacute;wnywany do smaku szkockiej whisky lub cygar. Jednak r&oacute;wnież kobiety ulegają jej urokowi. Przypadnie ona do gustu smakoszom ceniącym napary o mocnym, wytrawnym smaku i intrygującym aromacie. Jej niezwykłym atutem jest wspaniały zapach drewna sosnowego, kt&oacute;ry możemy poczuć już w kilka sekund po zalaniu herbacianego suszu wodą.&nbsp;&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/wedzona_ lapsang_souchong_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>90-95 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minuty<br />\r\n	Lapsang souchong znakomicie smakuje w czystej formie, a także z odrobiną mleka.<br />\r\n	Polecamy do posiłk&oacute;w złożonych z ryb oraz potraw mięsnych, szczeg&oacute;lnie grillowanych.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 1, 0),
(69, 3, 3, 1, 23, 'Chun Mee', 'chun_mee', '<p>\r\n	Zielona herbata, kt&oacute;rej kolebką jest chińska prowincja Jiangxi, a obecnie porasta r&oacute;wnież połacie innych rejon&oacute;w Chin.<br />\r\n	<br />\r\n	W dosłownym tłumaczeniu Chun Mee oznacza &quot;drogocenne brwi&quot;, co jest związane z kształtem gotowego suszu. Wąskie, długie liście są ręcznie zwijane i przypominają swym wyglądem malowane brwi porcelanowej lalki. Uzyskanie łukowatego kształtu liści wymaga precyzyjnej wiedzy co do wilgoci, temperatury i czasu, w jakim należy je zwijać. Ze względu na wymagający proces produkcji, Chun Mee jest wysoko ceniona przez herbacianych koneser&oacute;w.<br />\r\n	<br />\r\n	Po zaparzeniu uzyskamy jasnoż&oacute;łty, klarowny napar o łagodnym zapachu i orzeźwiającym, nieco cierpkim smaku.<br />\r\n	<br />\r\n	Chun Mee opr&oacute;cz walor&oacute;w smakowych posiada r&oacute;wnież znaczne właściwości prozdrowotne. Pomaga zwalczyć szkodliwy cholesterol, ma zastosowanie w profilaktyce antynowotworowej - zawarte w niej antyoksydanty niwelują działanie wolnych rodnik&oacute;w, ponadto regularnie pita wzmacnia serce oraz oczyszcza organizm z toksyn.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/chun_mee_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: 70 stopni Celsjusza<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-4 minuty<br />\r\n	Chun Mee wyśmienicie smakuje z niewielkim dodatkiem mięty.</p>\r\n', '', '', 1, 0),
(71, 3, 3, 1, 9, 'Sencha', 'sencha', '<p>\r\n	Sencha to klasyka wśr&oacute;d zielonych japońskich herbat. Cechuje się pełnym smakiem i niezr&oacute;wnanym aromatem. Zbiory Senchy odbywają się od wiosny do jesieni, cztery razy w roku lub częściej, nawet co 45 dni. Najbardziej cenione są liście zgromadzone na przełomie kwietnia i maja (pierwszy zbi&oacute;r). Noszą one nazwę &quot;Sincha&quot; czyli &quot;Nowa Herbata&quot; oraz dają napar o miękkim i subtelnym aromacie, zaś liście p&oacute;źniejsze mają większą zawartość taniny oraz mocniejszy smak.<br />\r\n	<br />\r\n	Barwę Senchy por&oacute;wnuje się z porannym blaskiem słońca. Aby ją uzyskać, zaraz po zebraniu i selekcji listki poddane są procesowi suszenia w gorącym i suchym kotle, gdzie tracą wilgoć, zachowując przy tym sw&oacute;j zielono - oliwkowy kolor oraz wiele cennych składnik&oacute;w, takich jak polifenole, kt&oacute;re w naturalny spos&oacute;b op&oacute;źniają proces starzenia się.<br />\r\n	<br />\r\n	Systematyczne picie Senchy obniża ciśnienie krwi, poziom cukru (polecana diabetykom!) i cholesterolu oraz wspomaga profilaktykę antynowotworową. Według obserwacji naukowc&oacute;w, Japończycy oraz Chińczycy, kt&oacute;rzy piją dużo zielonej herbaty rzadziej chorują na nowotwory, ponadto ich średnia życia (82 lata kobiety, 76 lat mężczyźni) jest najwyższa na świecie.<br />\r\n	<br />\r\n	Wysoka zawartość teiny czyni z Senchy znakomicie pobudzający nap&oacute;j, kt&oacute;ry może stanowić zdrową alternatywę dla porannej kawy.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/sencha_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>65-75 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> do 4 minut<br />\r\n	Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie.</p>\r\n', '', '', 1, 0),
(72, 1, 1, 1, 9, 'Pai Mu Tan Mgiełka Delikatności', 'pai_mu_tan_mgielka_delikatnosci', '<p>\r\n	Pai Mu Tan znajduje się na podium najlepszych białych herbat na świecie. Wytwarzana jest wyłącznie z pąk&oacute;w i dw&oacute;ch szczytowych liści zbieranych z najwyższą delikatnością. Jej napar cechuje się harmonijnym smakiem oraz złotą barwą.<br />\r\n	<br />\r\n	Subtelnie kwiecisty aromat Pai Mu Tan został wzbogacony malinowo-migdałową nutą okraszoną pomarańczowym akcentem. Ta ujmująca kompozycja to łagodność i nieprzeciętny smak, kt&oacute;ry oczaruje i zaczaruje zarazem.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pai_mu_tan_mgielka_delikatnosci_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 70-85 stopni C<br />\r\n	<strong>Ilość:</strong> 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-5 minut<br />\r\n	Ten sam susz można zaparzyć trzykrotnie, każdorazowo listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '<p>\r\n	Biała herbata Pai Mu Tan, malina, kandyzowana pomarańcza, migdały</p>\r\n', '', 2, 0),
(73, 3, 3, 1, 25, 'Gyokuro', 'gyokuro', '<p>\r\n	Najwykwintniejsza z japońskich herbat, a przez wielu uważana za najlepszą herbatę na świecie!<br />\r\n	<br />\r\n	Uprawa Gyokuro jest bardzo pracochłonna. Dwadzieścia dni przed zbiorami, krzewy herbaciane przykrywane są matami bambusowymi i trzcinowymi lub płachtami materiału. Dzięki ocienieniu, maleńkie listki mają większą zawartość chlorofilu (ich kolor cechuje się głęboką zielenią) oraz niższą zawartość taniny, w skutek czego Gyokuro pozbawiona jest goryczki. Napar cechuje się pełnym i dojrzałym smakiem z wyczuwalną kwiatową nutą. &nbsp;<br />\r\n	<br />\r\n	Gyokuro orzeźwia, oczyszcza, dodaje energii. Zawiera większą niż inne gatunki herbat ilość witamin- gł&oacute;wnie witamin C i B2, magnezu, potasu oraz kwasu foliowego.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/gyokuro_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: 50-60 stopni C<br />\r\n	<strong>Ilość:</strong> 2x większa niż w przypadku klasycznej zielonej herbaty, czyli 2 łyżeczki na filiżankę, 4 łyżeczki na szklankę.<br />\r\n	<strong>Czas parzenia</strong>: 1, 5-2 min<br />\r\n	Ten sam susz można użyć nawet trzykrotnie. Ważnym jest, aby po zaparzeniu usunąć liście z naparu.<br />\r\n	Polecamy podawać napar Gyoukuro po posiłku.</p>\r\n', '', '', 1, 0),
(74, 1, 3, 1, 10, 'White Monkey', 'white_monkey', '<p>\r\n	Wysokiej jakości biała herbata zawierająca dużą ilość srebrzysto-białych pączk&oacute;w o lekko puszystej fakturze.<br />\r\n	<br />\r\n	Roczny zbi&oacute;r White Monkey jest niewielki, gdyż odbywa się wyłącznie w ciągu dw&oacute;ch pierwszych tygodni kwietnia. Herbata zrywana jest w promieniach porannego słońca, kiedy liście i pączki rozwijają się.<br />\r\n	<br />\r\n	White Monkey należy do grona wykwintnych herbat o subtelnym i świeżym smaku, z lekko orzechową nutą.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/white_monkey_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 70-85 stopni C<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka suszu na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 2-3 min<br />\r\n	Uzyskany napar cechuje się łagodnością oraz wysoką aromatycznością. Aby wydobyć głębię smaku White Monkey, czas parzenia nie powinien przekroczyć 3 min.</p>\r\n', '', '', 1, 0);
INSERT INTO `products` (`product_id`, `category_id`, `subcategory_id`, `unit_id`, `product_order`, `product_name`, `product_alias`, `product_description`, `photo`, `smal_photo`, `tab1`, `tab2`, `tab3`, `active_tab_id`, `is_gratis`) VALUES
(76, 3, 3, 1, 17, 'Lung Ching', 'lung_ching', '<p>\r\n	Lung Ching, słynąca z dużych i długich liści, należy do kanonu najlepszych chińskich zielonych herbat- zdobyła złoty medal z palmami M.I.S.J. w 1988 roku.<br />\r\n	<br />\r\n	Według chińskiego przysłowia herbata ta cechuje się: wyśmienitym smakiem, szlachetnym zapachem, szmaragdową barwą oraz elegancką formą. Mnisi buddyjscy przygotowywali ją dla pielgrzym&oacute;w- łyk naparu dodawał siły, likwidował stres, odpędzał złe myśli.<br />\r\n	<br />\r\n	Słomkowozielony napar o niezwykle łagodnym i miękkim smaku potrafi zachwycić zar&oacute;wno wytrawnych smakoszy, jak i nowicjuszy zielonych herbat.<br />\r\n	<br />\r\n	Niewątpliwym atutem Lung Ching jest duża zawartość witaminy C i aminokwas&oacute;w. Ponadto dzięki obecności katechin napar obniża poziom cholesterolu oraz działa antynowotworowo.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/lung_ching_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 65-75 stopni C<br />\r\n	<strong>Ilość: </strong>1 łyżeczka suszu na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> pierwsze zalanie 30 sek., kolejne 2-3 minuty<br />\r\n	Napar powstały po pierwszym zaparzeniu należy wylać, gdyż głębie smaku Lung Ching można wydobyć dopiero po drugim parzeniu.<br />\r\n	Ten sam susz można wykorzystać kilkakrotnie.</p>\r\n', '', '', 1, 0),
(77, 1, 3, 1, 3, 'Yellow Tea Huoshan Huang Ya', 'yellow_tea', '<p>\r\n	Yellow Tea Huoshan Huang Ya to wysoko ceniony, jeden z najrzadszych i szlachetniejszych rodzaj&oacute;w ż&oacute;łtych herbat uprawiany już od czas&oacute;w dynastii Ming w chińskiej prowincji Anhuj. Do jego produkcji wykorzystuje się młode, jeszcze nierozwinięte pączki, kt&oacute;re są ręcznie zbierane pod koniec kwietnia i w pierwszych dniach maja. Ż&oacute;łtozielone liście z dużą ilością białych włosk&oacute;w dają delikatny napar o słodkawym smaku i aromacie.<br />\r\n	<br />\r\n	W 1990 roku herbata Yellow Tea Huoshan Huang Ya wygrała w Chinach konkurs na herbatę najlepszej jakości.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/yellow_tea_huoshan__huangya_1.jpg', '', '<p>\r\n	<b>Temperatura</b>: 80-85 stopni C<br />\r\n	<b>Ilość</b>: 1 łyżeczka na filiżankę<br />\r\n	<b>Czas parzenia</b>: pierwsze parzenie 2-3 minuty, kolejne 3-5 minut<br />\r\n	Ten sam susz można zaparzyć trzykrotnie. Każdorazowo listki bardzo dokładnie oddzielić od naparu.</p>\r\n', '', '', 1, 0),
(78, 1, 3, 1, 11, 'Jasmine Dragon Pearl', 'jasmine_dragon_pearl', '<p>\r\n	Niezwykle luksusowa biała herbata wytwarzana w Chinach od setek lat. Nazywana r&oacute;wnież Cesarską Perłą, Long Zhu, Phoenix Pearl. Produkowana jest z dw&oacute;ch ostatnich listk&oacute;w oraz nierozwiniętego pączka zbieranych o poranku. Starannie dobrane listki formowane są ręcznie w drobne perełki i aromatyzowane świeżo zebranym kwiatem jaśminu.<br />\r\n	<br />\r\n	W trakcie parzenia perełki rozwijają się, wydzielając przy tym wykwintny jaśminowy zapach. Po kilku chwilach możemy skosztować pierwszego łyku i poczuć niezwykle delikatny smak o aksamitnym zwieńczeniu. Ta nadzwyczajna herbata zmniejsza napięcie i redukuje stres, dlatego stanowi idealne dopełnienie chwil relaksu i wyciszenia</p>\r\n', 'http://www.test.tientea.pl/img/produkty/jasmine_dragon_pearl_1.jpg', '', '<p>\r\n	<strong>Temperatura:&nbsp; </strong>85 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 5 min<br />\r\n	Szczeg&oacute;lnie warte uwagi jest drugie zaparzanie, w kt&oacute;rym aromat jaśminu i wyśmienitej białej herbaty idealnie się bilansują.</p>\r\n', '', '', 1, 0),
(79, 1, 3, 1, 12, 'Cesarska Igła', 'cesarska_igla', '<p>\r\n	Herbata pochodząca z prowincji Fujian, znanej z produkcji najbardziej wyśmienitych oolong&oacute;w i białych herbat. Niezwykle rzadka, zbierana ręcznie zaledwie przez dwa dni w roku. W przeszłości była przeznaczona wyłącznie dla cesarskich ust. Wytwarzana jest z młodych, nierozwiniętych pączk&oacute;w przypominających igły. Są one pokryte srebrzystym puszkiem- właściwym jedynie dla herbat niefermentowanych. Jej produkcja ogranicza się wyłącznie do wysuszenia liści, kt&oacute;re zostały zebrane zanim zdążyły się rozwinąć.<br />\r\n	<br />\r\n	Dzięki niskiemu stopniu przetwarzania Cesarska Igła zachowuje wysokie stężenie substancji odżywczych, wskutek czego ma znaczne właściwości prozdrowotne.<br />\r\n	<br />\r\n	Jej smak jest niesamowicie subtelny z wyczuwalną słodką nutą. Niewskazane jest łączenie jej z cukrem bądź mlekiem. Spożywana po posiłkach, wpływa korzystnie na procesy trawienne.<br />\r\n	<br />\r\n	Cesarska Igła przypadnie do gustu zwolennikom wykwintnych, delikatnych aromat&oacute;w z mocą zdrowotnych właściwości.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/cesarska_igla_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 8-10 minut<br />\r\n	Aby wydobyć głębie wyrafinowanego smaku, herbatę należy parzyć od 8-10 min. Po tym czasie listki bardzo dokładnie oddzielić od naparu. Ten sam susz można wykorzystać 2-3 krotnie.</p>\r\n', '', '', 1, 0),
(80, 4, 3, 1, 6, 'Pu-erh Gniazda', 'pu-erh_gniazda', '<p>\r\n	Pu-erh gniazda to niezwykle ciekawa herbata. Wskazuje na to już sam jej wygląd- liście zostały sprasowane w kształt gniazda.<br />\r\n	<br />\r\n	M&oacute;wiąc o herbacie Pu-erh, należy podkreślić odchudzające właściwości tej odmiany. Napar obniża zawartość tłuszczu w organizmie, redukuje poziom cholesterolu oraz wspomaga procesy trawienne.<br />\r\n	<br />\r\n	Pu-erh gniazda daje napar o intensywnej mocy, dlatego z jednej sztuki można zaparzyć cały dzbanek napoju. Charakterystyczny korzenno- ziemisty smak może początkowo przeszkadzać, ale ze względu na dobroczynne właściwości tej odmiany warto nie zniechęcać się zbyt szybko.<br />\r\n	<br />\r\n	W 100 g mieści się ok. 25 gniazd</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pu-erh_gniazda_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>96 stopni C (przestudzony wrzątek)<br />\r\n	<strong>Ilość:</strong> jedno gniazdo na dzbanek 0,5-0,8 l; aby zaparzyć w filiżance bądź szklance należy odłamać odpowiednio dużą część gniazda.<br />\r\n	<strong>Czas parzenia:</strong> 5-6 min<br />\r\n	Aby uzyskać napar o delikatniejszym smaku, należy zalać gniazdo przestudzonym wrzątkiem, parzyć ok. 30 sekund, po czym odlać uzyskany napar. Drugie zalanie będzie cechować się subtelniejszym aromatem.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', '', '', 1, 0),
(81, 2, 3, 1, 20, 'Long Zhu Black', 'long_zhu_black', '<p>\r\n	Jeden z herbacianych specjał&oacute;w. Czarna herbata pochodząca z chińskiej prowincji Fujian. Okazałe, długie herbaciane liście zostały poddane procesowi fermentacji, po czym zwinięte na kształt kulek. Napar cechuje się wyrazistym aromatem i lekko cierpkim smakiem.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/long_zhu_black_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: 90-95 stopni C<br />\r\n	<strong>Ilość</strong>: 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	&nbsp;</p>\r\n', '', '', 1, 0),
(82, 4, 3, 1, 8, 'Pu-Erh Medium', 'pu-erh_medium', '<p>\r\n	Pu-Erh Medium cieszy się niebywałym powodzeniem wśr&oacute;d os&oacute;b, kt&oacute;re chcą pozbyć się zbędnych kilogram&oacute;w i osiągnąć wymarzoną wagę.<br />\r\n	<br />\r\n	Amerykanie nazywają czerwoną herbatę Pu &ndash;Erh mordercą tłuszczu. Zawarte w niej związki pobudzają enzymy pokarmowe do wydzielania sok&oacute;w trawiennych oraz wspomagają pracę jelit. Wpływa to na szybszy metabolizm, zmniejszając ilość tłuszczu w tkance podsk&oacute;rnej.<br />\r\n	<br />\r\n	Pu &ndash; Erh redukuje jedynie zbędne pokłady tłuszczu w naszym organizmie, dlatego osoby bez nadwagi nie muszą obawiać się niekorzystnej utraty kilogram&oacute;w. Napar cechuje się korzenno-ziemistym zapachem i smakiem oraz czerwonobrązową barwą</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pu-erh_medium_1.jpg', '', '<p>\r\n	<b>Pu-Erh Temperatura</b>: ok. 96 st. C (przestudzony wrzątek)<br />\r\n	<b>Ilość</b>: 1 łyżeczka na filiżankę<br />\r\n	<b>Czas parzenia</b>: 3-5 minut<br />\r\n	Możliwe jest dwu- lub trzykrotne zaparzenie. Chińczycy piją tę herbatę bez żadnych dodatk&oacute;w, ponieważ cukier likwiduje większość jej leczniczych właściwości.</p>\r\n', '', '', 1, 0),
(83, 3, 3, 1, 11, 'Gunpowder Temple of Heaven', 'gunpowder', '<p>\r\n	Gunpowder Temple of Heavan to jedna z najpopularniejszych chińskich odmian herbaty. To ulubiona zielona herbata Maroka i Środkowego Wschodu, gdzie przeważnie podawana jest z miętą i dużą ilością cukru. Nazwa Gunpowder, czyli &quot;proch strzelniczy&quot; wywodzi się od kształtu liści ciasno zwiniętych w małe, lśniące kulki, kt&oacute;re w zetknięciu z gorącą wodą&nbsp; wydają charakterystyczne trzaski.<br />\r\n	<br />\r\n	Gunpowder jest bardzo wydajny, gdyż podczas parzenia zbite kulki pęcznieją i rozwijają się. Uzyskany napar cechuje się zielonkawo - miedzianą barwą oraz intensywnym, nieco gorzkim smakiem.<br />\r\n	<br />\r\n	Regularne picie herbaty Gunpowder pozytywnie wpływa na krwioobieg sercowo - naczyniowy, oczyszcza organizm z toksyn, pomaga w koncentracji (aktywizuje pracę m&oacute;zgu) oraz skutecznie gromadzi w organizmie witaminę C, a także dostarcza witaminy: B1, B2, K i PP oraz prowitaminę A, żelazo, potas, wapń i magnez.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/gunpowder_1.jpg', '', '<p>\r\n	<b>Temperatura</b>: od 70 do 80 st. C.<br />\r\n	<b>Ilość</b>: 1 łyżeczka na filiżankę, 2 łyżeczki na szklankę<br />\r\n	<b>Czas parzenia</b>: 2-4 minut<br />\r\n	Temperatura parzenia w istotny spos&oacute;b wpływa na smak herbaty. Zalanie suszu wrzątkiem daje silny i gorzki smak- jest on ceniony przez wytrawnych herbaciarzy. Używając wody o temperaturze ok. 80 stopni C, otrzymamy napar o łagodnym aromacie, zaś parzenie w temperaturze ok. 50 stopni C przez 2-3 godziny pozwoli wydobyć oryginalny, lekko miętowy posmak herbaty Gunpowder.</p>\r\n', '', '', 1, 0),
(84, 4, 1, 1, 2, 'Oolong Milky', 'oolong_milky', '<p>\r\n	Oolong Milky to wysokojakościowy oolong pochodzący z Anxi w prowincji Fujian.<br />\r\n	<br />\r\n	Sw&oacute;j niepowtarzalny aromat zawdzięcza specjalnej technice produkcji- przed wysuszeniem listki wzbogacane są mlecznym aromatem. Kremowo-mleczny smak uzupełniony słodką nutą to wyjątkowa rozkosz dla podniebienia.<br />\r\n	<br />\r\n	Nieprzeciętność Oolonga Milky czyni go znakomitym prezentem oraz naparem idealnym do podawania gościom, kt&oacute;rych chcemy pozytywnie zaskoczyć.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/oolong_milky_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>90 stopni C<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka suszu na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 3-4 min<br />\r\n	Ten sam susz można wykorzystać nawet pięciokrotnie. Po trzecim zalaniu warto wydłużyć czas parzenia o dodatkowe 2 minuty.</p>\r\n', '<p>\r\n	Oolong wzbogacony mlecznym aromatem</p>\r\n', '', 2, 0),
(85, 1, 14, 1, 8, 'Golden Yuanbao', 'golden_yuanbao', '<p>\r\n	Golden Yuanbao to herbata kwitnąca, kt&oacute;ry zachwyca jeszcze przed rozwinięciem. Najmłodsze pączki herbacianych liści zostały ręcznie uformowane w urokliwe serduszka.<br />\r\n	<br />\r\n	Bazę artystycznej kompozycji stanowi szlachetna biała herbata, w kt&oacute;rej wnętrzu skryte jest zjawiskowe połączenie kwiatu szarłatu oraz płatk&oacute;w jaśminu. W trakcie zaparzania, herbaciane serduszko rozwija się tworząc podstawę dla kolorowego kwiecia. Całość doznań dopełnia wykwintny, lekko słodkawy smak naparu.<br />\r\n	<br />\r\n	Ze względu na sw&oacute;j &quot;romantyczny&quot; kształt, Golden Yuanbao może stać się fantastycznym sposobem na powiedzenie &quot;kocham cię&quot;...<br />\r\n	<br />\r\n	50g to ok 7 sztuk.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/golden_yuanbao_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> od 75 do 85 st. C.<br />\r\n	<strong>Ilość:</strong> jedna kulka na dzbanek<br />\r\n	<strong>Czas parzenia: </strong>5-7 minut<br />\r\n	Przygotowanie naparu z kwitnącej herby ma w sobie cechy zjawiska artystycznego. Aby m&oacute;c je podziwiać, do zaparzenia polecamy użyć szklanego dzbanka podgrzewanego niewielką świeczką. Najlepszym czasem na przyrządzenie naparu jest wiecz&oacute;r- przy zgaszonym świetle i w blasku świecy herbaciane widowisko potrafi naprawdę zachwycić.<br />\r\n	<br />\r\n	Z jednej kulki możemy przygotować nawet 3 napary.&nbsp;&nbsp;</p>\r\n', '', '', 1, 0),
(87, 1, 14, 1, 1, 'Jasmine Lichi', 'jasmine_lichi', '<p>\r\n	Aromatyzowana wonnym jaśminem wykwintna biała herbata i urokliwy kwiat śliwy chińskiej, zwany kwiatem liczi, zostały misternie splecione w dzieło herbacianej sztuki.<br />\r\n	<br />\r\n	Jasmine Lichi to herbaciane kule zwijane z niezwykłą starannością. Stworzenie każdej z nich wymagało czasu, precyzji, a przede wszystkim delikatności i wyczucia. Wystarczy odrobina gorącej wody, aby stać się świadkiem magicznego przedstawienia: &quot;herbaciany pąk&quot; rozwija się subtelnie, ukazując w finale egzotyczny kwiat liczi. Słomkowo - zielony napar pieści podniebienie delikatną słodyczą i napełnia nasze nozdrza pięknym zapachem.<br />\r\n	<br />\r\n	Są w życiu chwile, kt&oacute;re chce się dzielić z najbliższymi. Degustowanie Jasmine Lichi&nbsp; jest z pewnością jedną z nich...<br />\r\n	<br />\r\n	50g to około 8-9 sztuk.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/jasmine_lichie_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> od 75 do 85 st. C.<br />\r\n	<strong>Ilość:</strong> jedna kulka na dzbanek<br />\r\n	<strong>Czas parzenia: </strong>5-7 minut<br />\r\n	Przygotowanie naparu z kwitnącej herby ma w sobie cechy zjawiska artystycznego. Aby m&oacute;c je podziwiać, do zaparzenia polecamy użyć szklanego dzbanka podgrzewanego niewielką świeczką. Najlepszym czasem na przyrządzenie naparu jest wiecz&oacute;r- przy zgaszonym świetle i w blasku świecy herbaciane widowisko potrafi naprawdę zachwycić.<br />\r\n	<br />\r\n	Z jednej kulki możemy przygotować nawet 3 napary.&nbsp;&nbsp;</p>\r\n', '', '', 0, 0),
(89, 7, 15, 1, 1, 'Orzeszki cola', 'orzeszki_cola', '<p>\r\n	Orzeszki Cola to skoncentrowane źr&oacute;dło naturalnej kofeiny (od 2% do 4 %). Cechują się działaniem aktywizującym i pobudzającym, przez co znakomicie sprawdzają się w chwilach zmęczenia i osłabienia. Dodają energii, wpływają pozytywnie na koncentrację i zapamiętywanie nowych wiadomości, ponadto hamują apetyt i przyspieszają lipolizę- rozpad tłuszcz&oacute;w, kt&oacute;remu towarzyszy dodatkowe uwalnianie energii.<br />\r\n	<br />\r\n	Orzeszki Cola używane są na terenie Azji, Afryki i Ameryki Południowej od stuleci. Wysuszone i zmielone wykorzystywano do przygotowywania orzeźwiających napoj&oacute;w. Arabowie już przed kilku stuleciami przygotowywali duże zapasy orzeszk&oacute;w cola przed rozpoczęciem podr&oacute;ży dookoła Sahary. Do Europy trafiły dopiero w XVI wieku. W medycynie tradycyjnej orzeszki cola używane były jako afrodyzjak, stymulant oraz w celu stłumienia apetytu.<br />\r\n	<br />\r\n	Orzechy Cola były jednym z podstawowych składnik&oacute;w Coca-coli w początkach jej produkcji.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/orzeszki_cola_1.jpg', '', '<p>\r\n	<strong>Ilość: </strong>1-2 łyżeczki<br />\r\n	Orzeszki Cola można przygotować podobnie jak Guaranę. Zalecaną ilość połączyć z jogurtem (naturalnym, owocowym, pitnym), sokiem lub kakao. Całość wypić wraz z osadem.</p>\r\n', '', '', 1, 0),
(91, 7, 15, 1, 2, 'Guarana', 'guarana', '<p>\r\n	Guarana jest rośliną pochodzącą z wilgotnych las&oacute;w Brazylii. Ceniona była już przez Indian Amazońskich- stosowali ją ku pokrzepieniu podczas wędr&oacute;wek pieszych, całodniowych polowań oraz wieczorem, gdy po ciążkiem dniu pragnęli przeżyć erotyczną przygodę.<br />\r\n	<br />\r\n	Guarana zawiera trzykrotnie więcej kofeiny niż kawa, dlatego znalazła zastosowanie w napojach energetycznych i preparatach leczniczych. W przeciwieństwie do kawy, kofeina znajdująca się w guaranie nie wypłukuje magnezu oraz jest wolniej uwalniana, pobudzając organizm stopniowo i na dłużej. Jej pozytywne działanie może utrzymywać się nawet do 6 godzin.<br />\r\n	<br />\r\n	Badania naukowe potwierdzają, że nasiona guarany podnoszą poziom energii, likwidując uczucie zmęczenia psychicznego i fizycznego. Zwiększają zdolność koncentracji i zapamiętywania, co jest niezbędne podczas wielogodzinnej nauki lub w zawodach wymagających intensywnego skupienia i koncentracji. Ponadto zwiększają wydajność i wytrzymałość organizmu- polecane osobom uprawiającym sport.<br />\r\n	<br />\r\n	Guarana poprawia procesy metaboliczne oraz wpływa korzystnie na przemianę materii, przez co zwiększa redukcję tkanki tłuszczowej i wspomaga odchudzanie.<br />\r\n	<br />\r\n	Nie powinny stosować jej kobiety w ciąży, matki karmiące piersią, cierpiący na choroby układu krążenia</p>\r\n', 'http://www.test.tientea.pl/img/produkty/guarana_1.jpg', '', '<p>\r\n	<strong>Ilość: </strong>1-2 łyżeczki<br />\r\n	Guarana cechuje się nieco ziemistym smakiem. Aby go złagodzić, proponujemy wskazaną ilość połączyć z jogurtem (naturalnym, owocowym, pitnym), sokiem lub kakao. Guarana nie rozpuszcza się w płynach, dlatego należy spożyć ją wraz z osadem. Stosować max 2 razy na dobę. Przepisy na szejk owocowy i inne napoje z Guaraną znajdziesz w dziale &bdquo;Nasze Przepisy&rdquo;</p>\r\n', '', '', 1, 0),
(92, 7, 15, 1, 3, 'Ilex guayusa', 'ilex_guayusa', '<p>\r\n	Indianie Amazońscy stosowali napar z Ilex Guayusa w podobnych celach jak napar z Yerba Mate- Guayusa nazywany jest jej &bdquo;młodszym bratem&rdquo;.<br />\r\n	<br />\r\n	Ilex Guayusa działa dwufazowo- pobudza i relaksuje. Napar, o dość przyjemnym smaku, podnosi siły witalne, poprawia koncentrację, oczyszcza myśli, likwiduje ospałość. Ilex Guayusa można stosować nawet w p&oacute;źnych godzinach wieczornych, ponieważ w przeciwieństwie do preparat&oacute;w zawierających kofeinę pozwala spokojnie zasnąć.<br />\r\n	<br />\r\n	Guayusy nie powinny stosować osoby biorące leki przeciwdepresyjne, ponieważ jest inhibitorem MAO.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/ilex_guayusa_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>wrzątek<br />\r\n	<strong>Ilość:</strong> 2-3 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> 5-10 minut pod przykryciem.<br />\r\n	Ilex Guayusa można zaparzyć według powyższych wskaz&oacute;wek bądź gotować ok. 5 min na małym ogniu.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '', '', 1, 0),
(93, 7, 16, 1, 4, 'Żeń-szeń', 'zen-szen', '<p>\r\n	Właściwości żeń-szenia, zwanego przez wielu wszechlekiem, zostały docenione już 4 tysiące lat temu. W starożytnych Chinach mogli spożywać go jedynie członkowie rodziny cesarskiej. Był tak wartościowy, że płacono za niego złotem, a tym, kt&oacute;rzy odważyli się na kradzież cennego korzenia groziła kara śmierci.<br />\r\n	<br />\r\n	Żeń-szeń posiada wiele dobroczynnych właściwości, m.in.:<br />\r\n	- wzmacnia układ immunologiczny,<br />\r\n	- wzmaga siły witalne organizmu,<br />\r\n	- stymuluje układ nerwowy, dzięki czemu poprawia pamięć i koncentrację,<br />\r\n	- obniża poziom glukozy (polecany chorym na cukrzycę) i cholesterolu we krwi,<br />\r\n	- zwiększa odporność na stres,<br />\r\n	- według badań amerykańskich jest doskonałym afrodyzjakiem.<br />\r\n	<br />\r\n	W naszej ofercie dostępny jest r&oacute;wnież żeń-szeń zmielony.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zen-szen_1.jpg', '', '<p>\r\n	Zalecana dzienna dawka korzenia żeń-szeń&nbsp; to 1-3 gramy na osobę (1 łyżeczka całego żeń-szenia= 1-2 g). Wskazaną ilość można rozbić na dwie mniejsze dawki spożywanie rano i wieczorem, najlepiej pomiędzy posiłkami.<br />\r\n	Aby uzyskać pożądane efekty, żeń-szeń należy stosować min. miesiąc.<br />\r\n	<strong>Żucie:</strong> Korzeń żujemy (1g ok.10-15 min) a następnie połykamy. Jest to najprostsza a zarazem najskuteczniejsza metoda używania żeń-szenia.<br />\r\n	<strong>Napar:</strong> 1 łyżeczkę zalewamy wodą o temp. 95&ordm; C i parzymy przez 5-10 minut.<br />\r\n	<strong>Maseczka żeń-szeniowa:</strong> Do przygotowania maseczki na bazie żeń-szenia idealnie nadaje się żeń-szeń zmielony (r&oacute;wnież dostępny w naszej ofercie). Sproszkowany korzeń zalewamy małą ilością wrzącej wody w celu uzyskania konsystencji papki. Maseczkę nakładamy na sk&oacute;rę twarzy, szyi i dekoltu na 20-30 min.</p>\r\n', '', '', 1, 0),
(94, 7, 16, 1, 5, 'Żeń-szeń (zmielony)', 'zen-szen_zmielony', '<p>\r\n	Właściwości żeń-szenia, zwanego przez wielu wszechlekiem, zostały docenione już 4 tysiące lat temu. W starożytnych Chinach mogli spożywać go jedynie członkowie rodziny cesarskiej. Był tak wartościowy, że płacono za niego złotem, a tym, kt&oacute;rzy odważyli się na kradzież cennego korzenia groziła kara śmierci.<br />\r\n	<br />\r\n	Żeń-szeń posiada wiele dobroczynnych właściwości, m.in.:<br />\r\n	- wzmacnia układ immunologiczny,<br />\r\n	- wzmaga siły witalne organizmu,<br />\r\n	- stymuluje układ nerwowy, dzięki czemu poprawia pamięć i koncentrację,<br />\r\n	- obniża poziom glukozy (polecany chorym na cukrzycę) i cholesterolu we krwi;<br />\r\n	- zwiększa odporność na stres,<br />\r\n	- według badań amerykańskich jest doskonałym afrodyzjakiem.<br />\r\n	<br />\r\n	W naszej ofercie dostępny jest r&oacute;wnież żeń-szeń w postaci korzenia.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zen-szen_mielony_1.jpg', '', '<p>\r\n	Zalecana dzienna dawka korzenia żeń-szeń&nbsp; to 1-3 gramy na osobę (1 łyżeczka zmielonego żeń-szenia= 3-4 gramy). Wskazaną ilość można rozbić na dwie mniejsze dawki spożywanie rano i wieczorem, najlepiej pomiędzy posiłkami.<br />\r\n	Aby uzyskać pożądane efekty, żeń-szeń należy stosować min. miesiąc.<br />\r\n	<strong>Dodatek do jogurtu:</strong> wskazaną dzienną dawkę łączymy z jogurtem owocowym.<br />\r\n	<strong>Napar:</strong> 1 łyżeczkę zalewamy wodą o temp. 95&ordm; C i parzymy przez 5-10 minut.<br />\r\n	<strong>Maseczka żeń-szeniowa:</strong> sproszkowany korzeń zalewamy małą ilością wrzącej wody w celu uzyskania konsystencji papki. Maseczkę nakładamy na sk&oacute;rę twarzy, szyi i dekoltu na 20-30 min.</p>\r\n', '', '', 1, 0),
(95, 7, 16, 1, 6, 'Żeń-szeń Brazylisjki- Suma (zmielony)', 'zen-szen_brazylisjki', '<p>\r\n	Jedno z najważniejszych zi&oacute;ł Amazonii. Zawiera liczne aminokwasy, sole mineralne i witaminy.&nbsp;<br />\r\n	<br />\r\n	Żeń-szeń brazylijski polecany jest sportowcom. Ze względu na działanie zwiększające dopływ tlenu do kom&oacute;rek, suma zwiększa wydolność organizmu oraz, w razie kontuzji, przyspiesza rekonwalescencje.<br />\r\n	<br />\r\n	Suma cechuje się działaniem wzmacniającym potencjał energetyczny, likwiduje wyczerpanie nerwowe i fizyczne, poprawia pamięć i koncentracje, wzmacnia odporność.<br />\r\n	<br />\r\n	Żeń-szeń Brazylijski ceniony jest za pozytywny wpływ na sferę seksualną zar&oacute;wno kobiet (poprawia libido, pomaga w zaburzeniach hormonalnych, łagodzi dolegliwości okresu menopauzy), jak i mężczyzn (pomocny w leczeniu impotencji).</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zen-szen_brazylijski_1.jpg', '', '<p>\r\n	Zalecana dzienna dawka to 2-4 gramy (1 łyżeczka= 2-3 gramy). Wskazaną ilość rozbić na dwie mniejsze dawki spożywanie rano i wieczorem.&nbsp;</p>\r\n<p>\r\n	<strong>Dodatek do jogurtu:</strong> wskazaną dzienną dawkę łączymy z jogurtem owocowym.&nbsp;&nbsp;</p>\r\n<p>\r\n	<strong>Napar:</strong> 1 łyżeczkę zalać wodą o temp. 95&ordm; C i parzyć przez 5-10 minut.</p>\r\n', '', '', 1, 0),
(97, 7, 16, 1, 8, 'Maca', 'maca', '<p>\r\n	Maca (Lepidium meyenii) to roślina z dużym potencjałem. Południowi Amerykanie uprawiają i stosują ją od tysiącleci. W medycynie naturalnej używana jest gł&oacute;wnie ze względu na właściwości odżywcze- dużą zawartość pełnowartościowego białka, egzogennych aminokwas&oacute;w, witamin, minerał&oacute;w i steroli.<br />\r\n	<br />\r\n	Maca jest idealna dla sportowc&oacute;w z uwagi na wysokoprocentową zawartość argininy w jej białku. Wpływa na wzrost siły i masy mięśniowej, zwiększa szybkość skurczu mięśni, ich wydolność oraz chroni przed wolnorodnikowym uszkodzeniem. Przyspiesza regeneracją organizmu po treningu.<br />\r\n	<br />\r\n	Maca wykazuje działanie afrodyzjakalne. Według badań posiada właściwości zwiększające płodność- podnosi libido oraz poprawia jakość nasienia.<br />\r\n	<br />\r\n	Ponad to spożywana jest w celu zwiększenia ilości składnik&oacute;w odżywczych w codziennej diecie. Stosowanie Macy pomaga w profilaktyce m.in. osteoporozy i anemii. Przeciwdziała gromadzeniu się złego cholesterolu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Maca_1.jpg', '', '<p>\r\n	Zaleca się spożywanie od 1 do 5 gram&oacute;w (1-2 łyżeczki) Macy dziennie.<br />\r\n	Mace można połączyć z jogurtem, lecz my polecamy stworzenie odżywczego napoju- szklanka mleka + łyżeczka miodu + 1-2 łyżeczki Macy.</p>\r\n', '', '', 1, 0),
(98, 7, 16, 1, 4, 'Boldo', 'boldo', '<p>\r\n	W Ameryce Południowej Boldo stosowane jest w medycynie naturalnej od dawna. Plemiona Indian używają liści tej niezwykłej rośliny na wszystkie schorzenia układu pokarmowego i moczowego.&nbsp;<br />\r\n	<br />\r\n	Boldo polecamy osobom z problemami żołądkowymi, gdyż działa ono przede wszystkim na układ pokarmowy. Wpływa na zwiększenie wydzielania soku żołądkowego oraz ż&oacute;łci w wątrobie, przy czym usprawnia jej przepływ do innych organ&oacute;w wewnętrznych. Przyspiesza to metabolizm, ułatwia procesy trawienne oraz poprawia przyswajanie składnik&oacute;w pokarmowych. Napar usprawnia perystaltykę jelit, dzięki czemu pomaga pozbyć się zaparć oraz znosi wzdęcia. Boldo jest r&oacute;wnież pomocne przy leczeniu schorzeń układu moczowego. Wykazuje silne właściwości bakteriob&oacute;jcze i grzybob&oacute;jcze, działa moczopędnie.<br />\r\n	<br />\r\n	Napar cechuje się silnym aromatem. Liście Boldo występują często w połączeniu z Yerba Mate, tworząc mieszanki o działaniu odchudzającym.<br />\r\n	<br />\r\n	Legenda głosi, iż dobroczynne właściwości Boldo zostały odkryte przez pasterza, kt&oacute;ry zauważył poprawę zdrowia swoich owiec spożywających tą roślinę. Do lecznictwa oficjalnego zostało wprowadzone w drugiej połowie XIX w.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/boldo_1.jpg', '', '<p>\r\n	1-2 łyżeczki boldo należy parzyć ok. 3-5 min. Stosować codziennie</p>\r\n', '', '', 1, 0),
(99, 7, 16, 1, 9, 'Muna-Muna', 'muna-muna', '<p>\r\n	Muna-Muna rozpowszechniona jest w p&oacute;łnocnej części Ameryki Południowej. Jej gł&oacute;wnym składnikiem jest olejek o zapachu miętowym, kt&oacute;remu zawdzięcza sw&oacute;j przyjemny smak i aromat.<br />\r\n	<br />\r\n	Muna-Muna wspomaga przede wszystkim procesy trawienne, łagodzi dolegliwości jelitowe, objawy kolki, niestrawność, likwiduje uczucie ciężkości i przejedzenia. Posiada właściwości przeciwgrzybiczne i przeciwpasożytnicze.<br />\r\n	<br />\r\n	Napary z liści i łodyżek łagodzi objawy przeziębienia (działa przeciwgorączkowo i przeciwzapalnie), anginy, zapalenia oskrzeli i płuc. Polecany jest w okresach nasilonego występowania chor&oacute;b g&oacute;rnych dr&oacute;g oddechowych.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Muna_1.jpg', '', '<p>\r\n	1-2 łyżeczki suszu zalać wrzącą wodą, parzyć ok. 7 min lub gotować na małym ogniu ok. 5 min.</p>\r\n', '', '', 1, 0),
(100, 7, 17, 1, 12, 'Damiana', 'damiana', '<p>\r\n	Damiana to znaczące zioło meksykańskiej medycyny ludowej. Jak sugeruje jej botaniczna nazwa- Turnera aphrodisiaca, od wiek&oacute;w uważana jest za środek pobudzający popęd płciowy (zar&oacute;wno u kobiet, jaki i u mężczyzn) oraz lek na impotencję.<br />\r\n	<br />\r\n	Damiana stosowana jest przede wszystkim jako lekarstwo na kobiece problemy hormonalne. Wzmacnia libido, redukuje objawy PMS- zesp&oacute;ł napięcia przedmiesiączkowego oraz łagodzi przebieg comiesięcznej menstruacji.<br />\r\n	<br />\r\n	Ponadto zioło Damiana wykazuje działanie moczopędne i odkażające układ moczowy. W tradycji ludowej używana jest&nbsp; za środek uspokajający w stanach niepokoju, depresji.<br />\r\n	<br />\r\n	Napar z Damiany cechuje się przyjemnym słodko-ziołowym smakiem. Polecamy go w szczeg&oacute;lności:<br />\r\n	-kobietom w celu wyregulowania gospodarki hormonalnej oraz zwiększenia libido<br />\r\n	-mężczyznom chcącym poprawić swoje życie seksualne<br />\r\n	-osobom szukającym relaksu po stresującym dniu</p>\r\n', 'http://www.test.tientea.pl/img/produkty/damiana_1.jpg', '', '<p>\r\n	Napar można przygotować na dwa sposoby:<br />\r\n	- 2-3 łyżeczki liści zalać 250 ml wrzątku (pełna szklanka). Całość parzyć pod przykryciem przez 3 minuty<br />\r\n	- 2-3 łyżeczki liści gotować na małym ogniu przez ok. 3 minuty<br />\r\n	Należy spożywać gorący napar.</p>\r\n', '', '', 1, 0),
(101, 7, 17, 1, 12, 'Catuaba', 'catuaba', '<p>\r\n	Kawałki kory brazylijskiego drzewa Catuaba to niezwykle skuteczny afrodyzjak stosowany od wiek&oacute;w w medycynie naturalnej.<br />\r\n	<br />\r\n	Catuaba wpływa na wzrost libido oraz skutecznie walczy z impotencją, nie wywołując żadnych efekt&oacute;w ubocznych, za co jest szeroko ceniona. W brazylijskim stanie Minas do dziś funkcjonuje powiedzenie: &bdquo;Do sześćdziesiątki ojciec sam płodzi własnego syna, po sześćdziesiątce płodzi go Catuaba&rdquo;.<br />\r\n	<br />\r\n	Wywar z Catuaby, opr&oacute;cz właściwości afrodyzjakalnych, stymuluje pracę m&oacute;zgu, poprawia pamięć, dotlenia organizm, zmniejsza zmęczenie. Wypity zamiast kawy dostarcza energii do pracy i wysiłku fizycznego.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/catuaba_1.jpg', '', '<p>\r\n	1-2 łyżeczki kory Catuaba gotujemy na małym ogniu przez ok. 5 min, następnie odstawiamy do naciągnięcia. Po ok. 15 min napar jest gotowy do spożycia.<br />\r\n	<br />\r\n	Aby poprawić potencję, wywar należy stosować 2 razy dziennie przez okres 2 tygodni.<br />\r\n	<br />\r\n	Catuabę można łączyć z innymi ziołami, np. Lapacho.</p>\r\n', '', '', 1, 0),
(102, 3, 1, 1, 1, 'Truskawki w Szampanie', 'truskawki_w_szampanie', '<p>\r\n	Truskawki w Szampanie to prawdziwe szaleństwo smakowe! Nieprzeciętne połączenie nut kwiatowych (lawendy i pączk&oacute;w r&oacute;ży) z plastrami truskawki oraz rodzynkami.</p>\r\n<p>\r\n	Całość tworzy napar o głębokim i wykwintnym aromacie. Delikatnie wyczuwalny lawendowy akcent wprowadzi w stan relaksu i miłego wyciszenia.</p>\r\n<p>\r\n	<strong>Szanowni Klienci!<br />\r\n	aby umilić Wam degustację Truskawek w Szampanie, do każdego opakowania 100 i 200 gramowego dołączamy w prezencie woreczek suszonej lawendy francuskiej.</strong></p>\r\n<p>\r\n	Umieszczenie woreczka pod poduszką pomoże zasnąć i cieszyć się błogim snem, ponieważ kojący lawendowy aromat zmniejsza napięcie, wycisza oraz usuwa zmęczenie minionego dnia. Ponad to można go wykorzystać jako zapach zawieszany w szafkach, komodach, kt&oacute;ry nada ubraniom subtelną lawendową woń.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/truskawki_w_szampanie_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać maksymalnie 3-krotnie.</p>\r\n', '<p>\r\n	Zielona herbata Sencha, plastry truskawek, lawenda, rodzynki, pączki r&oacute;ż</p>\r\n', '', 2, 1),
(103, 1, 14, 1, 6, 'Century Lover', 'century_lover', '<p>\r\n	Century Lover to zar&oacute;wno przyjemność dla podniebienia, jak i niebywały spektakl dla oczu. Biała herbata ręcznie zwijana na kształt kulek, kt&oacute;re po zaparzeniu otwierają się, ukazując pomarańczowy kwiat lilii.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Herbaciany spektakl zachwyca i zadziwia jednocześnie, w momencie gdy niepozorna kulka na naszych oczach przeistacza się w kunsztowną kompozycję. Białe listki rozchylają się nieśpiesznie, uwalniając ukryty w ich wnętrzu subtelny aromat.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Degustowanie Century Lover, podobnie jak wszystkich herbat kwitnących, wymaga chwili wyciszenia i celebracji, kt&oacute;ra pozwoli w pełni docenić wartość tego czarującego naparu.&nbsp;&nbsp;&nbsp;<br />\r\n	<br />\r\n	Ukryta wewnątrz kwiecista niespodzianka czyni z tej herbaty idealny podarunek, dzięki kt&oacute;remu obdarowana osoba będzie miała szansę wzięcia udziału w prawdziwym herbacianym rytuale.<br />\r\n	<br />\r\n	50g to około 6-7 sztuk.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/century_lover_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> od 75 do 85 st. C.<br />\r\n	<strong>Ilość:</strong> jedna kulka na dzbanek<br />\r\n	<strong>Czas parzenia: </strong>5-7 minut<br />\r\n	Przygotowanie naparu z kwitnącej herby ma w sobie cechy zjawiska artystycznego. Aby m&oacute;c je podziwiać, do zaparzenia polecamy użyć szklanego dzbanka podgrzewanego niewielką świeczką. Najlepszym czasem na przyrządzenie naparu jest wiecz&oacute;r- przy zgaszonym świetle i w blasku świecy herbaciane widowisko potrafi naprawdę zachwycić.<br />\r\n	<br />\r\n	Z jednej kulki możemy przygotować nawet 3 napary.&nbsp;</p>\r\n', '', '', 1, 0),
(104, 7, 16, 1, 10, 'Lapacho Czerwona Pomarańcza', 'lapacho_czerwona_pomarancza', '<p>\r\n	Lapacho przywędrowało do Polski z Ameryki Południowej, gdzie jest powszechnie stosowane w medycynie naturalnej.<br />\r\n	<br />\r\n	Szeroki rozgłos zyskało dzięki właściwością antynowotworowym. Jak głoszą badania naukowe, regularne picie naparu Lapacho wzmacnia system immunologiczny, pomaga w walce z bakteriami, pasożytami, wirusami oraz grzybami, obniża poziom cukru we krwi. Wiadomo r&oacute;wnież o pozytywnym działaniu w przypadku wrzod&oacute;w, alergii, reumatyzmu czy też problem&oacute;w z wątrobą. Wywar Lapacho jest bogatym źr&oacute;dłem: żelaza, wapnia, potasu, miedzi i magnezu.<br />\r\n	<br />\r\n	Lapacho cechuje się gorzko-kwaśnym smakiem. Sk&oacute;rka pomarańczy oraz liść maliny osłabiają specyficzny aromat kory, nadając mu przyjemnej cytrusowej nuty. Lapacho z dodatkami polecamy wszystkim tym, kt&oacute;ry cenią sobie zdrowotne właściwości południowoamerykańskiego naparu, ale nie przepadają za jego oryginalnym smakiem.<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/lapacho_czerwona_pomarancza_1.jpg', '', '<p>\r\n	<strong>Ilość: </strong>1-2 łyżeczki na szklankę<br />\r\n	<strong>Czas przygotowania:</strong> Lapacho należy gotować na małym ogniu przez ok. 5 minut, mieszając co jakiś czas. Następnie odstawić do ostygnięcia na 5-7 minut. Po tym czasie korę odcedzić i pić wyłącznie sam napar. Można spożywać 2-8 szklanek dziennie.</p>\r\n', '<p>\r\n	Lapacho, sk&oacute;rka pomarańczy, liść maliny</p>\r\n', '', 2, 0),
(105, 7, 16, 1, 11, 'Lapacho Owoce Lasu', 'lapacho_owoce_lasu', '<p>\r\n	Lapacho przywędrowało do Polski z Ameryki Południowej, gdzie jest powszechnie stosowane w medycynie naturalnej.<br />\r\n	<br />\r\n	Owocowe dodatki w postaci czarnej porzeczki, czarnego bzu, maliny oraz jeżyny wzbogacają naturalny smak kory Lapacho. Napar pity gł&oacute;wnie ze względu na sw&oacute;j zdrowotny potencjał staje się r&oacute;wnocześnie smacznym napojem, po kt&oacute;ry warto sięgnąć także dla przyjemności.<br />\r\n	<br />\r\n	Szeroki rozgłos Lapacho zyskało dzięki właściwością antynowotworowym. Jak głoszą badania naukowe, regularne picie naparu Lapacho wzmacnia system immunologiczny, pomaga w walce z bakteriami, pasożytami, wirusami oraz grzybami, obniża poziom cukru we krwi. Wiadomo r&oacute;wnież o pozytywnym działaniu w przypadku wrzod&oacute;w, alergii, reumatyzmu czy też problem&oacute;w z wątrobą. Wywar Lapacho jest bogatym źr&oacute;dłem: żelaza, wapnia, potasu, miedzi i magnezu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/lapacho_owoce_lasu_1.jpg', '', '<p>\r\n	<strong>Ilość:</strong> 1-2 łyżeczki na szklankę<br />\r\n	<strong>Czas przygotowania: </strong>Lapacho należy gotować na małym ogniu przez ok. 5 minut, mieszając co jakiś czas. Następnie odstawić do ostygnięcia na 5-7 minut. Po tym czasie korę odcedzić i pić wyłącznie sam napar. Można spożywać 2-8 szklanek dziennie.</p>\r\n', '<p>\r\n	Lapacho, czarna porzeczka, czarny bez, malina, jeżyna</p>\r\n', '', 2, 0),
(106, 7, 17, 1, 13, 'Muira Puama', 'muira_puama', '<p>\r\n	W południowoamerykańskiej medycynie ludowej Muira Puama (zwana r&oacute;wnież Drzewem Potencji) znana jest jako afrodyzjak i tonik seksualny dla mężczyzn.<br />\r\n	<br />\r\n	Obecnie &quot;Drzewo Potencji&quot; bije rekordy popularności w Europie Zachodniej. Jego skuteczność oraz bezpieczne składniki sprawiają, że jest numer jeden wśr&oacute;d alternatyw dla znanej Viagry. Według badań 75% mężczyzn zażywających codziennie (1-1,5 grama) Muire Puame przez okres 2 tygodni zaobserwowało znaczną poprawę funkcji seksualnych. Muira Puama nie jest lekiem- jest to środek oparty na bazie naturalnych składnik&oacute;w.<br />\r\n	<br />\r\n	Muira Puama to idealne rozwiązaniem dla os&oacute;b, kt&oacute;re pragną poprawy życia seksualnego.<br />\r\n	Stosowanie &quot;Drzewa Potencji&quot; zalecane jest w stanach osłabienia aktywności seksualnej- poprawia libido, ułatwia osiągnięcie wzwodu oraz pobudza odczuwanie bodzc&oacute;w seksulanych.</p>\r\n<p>\r\n	W naszej ofercie dostępny jest r&oacute;wnież wyciąg z Muira Puama.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/muira_puama_1.jpg', '', '<p>\r\n	1-2 łyżeczki Muira Puamy gotujemy w 250 ml wody (pełna szklanka) przez 5 minut. Otrzymany napar pozostawiamy pod przykryciem na 15 minut. Napar należy pić 1-2 razy dziennie.&nbsp;</p>\r\n', '', '', 1, 0),
(107, 7, 17, 1, 14, 'Muira Puama wyciąg', 'muira_puama_wyciag', '<p>\r\n	W południowoamerykańskiej medycynie ludowej Muira Puama (zwana r&oacute;wnież Drzewem Potencji) znana jest jako afrodyzjak i tonik seksualny dla mężczyzn.<br />\r\n	<br />\r\n	Obecnie &quot;Drzewo Potencji&quot; bije rekordy popularności w Europie Zachodniej. Jego skuteczność oraz bezpieczne składniki sprawiają, że jest numer jeden wśr&oacute;d alternatyw dla znanej Viagry. Według badań 75% mężczyzn zażywających codziennie (1-1,5 grama) Muire Puame przez okres 2 tygodni zaobserwowało znaczną poprawę funkcji seksualnych. Muira Puama nie jest lekiem- jest to środek oparty na bazie naturalnych składnik&oacute;w.<br />\r\n	<br />\r\n	Muira Puama to idealne rozwiązaniem dla os&oacute;b, kt&oacute;re pragną poprawy życia seksualnego.<br />\r\n	Stosowanie &quot;Drzewa Potencji&quot; zalecane jest w stanach osłabienia aktywności seksualnej- poprawia libido, ułatwia osiągnięcie wzwodu oraz pobudza odczuwanie bodzc&oacute;w seksulanych.</p>\r\n<p>\r\n	W naszej ofercie dostępny jest r&oacute;wnież Muira Puama korzeń.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/muira_puama_wyciag_1.jpg', '', '<p>\r\n	P&oacute;ł łyżeczki wyciągu połączyć z jogurtem lub rozpuścić w soku. Wypić całość wraz z osadem.</p>\r\n', '', '', 1, 0),
(109, 9, 0, 1, 8, 'Czarne Oliwki Kallisto Kalamata 320 ml', 'czarne_oliwki_kalamata', '<p>\r\n	Gaje oliwne porastają Peloponez i rozsiane po morzu wysepki greckie od tysięcy lat. Najszlachetniejsze wśr&oacute;d oliwek- oliwki pochodzące z okręgu Kalamata na Peloponezie znajdą Państwo w naszej ofercie.<br />\r\n	<br />\r\n	Dorodne, z grubym miąższem, w kolorze bakłażana i o delikatnym słodko- kwaśnym smaku stanowią produkt najwyższej jakości.<br />\r\n	Dojrzewające w znakomitym mikroklimacie czarne oliwki Kalamata przechodzą wnikliwą selekcję. Wyłącznie te najlepsze są naturalnie konserwowane w solance, a ich unikalny smak dopełniony jest oliwą z oliwek oraz odrobiną octu winnego.<br />\r\n	<br />\r\n	Czarne Oliwki Kallisto Kalamata Olives to znakomity dodatek do sałatek, sos&oacute;w, koktajli, kanapek.<br />\r\n	<br />\r\n	My uwielbiamy degustować je razem z czerwonym winem. Aby podkreślić walory smakowe oliwek, wystarczy dodać odrobię ekologicznej oliwy oraz aromatyczne oregano- podane w ten spos&oacute;b zachwycą każdego miłośnika dobrych smak&oacute;w.&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/oliwki_greckie_1.jpg', '', '', '<p>\r\n	Pojemność 320 ml, masa netto 200 g<br />\r\n	Skład: oliwki Kalamata, woda, ocet winny, s&oacute;l morska</p>\r\n', '', 2, 0),
(111, 9, 0, 1, 9, 'Pasta z oliwek Kallisto 190 g', 'pasta_z_oliwek_kallisto', '<p>\r\n	Kalamata to największe miasteczko południowego Pleoponezu, kt&oacute;re słynie z uprawy znakomitej odmiany oliwek. Oliwki Kalamata, uważane przez wielu za najsmaczniejsze, stanową gł&oacute;wny składnik znakomitej pasty oliwnej Kallisto, kt&oacute;rej gwarancją jakości jest pochodzenie- prosto ze słonecznej Grecji!<br />\r\n	<br />\r\n	Tajemnica dobrej pasty z oliwek tkwi w jakości oliwek, z kt&oacute;rych została przyrządzona oraz właściwym ich doprawieniu. W paście Kallisto rozdrobnione oliwki Kalamata zostały połączone z wysokiej jakości oliwą z oliwek, octem winnym z czerwonego wina oraz czosnkiem. Naturalne składniki tworzą pastę o bakłażanowym kolorze, aromatycznym owocowym smaku oraz idealnej konsystencji.<br />\r\n	<br />\r\n	Wyjątkowy smak pasty Kallisto sprawia, że można jeść ją prosto ze słoiczka. Ponadto znakomicie sprawdza się jako dodatek do chrupkiego pieczywa, grzanek oraz kanapek.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pasta_z_oliwek_1.jpg', '', '', '<p>\r\n	Waga: 190 g<br />\r\n	Skład:oliwki Kalamata, ocet winny, czosnek, oliwa z oliwek extra virgin, aromatyczne zioła</p>\r\n', '', 2, 0),
(112, 9, 0, 1, 5, 'EKOLOGICZNA Oliwa z Oliwek KALLISTO Extra Virgin', 'grecka_oliwa_z_oliwek', '<p>\r\n	<strong>KWASOWOŚĆ</strong> <strong>0,3%</strong></p>\r\n<p>\r\n	<strong>POJEMNOŚĆ: do wyboru 0,25l lub 0,5</strong><strong>l</strong><br />\r\n	<br />\r\n	Oferowana przez nas ekologiczna oliwa z oliwek Kallisto jest oryginalnym, śr&oacute;dziemnomorskim darem należącym do ścisłej czoł&oacute;wki najlepszych oliw świata, na co wskazuje bardzo niski poziom jej kwasowości. Kwasowość 0,3% (klasa &bdquo;extra vergin&rdquo;) oznacza, iż oliwa jest 100% sokiem z oliwek, kt&oacute;ry powstał z tłoczenia wyłącznie świeżych owoc&oacute;w. Zebrane ręcznie oliwki najlepszej jakości trafiają do tłoczni w ciągu maksymalnie 24 godzin. Oliwa Kallisto jest efektem pierwszego tłoczenia na zimno oliwek odmiany koroneiki, z kt&oacute;rych produkowane są najdoskonalsze oliwy na świecie.<br />\r\n	<br />\r\n	Oliwa z oliwek Kallisto charakteryzuje się zielonkawo-ż&oacute;łtym zabarwieniem oraz dość pikantnym, owocowym smakiem.&nbsp; Znakomita zar&oacute;wno do sałatek, jak i smażenia. Jako najzdrowszy z tłuszcz&oacute;w jest niezastąpionym składnikiem zdrowej diety.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/oliwa_z_oliwek_1.jpg', '', '', '', '', 1, 0),
(146, 7, 20, 1, 19, 'Wanilia w laskach', 'wanilia_w_laskach', '<p>\r\n	Słodki zapach wanilii jest tak kuszący, że powszechnie wykorzystywana jest do wzbogacenia smaku ciast, krem&oacute;w, lod&oacute;w, tort&oacute;w i innych słodkości.<br />\r\n	<br />\r\n	Zaskakującym jest fakt, że wanilia to storczyk. Jej kwiaty nie pachną, zaś cudowną woń wydzielają pęknięte owoce, kt&oacute;re mają formę długich strączk&oacute;w.<br />\r\n	<br />\r\n	Z laski wanilii można zrobić niezwykle aromatyczny cukier waniliowy. Wystarczy rozciąć ją na p&oacute;ł, delikatnie wyskrobać ziarenka, po czym wymieszać je z 2 szklankami drobnego cukru. Pusty strączek r&oacute;wnież zakopujemy w cukrze (można go pociąć na kilka części). Całość mieszamy i szczelnie zamykamy. Już po ok. 1-2 tygodniach możemy cieszyć się cukrem waniliowym z najwyższej p&oacute;łki! Jest znakomity do wszelkich słodkości, kawy czy kubka ciepłego mleka przed snem...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/wanilia_1.jpg', '', '', '', '', 1, 0),
(116, 9, 0, 1, 5, 'Dolmadakia – faszerowane liście winogron 2 kg', 'dolmadakia', '<p>\r\n	Dolmadakia poznaliśmy na Krecie. Zamawiając je, tak naprawdę nie wiedzieliśmy, czego możemy się spodziewać, gdyż potrawa ta była dla nas całkowicie nieznana. Wszystko stało się jasne, gdy na kraciastym obrusie pojawił się talerz pełen malutkich gołąbeczk&oacute;w polanych sosem pomidorowym, oliwą z oliwek oraz udekorowanych plastrami świeżej cytryny. Już po pierwszym kęsie wiedzieliśmy, że dolmadakia podbiły nasze serca!<br />\r\n	<br />\r\n	Wielką radością napawa nas fakt, iż możemy zaoferować Państwu ten prawdziwie kreteński specjał. Doprawiony aromatycznymi przyprawami ryż zawinięty w delikatne liście młodych winogron to prawdziwie apetyczny przysmak. Wyśmienity smak greckich gołąbeczk&oacute;w uzupełnia lekki cytrynowy sos. Szczerze m&oacute;wiąc, początkowo byliśmy sceptycznie nastawieni do produktu z puszki, ale gdy tylko go spr&oacute;bowaliśmy wr&oacute;ciły wspomnienia i możemy zagwarantować, że proponowane przez nas dolmadakia smakują r&oacute;wnie pyszne, jak te podawane w greckich tawernach.<br />\r\n	<br />\r\n	Dolmadakia, jak większość greckich przysmak&oacute;w, znakomicie komponują się z winem. Aby uwydatnić ich smak, polecamy schłodzić &bdquo;gołąbeczki&rdquo; w lod&oacute;wce oraz skropić sokiem z cytryny. Świetnie komponują się r&oacute;wnież z sosem pomidorowym, tzatzikami oraz gęstym jogurtem.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/dolmadakia_1.jpg', '', '', '', '', 1, 0),
(117, 9, 0, 2, 1, 'Pomidory suszone na słońcu 1kg', 'pomidory_suszone_na_sloncu', '<p>\r\n	Grecja to zdecydowanie kr&oacute;lestwo słońca. Jednym z jego dobrodziejstw są wyśmienite suszone pomidory, kt&oacute;re mamy zaszczyt Państwu zaoferować.<br />\r\n	<br />\r\n	Aby stworzyć ten śr&oacute;dziemnomorski przysmak, mieszkańcy Hellady dzielą na p&oacute;ł dojrzałe i mięsiste owoce, po czym wystawiają je na działanie promieni słonecznych. Z czasem pomidory tracą wodę, uzyskując skoncentrowany i jedyny w swoim rodzaju smak. Suszone na wolnym powietrzu zachowują żywą, apetyczną barwę, kt&oacute;ra odr&oacute;żnia je od pomidor&oacute;w suszonych w sztucznych warunkach o ciemnym i przygaszonym kolorze.<br />\r\n	<br />\r\n	Pachnące słońcem suszone pomidory to kwintesencja dobrego, naturalnego smaku wysokiej klasy. Doprawione aromatycznymi ziołami stanowią znakomitą przekąskę oraz dodatek do sałatek, mięs, spaghetti, pizzy, chrupkiego pieczywa. Świetnie komponują się z wszelkiego rodzaju serami: fetą, mozarellą, serem ż&oacute;łtym oraz lampką ulubionego wina.<br />\r\n	<br />\r\n	Pozostałą po pomidorach zalewę z oleju słonecznikowego można wykorzystać do smażenia lub pieczenia.<br />\r\n	<br />\r\n	Suszone pomidory są doskonałym źr&oacute;dłem likopenu- związku, kt&oacute;ry chroni nasz organizm przed atakiem wolnych rodnik&oacute;w, poprawia kondycję serca, sk&oacute;ry oraz zmniejsza ryzyko rozwoju nowotwor&oacute;w.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/pomidory_suszone_1.jpg', '', '', '<p>\r\n	Waga: 1kg<br />\r\n	Skład: pomidory suszone na słońcu, olej słonecznikowy, czosnek, s&oacute;l, przyprawy, regulator kwasowości-kwasek cytrynowy</p>\r\n', '', 2, 0),
(118, 9, 0, 1, 6, 'Miód tymiankowy 0,5 kg', 'miod_tymiankowy', '<p>\r\n	W Grecji pozyskiwany jest jeden z najbardziej cenionych i cieszący się wielkim uznaniem smakoszy mi&oacute;d tymiankowy.<br />\r\n	<br />\r\n	Oferowany w naszym sklepie mi&oacute;d pochodzi z prowadzonej przez grecką rodzinę ekologicznej pasieki usytuowanej na malowniczym p&oacute;łwyspie Peloponeskim, w rejonie Tripoli.<br />\r\n	<br />\r\n	Mi&oacute;d tymiankowy pozyskiwany jest z nektaru zbieranego przez pszczoły z liliowor&oacute;żowych kwiat&oacute;w tymianku. Cechuje się dość intensywnym aromatem z wyraźną nutą zapachową tymianku, głębokim smakiem oraz ciemno-bursztynową barwą.<br />\r\n	<br />\r\n	W związku z obecnością substancji przeciwdrobnoustrojowych i przeciwzapalnych, mi&oacute;d tymiankowy jest środkiem pomocniczym w leczeniu schorzeń g&oacute;rnych dr&oacute;g oddechowych oraz zapaleniu gardła.<br />\r\n	<br />\r\n	To znakomity dodatek do ciast, jogurtu, herbat oraz świeżych owoc&oacute;w. Łyżeczka bursztynowej słodyczy przeniesie nas do oblanej słońcem Hellady...</p>\r\n', 'http://www.test.tientea.pl/img/produkty/miod_tymiankowy_1.jpg', '', '', '', '', 1, 0),
(119, 8, 0, 2, 1, 'Zaparzacz Domek', 'zaparzacz_domek', '<p>\r\n	Praktyczny, elegancki i pomysłowy zaparzacz w kształcie domku z otwieranym dachem. Wykonany ze stali nierdzewnej znakomicie sprawdza się w przygotowaniu r&oacute;żnego typu herbat.<br />\r\n	<br />\r\n	Dodatkowe zalety zaparzacza:</p>\r\n<p>\r\n	-system drobnych otwork&oacute;w, umożliwiający swobodny przepływ wody, pozwala wydobyć z liści głębie aromatu;</p>\r\n<p>\r\n	-łańcuszek zakończony haczykiem umożliwia umieszczenie zaparzacza na brzegu filiżaki;</p>\r\n<p>\r\n	-podstawka zapewnia wygodne odstawienie zaparzacza po jego użyciu (bez plam na obrusie!).<br />\r\n	<br />\r\n	Ze względu na swoją funkcjonalność i walory estetyczne zaparzacz domek jest świetnym dodatkiem do herbacianych zestaw&oacute;w prezentowych.<br />\r\n	<br />\r\n	Wymiary:<br />\r\n	szer. 3,5 cm<br />\r\n	wys. 3 cm<br />\r\n	gł. 2 cm</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zaparzacz_domek_1.jpg', '', '', '', '', 1, 0);
INSERT INTO `products` (`product_id`, `category_id`, `subcategory_id`, `unit_id`, `product_order`, `product_name`, `product_alias`, `product_description`, `photo`, `smal_photo`, `tab1`, `tab2`, `tab3`, `active_tab_id`, `is_gratis`) VALUES
(120, 8, 0, 2, 2, 'Zaparzacz Kulka', 'zaparzacz_kulka', '<p>\r\n	Wygodny w użyciu zaparzacz w kształcie kulki o średnicy 5 cm wykonany ze stali nierdzewnej.<br />\r\n	<br />\r\n	Niewątpliwą zaletą tego typu zaparzacza jest możliwość szerokiego otwarcia, dzięki kt&oacute;remu w łatwy i szybki spos&oacute;b możemy napełnić go suszem oraz wyczyścić. Praktyczny łańcuszek pozawala na zahaczenie zaparzacza na brzegu filiżanki oraz wyciągnięcie po zaparzeniu.&nbsp;<br />\r\n	<br />\r\n	Dzięki zaparzaczowi możemy cieszyć się naparem pozbawionym fus&oacute;w. Polecamy napełnić go do połowy, aby herbaciane listki miały miejsce na rozwinięcie i oddanie całego bogactwa aromatu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zaparzacz_kulka_1.jpg', '', '', '', '', 1, 0),
(127, 8, 0, 2, 3, 'Zaparzacz Czajniczek', 'zaparzacz_czajniczek', '<p>\r\n	Wykonany z nierdzewnej stali zaparzacz czajniczek to znakomita propozycja dla miłośnik&oacute;w zaskakujących i funkcjonalnych akcesori&oacute;w do herbaty.<br />\r\n	<br />\r\n	Zaparzacz wyposażony jest w szczelną pokrywkę, kt&oacute;ra daje pewność, że susz nie przemieści się do naparu. Posiada on r&oacute;wnież praktyczną podstawę pomagającą w utrzymaniu czystości.<br />\r\n	<br />\r\n	Zaparzacz czajniczek umożliwia proste i sprawne przyrządzenie naparu pozbawionego fus&oacute;w. Świetnie sprawdzi się m.in. w pracy, gdzie na przygotowanie herbaty mamy zazwyczaj kilka minut. Używanie zaparzacza to nie tylko oszczędność czasu- te sam susz herbaciany możemy z łatwością parzyć parokrotnie.<br />\r\n	<br />\r\n	Zaparzacz w kształcie czajniczka to znakomity pomysł na prezent oraz element ubarwiający codzienne picie herbaty.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zaparzacz_czajniczek_1.jpg', '', '', '', '', 1, 0),
(122, 8, 0, 2, 4, 'Zaparzacz Bambusowy', 'zaparzacz_bambusowy', '<p>\r\n	Ręcznie wykonany zaparzacz bambusowy świetnie nadaje się do przygotowania zi&oacute;ł oraz herbat o średnich i dużych liściach. Mocny i gęsty splot zapobiega przedostaniu się fus&oacute;w do naparu, a zarazem daje swobodny przepływ wody, kt&oacute;ry jest niezbędny do wydobycia pełni smaku i aromatu z herbacianego suszu.<br />\r\n	<br />\r\n	<strong>Ważne! </strong>Przed pierwszym użyciem zaparzacz należy wyparzyć 3-4-krotnie zalewając go wrzątkiem i pozostawić na kilka minut. Wyparzenie ma na celu usunięcie aromatu bambusa, kt&oacute;ry m&oacute;głby przejść do przygotowywanego naparu.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/zaparzacz_bambusowy_1.jpg', '', '', '', '', 1, 0),
(123, 8, 0, 2, 5, 'Termometr', 'termometr', '<p>\r\n	Wygodny w użyciu, solidnie wykonany oraz bardzo dokładny tarczowy termometr kuchenny. Idealny do pomiaru wszelkiego rodzaju cieczy oraz produkt&oacute;w, w kt&oacute;re można wbić metalowy szpikulec, np. pieczeń, ciasto.<br />\r\n	<br />\r\n	Niezwykła funkcjonalność termometru polega na tym, iż przygotowując herbatę nie trzeba wyciągać go z wody- co często skutkuje zafałszowaniem temperatury odczytu poprzez jej obniżenie. Pomiar widoczny jest na czytelnej tarczy umieszczonej na końcu metalowego szpikulca.<br />\r\n	<br />\r\n	Termometr jest niezbędny do prawidłowego zaparzenia herbaty- pozwala ustalić odpowiednią temperaturę wody, a co za tym idzie uzyskać możliwie najlepszy smak i aromat naparu.<br />\r\n	<br />\r\n	Wyposażony w czerwone etui ochronne.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/termometr_1.jpg', '', '', '', '', 1, 0),
(124, 9, 0, 1, 7, 'Miód pomarańczowy 1 kg', 'miod_pomaranczowy', '<p>\r\n	Greckie gaje pomarańczowe pachną oszałamiająco. To właśnie z bielących się kwiat&oacute;w pomarańczy pozyskiwany jest jasno herbaciany, subtelny w smaku i aromacie mi&oacute;d pomarańczowy.<br />\r\n	<br />\r\n	Mi&oacute;d, kt&oacute;ry Państwu oferujemy pochodzi z niewielkiej, przechodzącej z pokolenia na pokolenie rodzinnej pasieki znajdującej się na p&oacute;łwyspie Peloponez.<br />\r\n	<br />\r\n	Klimat peloponeski sprzyja produkcji miodu najwyższej jakości- pszczoły pobierają nektar praktycznie przez cały rok, dlatego nie muszą być sztucznie dokarmiane cukrem, w związku z tym wytwarzają mi&oacute;d w 100% zdrowy i ekologiczny.<br />\r\n	<br />\r\n	Mi&oacute;d pomarańczowy ma właściwości uspakajające. Wypity przed snem- najlepiej rozpuszczony w ciepłym mleku lub ziołowej herbacie- ułatwia zasypianie i zwalcza bezsenność.<br />\r\n	<br />\r\n	Niezr&oacute;wnane walory smakowe czynią z niego znakomity dodatek do napoj&oacute;w, herbat oraz słodkich deser&oacute;w będących prawdziwą rozkoszą dla podniebienia.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/miod_pomaranczowy_1.jpg', '', '', '', '', 1, 0),
(125, 2, 3, 1, 23, 'Darjeeling FTGFOP First Flush', 'darjeeling_ftgfop_first_flush', '<p>\r\n	&quot;Szampan wśr&oacute;d herbat&quot;- często słyszy się, gdy mowa o tej wykwintnej odmianie. Subtelny, doskonale zbalansowany smak z delikatną kwiatową nutą zachwyci niejednego smakosza herbaty.<br />\r\n	<br />\r\n	Napar o bursztynowej barwie i niezwykle przyjemnym aromacie sytuującym się pomiędzy czarną a zieloną herbatą.<br />\r\n	<br />\r\n	Skr&oacute;t FTGFOP1 (Finest Tippy Golden Flowery Orange Pekoe 1) oznacza, że herbata zawiera bardzo dużą ilość młodych pąk&oacute;w i pochodzi z pierwszego wiosennego zbioru (First Flush). To właśnie ta pora roku uznana jest za najbardziej sprzyjającą zbiorom, a zebrane wiosną listki cieszą się respektem zar&oacute;wno wśr&oacute;d plantator&oacute;w, jak i entuzjast&oacute;w herbaty.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/darjeeling_FTGFOP_first_flush_1.jpg', '', '<p>\r\n	<b>Temperatura</b>: 90-95 stopni C<br />\r\n	<b>Ilość</b>: 1 łyżeczka suszu na filiżankę<br />\r\n	<b>Czas parzenia</b>: 2-3 min<br />\r\n	Ponieważ Darjeeling First Flush charakteryzuje się bardzo bogatym smakiem nie polecamy łączyć go z dodatkami, tj.: mleko, cytryna, cukier.</p>\r\n', '', '', 1, 0),
(128, 9, 0, 1, 5, 'Greckie Kapary Aldoro 1l', 'kapary_aldoro', '<p>\r\n	Kapary to śr&oacute;dziemnomorska przyprawa o specyficznym, słodko-kwaśnym smaku. Dojrzewające w greckim słońcu kapary Aldoro znakomicie komponują się z innymi śr&oacute;dziemnomorskimi przyprawami tj. oliwki, bazylia, oregano, tymianek. Kapary dodadzą energii daniom z ryb (szczeg&oacute;lnie &quot;lubią się&quot; z tuńczykiem, w kuchni polskiej używane są do śledzi) oraz mięs. Stanowią świetny dodatek do spaghetti, pizzy, sos&oacute;w, sałatek, marynat, jajecznicy.<br />\r\n	<br />\r\n	Należy unikać duszenia kapar&oacute;w w wysokiej temperaturze, gdyż tracą sw&oacute;j charakterystyczny smak. Najlepiej dodać je do już ciepłej potrawy.<br />\r\n	<br />\r\n	Kapary można degustować jako przekąskę, kt&oacute;ra znakomicie komponuje się z serami i oczywiście czerwonym winem.<br />\r\n	Jest to dość &quot;kontrowersyjna&quot; przyprawa- jedni ją uwielbiają, inni zaś omijają szerokim łukiem. Warto spr&oacute;bować kapar&oacute;w choćby dlatego, aby m&oacute;c opowiedzieć się za kt&oacute;rąś ze stron:)<br />\r\n	<br />\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/kapary_1.jpg', '', '', '<p>\r\n	Waga z zalewą: 1l<br />\r\n	Skład: kapary, woda, s&oacute;l, ocet winny<br />\r\n	Przed spożyciem kapary należy opłukać z zalewy</p>\r\n', '', 2, 0),
(130, 9, 0, 1, 23, 'Grecka Mięta', 'ziola_grecka_mieta', '<p>\r\n	Nazwa Mięta (Mentha) ma swoje korzenie w mitologii greckiej- pochodzi od imienia nimfy Menthe, kt&oacute;ra zamieszkiwała Podziemia i była kochanką Hadesa. Zazdrosna o męża Persefona prześladowała swoją rywalkę. Hades chcąc uchronić nimfę przed dalszymi przykrościami, zamienił ją w roślinę- &lsquo;miętę&rsquo;.&nbsp;<br />\r\n	<br />\r\n	Mięta wykorzystywana jest najczęściej w łagodzeniu dolegliwości ze strony układu pokarmowego. My jednak zachęcamy Państwa do stosowania tej niezwykłej rośliny r&oacute;wnież w kuchni!<br />\r\n	<br />\r\n	Aromatyczna grecka mięta znakomici pasuje do zup (szczeg&oacute;lnie z groszku), pieczonych ryb, mięs- świetnie komponuje się zwłaszcza z baraniną i jagnięciną. Należy dodawać ją pod koniec gotowania, aby nie straciła swojego niepowtarzalnego aromatu. Miętą można doprawiać także sałatki, dipy i sosy. Świetnie czuje się w najr&oacute;żniejszych napojach, deserach, lodach, kremach i musach.<br />\r\n	<br />\r\n	Należy ostrożnie łączyć mięte z innymi przyprawami- ze względu na sw&oacute;j wyrazisty aromat lubi grać pierwsze skrzypce. Jednak jest tak wdzięczna, że łatwo poczuć do niej..mięte!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/mieta_1.jpg', '', '', '', '', 1, 0),
(131, 3, 3, 1, 13, 'Bancha', 'bancha', '<p>\r\n	Bancha pozyskiwana jest z krzewu Camellia Sinensis- tego samego, z kt&oacute;rego pozyskiwana jest Sencha.<br />\r\n	<br />\r\n	R&oacute;żnica między wspomnianymi odmianami polega na tym, iż Sencha wytwarzana jest z delikatnych, młodych listk&oacute;w, zaś Bancha to herbata, tzw. p&oacute;źnego zbioru. Do jej produkcji wykorzystywane są większe, twardsze, grubiej żyłkowane liście.<br />\r\n	<br />\r\n	Grubsze liście mają mało alkaloid&oacute;w, garbnik&oacute;w, kofeiny i tanin, dlatego Bancha nadaje się do podawania dzieciom oraz osobom starszym. Może być pita codziennie o każdej porze dnia- nawet przed snem, ponieważ nie powoduje pobudzenia.<br />\r\n	<br />\r\n	Bancha wspomaga naturalną odporność, zawiera dużą ilość wapnia, witaminy A, niacyny oraz żelaza- poprawia jakość krwi. Ponad to przyspiesza metabolizm oraz oczyszcza organizm ze zbędnych produkt&oacute;w przemiany materii.<br />\r\n	<br />\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', 'http://www.test.tientea.pl/img/produkty/bancha_1.jpg', '', '<p>\r\n	<b>Temperatura</b>: 65-80 stopni C<br />\r\n	<b>Ilość</b>: 1 łyżeczka suszu na filiżankę<br />\r\n	<b>Czas parzenia</b>: 2-4 min<br />\r\n	Aromat i smak Banchy można wzmocnić przez dłuższe parzenie.&nbsp; Aby uzyskać napar o wyrazistym smaku i intensywnej barwie, polecamy wsypać łyżeczkę Banchy do imbryczka, po czym gotować całość przez 10 minut na wolnym ogniu. Napar zyska rozgrzewający charakter, jeżeli dodamy do niego plasterek imbiru.</p>\r\n', '', '', 1, 0),
(132, 3, 1, 1, 14, 'Sencha Ananasowa', 'sencha_ananasowa', '<p>\r\n	Napar pełen lekkości i tropikalnej słodyczy wydobytej z ananasowych cząstek. Niewątpliwym walorem estetycznym Senchy Ananasowej są urzekające pączki r&oacute;ż, kt&oacute;re dryfują na powierzchni naparu.<br />\r\n	<br />\r\n	Sencha Ananasowa to kompozycja poruszająca zmysły. Smak, zapach oraz wygląd suszu zachwyci miłośnik&oacute;w letnich, nasyconych słodyczą herbat. Sencha Ananasowa smakuje znakomicie na ciepło oraz na zimno, jako orzeźwiający nap&oacute;j</p>\r\n', 'http://www.test.tientea.pl/img/produkty/sencha_ananasowa_1.jpg', '', '<p>\r\n	<strong>Temperatura: </strong>60-70 stopni Celsjusza<br />\r\n	<strong>Ilość:</strong> 1 łyżeczka na filiżankę<br />\r\n	<strong>Czas parzenia:</strong> Według japońskiej tradycji&nbsp; Senchę parzy się od 30 do 60 sekund, jednak dla osiągnięcia głębi aromatu zalecamy wydłużyć czas przygotowania do 2-4 minut.<br />\r\n	Ważne jest, aby po uzyskaniu pożądanego smaku oddzielić liście od naparu.<br />\r\n	Ten sam susz można wykorzystać&nbsp; maksymalnie 3-krotnie</p>\r\n', '<p>\r\n	Zielona herbata Sencha, ananas kandyzowany, rodzynki, saflor, pączki r&oacute;ż</p>\r\n', '', 2, 1),
(133, 4, 3, 1, 10, 'Pu-Erh 6-letni', 'pu_erh_6_letni', '<p>\r\n	Czerwona herbata Pu-Erh z prowincji Yunnan poddana sześcioletniemu okresowi leżakowania.<br />\r\n	<br />\r\n	Dzięki długiemu okresowi dojrzewania, Pu-Erh sześcioletni cechuje się delikatniejszym smakiem i zapachem niż Pu-Erh leżakujący w okresie paromiesięcznym. Wyczuwalna jest lekka, &quot;nienarzucająca&quot; się ziemista nuta ze słodkim akcentem na końcu języka. Napar cechuje się intensywną, ciemnobrunatną barwą.<br />\r\n	<br />\r\n	Długi okres leżakowania wpływa także na wzmocnienie właściwości zdrowotnych. Pu-Erh sześcioletni intensywniej pobudza procesy trawienne, reguluje poziom cholesterolu oraz przyspiesza spalanie tkanki tłuszczowej.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/Pu-Erh_6letni_1.jpg', '', '<p>\r\n	<strong>Temperatura:</strong> 96 stopni C<br />\r\n	<strong>Ilość: </strong>1 łyżeczka suszu na filiżankę<br />\r\n	<strong>Czas parzenia: </strong>3-5 min</p>\r\n', '', '', 1, 0),
(134, 2, 1, 1, 17, 'Korzenna Opowieść', 'korzenna_opowiesc', '<p>\r\n	Za oknem tańczące płatki śniegu opadają, tworząc bielutkie, puszyste zaspy. Dziadek Mr&oacute;z czarodziejskim pędzlem wymalował na szybach skrzące się obrazy. Ogień trzaska wesoło w kominku, wypełniając pok&oacute;j zapachem drewna. Gotująca woda bulgocze w czajniku. Po chwili w dłoniach pojawia się filiżanka parującego naparu...<br />\r\n	<br />\r\n	Cynamonowy, lekko pikantny aromat okraszony smakiem pieczonego jabłuszka to temat przewodni Korzennej Opowieści. Jej aromatyczna fabuła wzbogacona jest kawałkami imbiru, owocem porzeczki i pomarańczy oraz rdzawymi pręcikami safloru.<br />\r\n	<br />\r\n	W Korzennej Opowieści bez opamiętania &quot;zaczytają się&quot; miłośnicy rozgrzewających, korzennych smak&oacute;w oraz fani Tien Apple &amp; Cinnamom Tea.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/korzenna_opowiesc_1.jpg', '', '<p>\r\n	<strong>Temperatura</strong>: wrzątek<br />\r\n	<strong>Ilość</strong>: 1-2 łyżeczki na filiżankę<br />\r\n	<strong>Czas parzenia</strong>: 3-5 minut<br />\r\n	Niekt&oacute;re kompozycie na bazie czarnej herbaty znakomicie wsp&oacute;łgrają z dodatkami w postaci miodu, brązowego cukru, mleka, konfitur, cytryny. Zachęcamy do eksperymentowania i odnalezienia swojego unikatowego smaku!<br />\r\n	Będzie nam miło, jeżeli podzielisz się z nami swoimi odkryciami.</p>\r\n', '<p>\r\n	Czarna herbata, cynamon, jabłko, kawałki imbiru, owoc i liść porzeczki, kawałki pomarańczy, saflor</p>\r\n', '', 2, 0),
(135, 9, 0, 1, 97, 'Greckie Oregano', 'ziola_greckie_oregano', '<p>\r\n	Oregano to przyprawa najczęściej używana w Grecji. Nic w tym dziwnego, ponieważ rosnące dziko na zboczach greckich g&oacute;r oregano uważane jest za najlepsze na świecie!<br />\r\n	<br />\r\n	Greckie oregano cechuje się ostrym i bardziej intensywnym aromatem niż jego pospolita wersja, kt&oacute;rą możemy zakupić w polskich sklepach. Oryginalne greckie oregano nada niepowtarzalny smak, m.in. potrawom z ryb, mięsa, dosmaczy sałatki, sosy, potrawy z pomidor&oacute;w, zupy oraz pizze i zapiekanki.<br />\r\n	<br />\r\n	W antycznej Grecji oregano uważane było za symbol szczęścia i radości- wraz z gałązkami drzewa oliwnego wchodziło w skład wieńc&oacute;w weselnych, kt&oacute;re miały zapewnić pomyślność Młodej Parze.&nbsp;<br />\r\n	<br />\r\n	Greckie oregano to smak i aromat wonnej Hellady na Twoim stole!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/oregano_1.jpg', '', '', '', '', 1, 0),
(136, 9, 0, 1, 35, 'Grecka Bazylia', 'ziola_grecka_bazylia', '<p>\r\n	Nazwa bazylii pochodzi od greckiego słowa bas&iacute;leios, czyli kr&oacute;lewski. To cenione od wiek&oacute;w aromatyczne ziele zyskało miano jednej z najlepszych przypraw świata.<br />\r\n	<br />\r\n	Oferowana Państwu grecka odmiana bazylii Minette to znakomita przyprawa nadająca potrawom lekkości i świeżości. Doskonale komponuje się z większością dań warzywnych- w szczeg&oacute;lności &bdquo;lubi się&rdquo; z pomidorami. Jest r&oacute;wnież świetnym dodatkiem do zup, sałatek, potraw z ryb i makaron&oacute;w oraz pizzy i zapiekanek.&nbsp;<br />\r\n	<br />\r\n	Uważa się, że bazylia działa lekko uspokajająco, poprawia nastr&oacute;j i dodaje sił. Sproszkowana może zastąpić pieprz, zaś zmieszana z rozmarynem s&oacute;l.&nbsp;&nbsp;<br />\r\n	<br />\r\n	Dojrzewająca w greckim słońcu bazylia Minette sprawi, że każda potrawa- grecka, włoska, polska i każda inna- nabierze fantastycznego, śr&oacute;dziemnomorskiego smaku.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/bazylia_1.jpg', '', '', '', '', 1, 0),
(148, 7, 20, 1, 15, 'Grecka Bazylia', 'bazylia', '<p>\r\n	Nazwa bazylii pochodzi od greckiego słowa bas&iacute;leios, czyli kr&oacute;lewski. To cenione od wiek&oacute;w aromatyczne ziele zyskało miano jednej z najlepszych przypraw świata.<br />\r\n	<br />\r\n	Oferowana Państwu grecka odmiana bazylii Minette to znakomita przyprawa nadająca potrawom lekkości i świeżości. Doskonale komponuje się z większością dań warzywnych- w szczeg&oacute;lności &bdquo;lubi się&rdquo; z pomidorami. Jest r&oacute;wnież świetnym dodatkiem do zup, sałatek, potraw z ryb i makaron&oacute;w oraz pizzy i zapiekanek.&nbsp;<br />\r\n	<br />\r\n	Uważa się, że bazylia działa lekko uspokajająco, poprawia nastr&oacute;j i dodaje sił. Sproszkowana może zastąpić pieprz, zaś zmieszana z rozmarynem s&oacute;l.&nbsp;&nbsp;<br />\r\n	<br />\r\n	Dojrzewająca w greckim słońcu bazylia Minette sprawi, że każda potrawa- grecka, włoska, polska i każda inna- nabierze fantastycznego, śr&oacute;dziemnomorskiego smaku.</p>\r\n', 'http://www.test.tientea.pl/img/produkty/bazylia_1.jpg', '', '', '', '', 1, 0),
(149, 7, 20, 1, 17, 'Grecki Rozmaryn', 'rozmaryn', '<p>\r\n	Rozmaryn to ziele pachnące śr&oacute;dziemnomorskim słońcem. Starożytni Grecy wierzyli, że poprawia pamięć i koncentrację, dlatego uczniowie przygotowujący się do egzamin&oacute;w wplatali we włosy rozmarynowe gałązki.<br />\r\n	<br />\r\n	Smak rozmarynu jest gorzkawy z delikatną nutą korzenności. Zazwyczaj doprawiane są nim tłuste potrawy, np. kaczka czy baranina (opr&oacute;cz ulepszania smaku rozmaryn ułatwia trawienie tłuszczy). Ponadto doskonale sprawdza się w pieczeniu i grillowaniu wszystkich rodzaj&oacute;w mięs i wędlin. Świetnie smakuje r&oacute;wnież z rybami i ziemniakami. Warto dodawać go do zup jarzynowych, gdyż znacznie poprawia ich smak.<br />\r\n	<br />\r\n	Rozmaryn ma intensywny smak, dlatego już niewielka ilość wystarczy do uzyskania oczekiwanego efektu!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/rozmaryn_1.jpg', '', '', '', '', 1, 0),
(150, 7, 20, 1, 18, 'Grecka Mięta', 'mieta', '<p>\r\n	Nazwa Mięta (Mentha) ma swoje korzenie w mitologii greckiej- pochodzi od imienia nimfy Menthe, kt&oacute;ra zamieszkiwała Podziemia i była kochanką Hadesa. Zazdrosna o męża Persefona prześladowała swoją rywalkę. Hades chcąc uchronić nimfę przed dalszymi przykrościami, zamienił ją w roślinę- &lsquo;miętę&rsquo;.&nbsp;<br />\r\n	<br />\r\n	Mięta wykorzystywana jest najczęściej w łagodzeniu dolegliwości ze strony układu pokarmowego. My jednak zachęcamy Państwa do stosowania tej niezwykłej rośliny r&oacute;wnież w kuchni!<br />\r\n	<br />\r\n	Aromatyczna grecka mięta znakomici pasuje do zup (szczeg&oacute;lnie z groszku), pieczonych ryb, mięs- świetnie komponuje się zwłaszcza z baraniną i jagnięciną. Należy dodawać ją pod koniec gotowania, aby nie straciła swojego niepowtarzalnego aromatu. Miętą można doprawiać także sałatki, dipy i sosy. Świetnie czuje się w najr&oacute;żniejszych napojach, deserach, lodach, kremach i musach.<br />\r\n	<br />\r\n	Należy ostrożnie łączyć mięte z innymi przyprawami- ze względu na sw&oacute;j wyrazisty aromat lubi grać pierwsze skrzypce. Jednak jest tak wdzięczna, że łatwo poczuć do niej..mięte!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/mieta_1.jpg', '', '', '', '', 1, 0),
(151, 7, 20, 1, 16, 'Greckie Oregano', 'oregano', '<p>\r\n	Oregano to przyprawa najczęściej używana w Grecji. Nic w tym dziwnego, ponieważ rosnące dziko na zboczach greckich g&oacute;r oregano uważane jest za najlepsze na świecie!<br />\r\n	<br />\r\n	Greckie oregano cechuje się ostrym i bardziej intensywnym aromatem niż jego pospolita wersja, kt&oacute;rą możemy zakupić w polskich sklepach. Oryginalne greckie oregano nada niepowtarzalny smak, m.in. potrawom z ryb, mięsa, dosmaczy sałatki, sosy, potrawy z pomidor&oacute;w, zupy oraz pizze i zapiekanki.<br />\r\n	<br />\r\n	W antycznej Grecji oregano uważane było za symbol szczęścia i radości- wraz z gałązkami drzewa oliwnego wchodziło w skład wieńc&oacute;w weselnych, kt&oacute;re miały zapewnić pomyślność Młodej Parze.&nbsp;<br />\r\n	<br />\r\n	Greckie oregano to smak i aromat wonnej Hellady na Twoim stole!</p>\r\n', 'http://www.test.tientea.pl/img/produkty/oregano_1.jpg', '', '', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_weights`
--

CREATE TABLE `product_weights` (
  `product_weight_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `product_weights`
--

INSERT INTO `product_weights` (`product_weight_id`, `product_id`, `weight`, `price`) VALUES
(1, 1, 50, 8.75),
(2, 2, 50, 8.9),
(3, 2, 100, 16.95),
(4, 2, 200, 32.9),
(5, 40, 50, 8.3),
(6, 40, 100, 16),
(7, 40, 200, 31.5),
(8, 1, 100, 16),
(9, 48, 50, 9.86),
(10, 48, 100, 19.32),
(11, 48, 200, 37.14),
(12, 10, 50, 7.75),
(13, 10, 100, 15),
(15, 10, 200, 29.4),
(16, 12, 50, 8.2),
(17, 12, 100, 15.7),
(18, 12, 200, 29.9),
(19, 23, 50, 9),
(20, 23, 100, 17.4),
(21, 23, 200, 33.65),
(22, 24, 50, 9.8),
(23, 24, 100, 19.1),
(24, 24, 200, 37.6),
(25, 25, 50, 8.97),
(26, 25, 100, 17.5),
(27, 25, 200, 33.4),
(28, 29, 50, 8.7),
(29, 29, 100, 17.2),
(30, 29, 200, 32.6),
(31, 30, 50, 8.65),
(32, 30, 100, 16.3),
(33, 30, 200, 32.2),
(34, 31, 50, 9.5),
(35, 31, 100, 18.5),
(36, 31, 200, 35.45),
(37, 32, 50, 8.8),
(38, 32, 100, 16.1),
(39, 32, 200, 31.6),
(40, 33, 50, 9.3),
(41, 33, 100, 17.95),
(42, 33, 100, 34.4),
(43, 49, 50, 10.66),
(44, 49, 100, 20.82),
(45, 49, 200, 39.15),
(46, 45, 50, 18.4),
(47, 45, 100, 36.26),
(48, 45, 200, 67.1),
(49, 35, 50, 9.27),
(50, 35, 100, 17.65),
(51, 35, 200, 34.8),
(52, 38, 50, 8.3),
(53, 38, 100, 16.5),
(54, 38, 200, 32),
(55, 52, 50, 8.2),
(56, 52, 100, 16.26),
(57, 52, 200, 32.5),
(58, 53, 50, 9.2),
(59, 53, 100, 17.92),
(60, 53, 200, 33.4),
(61, 51, 50, 9.4),
(62, 51, 100, 17.92),
(63, 51, 200, 33.4),
(64, 42, 50, 8.26),
(65, 42, 100, 16),
(66, 42, 200, 31.55),
(67, 41, 50, 8.3),
(68, 41, 100, 16),
(69, 41, 200, 31.55),
(70, 46, 50, 8.3),
(71, 46, 100, 16),
(72, 46, 200, 31.5),
(73, 50, 50, 8.5),
(74, 50, 100, 16.3),
(75, 50, 200, 32),
(76, 6, 50, 8.6),
(77, 6, 100, 16.2),
(78, 6, 200, 31.3),
(79, 7, 50, 9.4),
(80, 7, 100, 18.2),
(81, 7, 200, 35.8),
(82, 8, 50, 8.6),
(83, 8, 100, 16.6),
(84, 8, 200, 32.7),
(85, 14, 50, 9.4),
(86, 14, 100, 18.3),
(87, 14, 200, 35.15),
(88, 17, 50, 8.6),
(89, 17, 100, 16.7),
(90, 17, 200, 32.4),
(91, 20, 50, 9.9),
(92, 20, 100, 19.3),
(93, 20, 200, 37.1),
(94, 21, 50, 9.7),
(95, 21, 100, 19.3),
(96, 21, 200, 38.1),
(97, 22, 50, 8.6),
(98, 22, 100, 16.3),
(99, 22, 200, 33),
(100, 44, 50, 8.3),
(101, 44, 100, 16),
(102, 44, 200, 31.5),
(103, 55, 50, 17.3),
(104, 55, 100, 33),
(105, 55, 200, 62.6),
(106, 56, 50, 8.7),
(107, 56, 100, 16.9),
(108, 56, 200, 32.2),
(109, 15, 50, 11.6),
(110, 15, 100, 19.7),
(111, 15, 200, 36.7),
(112, 58, 50, 11.5),
(113, 58, 100, 22.6),
(114, 58, 200, 44.6),
(115, 59, 50, 12.5),
(116, 59, 100, 24.1),
(117, 59, 200, 47.6),
(118, 61, 50, 14.2),
(119, 61, 100, 27.9),
(120, 61, 200, 55.2),
(121, 65, 50, 15.1),
(122, 65, 100, 28.3),
(123, 65, 200, 54),
(124, 63, 50, 14.7),
(125, 63, 100, 27.8),
(126, 63, 200, 53.5),
(127, 66, 50, 10.8),
(128, 66, 100, 20.6),
(129, 66, 200, 40.6),
(130, 62, 50, 13.3),
(131, 62, 100, 26.1),
(132, 62, 200, 51.7),
(133, 64, 50, 25),
(134, 64, 100, 49.5),
(135, 68, 50, 8.7),
(136, 68, 100, 16.8),
(137, 68, 200, 33),
(140, 67, 50, 9.6),
(141, 67, 100, 18.7),
(142, 67, 200, 36.4),
(143, 69, 50, 7.2),
(144, 69, 100, 13.8),
(145, 69, 200, 27.1),
(146, 4, 50, 11.8),
(147, 4, 100, 23.5),
(148, 4, 200, 44.6),
(152, 5, 50, 9.7),
(153, 5, 100, 18.4),
(154, 5, 200, 35.8),
(155, 1, 200, 31.4),
(156, 9, 50, 9.6),
(157, 9, 100, 18.7),
(158, 9, 200, 36.9),
(159, 11, 50, 9.8),
(160, 11, 100, 18.6),
(161, 11, 200, 36.7),
(162, 26, 50, 10.9),
(163, 26, 100, 19.7),
(164, 26, 200, 38.9),
(165, 54, 50, 8.8),
(166, 54, 100, 16.5),
(167, 54, 200, 33.5),
(168, 27, 50, 12.8),
(169, 27, 100, 23.9),
(170, 27, 200, 43.5),
(171, 28, 50, 8.9),
(172, 28, 100, 17.5),
(173, 28, 200, 33.9),
(174, 72, 50, 21.5),
(175, 72, 100, 39.9),
(176, 72, 200, 74),
(177, 73, 50, 39),
(178, 73, 100, 76.5),
(179, 73, 200, 147),
(180, 74, 50, 21.5),
(181, 74, 100, 40.7),
(182, 74, 200, 78.9),
(186, 76, 50, 11.5),
(187, 76, 100, 19.9),
(188, 76, 200, 39.3),
(189, 77, 50, 24),
(190, 77, 100, 46.5),
(191, 78, 50, 33.5),
(192, 78, 100, 65),
(193, 78, 200, 125),
(194, 79, 50, 24.9),
(195, 79, 100, 46.3),
(196, 79, 200, 87),
(197, 80, 50, 13.6),
(198, 80, 100, 26.7),
(199, 80, 200, 52.8),
(200, 81, 50, 26),
(201, 81, 100, 51.7),
(202, 82, 50, 7.98),
(203, 82, 100, 15.8),
(204, 82, 200, 31.4),
(205, 83, 50, 7.6),
(206, 83, 100, 13.8),
(207, 83, 200, 26),
(208, 84, 50, 24.9),
(209, 84, 100, 49.2),
(210, 84, 200, 97.8),
(211, 85, 50, 33),
(212, 85, 100, 61.5),
(213, 85, 200, 120),
(214, 87, 50, 32.8),
(215, 87, 100, 65.1),
(216, 87, 200, 127.7),
(217, 34, 50, 10.9),
(218, 34, 100, 19.2),
(219, 34, 200, 37.9),
(220, 101, 50, 11.5),
(221, 101, 100, 22.4),
(222, 101, 200, 42.2),
(223, 100, 50, 12),
(224, 100, 100, 23.6),
(225, 100, 200, 45.7),
(226, 102, 50, 12.2),
(227, 102, 100, 23.8),
(228, 102, 200, 46),
(229, 91, 50, 18),
(230, 91, 100, 34.5),
(231, 91, 200, 65),
(232, 103, 50, 29.5),
(233, 103, 100, 57.6),
(234, 103, 200, 107),
(235, 89, 50, 7.2),
(236, 89, 100, 14),
(237, 89, 200, 27.6),
(238, 92, 25, 19.4),
(239, 92, 50, 35.3),
(240, 92, 100, 65),
(241, 93, 50, 32),
(242, 93, 100, 62.8),
(243, 93, 200, 106),
(244, 94, 50, 36.8),
(245, 94, 100, 68),
(246, 94, 200, 126),
(247, 95, 50, 27),
(248, 95, 100, 45.3),
(249, 95, 200, 85),
(252, 97, 50, 28),
(253, 97, 100, 55),
(254, 97, 200, 99.5),
(255, 98, 50, 7.3),
(256, 98, 100, 14.1),
(257, 98, 200, 27.7),
(258, 99, 50, 19),
(259, 99, 100, 36.7),
(260, 99, 200, 72.9),
(261, 71, 50, 7.5),
(262, 71, 100, 14.2),
(263, 71, 200, 26.9),
(264, 109, 1, 19.99),
(266, 125, 50, 12.5),
(267, 125, 100, 23.9),
(268, 125, 200, 47.4),
(269, 18, 50, 11.6),
(270, 18, 100, 22.8),
(271, 18, 200, 43),
(272, 132, 50, 12.2),
(273, 132, 100, 23.7),
(274, 132, 200, 46.3),
(275, 57, 50, 12.4),
(276, 57, 100, 23.5),
(277, 57, 200, 45.4),
(278, 131, 50, 11),
(279, 131, 100, 20.5),
(280, 131, 200, 39.7),
(281, 133, 50, 9.5),
(282, 133, 100, 18.4),
(283, 133, 200, 35),
(284, 105, 50, 9.6),
(285, 105, 100, 18.4),
(286, 105, 200, 36.8),
(287, 104, 50, 11),
(288, 104, 100, 20.4),
(289, 104, 200, 39.3),
(290, 106, 50, 15.1),
(291, 106, 100, 29.7),
(292, 106, 200, 58.9),
(293, 107, 10, 16),
(294, 107, 25, 38.7),
(295, 107, 50, 75),
(296, 117, 1, 54.9),
(297, 16, 50, 11.5),
(298, 16, 100, 22),
(299, 16, 200, 43),
(300, 134, 50, 9.3),
(301, 134, 100, 17.6),
(302, 134, 200, 34),
(303, 60, 50, 9.8),
(304, 60, 100, 18),
(305, 60, 200, 34.5),
(306, 119, 1, 17),
(307, 119, 1, 17),
(308, 127, 1, 21.7),
(309, 127, 1, 21.7),
(310, 120, 1, 16),
(311, 120, 1, 16),
(312, 122, 1, 7.2),
(313, 122, 1, 7.2),
(314, 123, 1, 16.5),
(315, 123, 1, 16.5),
(316, 19, 50, 9999);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `registration`
--

CREATE TABLE `registration` (
  `registration_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `registration`
--

INSERT INTO `registration` (`registration_id`, `customer_id`, `code`) VALUES
(2, 19, '2232c8edd2df56df4ffffb5618caab0b'),
(4, 2, '7b585cd4b2832e945718642c320abaa7'),
(5, 3, '3f79a98ce2fd8b6b448809abc8c54a6c'),
(6, 4, 'ceed28c5fb7951167beaa93d6f1f09c2'),
(7, 5, 'd15abc46d7f2bad40fbc91ad713f29db'),
(8, 6, 'e024f73b234522c8c6b57d7a4667766f'),
(9, 7, 'fba5ad0930f0d259a574cd5f6f2d54b5'),
(10, 8, '56e83a97d61d524bb6af2581d3d42b88'),
(14, 12, 'e60de1478bc945c08885095f0bf6f71c'),
(15, 13, 'd6981de6e38d4f3bd141143ef47dca0f'),
(16, 14, '6b0999c6159a339bb787ab5da7226276'),
(17, 15, '635f35b771bfe478c85e62d45c162b95'),
(18, 16, 'e6c63cb234edda10bf017ff98152c767'),
(19, 17, '58b89090bb900db33b7297ee59adff23'),
(20, 18, 'e3325d787be13d3515cb45873457a52a'),
(21, 19, '2d08a15ec46fafb842acd5cee9ef6674');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(10) NOT NULL,
  `review_status_id` int(10) NOT NULL DEFAULT '0',
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `review_rate` int(1) NOT NULL,
  `review_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `reviews`
--

INSERT INTO `reviews` (`review_id`, `review_status_id`, `customer_id`, `product_id`, `review_rate`, `review_text`) VALUES
(6, 1, 10, 41, 5, 'test'),
(8, 1, 10, 5, 5, 'testafadfadsfaf. adasdasdas.rnadadas.rnadasd'),
(9, 1, 10, 5, 5, 'asdasdasdasdasdasdasdasdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SAMOCHODY`
--

CREATE TABLE `SAMOCHODY` (
  `ID_SAMOCHODU` char(6) NOT NULL,
  `MARKA` varchar(20) NOT NULL,
  `TYP` varchar(16) NOT NULL,
  `ROK_PROD` date NOT NULL,
  `KOLOR` varchar(16) NOT NULL,
  `POJ_SILNIKA` smallint(6) NOT NULL,
  `PRZEBIEG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `SAMOCHODY`
--

INSERT INTO `SAMOCHODY` (`ID_SAMOCHODU`, `MARKA`, `TYP`, `ROK_PROD`, `KOLOR`, `POJ_SILNIKA`, `PRZEBIEG`) VALUES
('000001', 'MERCEDES', '190D', '1999-01-01', 'BIALY', 1800, 23000),
('000002', 'MERCEDES', '230D', '1999-01-01', 'NIEBIESKI', 2000, 35000),
('000003', 'FIAT', 'SEICENTO', '2000-01-01', 'CZERWONY', 1100, 13000),
('000004', 'FIAT', 'SEICENTO', '1999-01-01', 'BIALY', 900, 10000),
('000005', 'FIAT', 'TIPO', '1998-01-01', 'BORDOWY', 1400, 43000),
('000006', 'POLONEZ', 'CARO', '1997-01-01', 'ZIELONY', 1600, 55000),
('000007', 'OPEL', 'CORSA', '2000-01-01', 'ZIELONY', 1100, 11000),
('000008', 'OPEL', 'VECTRA', '1999-01-01', 'SZARY', 1800, 36000),
('000009', 'MERCEDES', '190D', '1996-01-01', 'BRAZOWY', 1800, 69000),
('000010', 'FORD', 'ESCORT', '2000-01-01', 'NIEBIESKI', 1600, 8000),
('000011', 'FORD', 'ESCORT', '1999-01-01', 'BIALY', 1600, 23000),
('000012', 'FORD', 'KA', '1998-01-01', 'BORDOWY', 1100, 54000),
('000013', 'FIAT', 'SEICENTO', '1999-01-01', 'ZLOTY', 1100, 25000),
('000014', 'FIAT', 'SEICENTO', '2000-01-01', 'BIALY', 1100, 18000),
('000015', 'SEAT', 'IBIZA', '1998-01-01', 'ZOLTY', 1800, 63000),
('000016', 'FORD', 'SIERRA', '1995-01-01', 'CZERWONY', 1600, 87000),
('000017', 'OPEL', 'CORSA', '2000-01-01', 'ZIELONY', 1400, 9000),
('000018', 'FORD', 'KA', '1999-01-01', 'ZOLTY', 1400, 20000);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `subcategories`
--

CREATE TABLE `subcategories` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `subcategories`
--

INSERT INTO `subcategories` (`subcategory_id`, `subcategory_name`) VALUES
(1, 'Z dodatkami'),
(3, 'Bez dodatków'),
(14, 'Kwitnące'),
(15, 'Energetyzujące'),
(16, 'Wzmacniające'),
(17, 'Afrodyzjaki'),
(18, 'Owoce'),
(19, 'Orzechy'),
(20, 'Przyprawy');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `supplies`
--

CREATE TABLE `supplies` (
  `supply_id` int(11) NOT NULL,
  `supply_name` varchar(50) NOT NULL,
  `supply_cost` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `supplies`
--

INSERT INTO `supplies` (`supply_id`, `supply_name`, `supply_cost`) VALUES
(1, 'Poczta Polska', 10),
(2, 'Kurier', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `test_content` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `test`
--

INSERT INTO `test` (`test_id`, `test_content`) VALUES
(1, '<p class=\"asd\">\r\n	test</p>\r\n');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `weights`
--

CREATE TABLE `weights` (
  `weight_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `weights`
--

INSERT INTO `weights` (`weight_id`, `weight`) VALUES
(1, 50),
(2, 100),
(3, 200),
(4, 500),
(5, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `WYPOZYCZENIA`
--

CREATE TABLE `WYPOZYCZENIA` (
  `ID_WYPOZYCZENIA` char(8) NOT NULL,
  `ID_KLIENTA` char(8) NOT NULL,
  `ID_SAMOCHODU` char(6) NOT NULL,
  `ID_PRACOW_WYP` char(4) NOT NULL,
  `ID_PRACOW_ODD` char(4) DEFAULT NULL,
  `ID_MIEJSCA_WYP` char(6) NOT NULL,
  `ID_MIEJSCA_ODD` char(6) DEFAULT NULL,
  `DATA_WYP` date NOT NULL,
  `DATA_ODD` date DEFAULT NULL,
  `KAUCJA` decimal(8,2) DEFAULT NULL,
  `CENA_JEDN` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `WYPOZYCZENIA`
--

INSERT INTO `WYPOZYCZENIA` (`ID_WYPOZYCZENIA`, `ID_KLIENTA`, `ID_SAMOCHODU`, `ID_PRACOW_WYP`, `ID_PRACOW_ODD`, `ID_MIEJSCA_WYP`, `ID_MIEJSCA_ODD`, `DATA_WYP`, `DATA_ODD`, `KAUCJA`, `CENA_JEDN`) VALUES
('00000001', '00000001', '000003', '0002', '0002', '000001', '000001', '1998-09-18', '1998-09-23', '200.00', '100.00'),
('00000002', '00000003', '000004', '0001', '0001', '000001', '000001', '1998-09-26', '1998-09-27', NULL, '100.00'),
('00000003', '00000002', '000004', '0009', '0009', '000002', '000002', '1998-10-04', '1998-10-04', NULL, '100.00'),
('00000004', '00000004', '000003', '0010', '0010', '000003', '000003', '1998-10-19', '1998-10-25', NULL, '100.00'),
('00000005', '00000006', '000007', '0010', '0010', '000003', '000003', '1998-10-29', '1998-11-02', '200.00', '100.00'),
('00000006', '00000005', '000008', '0010', '0002', '000001', '000003', '1998-11-07', '1998-11-09', '200.00', '100.00'),
('00000007', '00000008', '000011', '0009', '0002', '000001', '000001', '1998-11-20', '1998-11-25', '200.00', '100.00'),
('00000008', '00000006', '000011', '0001', '0005', '000004', '000004', '1998-11-28', '1998-12-02', '200.00', '100.00'),
('00000009', '00000007', '000017', '0002', '0002', '000001', '000002', '1998-12-01', '1998-12-03', '200.00', '100.00'),
('00000010', '00000009', '000017', '0002', '0010', '000001', '000002', '1998-12-15', '1998-12-17', '200.00', '100.00'),
('00000011', '00000010', '000001', '0005', '0005', '000003', '000003', '1998-12-20', '1998-12-23', '200.00', '100.00'),
('00000012', '00000012', '000002', '0005', '0005', '000004', '000004', '1999-01-04', '1999-01-14', '200.00', '100.00'),
('00000013', '00000011', '000005', '0001', '0005', '000003', '000001', '1999-01-24', '1999-01-29', NULL, '100.00'),
('00000014', '00000013', '000005', '0001', '0001', '000004', '000001', '1999-02-01', '1999-02-05', '200.00', '100.00'),
('00000015', '00000014', '000004', '0001', '0001', '000002', '000002', '1999-02-04', '1999-02-04', '200.00', '100.00'),
('00000016', '00000015', '000018', '0009', '0009', '000002', '000002', '1999-03-20', '1999-03-23', '200.00', '100.00'),
('00000017', '00000016', '000013', '0010', '0010', '000004', '000001', '1999-03-20', '1999-03-22', '200.00', '100.00'),
('00000018', '00000020', '000014', '0001', '0001', '000001', '000001', '1999-04-01', '1999-04-05', NULL, '100.00'),
('00000019', '00000019', '000015', '0005', '0005', '000004', '000004', '1999-05-04', '1999-05-09', NULL, '100.00'),
('00000020', '00000017', '000017', '0002', '0002', '000003', '000001', '1999-08-14', '1999-08-17', NULL, '100.00'),
('00000021', '00000018', '000009', '0002', NULL, '000001', NULL, '1999-12-04', NULL, NULL, '100.00'),
('00000022', '00000017', '000001', '0001', NULL, '000002', NULL, '1999-12-22', NULL, NULL, '100.00'),
('00000023', '00000009', '000003', '0010', NULL, '000002', NULL, '2000-01-08', NULL, '200.00', '100.00'),
('00000024', '00000014', '000004', '0005', NULL, '000001', NULL, '2000-01-24', NULL, '200.00', '100.00'),
('00000025', '00000010', '000004', '0009', NULL, '000002', NULL, '2000-02-09', NULL, '200.00', '100.00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indeksy dla tabeli `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indeksy dla tabeli `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`bug_id`),
  ADD UNIQUE KEY `bug_id` (`bug_id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `url` (`category_alias`);

--
-- Indeksy dla tabeli `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeksy dla tabeli `dict_boxes`
--
ALTER TABLE `dict_boxes`
  ADD PRIMARY KEY (`box_id`);

--
-- Indeksy dla tabeli `dict_bugs_categories`
--
ALTER TABLE `dict_bugs_categories`
  ADD PRIMARY KEY (`bug_category_id`),
  ADD UNIQUE KEY `bug_category_id` (`bug_category_id`);

--
-- Indeksy dla tabeli `dict_bugs_severities`
--
ALTER TABLE `dict_bugs_severities`
  ADD PRIMARY KEY (`bug_severity_id`),
  ADD UNIQUE KEY `bug_severity_id` (`bug_severity_id`);

--
-- Indeksy dla tabeli `dict_bugs_statuses`
--
ALTER TABLE `dict_bugs_statuses`
  ADD PRIMARY KEY (`bug_status_id`),
  ADD UNIQUE KEY `bug_status_id` (`bug_status_id`);

--
-- Indeksy dla tabeli `dict_order_statuses`
--
ALTER TABLE `dict_order_statuses`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indeksy dla tabeli `dict_review_statuses`
--
ALTER TABLE `dict_review_statuses`
  ADD PRIMARY KEY (`review_status_id`);

--
-- Indeksy dla tabeli `dict_units`
--
ALTER TABLE `dict_units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indeksy dla tabeli `KLIENCI`
--
ALTER TABLE `KLIENCI`
  ADD PRIMARY KEY (`ID_KLIENTA`);

--
-- Indeksy dla tabeli `MIEJSCA`
--
ALTER TABLE `MIEJSCA`
  ADD PRIMARY KEY (`ID_MIEJSCA`);

--
-- Indeksy dla tabeli `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`);

--
-- Indeksy dla tabeli `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeksy dla tabeli `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indeksy dla tabeli `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeksy dla tabeli `PRACOWNICY`
--
ALTER TABLE `PRACOWNICY`
  ADD PRIMARY KEY (`ID_PRACOWNIKA`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `url` (`product_alias`);

--
-- Indeksy dla tabeli `product_weights`
--
ALTER TABLE `product_weights`
  ADD PRIMARY KEY (`product_weight_id`);

--
-- Indeksy dla tabeli `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`registration_id`);

--
-- Indeksy dla tabeli `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indeksy dla tabeli `SAMOCHODY`
--
ALTER TABLE `SAMOCHODY`
  ADD PRIMARY KEY (`ID_SAMOCHODU`);

--
-- Indeksy dla tabeli `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indeksy dla tabeli `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`supply_id`);

--
-- Indeksy dla tabeli `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indeksy dla tabeli `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`weight_id`);

--
-- Indeksy dla tabeli `WYPOZYCZENIA`
--
ALTER TABLE `WYPOZYCZENIA`
  ADD PRIMARY KEY (`ID_WYPOZYCZENIA`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT dla tabeli `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `dict_boxes`
--
ALTER TABLE `dict_boxes`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `dict_bugs_categories`
--
ALTER TABLE `dict_bugs_categories`
  MODIFY `bug_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `dict_bugs_severities`
--
ALTER TABLE `dict_bugs_severities`
  MODIFY `bug_severity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `dict_bugs_statuses`
--
ALTER TABLE `dict_bugs_statuses`
  MODIFY `bug_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `dict_order_statuses`
--
ALTER TABLE `dict_order_statuses`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `dict_review_statuses`
--
ALTER TABLE `dict_review_statuses`
  MODIFY `review_status_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `dict_units`
--
ALTER TABLE `dict_units`
  MODIFY `unit_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT dla tabeli `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT dla tabeli `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT dla tabeli `product_weights`
--
ALTER TABLE `product_weights`
  MODIFY `product_weight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT dla tabeli `registration`
--
ALTER TABLE `registration`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT dla tabeli `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `supplies`
--
ALTER TABLE `supplies`
  MODIFY `supply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `weights`
--
ALTER TABLE `weights`
  MODIFY `weight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
