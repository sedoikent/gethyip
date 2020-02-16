
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Янв 24 2018 г., 15:47
-- Версия сервера: 10.1.24-MariaDB
-- Версия PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `u405098713_rr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `db_comment`
--

CREATE TABLE IF NOT EXISTS `db_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_progect` int(11) NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `db_comment`
--

INSERT INTO `db_comment` (`id`, `id_progect`, `user`, `comment`, `date`, `status`) VALUES
(1, 0, 'Maxim', 'ЗАРАБАТЫВАЙТЕ В ИНТЕРНЕТЕ! ДЕНЬГИ ЗА ВСЁ, ЧТО ВЫ РАНЬШЕ ДЕЛАЛИ БЕСПЛАТНО! За просмотр сайтов За лайки и комментарии За регистрации и профили За просмотр рекламы И многое другое Вас ждут тысячи заданий (небольших поручений рекламодателей) на любой вкус и цвет, делайте всё, что и раньше, на любимых сайтах и в соц. сетях, но теперь ещё и за деньги!', 1508052532, 0),
(2, 13, 'Maxim', 'ЗАРАБАТЫВАЙТЕ В ИНТЕРНЕТЕ! ДЕНЬГИ ЗА ВСЁ, ЧТО ВЫ РАНЬШЕ ДЕЛАЛИ БЕСПЛАТНО! За просмотр сайтов За лайки и комментарии За регистрации и профили За просмотр рекламы И многое другое Вас ждут тысячи заданий (небольших поручений рекламода', 1508053209, 1),
(3, 13, 'Maxim', 'fsedsfdsfdsf sds', 1508054641, 0),
(4, 25, 'Admin', 'Все ок', 1510670397, 0),
(5, 24, 'Admin', 'efsfsef', 1512308515, 0),
(6, 24, 'Admin', '123', 1512308904, 0),
(7, 14, 'Admin', '11', 1516038231, 0),
(8, 14, 'Admin', '22', 1516038245, 0),
(9, 15, 'Admin', '123', 1516474575, 0),
(10, 15, 'Admin', '\r\n', 1516474586, 0),
(11, 15, 'Admin', '\r\n\r\n\r\n', 1516474611, 0),
(12, 15, 'Admin', '<a rel="nofollow" href="https://exmo.me/?ref=1176272"\r\n target="_blank"\r\n style="display:block!important">\r\n<img src="https://exmo.com/static/img/affiliate/affiliate3_ru.png"\r\n alt="EXMO affiliate program"\r\n title="EXMO bitcon banner"\r\n border="0"\r\n style="display:block!important"/>\r\n</a>', 1516474640, 0),
(13, 15, 'Admin', '<a rel="nofollow" href="https://exmo.me/?ref=1176272"\r\n target="_blank"\r\n style="display:block!important">\r\n<img src="https://exmo.com/static/img/affiliate/affiliate3_ru.png"\r\n alt="EXMO affiliate program"\r\n title="EXMO bitcon banner"\r\n border="0"\r\n style="display:block!important"/>\r\n</a>', 1516475303, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `db_config`
--

CREATE TABLE IF NOT EXISTS `db_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `vip` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `progect` int(11) NOT NULL,
  `transition` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_config`
--

INSERT INTO `db_config` (`id`, `admin`, `pass`, `vip`, `user`, `progect`, `transition`) VALUES
(1, 'admin', 'admin', 10, 121, 262, 6833);

-- --------------------------------------------------------

--
-- Структура таблицы `db_farm_info`
--

CREATE TABLE IF NOT EXISTS `db_farm_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ferm_id` int(11) NOT NULL,
  `login` varchar(55) NOT NULL,
  `date` int(11) NOT NULL,
  `otz` int(1) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `db_farm_info`
--

INSERT INTO `db_farm_info` (`id`, `ferm_id`, `login`, `date`, `otz`, `text`) VALUES
(6, 1, 'First', 1419437986, 3, 'Последний отзыв'),
(5, 1, 'First', 1419437833, 1, 'Последний тест)Ну почти последний_'),
(4, 1, 'test', 1419436857, 3, 'type'),
(7, 126, 'First', 1422989819, 2, 'Лол(_)');

-- --------------------------------------------------------

--
-- Структура таблицы `db_farm_new`
--

CREATE TABLE IF NOT EXISTS `db_farm_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET cp1251 NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `vklad` int(11) NOT NULL,
  `viplat` int(11) NOT NULL,
  `work_time` int(11) NOT NULL,
  `monitor_time` int(11) NOT NULL,
  `plat_bal` int(11) NOT NULL,
  `min_vvod` int(11) NOT NULL,
  `min_vivod` int(11) NOT NULL,
  `ref_percent` int(11) NOT NULL,
  `posl_viplata` int(11) NOT NULL,
  `plat_sistem` int(11) NOT NULL,
  `viplata_a_r` int(11) NOT NULL,
  `ocenka` int(11) NOT NULL,
  `plat_status` int(11) NOT NULL,
  `vip_status` int(11) NOT NULL,
  `kr_text` text CHARACTER SET cp1251 NOT NULL,
  `opisanie` text CHARACTER SET cp1251 NOT NULL,
  `url` text CHARACTER SET cp1251 NOT NULL,
  `date_add` int(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1250 AUTO_INCREMENT=127 ;

--
-- Дамп данных таблицы `db_farm_new`
--

INSERT INTO `db_farm_new` (`id`, `title`, `foto`, `status`, `vklad`, `viplat`, `work_time`, `monitor_time`, `plat_bal`, `min_vvod`, `min_vivod`, `ref_percent`, `posl_viplata`, `plat_sistem`, `viplata_a_r`, `ocenka`, `plat_status`, `vip_status`, `kr_text`, `opisanie`, `url`, `date_add`) VALUES
(1, 'Тестовая Ферма', 'img/foto_ferm/1.jpg', 1, 155, 3127, 5, 1357338458, 1, 0, 5, 10, 1423336451, 15, 1, 1, 1, 2, 'Есть возможность развития без вложений.', '<p>Тестим)</p>', 'http://rusfermer.ws/?ref=792', 1418946060),
(126, 'Тест со всеми записями', 'img/foto_ferm/2.jpg', 7, 1000, 10, 3, 0, 1, 0, 5, 10, 1422562359, 7, 2, 5, 1, 1, 'Да ладно,заеб*ал этот 0', '<p>Тестим описание)</p>', 'http://bablowseti.ru/', 1418946060);

-- --------------------------------------------------------

--
-- Структура таблицы `db_farm_payment`
--

CREATE TABLE IF NOT EXISTS `db_farm_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_farm` int(11) NOT NULL,
  `date_add` int(25) NOT NULL,
  `status_p` int(11) NOT NULL,
  `plat_sistem` int(11) NOT NULL,
  `summ` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_farm_reclama`
--

CREATE TABLE IF NOT EXISTS `db_farm_reclama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET cp1251 NOT NULL,
  `data` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `db_farm_reclama`
--

INSERT INTO `db_farm_reclama` (`id`, `text`, `data`) VALUES
(1, '<p>&nbsp;</p>\r\n<div style="padding: 0 20px;">&nbsp; &nbsp;\r\n<div style="color: #0674db; text-align: center; font-weight: bold; font-size: 20px;">Мониторинг:</div>\r\n<p>Добавление фермы в мониторинг:</p>\r\n&nbsp; &nbsp;\r\n<p>ТАРИФ №1 - 500р</p>\r\n&nbsp; &nbsp;\r\n<p>&nbsp; &nbsp; &nbsp;- 300 рублей вводим на счет в Вашем проекте.<br />&nbsp; &nbsp; &nbsp;- 200 рублей стоят наши услуги мониторинга.<br />&nbsp; &nbsp; &nbsp;- Размещаем 1 баннер на сайте на месяц.<br />&nbsp; &nbsp; &nbsp;- Заносим Ваш проект к себе на мониторинг, с составлением соответствующего описания.<br />&nbsp;&nbsp; &nbsp; &nbsp;- Мониторим платеже-способность Вашего проекта постоянными выводами.&nbsp; &nbsp;</p>\r\n&nbsp; &nbsp;\r\n<p>ТАРИФ №2 - 1000р</p>\r\n&nbsp; &nbsp;\r\n<p>&nbsp; &nbsp; &nbsp;- 500 рублей вводим на счет в Вашем проекте<br />&nbsp;&nbsp; &nbsp; &nbsp;- 300 рублей тратим на сервис активной рекламы для привлечения не менее 100 участников.<br />&nbsp; &nbsp; &nbsp;- 200 рублей стоят наши услуги мониторинга.<br />&nbsp; &nbsp; &nbsp;- Размещаем 2 баннера на сайте на месяц.<br />&nbsp;&nbsp; &nbsp; &nbsp;- Заносим Ваш проект к себе на мониторинг, с составлением соответствующего описания.<br />&nbsp;&nbsp; &nbsp; &nbsp;- Мониторим платеже-способность Вашего проекта постоянными выводами.&nbsp; &nbsp;</p>\r\n&nbsp; &nbsp;\r\n<p>ТАРИФ №3 - 2000р</p>\r\n&nbsp; &nbsp;\r\n<p>&nbsp; &nbsp; &nbsp;- 1000 рублей вводим на счет в Вашем проекте.<br />&nbsp;&nbsp; &nbsp; &nbsp;- 300 рублей тратим на сервис активной рекламы для привлечения не менее 100 участников.<br />&nbsp;&nbsp; &nbsp; &nbsp;- 200 рублей стоят наши услуги мониторинга.<br />&nbsp;&nbsp; &nbsp; &nbsp;- Заносим Ваш проект к себе на мониторинг, с составлением соответствующего описания.<br />&nbsp; &nbsp; &nbsp;- Подключаем услуги COLOR и VIP на месяц.<br />&nbsp; &nbsp; &nbsp;- Размещаем 3 баннера на сайте на месяц.<br />&nbsp; &nbsp; &nbsp;- Мониторим платеже-способность Вашего проекта постоянными выводами.&nbsp; &nbsp;</p>\r\n&nbsp; &nbsp;\r\n<p>Платные дополнительные услуги:<br />&nbsp; &nbsp; - COLOR: выделение фона цветом в превью проекта +150 р. за месяц<br />&nbsp; &nbsp; - VIP: закрепление проекта в первых рядах + 350 р. за месяц<br />&nbsp; &nbsp; - UP: единоразовое поднятие проекта на первые места + 50 р. <br />&nbsp; &nbsp; - MMGP: публикация выплат на форуме mmgp + 300 р. за месяц<br />&nbsp; &nbsp; - ERROR: оповещение администрации о найденных ошибках, недочетах + 150 р. единоразово</p>\r\n&nbsp; &nbsp;\r\n<p>Для добавления проекта в мониторинг, можете вносить оплату на <span style="color: red;">PAYEER P1234567</span>, в примечание платежа ОБЯЗАТЕЛЬНО указывайте:<br />&nbsp; &nbsp; - Номер тарифа<br />&nbsp; &nbsp; - Адрес проекта (реф.ссылки не принимаются)<br />&nbsp; &nbsp; - Контактный емайл (не публикуется)<br />&nbsp; &nbsp; - И, если надо, какие допополнительные платные услуги<br />&nbsp; &nbsp; Пример: 1 тариф http://sait.ru pupkin@mail.ru&nbsp; &nbsp;</p>\r\n&nbsp; &nbsp;\r\n<p>Обращаем внимание, что заказывая мониторинг проекта, следует придерживаться правил:<br />&nbsp; &nbsp; - оплата принимается строго в рублях. Если Ваш проект в валюте, то еще +10% к тарифу<br />&nbsp; &nbsp; - конечная сумма должна быть не меньше той, которую нужно оплатить (тоесть при оплате Вам надо оплачивать нужную сумму + 0.95% комиссию PAYEER )<br />&nbsp; &nbsp; - если у Вас бальный проект, то Вам придется сразу добавить баллов нашему аккаунту в проекте, на сумму ввода, согласно тарифу</p>\r\n&nbsp; &nbsp;\r\n<p>Несоблюдение наших правил, ведет к не принятию проекта в мониторинг.</p>\r\n&nbsp; &nbsp;\r\n<p>Несоблюдение правил оплаты, ведет к принятию платежа подарком, для развития мониторинга.</p>\r\n&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\r\n<p>По всем вопросам мониторинга, можете обращайтесь на support[собака]MonitorFF.ru</p>\r\n<br /><br />&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</div>', 1422995641);

-- --------------------------------------------------------

--
-- Структура таблицы `db_farm_users`
--

CREATE TABLE IF NOT EXISTS `db_farm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(35) NOT NULL,
  `farm_id` int(11) NOT NULL,
  `data_add` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Дамп данных таблицы `db_farm_users`
--

INSERT INTO `db_farm_users` (`id`, `user_id`, `user`, `farm_id`, `data_add`) VALUES
(147, 1, 'First', 1, 1423336131),
(146, 1, 'First', 126, 1422987651);

-- --------------------------------------------------------

--
-- Структура таблицы `db_insert_money`
--

CREATE TABLE IF NOT EXISTS `db_insert_money` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `money` double NOT NULL DEFAULT '0',
  `serebro` int(11) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_like`
--

CREATE TABLE IF NOT EXISTS `db_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `progect` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `db_like`
--

INSERT INTO `db_like` (`id`, `user_id`, `status`, `progect`) VALUES
(39, 1, 1, 30),
(38, 1, 1, 34),
(37, 1, 1, 33),
(36, 1, 1, 3),
(35, 1, 1, 31),
(34, 4, 1, 26),
(33, 3, 1, 13),
(32, 1, 1, 26),
(31, 1, 1, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `db_news`
--

CREATE TABLE IF NOT EXISTS `db_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `news` text NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_payeer_insert`
--

CREATE TABLE IF NOT EXISTS `db_payeer_insert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `sum` double NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_payment`
--

CREATE TABLE IF NOT EXISTS `db_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `progect` text COLLATE utf8_unicode_ci NOT NULL,
  `summa` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `db_payment`
--

INSERT INTO `db_payment` (`id`, `progect`, `summa`, `url`) VALUES
(25, 'Fruit-Money ', 400, 'https://fruitmoney.org'),
(24, 'CryptoFarmer', 137, 'http://cryptofarmer.com/?ref=MaximQQ'),
(23, 'EXMO', 210, 'https://exmo.me/?ref=1176272'),
(22, 'АГРОНОМ', 29, 'https://arponom.com/'),
(21, 'EXMO', 120, 'https://exmo.me/?ref=1176272');

-- --------------------------------------------------------

--
-- Структура таблицы `db_progect`
--

CREATE TABLE IF NOT EXISTS `db_progect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `name_farm` text COLLATE utf8_unicode_ci NOT NULL,
  `user` text COLLATE utf8_unicode_ci NOT NULL,
  `title_farm` text COLLATE utf8_unicode_ci NOT NULL,
  `email_user` text COLLATE utf8_unicode_ci NOT NULL,
  `tarif` int(11) NOT NULL,
  `summa_pay` int(11) NOT NULL,
  `data_start` text COLLATE utf8_unicode_ci NOT NULL,
  `data_add` text COLLATE utf8_unicode_ci NOT NULL,
  `vivod` int(11) NOT NULL,
  `num_vivod` int(11) NOT NULL,
  `time_vivod` int(11) NOT NULL,
  `summa` int(11) NOT NULL,
  `src_farm` text COLLATE utf8_unicode_ci NOT NULL,
  `src_banner` text COLLATE utf8_unicode_ci NOT NULL,
  `ref` text COLLATE utf8_unicode_ci NOT NULL,
  `bal` int(11) NOT NULL,
  `paym` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `rek` int(11) NOT NULL,
  `rand` int(11) NOT NULL,
  `serf` int(11) NOT NULL,
  `activ` int(11) NOT NULL,
  `orig` int(11) NOT NULL,
  `dover` int(11) NOT NULL,
  `posl_vivod` int(11) NOT NULL,
  `likee` int(11) NOT NULL,
  `dis` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `db_progect`
--

INSERT INTO `db_progect` (`id`, `status`, `name_farm`, `user`, `title_farm`, `email_user`, `tarif`, `summa_pay`, `data_start`, `data_add`, `vivod`, `num_vivod`, `time_vivod`, `summa`, `src_farm`, `src_banner`, `ref`, `bal`, `paym`, `vip`, `rek`, `rand`, `serf`, `activ`, `orig`, `dover`, `posl_vivod`, `likee`, `dis`, `views`) VALUES
(34, 5, 'АГРОНОМ', 'Admin', 'Агроном - сельскохозяйственная бизнес игра с возможностью вывода реальных денег со своего урожая!<br></br>\nВсем известно, что стоимость земельных участков в мире превышает разумные пределы понимания людей. <br></br>Научись зарабатывать самостоятельно на зерновых культурах и построй свой собственный сельскохозяйственный холдинг с гектарами полей, тысячами партнеров и стабильным доходом!!!', 'user@gmail.com', 200, 500, '01.01.17', '1516808691', 29, 1, 0, 700, 'https://arponom.com/', 'https://linkslot.io/uploads/AWTJRNfPxl7nwUGf5LvC4wYh5.gif', '10%', 2, 2, 0, 0, 0, 2, 100, 2, 0, 1516808781, 0, 1, 7),
(33, 3, 'Fruit-Money ', 'Admin', 'Tropic-Birds — увлекательная экономическая онлайн игра с выводом денег. Пользователям необходимо покупать различных птиц, птицы будут вам приносить яйца которые нужно собирать и продавать. Продавая яйца вы получаете серебро на счет для выплаты, серебро вы можете мгновенно вывести на множество популярных платежных систем!\r\n<br></br>\r\nСпособы заработка на проекте\r\nЗаработок на покупке птиц\r\n<br></br>\r\nДанный вид заработка относится к заработке на инвестициях (пополнениях) в сайт. Пополняете баланс — покупаете различных птиц которые вам дают заработать (легенда игры выше). Данный вид заработка не требует особых усилий, так как нет никаких ограничений на выплату!\r\n<br></br>\r\nЗаработок на привлечении рефералов\r\n<br></br>\r\nПартнерская программа — основа любого сайта для заработка. Приглашайте друзей и знакомых рекламируя свою реферальную ссылку, получайте 10% от пополнений ваших рефералов и 2% от пополнений рефералов ваших рефералов (рефералы 2 уровня).\r\n<br></br>\r\nПрочие виды заработка\r\n<br></br>\r\nЗаработок на сёрфинге, выполнении простых заданий получении различных бонусов. Если у вас нет денег чтобы инвестировать в проект вы можете зарабатывать серебро на просмотре ссылок рекламодателей в разделе Сёрфинг и выполняя простые задания. После того как вы заработаете 3000 серебра на сёрфинге либо заданиях — вам автоматически откроется выплата. Так же на проекте множество различных бонусов которые увеличивают количество вашего серебра, присутствует игровая зона.', 'user@gmail.com', 500, 1000, '01.12.2017', '1516807973', 400, 1, 0, 1800, 'https://fruitmoney.org', 'http://monitorings-games.ru/wp-content/uploads/2018/01/Tropic-Birds-200.gif', '10% 2%', 2, 1, 200, 0, 100, 2, 0, 1, 0, 1516808908, 0, 1, 10),
(30, 3, 'CryptoFarmer', 'Admin', 'Первый в Мире симулятор майнинга с выводом криптовалюты. Crypto Farmer – это экономическая онлайн игра построенная на технологии Blockchain, которая увлечет всех, кто интересуется доходами, заработками и финансами. CryptoFarmer позволит каждому участнику построить свою собственную ферму в режиме онлайн и заработать криптовалюту, которую затем легко можно вывести в любое удобное время.', 'user@gmail.com', 500, 500, '11', '1516038563', 137, 1, 0, 500, 'http://cryptofarmer.com/?ref=MaximQQ', 'https://cryptofarmer.com/uploads/banners/K1756xHctCQzYdojebSe1mqBKQ8r7gm48i5fxIoj.gif', '?', 2, 1, 0, 500, 100, 2, 0, 1, 0, 1516808874, 0, 1, 11),
(31, 4, 'EXMO', 'Maxim', 'Компания EXMO объединяет профессионалов с разных уголков земного шара. Программисты Испании, России, Индии и Таиланда вместе с успешными финансовыми консультантами из Великобритании, США, Литвы и Сингапура работают над созданием самой удобной в мире платформы по работе с криптовалютами. Эксперты отмечают, что Биткоин может значительно упростить расчеты, сделать финансовые операции безопаснее и команда EXMO вносит свой вклад в развитие технологии Блокчейн.\n<br></br>\n\nЗа время работы, специалисты команды EXMO стали не просто коллегами, но хорошими друзьями, которых объединяет любовь к общему делу. Все сотрудники обладают высокой квалификацией, что позволяет найти индивидуальный подход к каждому клиенту и поднять качество обслуживания на новый уровень. Мы работаем 24 часа в сутки и 7 дней в неделю, чтоб вы имели возможность выгодно торговать, успешно обменивать и надежно хранить средства на кошельке EXMO.\n<br></br>\n\nМы открыты к диалогу и ценим мнение каждого клиента, поэтому, если у вас есть вопросы или предложения, поделитесь ими через форму обратной связи или в онлайн чате, и мы ответим как можно скорее.', 'user@gmail.com', 1000, 500, '2013', '1516637039', 330, 2, 0, 2100, 'https://exmo.me/?ref=1176272', 'https://exmo.me/static/img/affiliate/affiliate1_ru.png', '20%', 2, 1, 0, 500, 100, 2, 0, 1, 0, 1516808840, 1, 0, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `db_recovery`
--

CREATE TABLE IF NOT EXISTS `db_recovery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_regkey`
--

CREATE TABLE IF NOT EXISTS `db_regkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referer_name` varchar(10) NOT NULL,
  `date_add` int(11) NOT NULL DEFAULT '0',
  `date_del` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_sender`
--

CREATE TABLE IF NOT EXISTS `db_sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `mess` text NOT NULL,
  `page` int(5) NOT NULL DEFAULT '0',
  `sended` int(7) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `date_add` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `db_users_a`
--

CREATE TABLE IF NOT EXISTS `db_users_a` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `referer` varchar(10) NOT NULL,
  `referer_id` int(11) NOT NULL DEFAULT '0',
  `referals` int(11) NOT NULL DEFAULT '0',
  `date_reg` int(11) NOT NULL DEFAULT '0',
  `date_login` int(11) NOT NULL DEFAULT '0',
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `banned` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `db_users_a`
--

INSERT INTO `db_users_a` (`id`, `user`, `email`, `pass`, `referer`, `referer_id`, `referals`, `date_reg`, `date_login`, `ip`, `banned`) VALUES
(1, 'Admin', 'user@gmail.com', '364253135', 'First', 1, 3, 1367313062, 1516809122, 628783049, 0),
(4, 'Maxim', 'user@yandex.com', '5131531513', 'First', 1, 0, 1507287654, 1516636691, 628783049, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `db_users_b`
--

CREATE TABLE IF NOT EXISTS `db_users_b` (
  `id` int(11) NOT NULL,
  `user` varchar(10) NOT NULL,
  `money_b` double NOT NULL DEFAULT '0',
  `to_referer` double NOT NULL DEFAULT '0',
  `insert_sum` double NOT NULL DEFAULT '0',
  `vip` int(11) NOT NULL DEFAULT '0',
  `vip_data_p` int(20) NOT NULL DEFAULT '0',
  `vip_data_o` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `db_users_b`
--

INSERT INTO `db_users_b` (`id`, `user`, `money_b`, `to_referer`, `insert_sum`, `vip`, `vip_data_p`, `vip_data_o`) VALUES
(1, 'Admin', 1, 0, 100, 1, 1422987557, 1431022757),
(4, 'Maxim', 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
