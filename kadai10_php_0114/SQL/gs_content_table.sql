-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-19 11:04:09
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_content_table`
--

CREATE TABLE `gs_content_table` (
  `id` int(12) NOT NULL,
  `title` varchar(64) NOT NULL COMMENT '記事のタイトル',
  `content` varchar(256) NOT NULL COMMENT '記事の内容',
  `img` varchar(256) DEFAULT NULL COMMENT '画像のPATH',
  `date` datetime NOT NULL COMMENT '登録日',
  `update_time` datetime DEFAULT NULL COMMENT '更新日（NULL許容）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='記事のテーブル';

--
-- テーブルのデータのダンプ `gs_content_table`
--

INSERT INTO `gs_content_table` (`id`, `title`, `content`, `img`, `date`, `update_time`) VALUES
(42, 'テント', 'テント高いよー', '20230119105029_ダウンロード.jpg', '2023-01-19 18:50:29', NULL),
(43, '焚火台', 'スノーピーク', '20230119105114_ダウンロード (1).jpg', '2023-01-19 18:51:14', NULL),
(44, '寝袋', '二人で寝れる', '20230119105132_ダウンロード (2).jpg', '2023-01-19 18:51:32', NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_content_table`
--
ALTER TABLE `gs_content_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_content_table`
--
ALTER TABLE `gs_content_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
