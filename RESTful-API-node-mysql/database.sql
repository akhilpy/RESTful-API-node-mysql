-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2017 at 01:05 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyive`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_token`
--

CREATE TABLE `access_token` (
  `access_token_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `access_token` text,
  `device_type` varchar(45) DEFAULT NULL,
  `device_token` varchar(150) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_token`
--

INSERT INTO `access_token` (`access_token_id`, `user_id`, `access_token`, `device_type`, `device_token`, `ip_address`) VALUES
(19, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOjYsImZpcnN0X25hbWUiOiJhYmMiLCJsYXN0X25hbWUiOiJhcHB5IiwiZG9iIjoiMDYtMDYtMjAxMiIsImxhdGl0dWRlIjoyMy41N', 'android', '3435345', '23.34.199.132'),
(20, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOjYsImZpcnN0X25hbWUiOiJhYmMiLCJsYXN0X25hbWUiOiJhcHB5IiwiZG9iIjoiMDYtMDYtMjAxMiIsImxhdGl0dWRlIjoyMy41N', 'android', '3435345', '23.34.199.132'),
(21, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOjYsImZpcnN0X25hbWUiOiJhYmMiLCJsYXN0X25hbWUiOiJhcHB5IiwiZG9iIjoiMDYtMDYtMjAxMiIsImxhdGl0dWRlIjoyMy41N', 'android', '3435345', '23.34.199.132'),
(22, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyaWQiOjYsImZpcnN0X25hbWUiOiJhYmMiLCJsYXN0X25hbWUiOiJhcHB5IiwiZG9iIjoiMDYtMDYtMjAxMiIsImxhdGl0dWRlIjoyMy41N', 'android', '3435345', NULL),
(23, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuN', 'android', '3435345', NULL),
(24, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuN', 'android', '3435345', NULL),
(25, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuNTY1NjM0LCJsb25naXR1ZGUiOjIzLjU0NjU0NiwiZGV2aWNlX3R5cGUiOiJhbmRyb2lkIiwiYWNjZXNzX3Rva2VuIjoiIiwiZGV2aWNlX3Rva2VuIjoiMzQzNTM0NSIsImRldmljZV9pZGVudGlmaWVyIjoiIiwiZW1haWwiOiJhMWZ6QGdtYWlsLmNvbSIsImlzX3ZlcmZpZWQiOjAsImNyZWF0ZWRfZGF0ZSI6IjIwMTctMDQtMjRUMTQ6Mjk6MTUuMDAwWiIsIm1vZGlmaWVkX2RhdGUiOiIyMDE3LTA0LTI0VDE0OjI5OjE1LjAwMFoiLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwiaW1hZ2VfcGF0aCI6IjE0OTMyMjQ2NjQ3MTVfYXZhdGFyLnBuZyIsImNvdW50cnkiOiJJbmRpYSIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IkRlbGhpIiwicGhvbmVfZXh0ZW5zaW9uIjoxLCJwaG9uZV9udW1iZXIiOiI5NzEzMzQ4MDc2IiwiYmxvY2tfc3RhdHVzIjoxLCJpYXQiOjE0OTQwNTUxNzgsImV4cCI6MTQ5NDE0MTU3OH0.BtaP730ku1Qotn_dNnxKEYDvGSDddjeXqAZ7WCyydYQ', 'android', '3435345', NULL),
(26, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuNTY1NjM0LCJsb25naXR1ZGUiOjIzLjU0NjU0NiwiZGV2aWNlX3R5cGUiOiJhbmRyb2lkIiwiYWNjZXNzX3Rva2VuIjoiIiwiZGV2aWNlX3Rva2VuIjoiMzQzNTM0NSIsImRldmljZV9pZGVudGlmaWVyIjoiIiwiZW1haWwiOiJhMWZ6QGdtYWlsLmNvbSIsImlzX3ZlcmZpZWQiOjAsImNyZWF0ZWRfZGF0ZSI6IjIwMTctMDQtMjRUMTQ6Mjk6MTUuMDAwWiIsIm1vZGlmaWVkX2RhdGUiOiIyMDE3LTA0LTI0VDE0OjI5OjE1LjAwMFoiLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwiaW1hZ2VfcGF0aCI6IjE0OTMyMjQ2NjQ3MTVfYXZhdGFyLnBuZyIsImNvdW50cnkiOiJJbmRpYSIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IkRlbGhpIiwicGhvbmVfZXh0ZW5zaW9uIjoxLCJwaG9uZV9udW1iZXIiOiI5NzEzMzQ4MDc2IiwiYmxvY2tfc3RhdHVzIjoxLCJpYXQiOjE0OTQyMjY3NTEsImV4cCI6MTQ5NDMxMzE1MX0.UPZTXCHRMO36FQbLBCMI8EPKj9drC5-E5gmS8iHlNEU', 'android', '3435345', NULL),
(27, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuNTY1NjM0LCJsb25naXR1ZGUiOjIzLjU0NjU0NiwiZGV2aWNlX3R5cGUiOiJhbmRyb2lkIiwiYWNjZXNzX3Rva2VuIjoiIiwiZGV2aWNlX3Rva2VuIjoiMzQzNTM0NSIsImRldmljZV9pZGVudGlmaWVyIjoiIiwiZW1haWwiOiJhMWZ6QGdtYWlsLmNvbSIsImlzX3ZlcmZpZWQiOjAsImNyZWF0ZWRfZGF0ZSI6IjIwMTctMDQtMjRUMTQ6Mjk6MTUuMDAwWiIsIm1vZGlmaWVkX2RhdGUiOiIyMDE3LTA0LTI0VDE0OjI5OjE1LjAwMFoiLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwiaW1hZ2VfcGF0aCI6IjE0OTMyMjQ2NjQ3MTVfYXZhdGFyLnBuZyIsImNvdW50cnkiOiJJbmRpYSIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IkRlbGhpIiwicGhvbmVfZXh0ZW5zaW9uIjoxLCJwaG9uZV9udW1iZXIiOiI5NzEzMzQ4MDc2IiwiYmxvY2tfc3RhdHVzIjoxLCJpYXQiOjE0OTQzMTMyMTUsImV4cCI6MTQ5NDM5OTYxNX0._g_ttqPgqUm-KI_e8wg0gf_q5huOcLOokq2rV03ILMI', 'android', '3435345', NULL),
(28, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuNTY1NjM0LCJsb25naXR1ZGUiOjIzLjU0NjU0NiwiZGV2aWNlX3R5cGUiOiJhbmRyb2lkIiwiYWNjZXNzX3Rva2VuIjoiIiwiZGV2aWNlX3Rva2VuIjoiMzQzNTM0NSIsImRldmljZV9pZGVudGlmaWVyIjoiIiwiZW1haWwiOiJhMWZ6QGdtYWlsLmNvbSIsImlzX3ZlcmZpZWQiOjAsImNyZWF0ZWRfZGF0ZSI6IjIwMTctMDQtMjRUMTQ6Mjk6MTUuMDAwWiIsIm1vZGlmaWVkX2RhdGUiOiIyMDE3LTA0LTI0VDE0OjI5OjE1LjAwMFoiLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwiaW1hZ2VfcGF0aCI6IjE0OTMyMjQ2NjQ3MTVfYXZhdGFyLnBuZyIsImNvdW50cnkiOiJJbmRpYSIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IkRlbGhpIiwicGhvbmVfZXh0ZW5zaW9uIjoxLCJwaG9uZV9udW1iZXIiOiI5NzEzMzQ4MDc2IiwiYmxvY2tfc3RhdHVzIjoxLCJpYXQiOjE0OTQ0MDA1ODAsImV4cCI6MTQ5NDQ4Njk4MH0.fna95vraltaybRW5Ei7Kr8XkBHuzia4rCDkKFxXJTYM', 'android', '3435345', NULL),
(29, 6, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjo2LCJmaXJzdF9uYW1lIjoiYWJjIiwibGFzdF9uYW1lIjoiYXBweSIsImRvYiI6IjA2LTA2LTIwMTIiLCJsYXRpdHVkZSI6MjMuNTY1NjM0LCJsb25naXR1ZGUiOjIzLjU0NjU0NiwiZGV2aWNlX3R5cGUiOiJhbmRyb2lkIiwiYWNjZXNzX3Rva2VuIjoiIiwiZGV2aWNlX3Rva2VuIjoiMzQzNTM0NSIsImRldmljZV9pZGVudGlmaWVyIjoiIiwiZW1haWwiOiJhMWZ6QGdtYWlsLmNvbSIsImlzX3ZlcmZpZWQiOjAsImNyZWF0ZWRfZGF0ZSI6IjIwMTctMDQtMjRUMTQ6Mjk6MTUuMDAwWiIsIm1vZGlmaWVkX2RhdGUiOiIyMDE3LTA0LTI0VDE0OjI5OjE1LjAwMFoiLCJwYXNzd29yZCI6IjgyN2NjYjBlZWE4YTcwNmM0YzM0YTE2ODkxZjg0ZTdiIiwiaW1hZ2VfcGF0aCI6IjE0OTMyMjQ2NjQ3MTVfYXZhdGFyLnBuZyIsImNvdW50cnkiOiJJbmRpYSIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IkRlbGhpIiwicGhvbmVfZXh0ZW5zaW9uIjoxLCJwaG9uZV9udW1iZXIiOiI5NzEzMzQ4MDc2IiwiYmxvY2tfc3RhdHVzIjoxLCJpYXQiOjE0OTQ0ODkwMTIsImV4cCI6MTQ5NDU3NTQxMn0.d8C4jLfAY6bMkYqcQVw4f6ZQwkuXTYtz90bBVufZsT4', 'android', '3435345', NULL),
(30, 14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNCwiZmlyc3RfbmFtZSI6ImRlbW8iLCJsYXN0X25hbWUiOiJ1c2VyIiwiZG9iIjoiMTItMTItMjAwMiIsImxhdGl0dWRlIjoyMy40MzQyMywibG9uZ2l0dWRlIjo4Ny45NTU5MywiZGV2aWNlX3R5cGUiOiJpb3MiLCJhY2Nlc3NfdG9rZW4iOiIiLCJkZXZpY2VfdG9rZW4iOiJmcmV0ZTIzMTIiLCJkZXZpY2VfaWRlbnRpZmllciI6IiIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiaXNfdmVyZmllZCI6MCwiY3JlYXRlZF9kYXRlIjoiMjAxNy0wNS0xNVQwNjo1NjozNS4wMDBaIiwibW9kaWZpZWRfZGF0ZSI6IjIwMTctMDUtMTVUMDY6NTY6MzUuMDAwWiIsInBhc3N3b3JkIjoiMjEyMzJmMjk3YTU3YTVhNzQzODk0YTBlNGE4MDFmYzMiLCJpbWFnZV9wYXRoIjoiIiwiY291bnRyeSI6IiIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IiIsInBob25lX2V4dGVuc2lvbiI6MCwicGhvbmVfbnVtYmVyIjoiIiwiYmxvY2tfc3RhdHVzIjowLCJpYXQiOjE0OTQ4MzYwODksImV4cCI6MTQ5NDkyMjQ4OX0.LshJ1nz_hCNGxqGkCg8YWIVZ3rV5Y9YY81Ml068FKBk', 'ios', 'frete2312', NULL),
(31, 14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNCwiZmlyc3RfbmFtZSI6ImRlbW8iLCJsYXN0X25hbWUiOiJ1c2VyIiwiZG9iIjoiMTItMTItMjAwMiIsImxhdGl0dWRlIjoyMy40MzQyMywibG9uZ2l0dWRlIjo4Ny45NTU5MywiZGV2aWNlX3R5cGUiOiJpb3MiLCJhY2Nlc3NfdG9rZW4iOiIiLCJkZXZpY2VfdG9rZW4iOiJmcmV0ZTIzMTIiLCJkZXZpY2VfaWRlbnRpZmllciI6IiIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiaXNfdmVyZmllZCI6MCwiY3JlYXRlZF9kYXRlIjoiMjAxNy0wNS0xNVQwNjo1NjozNS4wMDBaIiwibW9kaWZpZWRfZGF0ZSI6IjIwMTctMDUtMTVUMDY6NTY6MzUuMDAwWiIsInBhc3N3b3JkIjoiMjEyMzJmMjk3YTU3YTVhNzQzODk0YTBlNGE4MDFmYzMiLCJpbWFnZV9wYXRoIjoiIiwiY291bnRyeSI6IiIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IiIsInBob25lX2V4dGVuc2lvbiI6MCwicGhvbmVfbnVtYmVyIjoiIiwiYmxvY2tfc3RhdHVzIjowLCJpYXQiOjE0OTQ4NDMyNTEsImV4cCI6MTQ5NDkyOTY1MX0.I9wCVTguWJHW8MOj3cMakmQw3tGfUANmGeeToMmUkDk', 'ios', 'frete2312', NULL),
(32, 14, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxNCwiZmlyc3RfbmFtZSI6ImRlbW8iLCJsYXN0X25hbWUiOiJ1c2VyIiwiZG9iIjoiMTItMTItMjAwMiIsImxhdGl0dWRlIjoyMy40MzQyMywibG9uZ2l0dWRlIjo4Ny45NTU5MywiZGV2aWNlX3R5cGUiOiJpb3MiLCJhY2Nlc3NfdG9rZW4iOiIiLCJkZXZpY2VfdG9rZW4iOiJmcmV0ZTIzMTIiLCJkZXZpY2VfaWRlbnRpZmllciI6IiIsImVtYWlsIjoidXNlcjFAZ21haWwuY29tIiwiaXNfdmVyZmllZCI6MCwiY3JlYXRlZF9kYXRlIjoiMjAxNy0wNS0xNVQwNjo1NjozNS4wMDBaIiwibW9kaWZpZWRfZGF0ZSI6IjIwMTctMDUtMTVUMDY6NTY6MzUuMDAwWiIsInBhc3N3b3JkIjoiMjEyMzJmMjk3YTU3YTVhNzQzODk0YTBlNGE4MDFmYzMiLCJpbWFnZV9wYXRoIjoiIiwiY291bnRyeSI6IiIsInRpbWVfem9uZSI6Iis1OjMwIiwiY2l0eSI6IiIsInBob25lX2V4dGVuc2lvbiI6MCwicGhvbmVfbnVtYmVyIjoiIiwiYmxvY2tfc3RhdHVzIjowLCJpYXQiOjE0OTQ4NDMzMjYsImV4cCI6MTQ5NDkyOTcyNn0.vtiIucZCbMQ7Z8rcEAjsM_iHFmgxhr1ECjWdsK_y9qM', 'ios', 'frete2312', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(145) DEFAULT NULL,
  `is_public` tinyint(4) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `cover_image` varchar(150) DEFAULT NULL,
  `thumbnil_image` varchar(150) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `time_zone` varchar(150) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `description` text,
  `number_of_tickets` varchar(45) DEFAULT NULL,
  `age_range` int(11) DEFAULT NULL,
  `booked_ticket` int(11) DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `is_public`, `latitude`, `longitude`, `cover_image`, `thumbnil_image`, `creator_id`, `created_date`, `modified_date`, `time_zone`, `tags`, `description`, `number_of_tickets`, `age_range`, `booked_ticket`, `venue_id`) VALUES
(3, 'event1', 0, '23.323423', '87.000000', NULL, NULL, 6, '2017-05-05 18:30:00', '2017-05-06 07:29:42', '+2:00', 'fun, movie', 'this is first event', '23', 18, 10, 1),
(4, 'event1', 0, '29.323423', '87.000000', 'cover_Img_event_id_4_preview-full-5.jpg', 'thumb_event_id_4_preview-full-5.jpg', 7, '2017-05-05 18:30:00', '2017-05-06 07:30:19', '+2:00', 'fun, movie', 'this is first event', '23', 18, 10, 2),
(5, 'event1', 0, '36.323423', '87.000000', 'cover_Img_event_id_5_preview-full-5.jpg', 'thumb_Img_event_id_5_preview-full-5.jpg', 6, '2017-05-05 18:30:00', '2017-05-06 08:23:17', '+2:00', 'fun, movie', 'this is first event', '23', 18, 10, 1),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 6, '2017-05-10 18:30:00', '2017-05-11 07:50:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_attendee`
--

CREATE TABLE `event_attendee` (
  `eve_attendee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `is_invited` tinyint(4) NOT NULL,
  `Invited_by` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_attendee`
--

INSERT INTO `event_attendee` (`eve_attendee_id`, `user_id`, `event_id`, `is_invited`, `Invited_by`, `status`) VALUES
(1, 6, 4, 1, '', 0),
(2, 8, 4, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_comment`
--

CREATE TABLE `event_comment` (
  `event_comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Modified_date` datetime NOT NULL,
  `deleted_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_comment`
--

INSERT INTO `event_comment` (`event_comment_id`, `user_id`, `event_id`, `comment`, `created_date`, `Modified_date`, `deleted_status`) VALUES
(1, 6, 4, 'this is first comment', '2017-05-06 00:00:00', '0000-00-00 00:00:00', 1),
(2, 7, 4, ' this is second comment', '2017-05-08 14:14:57', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `event_image_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_images`
--

INSERT INTO `event_images` (`event_image_id`, `image_path`, `event_id`, `caption`) VALUES
(1, 'ab.jpg', 4, 'test'),
(2, 'xyk.jpg', 4, 'test'),
(3, 'aa.jpg', 3, ' test 3');

-- --------------------------------------------------------

--
-- Table structure for table `event_like_dislike`
--

CREATE TABLE `event_like_dislike` (
  `like_dislike_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `liked_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_like_dislike`
--

INSERT INTO `event_like_dislike` (`like_dislike_id`, `user_id`, `event_id`, `liked_status`) VALUES
(1, 6, 4, 0),
(2, 7, 4, 1),
(3, 9, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_organizers`
--

CREATE TABLE `event_organizers` (
  `eve_organizer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `profile` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_payment_record`
--

CREATE TABLE `event_payment_record` (
  `eve_payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction _id` int(11) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `amount` float(7,3) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_schedules`
--

CREATE TABLE `event_schedules` (
  `eve_schedule_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `event_id` int(11) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_schedules`
--

INSERT INTO `event_schedules` (`eve_schedule_id`, `description`, `event_id`, `start_time`, `end_time`) VALUES
(1, 'this is first event', 4, '12:00:12', '04:50'),
(2, 'this is first event', 5, '12:00:12', '04:50');

-- --------------------------------------------------------

--
-- Table structure for table `organizer`
--

CREATE TABLE `organizer` (
  `Organizer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `speciality` varchar(255) NOT NULL,
  `price_per_hour` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organizer_document`
--

CREATE TABLE `organizer_document` (
  `document_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document_type` varchar(50) NOT NULL,
  `doc_path` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `otp_registration`
--

CREATE TABLE `otp_registration` (
  `otp_user_id` int(11) NOT NULL,
  `otp_code` int(11) NOT NULL,
  `phone_extension` varchar(255) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `otp_times` int(11) NOT NULL DEFAULT '1',
  `is_verified` tinyint(1) NOT NULL,
  `block_status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_registration`
--

INSERT INTO `otp_registration` (`otp_user_id`, `otp_code`, `phone_extension`, `phone_number`, `otp_times`, `is_verified`, `block_status`, `created_at`) VALUES
(41, 1234, '+91', '9711382641', 1, 1, 0, '2017-04-27 14:19:49'),
(42, 1234, '+91', '6855448887', 1, 1, 0, '2017-05-15 06:16:44');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `card_token` varchar(150) NOT NULL,
  `bank_acc_no` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `bank_zip` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `device_type` enum('ios','android','web') NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `device_token` varchar(255) NOT NULL,
  `device_identifier` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_verfied` tinyint(1) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_extension` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `block_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `dob`, `latitude`, `longitude`, `device_type`, `access_token`, `device_token`, `device_identifier`, `email`, `is_verfied`, `created_date`, `modified_date`, `password`, `image_path`, `country`, `time_zone`, `city`, `phone_extension`, `phone_number`, `block_status`) VALUES
(6, 'abc', 'appy', '06-06-2012', 23.565634, 23.546546, 'android', '', '3435345', '', 'a1fz@gmail.com', 0, '2017-04-24 14:29:15', '2017-04-24 14:29:15', '827ccb0eea8a706c4c34a16891f84e7b', '1493224664715_avatar.png', 'India', '+5:30', 'Delhi', 1, '9713348076', 1),
(7, 'abc1', 'xyz1', '0000-00-00', 23.565634, 23.546546, 'android', '', '3435345', '', 'abcz@gmail.com', 0, '2017-04-24 14:40:19', '2017-04-24 14:40:19', '827ccb0eea8a706c4c34a16891f84e7b', 'abc.jpg', '', '', '', 0, '0', 0),
(8, 'abc', 'xyz11', '06-06-2012', 23.565634, 23.546546, 'android', '', '3435345', '', 'a1z@gmail.com', 0, '2017-04-24 14:49:57', '2017-04-24 14:49:57', '827ccb0eea8a706c4c34a16891f84e7b', '', 'India', '+5:30', 'Delhi', 1, '7555', 0),
(9, 'abc111', 'xyz11', '0000-00-00', 23.565634, 23.546546, 'android', '', '3435345', '', 'abczr@gmail.com', 0, '2017-04-24 14:51:04', '2017-04-24 14:51:04', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', 0, '0', 0),
(10, 'abc111', 'xyz11', '0000-00-00', 23.565634, 23.546546, 'android', '', '3435345', '', 'abz@gmail.com', 0, '2017-04-24 14:51:33', '2017-04-24 14:51:33', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', 0, '0', 0),
(11, 'abc111', 'xyz11', '2012-06-06', 23.565634, 23.546546, 'android', '', '3435345', '', 'abqz@gmail.com', 0, '2017-04-24 14:57:44', '2017-04-24 14:57:44', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', 0, '0', 0),
(12, 'abc111', 'xyz11', '0000-00-00', 23.565634, 23.546546, 'android', '', '3435345', '', 'aqz@gmail.com', 0, '2017-04-24 14:58:42', '2017-04-24 14:58:42', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', 0, '0', 0),
(13, 'abc111', 'xyz11', '06-06-2012', 23.565634, 23.546546, 'android', '', '3435345', '', 'a1z@gmail.com', 0, '2017-04-24 14:59:41', '2017-04-24 14:59:41', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', '', 0, '0', 0),
(14, 'demo', 'user', '12-12-2002', 23.43423, 87.95593, 'ios', '', 'frete2312', '', 'user1@gmail.com', 0, '2017-05-15 06:56:35', '2017-05-15 06:56:35', '21232f297a57a5a743894a0e4a801fc3', '', '', '+5:30', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `venue_id` int(11) NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `description` text,
  `notes` text,
  `max_hours` int(11) DEFAULT NULL,
  `min_hours` int(11) DEFAULT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `space_type` varchar(150) DEFAULT NULL,
  `checkin_time` time DEFAULT NULL,
  `checkout_time` time DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`venue_id`, `creator_id`, `title`, `description`, `notes`, `max_hours`, `min_hours`, `discount`, `price`, `space_type`, `checkin_time`, `checkout_time`, `address`, `city`, `country`, `latitude`, `longitude`) VALUES
(1, 6, 'Paradise', 'world''s awesome  place1', 'bar, club, pool', 8, 3, '10.00', '2550.00', 'lawn', '00:00:06', '00:00:01', 'A- 233 Sector,  23, ', 'Delhi', 'India', '23.4434343', '78.435345'),
(2, 7, 'Man sarovar', 'tst venue ', 'nice', 4, 2, '12.00', '343.00', 'lawn', NULL, NULL, 'delhi', 'delhi', 'india', '12.24242', '23.34324');

-- --------------------------------------------------------

--
-- Table structure for table `venue_amenities`
--

CREATE TABLE `venue_amenities` (
  `venue_amenities_id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `amenitie` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_amenities`
--

INSERT INTO `venue_amenities` (`venue_amenities_id`, `venue_id`, `amenitie`) VALUES
(92, 1, 'food1'),
(93, 1, 'food1');

-- --------------------------------------------------------

--
-- Table structure for table `venue_comment`
--

CREATE TABLE `venue_comment` (
  `venue_comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `venue_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` varchar(50) NOT NULL,
  `deleted_status` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_comment`
--

INSERT INTO `venue_comment` (`venue_comment_id`, `user_id`, `venue_id`, `comment`, `rating`, `deleted_status`, `created_date`, `modified_date`) VALUES
(1, 6, 1, 'this is first comment', '2.4', 0, '2017-05-06 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `venue_image`
--

CREATE TABLE `venue_image` (
  `venue_image_id` int(11) NOT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `image_path` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venue_image`
--

INSERT INTO `venue_image` (`venue_image_id`, `venue_id`, `image_path`) VALUES
(1, 1, '1493457009239_venue_id_1_4.png'),
(2, 1, '1493457009240_venue_id_1_5.png'),
(3, 1, '1493457009240_venue_id_1_5.png'),
(4, 1, '1493457009240_venue_id_1_2.png'),
(5, NULL, '1493628140599_venue_id_undefined_preview-full-2.jpg'),
(6, NULL, '1493628140599_venue_id_undefined_preview-full-1.jpg'),
(7, NULL, '1493628274801_venue_id_undefined_preview-full-2.jpg'),
(8, NULL, '1493628274801_venue_id_undefined_preview-full-1.jpg'),
(9, NULL, '1493628321224_venue_id_undefined_preview-full-2.jpg'),
(10, NULL, '1493628321224_venue_id_undefined_preview-full-1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_token`
--
ALTER TABLE `access_token`
  ADD PRIMARY KEY (`access_token_id`),
  ADD KEY `fk_access_token_1_idx` (`user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `fk_events_1_idx` (`creator_id`),
  ADD KEY `fk_events_2_idx` (`venue_id`);

--
-- Indexes for table `event_attendee`
--
ALTER TABLE `event_attendee`
  ADD PRIMARY KEY (`eve_attendee_id`);

--
-- Indexes for table `event_comment`
--
ALTER TABLE `event_comment`
  ADD PRIMARY KEY (`event_comment_id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`event_image_id`);

--
-- Indexes for table `event_like_dislike`
--
ALTER TABLE `event_like_dislike`
  ADD PRIMARY KEY (`like_dislike_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `event_organizers`
--
ALTER TABLE `event_organizers`
  ADD PRIMARY KEY (`eve_organizer_id`);

--
-- Indexes for table `event_payment_record`
--
ALTER TABLE `event_payment_record`
  ADD PRIMARY KEY (`eve_payment_id`);

--
-- Indexes for table `event_schedules`
--
ALTER TABLE `event_schedules`
  ADD PRIMARY KEY (`eve_schedule_id`);

--
-- Indexes for table `organizer`
--
ALTER TABLE `organizer`
  ADD PRIMARY KEY (`Organizer_id`);

--
-- Indexes for table `organizer_document`
--
ALTER TABLE `organizer_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `otp_registration`
--
ALTER TABLE `otp_registration`
  ADD PRIMARY KEY (`otp_user_id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`venue_id`),
  ADD KEY `fk_venues_1_idx` (`creator_id`);

--
-- Indexes for table `venue_amenities`
--
ALTER TABLE `venue_amenities`
  ADD PRIMARY KEY (`venue_amenities_id`),
  ADD KEY `fk_venue_amenities_1_idx` (`venue_id`);

--
-- Indexes for table `venue_comment`
--
ALTER TABLE `venue_comment`
  ADD PRIMARY KEY (`venue_comment_id`);

--
-- Indexes for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD PRIMARY KEY (`venue_image_id`),
  ADD KEY `fk_venue_image_1_idx` (`venue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_token`
--
ALTER TABLE `access_token`
  MODIFY `access_token_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event_attendee`
--
ALTER TABLE `event_attendee`
  MODIFY `eve_attendee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_comment`
--
ALTER TABLE `event_comment`
  MODIFY `event_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `event_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_like_dislike`
--
ALTER TABLE `event_like_dislike`
  MODIFY `like_dislike_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_organizers`
--
ALTER TABLE `event_organizers`
  MODIFY `eve_organizer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_payment_record`
--
ALTER TABLE `event_payment_record`
  MODIFY `eve_payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_schedules`
--
ALTER TABLE `event_schedules`
  MODIFY `eve_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `organizer`
--
ALTER TABLE `organizer`
  MODIFY `Organizer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organizer_document`
--
ALTER TABLE `organizer_document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otp_registration`
--
ALTER TABLE `otp_registration`
  MODIFY `otp_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `venue_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `venue_amenities`
--
ALTER TABLE `venue_amenities`
  MODIFY `venue_amenities_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
--
-- AUTO_INCREMENT for table `venue_comment`
--
ALTER TABLE `venue_comment`
  MODIFY `venue_comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venue_image`
--
ALTER TABLE `venue_image`
  MODIFY `venue_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_token`
--
ALTER TABLE `access_token`
  ADD CONSTRAINT `fk_access_token_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `fk_events_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_events_2` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venues`
--
ALTER TABLE `venues`
  ADD CONSTRAINT `fk_venues_1` FOREIGN KEY (`creator_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venue_amenities`
--
ALTER TABLE `venue_amenities`
  ADD CONSTRAINT `fk_venue_amenities_1` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `venue_image`
--
ALTER TABLE `venue_image`
  ADD CONSTRAINT `fk_venue_image_1` FOREIGN KEY (`venue_id`) REFERENCES `venues` (`venue_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
