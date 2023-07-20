-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 24, 2023 at 10:38 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projetweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `moviedimanche`
--

DROP TABLE IF EXISTS `moviedimanche`;
CREATE TABLE IF NOT EXISTS `moviedimanche` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviedimanche`
--

INSERT INTO `moviedimanche` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'X-Men: The Last Stand\r\n', 'img/movie1.jpg', 'img/movie1-.jpg', 6.6, 'PG-13\r\n', 2006, '104 min\r\n', 'Action-Adventure\r\n', 'The human government develops a cure for mutations, and Jean Gray becomes a darker uncontrollable persona called the Phoenix who', 'Patrick Stewart, Hugh Jackman, Halle Berry', ''),
(2, 'Dungeons & Dragons: Honor Among Thieves (2023)', 'img/movie11.jpg', 'img/movie11-.jpg', 8.6, 'PG-13\r\n', 2023, '134 min\r\n', 'Action-Adventure', 'Profion, a tyrant, attempts to overthrow a peaceful kingdom ruled by a tough empress.', 'Justin Whalin, Jeremy Irons, Zoe McLellan', ''),
(3, 'Snatch', 'img/movie14.jpg', 'img/movie14-.jpg', 8.2, 'R\r\n', 2000, '102 min\r\n', 'Comedy-Crime', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jeweler', 'Jason Statham, Brad Pitt, Stephen Graham', ''),
(4, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', 8.9, 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(5, 'The Little Mermaid 2', 'img/movie9.jpg', 'img/movie9-.jpg', 5.6, 'G', 2000, '75 min\r\n', 'Animation-Family', 'To protect her from a sea witch, Ariel\'s daughter is not allowed in the ocean; but when she becomes 12, she runs away to an adve', 'Jodi Benson, Samuel E. Wright, Tara Strong, Pat Carroll', ''),
(6, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', 7.4, 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\r\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', ''),
(7, 'Jumanji\r\n', 'img/movie15.jpg', 'img/movie15-.jpg', 7, 'PG', 1995, '104 min\r\n', 'Adventure-Comedy', 'When two kids find and play a magical board game, they release a man trapped in it for decades - and a host of dangers that can ', 'Robin Williams, Kirsten Dunst, Bonnie Hunt', ''),
(8, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', 8.9, 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(9, 'Dachra\r\n', 'img/movie17.jpg', 'img/movie17-.jpg', 6.3, 'R', 2018, '114 min\r\n', 'Horror', 'An investigation into witchcraft leads a trio of journalism students to a mysterious town marked by sinister rituals. Inspired b', 'Yassmine Dimassi, Hela Ayed, Aziz Jebali', ''),
(10, 'The Dark Knight\r\n', 'img/movie2.jpg', 'img/movie2-.jpg', 9, 'PG-13', 2008, '152 min\r\n', 'Action-Crime-Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psycho', 'Christian Bale, Heath Ledger, Aaron Eckhart', '');

-- --------------------------------------------------------

--
-- Table structure for table `moviejeudi`
--

DROP TABLE IF EXISTS `moviejeudi`;
CREATE TABLE IF NOT EXISTS `moviejeudi` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviejeudi`
--

INSERT INTO `moviejeudi` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'The Fault in Our Stars\r\n', 'img/movie16.jpg', 'img/movie16-.jpg', 7.7, 'PG-13', 2014, '126 min\r\n', 'Drama-Romance', 'Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.\r\n', 'Shailene Woodley, Ansel Elgort, Nat Wolff', ''),
(2, 'Avengers: Infinity War\r\n', 'img/movie6.jpg', 'img/movie6-.jpg', 8.4, 'PG-13\r\n', 2018, '149 min\r\n', 'Action-Adventure', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of d', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', ''),
(3, 'Coco', 'img/movie7.jpg', 'img/movie7-.jpg', 8.4, 'PG', 2017, '105 min\r\n', 'Animation-Comedy', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-gre', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', ''),
(4, 'Idiots\r\n', 'img/movie8.jpg', 'img/movie8-.jpg', 8.4, 'PG-13\r\n', 2009, '170 min\r\n', 'Comedy-Drama', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend', 'Aamir Khan, Madhavan, Mona Singh', ''),
(5, 'Dungeons & Dragons: Honor Among Thieves (2023)', 'img/movie11.jpg', 'img/movie11-.jpg', 8.6, 'PG-13\r\n', 2023, '134 min\r\n', 'Action-Adventure', 'Profion, a tyrant, attempts to overthrow a peaceful kingdom ruled by a tough empress.', 'Justin Whalin, Jeremy Irons, Zoe McLellan', ''),
(6, 'Dachra\r\n', 'img/movie17.jpg', 'img/movie17-.jpg', 6.3, 'R', 2018, '114 min\r\n', 'Horror', 'An investigation into witchcraft leads a trio of journalism students to a mysterious town marked by sinister rituals. Inspired b', 'Yassmine Dimassi, Hela Ayed, Aziz Jebali', ''),
(7, 'The Dark Knight\r\n', 'img/movie2.jpg', 'img/movie2-.jpg', 9, 'PG-13', 2008, '152 min\r\n', 'Action-Crime-Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psycho', 'Christian Bale, Heath Ledger, Aaron Eckhart', ''),
(8, 'The departed', 'img/movie12.jpg', 'img/movie12-.jpg', 8.5, 'R', 2006, '151 min\r\n', 'Crime-Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson', ''),
(9, 'The Father\r\n', 'img/movie18.jpg', 'img/movie18-.jpg', 8.2, 'PG-13\r\n', 2020, '97 min\r\n', 'Drama-Mystery\r\n', 'A man refuses all assistance from his daughter as he ages. As he tries to make sense of his changing circumstances, he begins to', 'Anthony Hopkins, Olivia Colman, Mark Gatiss', ''),
(10, 'Django Unchained', 'img/movie5.jpg', 'img/movie5-.jpg', 8.4, 'R\r\n', 2012, '165 min\r\n', 'Drama-Western', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio', '');

-- --------------------------------------------------------

--
-- Table structure for table `movielundi`
--

DROP TABLE IF EXISTS `movielundi`;
CREATE TABLE IF NOT EXISTS `movielundi` (
  `movieID` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(1000) NOT NULL,
  `movieActors` varchar(200) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movielundi`
--

INSERT INTO `movielundi` (`movieID`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'The Dark Knight\r\n', 'img/movie2.jpg', 'img/movie2-.jpg', 9, 'PG-13', 2008, '152 min\r\n', 'Action-Crime-Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'Christian Bale, Heath Ledger, Aaron Eckhart', ''),
(2, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', 7.4, 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\n\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', ''),
(3, 'Unlocked', 'img/movie4.jpg', 'img/movie4-.jpg', 6.3, 'R', 2017, '98 min\r\n', 'Action-Thriller', 'A CIA interrogator is lured into a ruse that puts London at risk of a biological attack.\n\n', 'Noomi Rapace, Orlando Bloom, Toni Collette', ''),
(4, 'Django Unchained\r\n', 'img/movie5.jpg', 'img/movie5-.jpg', 8.4, 'R\r\n', 2012, '165 min\r\n', 'Drama-Western', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio', ''),
(5, 'Avengers: Infinity War\r\n', 'img/movie6.jpg', 'img/movie6-.jpg', 8.4, 'PG-13\r\n', 2018, '149 min\r\n', 'Action-Adventure', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', ''),
(6, 'Coco', 'img/movie7.jpg', 'img/movie7-.jpg', 8.4, 'PG', 2017, '105 min\r\n', 'Animation-Comedy', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', ''),
(7, 'Idiots\r\n', 'img/movie8.jpg', 'img/movie8-.jpg', 8.4, 'PG-13\r\n', 2009, '170 min\r\n', 'Comedy-Drama', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend who inspired them to think differently, even as the rest of the world called them \"idiots\".', 'Aamir Khan, Madhavan, Mona Singh', ''),
(8, 'The Little Mermaid 2', 'img/movie9.jpg', 'img/movie9-.jpg', 5.6, 'G', 2000, '75 min\r\n', 'Animation-Family', 'To protect her from a sea witch, Ariel\'s daughter is not allowed in the ocean; but when she becomes 12, she runs away to an adventure under the sea.', 'Jodi Benson, Samuel E. Wright, Tara Strong, Pat Carroll', ''),
(9, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', 8.9, 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a primal battle for survival as they face the most nightmarish version of family imaginable.', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(10, 'Dungeons & Dragons: Honor Among Thieves (2023)', 'img/movie11.jpg', 'img/movie11-.jpg', 8.6, 'PG-13\r\n', 2023, '134 min\r\n', 'Action-Adventure', 'Profion, a tyrant, attempts to overthrow a peaceful kingdom ruled by a tough empress.', 'Justin Whalin, Jeremy Irons, Zoe McLellan', ''),
(11, 'The departed', 'img/movie12.jpg', 'img/movie12-.jpg', 8.5, 'R', 2006, '151 min\r\n', 'Crime-Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson', '');

-- --------------------------------------------------------

--
-- Table structure for table `moviemardi`
--

DROP TABLE IF EXISTS `moviemardi`;
CREATE TABLE IF NOT EXISTS `moviemardi` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviemardi`
--

INSERT INTO `moviemardi` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'Unlocked', 'img/movie4.jpg', 'img/movie4-.jpg', 6.3, 'R', 2017, '98 min\r\n', 'Action-Thriller', 'A CIA interrogator is lured into a ruse that puts London at risk of a biological attack.\n', 'Noomi Rapace, Orlando Bloom, Toni Collette', ''),
(3, 'Dungeons & Dragons: Honor Among Thieves (2023)', 'img/movie11.jpg', 'img/movie11-.jpg', 8.6, 'PG-13\r\n', 2023, '134 min\r\n', 'Action-Adventure', 'Profion, a tyrant, attempts to overthrow a peaceful kingdom ruled by a tough empress.', 'Justin Whalin, Jeremy Irons, Zoe McLellan', 'movie.php'),
(4, 'Idiots\r\n', 'img/movie8.jpg', 'img/movie8-.jpg', 8.4, 'PG-13\r\n', 2009, '170 min\r\n', 'Comedy-Drama', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend', 'Aamir Khan, Madhavan, Mona Singh', 'movie.php'),
(5, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', 7.4, 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', 'movie.php'),
(6, 'The Hunt\r\n', 'img/movie13.jpg', 'img/movie13-.jpg', 8.3, 'R\r\n', 2012, '115 min\r\n', 'Drama', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and', 'Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp', 'movie.php'),
(7, 'Snatch', 'img/movie14.jpg', 'img/movie14-.jpg', 8.2, 'R\r\n', 2000, '102 min\r\n', 'Comedy-Crime', 'Unscrupulous boxing promoters, violent bookmakers, a Russian gangster, incompetent amateur robbers and supposedly Jewish jeweler', 'Jason Statham, Brad Pitt, Stephen Graham', 'movie.php'),
(8, 'Coco', 'img/movie7.jpg', 'img/movie7-.jpg', 8.4, 'PG', 2017, '105 min\r\n', 'Animation-Comedy', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-gre', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', 'movie.php'),
(9, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', 8.9, 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(10, 'The departed', 'img/movie12.jpg', 'img/movie12-.jpg', 8.5, 'R', 2006, '151 min\r\n', 'Crime-Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson', ''),
(11, 'The Little Mermaid 2', 'img/movie9.jpg', 'img/movie9-.jpg', 5.6, 'G', 2000, '75 min\r\n', 'Animation-Family', 'To protect her from a sea witch, Ariel\'s daughter is not allowed in the ocean; but when she becomes 12, she runs away to an adve', 'Jodi Benson, Samuel E. Wright, Tara Strong, Pat Carroll', '');

-- --------------------------------------------------------

--
-- Table structure for table `moviemercredi`
--

DROP TABLE IF EXISTS `moviemercredi`;
CREATE TABLE IF NOT EXISTS `moviemercredi` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` varchar(128) NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(1000) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviemercredi`
--

INSERT INTO `moviemercredi` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'Django Unchained\r\n', 'img/movie5.jpg', 'img/movie5-.jpg', '8.4', 'R\r\n', 2012, '165 min\r\n', 'Drama-Western', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio', ''),
(2, 'The departed', 'img/movie12.jpg', 'img/movie12-.jpg', '8.5', 'R', 2006, '151 min\r\n', 'Crime-Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson', ''),
(3, 'The Hunt\r\n', 'img/movie13.jpg', 'img/movie13-.jpg', '8.3', 'R\r\n', 2012, '115 min\r\n', 'Drama', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and', 'Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp', ''),
(4, 'The Little Mermaid 2', 'img/movie9.jpg', 'img/movie9-.jpg', '5.6', 'G', 2000, '75 min\r\n', 'Animation-Family', 'To protect her from a sea witch, Ariel\'s daughter is not allowed in the ocean; but when she becomes 12, she runs away to an adve', 'Jodi Benson, Samuel E. Wright, Tara Strong, Pat Carroll', ''),
(5, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', '7.4', 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', ''),
(6, 'Unlocked', 'img/movie4.jpg', 'img/movie4-.jpg', '6.3', 'R', 2017, '98 min\r\n', 'Action-Thriller', 'A CIA interrogator is lured into a ruse that puts London at risk of a biological attack.\n', 'Noomi Rapace, Orlando Bloom, Toni Collette', ''),
(7, 'Avengers: Infinity War\r\n', 'img/movie6.jpg', 'img/movie6-.jpg', '8.4', 'PG-13\r\n', 2018, '149 min\r\n', 'Action-Adventure', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of d', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', ''),
(8, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', '8.9', 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(9, 'Jumanji\r\n', 'img/movie15.jpg', 'img/movie15-.jpg', '7.0\r\n', 'PG', 1995, '104 min\r\n', 'Adventure-Comedy', 'When two kids find and play a magical board game, they release a man trapped in it for decades - and a host of dangers that can ', 'Robin Williams, Kirsten Dunst, Bonnie Hunt', ''),
(10, 'The Fault in Our Stars\r\n', 'img/movie16.jpg', 'img/movie16-.jpg', '7.7', 'PG-13\r\n', 2014, '126 min', 'Drama-Romance', 'Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.\n\n', 'Shailene Woodley, Ansel Elgort, Nat Wolff', '');

-- --------------------------------------------------------

--
-- Table structure for table `movieprochains`
--

DROP TABLE IF EXISTS `movieprochains`;
CREATE TABLE IF NOT EXISTS `movieprochains` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movieprochains`
--

INSERT INTO `movieprochains` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'Murder Mystery 2\r\n', 'img/prochainement1.jpg', 'img/prochainement1-.jpg', 5.6, 'PG-13\r\n', 2023, '90 min\r\n', 'Comedy-Crime\r\n', 'Full-time detectives Nick and Audrey are struggling to get their private eye agency off the ground. They find themselves at the ', 'Adam Sandler, Jennifer Aniston, Mark Strong', ''),
(2, 'Hbiiba / حبيبه\r\n', 'img/prochainement2.jpg', 'img/prochainement2-.jpg', 5.4, 'R', 2023, '90 min', 'Thriller-Horror', 'Khaoula, an Instagrammer, leads a comfortable life with her fiance Wajdi, but suffers from sleep disorders and nightmares for di', 'Sameh Sankari, Nawel Shili, Hiba Fraj, Mourad Ben Nefla, Akram Mabrouk, Latifa El Gafsi, Khaoula Slimani', '');

-- --------------------------------------------------------

--
-- Table structure for table `moviesamedi`
--

DROP TABLE IF EXISTS `moviesamedi`;
CREATE TABLE IF NOT EXISTS `moviesamedi` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviesamedi`
--

INSERT INTO `moviesamedi` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'The Fault in Our Stars\r\n', 'img/movie16.jpg', 'img/movie16-.jpg', 7.7, 'PG-13\r\n', 2014, '126 min', 'Drama-Romance', 'Two teenage cancer patients begin a life-affirming journey to visit a reclusive author in Amsterdam.\r\n', 'Shailene Woodley, Ansel Elgort, Nat Wolff', ''),
(2, 'Jumanji\r\n', 'img/movie15.jpg', 'img/movie15-.jpg', 7, 'PG', 1995, '104 min\r\n', 'Adventure-Comedy', 'When two kids find and play a magical board game, they release a man trapped in it for decades - and a host of dangers that can ', 'Robin Williams, Kirsten Dunst, Bonnie Hunt', ''),
(3, 'Idiots\r\n', 'img/movie8.jpg', 'img/movie8-.jpg', 8.4, 'PG-13\r\n', 2009, '170 min\r\n', 'Comedy-Drama', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend', 'Aamir Khan, Madhavan, Mona Singh', ''),
(4, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', 7.4, 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\r\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', ''),
(5, 'Dachra\r\n', 'img/movie17.jpg', 'img/movie17-.jpg', 6.3, 'R', 2018, '114 min\r\n', 'Horror', 'An investigation into witchcraft leads a trio of journalism students to a mysterious town marked by sinister rituals. Inspired b', 'Yassmine Dimassi, Hela Ayed, Aziz Jebali', ''),
(6, 'The Father\r\n', 'img/movie18.jpg', 'img/movie18-.jpg', 8.2, 'PG-13\r\n', 2020, '97 min\r\n', 'Drama-Mystery\r\n', 'A man refuses all assistance from his daughter as he ages. As he tries to make sense of his changing circumstances, he begins to', 'Anthony Hopkins, Olivia Colman, Mark Gatiss', ''),
(7, 'Django Unchained', 'img/movie5.jpg', 'img/movie5-.jpg', 8.4, 'R\r\n', 2012, '165 min\r\n', 'Drama-Western', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio', ''),
(8, 'The Dark Knight\r\n', 'img/movie2.jpg', 'img/movie2-.jpg', 9, 'PG-13', 2008, '152 min\r\n', 'Action-Crime-Drama', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psycho', 'Christian Bale, Heath Ledger, Aaron Eckhart', ''),
(9, 'The Father\r\n', 'img/movie18.jpg', 'img/movie18-.jpg', 8.2, 'PG-13\r\n', 2020, '97 min\r\n', 'Drama-Mystery\r\n', 'A man refuses all assistance from his daughter as he ages. As he tries to make sense of his changing circumstances, he begins to', 'Anthony Hopkins, Olivia Colman, Mark Gatiss', ''),
(10, 'Dungeons & Dragons: Honor Among Thieves (2023)', 'img/movie11.jpg', 'img/movie11-.jpg', 8.6, 'PG-13\r\n', 2023, '134 min\r\n', 'Action-Adventure', 'Profion, a tyrant, attempts to overthrow a peaceful kingdom ruled by a tough empress.', 'Justin Whalin, Jeremy Irons, Zoe McLellan', '');

-- --------------------------------------------------------

--
-- Table structure for table `movievendredi`
--

DROP TABLE IF EXISTS `movievendredi`;
CREATE TABLE IF NOT EXISTS `movievendredi` (
  `movieId` int NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(128) NOT NULL,
  `moviePoster1` varchar(128) NOT NULL,
  `moviePoster2` varchar(128) NOT NULL,
  `movieImdbRating` float NOT NULL,
  `movieRated` varchar(128) NOT NULL,
  `movieYear` int NOT NULL,
  `movieRuntime` varchar(128) NOT NULL,
  `movieGenre` varchar(128) NOT NULL,
  `moviePlot` varchar(128) NOT NULL,
  `movieActors` varchar(128) NOT NULL,
  `Link` varchar(128) NOT NULL,
  PRIMARY KEY (`movieId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `movievendredi`
--

INSERT INTO `movievendredi` (`movieId`, `movieTitle`, `moviePoster1`, `moviePoster2`, `movieImdbRating`, `movieRated`, `movieYear`, `movieRuntime`, `movieGenre`, `moviePlot`, `movieActors`, `Link`) VALUES
(1, 'Coco', 'img/movie7.jpg', 'img/movie7-.jpg', 8.4, 'PG', 2017, '105 min\r\n', 'Animation-Comedy', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-gre', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt', ''),
(2, 'The Super Mario Bros. Movie', 'img/movie3.jpg', 'img/movie3-.jpg', 7.4, 'PG\r\n', 2023, '92 min\r\n', 'Animation-Adventure-Comedy', 'The story of The Super Mario Bros. on their journey through the Mushroom Kingdom.\n', 'Chris Pratt, Anya Taylor-Joy, Charlie Day', ''),
(3, 'Avengers: Infinity War\r\n', 'img/movie6.jpg', 'img/movie6-.jpg', 8.4, 'PG-13\r\n', 2018, '149 min\r\n', 'Action-Adventure', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of d', 'Robert Downey Jr., Chris Hemsworth, Mark Ruffalo', ''),
(4, 'The Little Mermaid 2', 'img/movie9.jpg', 'img/movie9-.jpg', 5.6, 'G', 2000, '75 min\r\n', 'Animation-Family', 'To protect her from a sea witch, Ariel\'s daughter is not allowed in the ocean; but when she becomes 12, she runs away to an adve', 'Jodi Benson, Samuel E. Wright, Tara Strong, Pat Carroll', ''),
(5, 'The departed', 'img/movie12.jpg', 'img/movie12-.jpg', 8.5, 'R', 2006, '151 min\r\n', 'Crime-Drama', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'Leonardo DiCaprio, Matt Damon, Jack Nicholson', ''),
(6, 'Idiots\r\n', 'img/movie8.jpg', 'img/movie8-.jpg', 8.4, 'PG-13\r\n', 2009, '170 min\r\n', 'Comedy-Drama', 'Two friends are searching for their long lost companion. They revisit their college days and recall the memories of their friend', 'Aamir Khan, Madhavan, Mona Singh', ''),
(7, 'The Hunt\r\n', 'img/movie13.jpg', 'img/movie13-.jpg', 8.3, 'R\r\n', 2012, '115 min\r\n', 'Drama', 'A teacher lives a lonely life, all the while struggling over his son\'s custody. His life slowly gets better as he finds love and', 'Mads Mikkelsen, Thomas Bo Larsen, Annika Wedderkopp', ''),
(8, 'Evil Dead Rise\r\n', 'img/movie10.jpg', 'img/movie10-.jpg', 8.9, 'R', 2023, '97 min\r\n', 'Horror', 'A twisted tale of two estranged sisters whose reunion is cut short by the rise of flesh-possessing demons, thrusting them into a', 'Alyssa Sutherland, Lily Sullivan, Morgan Davies', ''),
(9, 'Jumanji\r\n', 'img/movie15.jpg', 'img/movie15-.jpg', 7, '7.0\r\n', 1995, '104 min\r\n', 'Adventure-Comedy', 'When two kids find and play a magical board game, they release a man trapped in it for decades - and a host of dangers that can ', 'Robin Williams, Kirsten Dunst, Bonnie Hunt', ''),
(10, 'Unlocked', 'img/movie4.jpg', 'img/movie4-.jpg', 6.3, 'R', 2017, '98 min\r\n', 'Action-Thriller', 'A CIA interrogator is lured into a ruse that puts London at risk of a biological attack.\r\n', 'Noomi Rapace, Orlando Bloom, Toni Collette', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `usersUid` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `usersPswd` varchar(128) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `usersUid`, `usersEmail`, `usersPswd`) VALUES
(5, 'dd', 'malek.belhadj@etudiant-isi.utm.tn', '$2y$10$i3LRU40N7dhdYxok1ZkKKOMxn4LgbdUBKMq9a.31Z23zUFW8WoGpa'),
(21, 'lmzemzl', 'hbhmalek@gmail.com', '$2y$10$hIMfPC7T5QJFIHACq/oXhOjfXRTD4/kTtvwD7Eg6K7WQDQ8fNA2T.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
