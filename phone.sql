-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 23 2019 г., 16:29
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `phone`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `Login` varchar(64) NOT NULL,
  `Password` varchar(128) NOT NULL,
  `Name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `Login`, `Password`, `Name`) VALUES
(1, 'admin', '71bbd5ec794791be9df2d33b39bb33f6ddbfa985f3ea31f6b0f27f1e622f5d20', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `cabinet`
--

CREATE TABLE `cabinet` (
  `id` int(11) NOT NULL,
  `id_Housing` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Floor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cabinet`
--

INSERT INTO `cabinet` (`id`, `id_Housing`, `Title`, `Floor`) VALUES
(1, 2, '204', 2),
(2, 2, '415', 4),
(3, 5, '701', 7),
(4, 5, '803', 8),
(5, 3, '501', 5),
(6, 6, '205', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `department`
--

INSERT INTO `department` (`id`, `Title`, `Path`) VALUES
(1, 'ВолгГТУ', '1/'),
(2, 'ФЭУ', '1/2/'),
(3, 'МЭ', '1/2/3'),
(4, 'ИСЭ', '1/2/4'),
(5, 'ФЭВТ', '1/5/'),
(6, 'ВТ', '1/5/6');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `id_Person` int(11) NOT NULL,
  `id_Position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id`, `id_Person`, `id_Position`) VALUES
(1, 6, 7),
(2, 1, 9),
(3, 2, 10),
(4, 3, 11),
(5, 5, 12),
(6, 4, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `housing`
--

CREATE TABLE `housing` (
  `id` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Abbreviation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `housing`
--

INSERT INTO `housing` (`id`, `Address`, `Title`, `Abbreviation`) VALUES
(1, 'г. Волгоград, ул. Дегтярева, 2', 'Учебный корпус №11', 'Т (ВГТЗ)'),
(2, 'г. Волгоград, просп. В. И. Ленина, 28', 'Главный учебный корпус', 'ГУК'),
(3, 'г. Волгоград, ул. Советская, 31', 'Учебный корпус №3', 'А'),
(4, 'г. Волгоград, ул. Советская, 29', 'Учебный корпус №4', 'Б'),
(5, 'г. Волгоград, просп. В. И. Ленина, 28', 'Учебно-лабораторный корпус №5 (Высотка)', 'В'),
(6, 'г. Волгоград, ул. Академическая, 1', 'Учебный корпус №2', 'ИАиС');

-- --------------------------------------------------------

--
-- Структура таблицы `person`
--

CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `person`
--

INSERT INTO `person` (`id`, `FullName`) VALUES
(1, 'Иванов Илья Сергеевич'),
(2, 'Писарев Сергей Васильевич'),
(3, 'Новиков Егор Павлович'),
(4, 'Шубин Леонид Александрович'),
(5, 'Масляников Григорий Игоревич'),
(6, 'Копылов Игорь Иванович'),
(7, 'awd'),
(8, 'awdawdawd');

-- --------------------------------------------------------

--
-- Структура таблицы `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `position`
--

INSERT INTO `position` (`id`, `Title`) VALUES
(7, 'Заведующий кафедры'),
(8, 'Заместитель заведующего кафедры'),
(9, 'Старший преподаватель'),
(10, 'Главный бухгалтер'),
(11, 'Декан'),
(12, 'Заместитель декана');

-- --------------------------------------------------------

--
-- Структура таблицы `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `id_Department` int(11) NOT NULL,
  `id_Employee` int(11) NOT NULL,
  `id_Cabinet` int(11) NOT NULL,
  `Phone` varchar(25) NOT NULL,
  `InterofficePhone` varchar(10) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subscriber`
--

INSERT INTO `subscriber` (`id`, `id_Department`, `id_Employee`, `id_Cabinet`, `Phone`, `InterofficePhone`, `Email`) VALUES
(1, 2, 4, 3, '89275050332', '26-55-34', 'novikov@mail.ru'),
(2, 3, 1, 4, '89615216699', '26-55-78', 'igorkop@yandex.ru'),
(3, 1, 3, 1, '89033522566', '36-61-99', 'pisar@bk.ru'),
(4, 6, 2, 4, '89996632120', '25-66-99', 'ivanilya@mail.ru'),
(5, 5, 5, 4, '89602225544', '26-55-32', 'maslmasl@mail.ru'),
(6, 3, 6, 4, '89256644477', '25-66-20', 'shubon@gmail.com');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cabinet`
--
ALTER TABLE `cabinet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Housing` (`id_Housing`);

--
-- Индексы таблицы `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Person` (`id_Person`),
  ADD KEY `id_Position` (`id_Position`);

--
-- Индексы таблицы `housing`
--
ALTER TABLE `housing`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Department` (`id_Department`),
  ADD KEY `id_Employee` (`id_Employee`),
  ADD KEY `id_Cabinet` (`id_Cabinet`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cabinet`
--
ALTER TABLE `cabinet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `housing`
--
ALTER TABLE `housing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cabinet`
--
ALTER TABLE `cabinet`
  ADD CONSTRAINT `cabinet_ibfk_1` FOREIGN KEY (`id_Housing`) REFERENCES `housing` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_Person`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`id_Position`) REFERENCES `position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `subscriber`
--
ALTER TABLE `subscriber`
  ADD CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`id_Department`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriber_ibfk_2` FOREIGN KEY (`id_Employee`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriber_ibfk_3` FOREIGN KEY (`id_Cabinet`) REFERENCES `cabinet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
