-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 21 2023 г., 14:03
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `php`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`category_id`, `category`) VALUES
(1, 'драма'),
(2, 'комедия');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `number` int DEFAULT NULL,
  `count` int DEFAULT NULL,
  `status` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `user_id`, `number`, `count`, `status`, `reason`, `created_at`, `updated_at`) VALUES
(17, 0, 2, 1387869029, 1, 'Отменённый', 'вав', '2022-02-17 10:15:08', '2023-11-17 08:11:58'),
(36, 11, 3, NULL, 1, NULL, NULL, '2023-11-21 10:09:05', '2023-11-21 10:09:05');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int NOT NULL,
  `path` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `country`, `year`, `model`, `category`, `count`, `path`, `created_at`) VALUES
(1, '30 Going on 30', 'Оценка: 7.7 Похожие фильмы: Загадай желание, Большой, Мальчик в девочке', 'Дженнифер Гарнер, Марк Руффало, Джуди Грир, Энди Серкис', 'Дженне всего 13 и она очень хочет стать большой. Видимо, её желание попадает по нужному адресу, поскольку наутро она просыпается… 30-летней красавицей.', 'фильм', 'комедия', 15, 'asset/img/image18.png', '2022-02-16 06:58:58'),
(3, 'a Cinderella story', 'Оценка: 6.9 Похожие фильмы: Заколдованная Элла, Принц и я, Идеальный мужчина', 'Хилари Дафф, Чад Майкл Мюррей, Дженнифер Кулидж, Реджина Кинг', 'Выпускница Сэм, решительно настроенная поступить в Принстон, живет на побегушках у своей эгоцентричной мачехи Фионы и злобных сводных сестер, относящихся к ней скорее как к прислуге, чем к члену семьи. Но тут неожиданное событие вносит разнообразие в унылую жизнь Золушки: в Интернете она знакомится с очаровательным принцем.', 'фильм', 'комедия', 48, 'asset/img/image19.png', '2022-02-16 06:58:58'),
(4, 'the boy in the triped pajamas', 'Оценка: 8.2 Похожие фильмы: Голый среди волков, Воровка книг, Склонность, Кролик Джоджо', 'Вера Фармига, Дэвид Тьюлис, Эйса Баттерфилд, Джек Скэнлон, Амбер Битти', 'История, происходящая во время Второй мировой войны и показанная сквозь глаза невинного и ничего не подозревающего о происходящих событиях Бруно, восьмилетнего сына коменданта концентрационного лагеря. Его случайное знакомство и дружба с еврейским мальчиком по другую сторону ограды лагеря, в конечном счете, приводит к самым непредсказуемым и ошеломительным последствиям.', 'фильм', 'драма', 25, 'asset/img/image20.png', '2022-02-16 06:58:58'),
(5, 'Forrest Gump', 'Оценка: 8.9 Похожие фильмы: Загадочная история Бенджамина Баттона, Миллионер из трущоб, Человек дождя', 'Том Хэнкс, Робин Райт, Гэри Синиз, Майкелти Уильямсон', 'Сидя на автобусной остановке, Форрест Гамп — не очень умный, но добрый и открытый парень — рассказывает случайным встречным историю своей необыкновенной жизни. С самого малолетства парень страдал от заболевания ног, соседские мальчишки дразнили его, но в один прекрасный день Форрест открыл в себе невероятные способности к бегу. Подруга детства Дженни всегда его поддерживала и защищала, но вскоре дороги их разошлись.', 'фильм', 'драма', 57, 'asset/img/image21.png', '2022-02-16 06:58:58'),
(7, 'the fault in our stars', 'Оценка: 7.8 Похожие фильмы:  До встречи с тобой, Полночное солнце, Сейчас самое время, Я, Эрл и умирающая девушка', 'До встречи с тобой, Полночное солнце, Сейчас самое время', 'Хэйзел больна раком. Несмотря на то, что болезнь временно отступила, девушка не чувствует ни капли радости. Она ходит в группу поддержки, где однажды знакомится с Огастусом Уотерсом и моментально влюбляется в него. ', 'фильм', 'драма', 647, 'asset/img/image22.png', '2022-02-16 06:58:58'),
(8, 'midnight sun', 'Оценка: 6.9 Похожие фильмы: Виноваты звезды, До встречи с тобой, Спеши любить, В метре друг от друга', 'Актеры: Белла Торн Патрик Шварценеггер Роб Риггл Куинн Шепард', 'Ночами 17-летняя Кэти сочиняет красивые песни под гитару, а днем она вынуждена скрываться во мраке: её нежная кожа не выносит солнечного света. Но однажды в полночь Кэти знакомится с Чарли, веселым парнем с очаровательной улыбкой. Внезапная и страстная любовь яркой вспышкой озаряет жизнь больной девушки. И теперь ради возлюбленного она готова сгореть в лучах света безумного чувства.', 'фильм', 'драма', 55, 'asset/img/image23.png', '2022-02-16 06:58:58'),
(9, 'riverdale', 'Оценка: 6.5 Похожие сериалы: Твин Пикс, Флэш, Тайны Смолвиля, Вероника Марс.', 'Кей Джей Апа, Лили Рейнхарт, Камила Мендес, Коул Спроус', 'Сериал расскажет о жизни и приключениях жизнерадостного и никогда не унывающего подростка Арчи Эндрюса, а также Бэтти Купер, Вероники Лодж и их друзей из Ривердэйла. Действие разворачивается в современном мире, а главные герои решают исследовать сокрытую от посторонних сторону жизни маленького мирного городка со всеми его странностями и тёмными тайнами, прячущимися за праздничным фасадом. ', 'сериал', 'драма', 4, 'asset/img/image24.png', '2022-02-16 06:58:58'),
(10, 'difficult teens', 'Оценка: 8.1 Похожие сериалы: Мир! Дружба! Жвачка!, Закрытая школа, Кадетство, Физрук', 'Никита Волков, Александр Лыков, Виталий Андреев, Анастасия Крылова', 'Популярный футболист Антон Ковалёв, отсидев два года в тюрьме за пьяный дебош в кафе, выходит на свободу. Проступок перекрыл успешную карьеру Ковалёва, который ранее был капитаном сборной России. Репутация «сбитого летчика» не позволяет ему продолжить любимое дело и получить престижную работу. Некогда воспитывавший Антона глава центра трудных подростков Герман предлагает ему место в центре, чтобы подготовить непростых ребят к местной Олимпиаде.', 'сериал', 'комедия', 32, 'asset/img/image25.png', '2022-02-16 06:58:58'),
(11, 'friends', 'Оценка: 9.2 Похожие сериалы: Как я встретил Вашу маму, Теория большого взрыва, Клиника, Красавцы', 'Дженнифер Энистон, Кортни Кокс, Лиза Кудроу, Мэтт Леблан', 'Шестеро друзей – Рейчел, Моника, Фиби, Джоуи, Чендлер и Росс – живут по соседству, вместе убивают время, делятся секретами и иногда очень сильно влюбляются.', 'сериал', 'комедия', 0, 'asset/img/image26.png', '2022-02-16 06:58:58'),
(12, 'the society', 'Оценка: 6.8 Похожие сериалы: Под куполом, Спираль, Оставленные, Сирена ', 'Кэтрин Ньютон, Гидеон Адлон, Шон Берди, Наташа Лю Бордиццо', 'Группа подростков оказывается в копии их города, где нет взрослых.', 'сериал', 'драма', 87, 'asset/img/image27.png', '2022-02-16 06:58:58'),
(13, 'ann with an e', 'Оценка: 8.6 Похожие фильмы: Судьба: сага Винкс, Мне это не нравится, Я никогда не..., Бетти', 'Эмибет МакНалти, Джеральдин Джеймс, Р.Х. Томсон, Дэлайла Бела', 'Энн — тринадцатилетняя сирота. Девочка рано лишилась родителей и с тех пор живёт в детском приюте. Жизнь героини резко меняется, когда в результате ошибки она попадает к новым приёмным родителям, старой деве и её младшему брату.', 'сериал', 'драма', 24, 'asset/img/image28.png', '2022-02-16 06:58:58'),
(15, 'Elite', 'Оценка: 7.5 Похожие сериалы: Милые обманщицы: Перфекционистки, Эйфория, 13 причин почему', 'Мария Педраса, Итзан Эскамилья, Мигель Бернардо, Мигель Эрран', 'Трое подростков из бедных семей попадают в «Лас Энчинас» — самую престижную школу в стране. Обеспеченным деткам не нравятся новички, и начинается безжалостная битва за власть. В ход идут любые средства и методы, даже убийство.', 'сериал', 'драма', 95, 'asset/img/image29.png', '2022-02-16 06:58:58');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronymic` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `name`, `surname`, `patronymic`, `login`, `email`, `password`, `role`, `tarif`, `card`) VALUES
(1, 'Ад', 'мини', 'стратор', 'admin', '1@1', 'admin11', 'admin', 'none', ''),
(2, 'фыв', 'ваы', 'авфыа', '1', '1@1', '123456', 'client', 'none', ''),
(3, 'д', 'и', 'н', 'dina', 'dina@gm.vcv', 'dina12', 'client', 'prime', 'shares');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
