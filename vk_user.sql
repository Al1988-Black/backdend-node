-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 09 2024 г., 00:15
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vk_user`
--

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT 'MEN',
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `email`, `firstname`, `surname`, `gender`, `photo`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'dinara@mail.ru', '1234578d', 'Valina', 'WOMEN', 'bed66753-69ba-4ae3-a40a-c5b2f843c90b.jpg', '2024-06-08 21:15:16', '2024-06-08 21:28:26', 1),
(2, 'irinas@mail.ru', 'Ира', 'Неизвестная', 'WOMEN', '7e0db415-dae3-4d69-ac86-08fd225a7608.jpg', '2024-06-08 21:32:00', '2024-06-08 21:33:52', 2),
(3, 'marina2@mail.ru', 'Марина', 'Новая', 'WOMEN', '077d60ea-5bbb-4788-b95d-a61bad16e7c0.jpg', '2024-06-08 21:34:30', '2024-06-08 21:37:44', 3),
(4, 'darina@mail.ru', 'Марина', 'Минина', 'WOMEN', '68effb5d-936b-48ec-9520-1b486166859e.jpg', '2024-06-08 21:38:19', '2024-06-08 21:43:33', 4),
(5, 'kira@mail.ru', 'Кира', 'Матохина', 'WOMEN', '6400c9fd-361d-47f4-b3bb-4014ee2ede7b.jpg', '2024-06-08 21:44:17', '2024-06-08 21:45:38', 5),
(6, 'sveta@mail.ru', 'Sveta', 'Светикова', 'WOMEN', '9003bc86-0681-467c-b354-79b24ec8f223.jpg', '2024-06-08 21:45:59', '2024-06-08 21:47:26', 6),
(7, 'alina@mail.ru', 'Алина', 'Малинина', 'WOMEN', 'b21d3d89-078e-4d30-8ad7-ff9bff766ed0.jpg', '2024-06-08 21:48:29', '2024-06-08 21:49:53', 7),
(8, 'marina@mail.ru', 'Марина', 'Малая', 'WOMEN', '459dd772-c1ca-4fa3-abc0-cd0185878c24.jpg', '2024-06-08 21:50:19', '2024-06-08 21:51:25', 8),
(9, 'sasha@mail.ru', 'Саша', 'Выкрутасова', 'WOMEN', '5c0d8907-c4a8-46e6-976c-b800a94d87bf.jpg', '2024-06-08 21:52:08', '2024-06-08 21:54:06', 9),
(10, 'glasha@mail.ru', 'Глаша', 'Глоталина', 'WOMEN', 'b99abcd8-a6f0-401d-a8e8-31c0af8adacd.png', '2024-06-08 21:56:37', '2024-06-08 21:58:09', 10),
(11, 'inna@mail.ru', 'Инна', 'Радайкина', 'WOMEN', '6cc81d37-4a7f-4526-8c32-8469bba6b57c.png', '2024-06-08 21:58:30', '2024-06-08 21:59:43', 11),
(12, 'masha@mail.ru', 'Маша', 'Медведь', 'WOMEN', 'd675860c-64db-4286-b5c8-b605c7af3264.png', '2024-06-08 22:00:22', '2024-06-08 22:01:50', 12),
(13, 'ksusha@mail.ru', 'Ксюша', 'Хромова', 'WOMEN', 'd4100919-1018-43e0-8eb1-28151a744c16.png', '2024-06-08 22:03:24', '2024-06-08 22:04:55', 13),
(14, 'galya@mail.ru', 'Галина', 'Котова', 'MEN', '0acd58bb-26ea-4119-ab3c-b33ab2ee5ca1.png', '2024-06-08 22:05:41', '2024-06-08 22:07:18', 14),
(15, 'olga@mail.ru', 'Ольга', 'Морозова', 'WOMEN', 'e26c229a-5102-45a4-9ebe-5b23a38893dd.png', '2024-06-08 22:07:40', '2024-06-08 22:08:57', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `refreshToken` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `refreshToken`, `createdAt`, `updatedAt`, `userId`) VALUES
(1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicGFzc3dvcmQiOiIkMmIkMDQkenhQbS5tZ2NaVHhqRlQ3WEZobXpEdXJ5blZLOGNBR1lKcHlxRFpzOUI3LzBET0IyOHVmc3EiLCJpYXQiOjE3MTc4ODE5MzIsImV4cCI6MTcxNzg4OTEzMn0.ctteWIUH5QUgXtMPjzYilXDLPPRjfELjy77VuPHf0j4', '2024-06-08 21:15:16', '2024-06-08 21:25:32', 1),
(2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwicGFzc3dvcmQiOiIkMmIkMDQkYzVUWDhySUpkMjg3Sk43Q1UuL0ZCT1JHZzBEU092SWl6Zm54aDZObkNoWEdZZGNHMmdtUFMiLCJpYXQiOjE3MTc4ODIzMzksImV4cCI6MTcxNzg4OTUzOX0.LgOhoKbCLC5I-DGd7bwySaq8MI4W5G7aD6NDBSJOKSw', '2024-06-08 21:32:00', '2024-06-08 21:32:19', 2),
(3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MywicGFzc3dvcmQiOiIkMmIkMDQkei5MVHlVM2VrakJFejJnUHJCSHFHZVlBbGFaVEV1TWE0cHFBUjZ6alJzWk9zclFucXYuU2UiLCJpYXQiOjE3MTc4ODI0ODcsImV4cCI6MTcxNzg4OTY4N30.CNoio4oPXf_4K4eOyzvj5i0h21ItxzJC7p_sjvhLWOE', '2024-06-08 21:34:30', '2024-06-08 21:34:47', 3),
(4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwicGFzc3dvcmQiOiIkMmIkMDQkNnZleWFhN1RvY00uL1R5dVZNY3lqT3lQVC9MRWxNc2FhVGl4a3k1OTVxRFJ0TG1zb1l0YVMiLCJpYXQiOjE3MTc4ODI5OTAsImV4cCI6MTcxNzg5MDE5MH0.yLJ8vCLG6q37uzzFvQ_UzOGGIWyEL--S9oCEoe42vUc', '2024-06-08 21:38:19', '2024-06-08 21:43:10', 4),
(5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwicGFzc3dvcmQiOiIkMmIkMDQkQXplOFlBZjNEYlRWTGV4Vzd4M2ZydXNTdVQ1bDFYZ0VUYTZVOGJRM3Y4eVpIZkZNYVhOVksiLCJpYXQiOjE3MTc4ODMwNzEsImV4cCI6MTcxNzg5MDI3MX0.AdaeeUHPYyh1FB2XwwRTbeh2ntcRkdmyDdVmOzo_m1M', '2024-06-08 21:44:17', '2024-06-08 21:44:31', 5),
(6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwicGFzc3dvcmQiOiIkMmIkMDQkandaZ0VoeHhYSlprUkZaMXlYTDd5dW5mSWxscjJzQml4SWVRYUgxenNzbGlONUtXbUZrVDYiLCJpYXQiOjE3MTc4ODMxODUsImV4cCI6MTcxNzg5MDM4NX0.sigXQzjmjL3DFwKP8X6YaCXcxfoVYorZEDLcuJFfHEI', '2024-06-08 21:45:59', '2024-06-08 21:46:25', 6),
(7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywicGFzc3dvcmQiOiIkMmIkMDQkS1ZqS21VWkJMZk1QemtEWXlLOFZKZTJOOC5aT1NNZU1Hd2hkLm43MmVzSTd4VU5BTGZZN0ciLCJpYXQiOjE3MTc4ODMzMjUsImV4cCI6MTcxNzg5MDUyNX0.l98aGiT6anR5A93xYCq7bWowQmEpkbYWiAZxSUY3y24', '2024-06-08 21:48:29', '2024-06-08 21:48:45', 7),
(8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OCwicGFzc3dvcmQiOiIkMmIkMDQkanlsclpjbUJaRjJKSFJ6Z0ZudnVIZWQ3Qy9DdVNodTdtVEFwcEdlNFVVVTJsaTVVdHZicEMiLCJpYXQiOjE3MTc4ODM0MzMsImV4cCI6MTcxNzg5MDYzM30._SYEgsHqDlWKWi4x0wBSgXSOPEntOA8KmtWw9ta-UlU', '2024-06-08 21:50:19', '2024-06-08 21:50:33', 8),
(9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6OSwicGFzc3dvcmQiOiIkMmIkMDQkY0xWZHFZbWRRSUNET0h5TnFwdmZndUQuU0pFL1htTFplTnNkSkJMNHdYdmI4MGxOajNNQ08iLCJpYXQiOjE3MTc4ODM1NDAsImV4cCI6MTcxNzg5MDc0MH0.2Mjp-MS9XkHwRnIgEKt_LIimrYDhm_qxV1F2SwxrnYc', '2024-06-08 21:52:08', '2024-06-08 21:52:20', 9),
(10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTAsInBhc3N3b3JkIjoiJDJiJDA0JDhrMVBQV0pJTFZ3STRFUHJSWDk2aGUwdnNzZnhtSTcvUDkxOW5jdlpWUGFMa0tXMGNoZkVXIiwiaWF0IjoxNzE3ODgzODE1LCJleHAiOjE3MTc4OTEwMTV9.TuTRyjWL7yh-i6eXWAfm_J8whhdM1ZZUrnV3nDFfy_Q', '2024-06-08 21:56:37', '2024-06-08 21:56:55', 10),
(11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTEsInBhc3N3b3JkIjoiJDJiJDA0JHFESmpTY2pDYURKaHB4Vm55amlJWHVQZlBpMzRvdFl5WXZJYmF0eG1jelJkaUhGYk81bzFpIiwiaWF0IjoxNzE3ODgzOTI0LCJleHAiOjE3MTc4OTExMjR9.-OEyX-L03k1rC88rtFg-IBHDerB3Pherm5fqFBxbndk', '2024-06-08 21:58:30', '2024-06-08 21:58:44', 11),
(12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTIsInBhc3N3b3JkIjoiJDJiJDA0JDQ3a2l6c2ptTlJsNzVjc25ROGlqZi5wU29SSTB6bGtpSFlNWWRRVkdXUWwybzN1Y1R0YnR1IiwiaWF0IjoxNzE3ODg0MDI1LCJleHAiOjE3MTc4OTEyMjV9.9rQn6RdhduCJV_kdAjj5O0Sn7GeJXKLqNtGQP0ZbFEc', '2024-06-08 22:00:22', '2024-06-08 22:00:25', 12),
(13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTMsInBhc3N3b3JkIjoiJDJiJDA0JDdDbERjODNCUHJSUEFMRDlEYXFNMnVCQXR4TERJTHg0MEQ4M1Y2RDZuWkZQOXVITXlMOEU2IiwiaWF0IjoxNzE3ODg0MjEyLCJleHAiOjE3MTc4OTE0MTJ9.eIGL2ODbcYrgMPh4qfMNrZpkVZ4pXnQbeVqaJaNEPQ0', '2024-06-08 22:03:24', '2024-06-08 22:03:32', 13),
(14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQsInBhc3N3b3JkIjoiJDJiJDA0JGp6ZDNvZ205TUdPTXlsUjlhYTRvZWVtVFpQQ2NzTko4L3R0Tk14emhabWJDdFlTUEF3aDd5IiwiaWF0IjoxNzE3ODg0MzU5LCJleHAiOjE3MTc4OTE1NTl9.o1hB2yQgio1O1d0K-PznuS9O1J746NHkGlsE0IqRmck', '2024-06-08 22:05:41', '2024-06-08 22:05:59', 14),
(15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTUsInBhc3N3b3JkIjoiJDJiJDA0JEkwTXFJM2c5MVFWY01uc3FMVzRBVk9NT0pTa0RMVnlEdTZhaHhIQURKNWt3NXhqME8wLmV5IiwiaWF0IjoxNzE3ODg0NDcyLCJleHAiOjE3MTc4OTE2NzJ9.TCP8TB31NAH0T9KkljGIEmuqbl2YtL8LWHtee4WTZ6Y', '2024-06-08 22:07:40', '2024-06-08 22:07:52', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `password`, `createdAt`, `updatedAt`) VALUES
(1, '$2b$04$zxPm.mgcZTxjFT7XFhmzDurynVK8cAGYJpyqDZs9B7/0DOB28ufsq', '2024-06-08 21:15:16', '2024-06-08 21:15:16'),
(2, '$2b$04$c5TX8rIJd287JN7CU./FBORGg0DSOvIizfnxh6NnChXGYdcG2gmPS', '2024-06-08 21:32:00', '2024-06-08 21:32:00'),
(3, '$2b$04$z.LTyU3ekjBEz2gPrBHqGeYAlaZTEuMa4pqAR6zjRsZOsrQnqv.Se', '2024-06-08 21:34:30', '2024-06-08 21:34:30'),
(4, '$2b$04$6veyaa7TocM./TyuVMcyjOyPT/LElMsaaTixky595qDRtLmsoYtaS', '2024-06-08 21:38:19', '2024-06-08 21:38:19'),
(5, '$2b$04$Aze8YAf3DbTVLexW7x3frusSuT5l1XgETa6U8bQ3v8yZHfFMaXNVK', '2024-06-08 21:44:17', '2024-06-08 21:44:17'),
(6, '$2b$04$jwZgEhxxXJZkRFZ1yXL7yunfIllr2sBixIeQaH1zssliN5KWmFkT6', '2024-06-08 21:45:59', '2024-06-08 21:45:59'),
(7, '$2b$04$KVjKmUZBLfMPzkDYyK8VJe2N8.ZOSMeMGwhd.n72esI7xUNALfY7G', '2024-06-08 21:48:29', '2024-06-08 21:48:29'),
(8, '$2b$04$jylrZcmBZF2JHRzgFnvuHed7C/CuShu7mTAppGe4UUU2li5UtvbpC', '2024-06-08 21:50:19', '2024-06-08 21:50:19'),
(9, '$2b$04$cLVdqYmdQICDOHyNqpvfguD.SJE/XmLZeNsdJBL4wXvb80lNj3MCO', '2024-06-08 21:52:08', '2024-06-08 21:52:08'),
(10, '$2b$04$8k1PPWJILVwI4EPrRX96he0vssfxmI7/P919ncvZVPaLkKW0chfEW', '2024-06-08 21:56:37', '2024-06-08 21:56:37'),
(11, '$2b$04$qDJjScjCaDJhpxVnyjiIXuPfPi34otYyYvIbatxmczRdiHFbO5o1i', '2024-06-08 21:58:30', '2024-06-08 21:58:30'),
(12, '$2b$04$47kizsjmNRl75csnQ8ijf.pSoRI0zlkiHYMYdQVGWQl2o3ucTtbtu', '2024-06-08 22:00:22', '2024-06-08 22:00:22'),
(13, '$2b$04$7ClDc83BPrRPALD9DaqM2uBAtxLDILx40D83V6D6nZFP9uHMyL8E6', '2024-06-08 22:03:24', '2024-06-08 22:03:24'),
(14, '$2b$04$jzd3ogm9MGOMylR9aa4oeemTZPCcsNJ8/ttNMxzhZmbCtYSPAwh7y', '2024-06-08 22:05:41', '2024-06-08 22:05:41'),
(15, '$2b$04$I0MqI3g91QVcMnsqLW4AVOMOJSkDLVyDu6ahxHADJ5kw5xj0O0.ey', '2024-06-08 22:07:40', '2024-06-08 22:07:40');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
