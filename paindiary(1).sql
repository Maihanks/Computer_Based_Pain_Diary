-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 11:56 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paindiary`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator_biodata`
--

CREATE TABLE `administrator_biodata` (
  `username` varchar(20) NOT NULL,
  `names` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator_biodata`
--

INSERT INTO `administrator_biodata` (`username`, `names`, `email`, `address`, `gender`, `date`) VALUES
('admin1', 'Daniel Sobs', 'daniel@gmail.com', 'Aberdeen', 'Male', '25/07/21');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `message_id` varchar(25) NOT NULL,
  `sender_id` varchar(25) NOT NULL,
  `recepient_id` varchar(25) NOT NULL,
  `message` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`message_id`, `sender_id`, `recepient_id`, `message`, `date`, `time`) VALUES
('M0001', 'user1', 'user11', 'Good day!                                ', '04/08/2021', '06:58:28 pm'),
('M0002', 'user1', 'user12', 'Good morning bro!                                ', '04/08/2021', '07:18:44 pm'),
('M0003', 'user2', 'user1', 'Hello bro, what type of pain are you experiencing and what type of Therapy works well for you?                               ', '04/08/2021', '08:45:00 pm'),
('M0004', 'user3', 'user1', 'Good morning sir,\r\nHow long did you take you to recover fully from your pain?                               ', '04/08/2021', '08:46:27 pm');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` varchar(25) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `complaint` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `user_id`, `complaint`, `date`, `time`) VALUES
('C0001', 'user1', 'Hello Doctor, Please help out with my pain, its been several weeks yet its still painful.                                ', '05/08/2021', '06:59:53 pm');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_response`
--

CREATE TABLE `complaint_response` (
  `id` varchar(20) NOT NULL,
  `complaint_id` varchar(20) NOT NULL,
  `responder_id` varchar(20) NOT NULL,
  `response` varchar(250) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaint_patient_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_response`
--

INSERT INTO `complaint_response` (`id`, `complaint_id`, `responder_id`, `response`, `date`, `complaint_patient_id`) VALUES
('CR0001', 'CR0001', 'phy1', 'Let me take a look at your pain record, will be in touch in a minute.                                ', '01:31:13 am,06/08/20', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `health_center`
--

CREATE TABLE `health_center` (
  `center_id` varchar(20) NOT NULL,
  `center_name` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `health_center`
--

INSERT INTO `health_center` (`center_id`, `center_name`, `country`, `address`) VALUES
('h001', 'Manson Clinic', 'Nigeria', 'Abuja'),
('h002', 'Care-Time Hospital', 'Ghana', 'Accra'),
('h003', 'Relief-100', 'Brazil', 'Brasilia'),
('h004', 'Peterson Health Center', 'Italy', 'Turin'),
('h005', 'St Gary Hospital', 'Ireland', 'Belfast'),
('h006', 'Everythin Physio', 'France', 'Paris'),
('h007', 'St Morrison Hospital', 'Japan', 'Tokyo'),
('h008', 'Adiyogi Center', 'India', 'Kadapa'),
('h009', 'Theresa Health Center', 'NewZealand', 'Whakapapa'),
('h0010', 'Kamsasa Clinic', 'Cameroon', 'Yaounde');

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `id` varchar(25) NOT NULL,
  `username` varchar(30) NOT NULL,
  `date` varchar(25) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`id`, `username`, `date`, `time`) VALUES
('L0001', 'user1', '06/08/2021', '03:10:41 am'),
('L00010', 'user2', '08/08/2021', '04:47:36 pm'),
('L00011', 'user20', '08/08/2021', '04:48:03 pm'),
('L00012', 'user18', '08/08/2021', '04:48:32 pm'),
('L00013', 'user1', '08/08/2021', '04:53:19 pm'),
('L00014', 'phy1', '08/08/2021', '04:58:01 pm'),
('L00015', 'user1', '08/08/2021', '04:59:08 pm'),
('L00016', 'phy1', '08/08/2021', '07:02:08 pm'),
('L00017', 'user1', '09/08/2021', '10:48:50 am'),
('L00018', 'phy1', '09/08/2021', '10:58:36 am'),
('L00019', 'user1', '10/08/2021', '12:47:02 am'),
('L0002', 'admin1', '06/08/2021', '03:12:26 am'),
('L0003', 'user1', '06/08/2021', '11:58:32 am'),
('L0004', 'user1', '06/08/2021', '12:13:56 pm'),
('L0005', 'phy1', '06/08/2021', '12:16:54 pm'),
('L0006', 'user1', '06/08/2021', '09:54:08 pm'),
('L0007', 'user1', '06/08/2021', '10:05:37 pm'),
('L0008', 'phy1', '07/08/2021', '10:08:03 pm'),
('L0009', 'user1', '08/08/2021', '02:36:40 pm');

-- --------------------------------------------------------

--
-- Table structure for table `pain_case`
--

CREATE TABLE `pain_case` (
  `case_id` varchar(30) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `type_of_pain` varchar(50) NOT NULL,
  `cause_of_pain` varchar(50) NOT NULL,
  `pain_location` varchar(50) NOT NULL,
  `intensity` varchar(50) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `medication` varchar(250) NOT NULL,
  `diet` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `lifestyle` varchar(100) NOT NULL,
  `allergy` varchar(200) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pain_case`
--

INSERT INTO `pain_case` (`case_id`, `patient_id`, `type_of_pain`, `cause_of_pain`, `pain_location`, `intensity`, `duration`, `medication`, `diet`, `date`, `lifestyle`, `allergy`, `height`, `weight`) VALUES
('P0001', 'user1', 'Nociceptive Pain', 'Exercise', 'Thigh and Groin', 'Unbearable', '2', 'none', 'Vegan', '23/07/2021 02:43:01 am', 'Regular', 'none', '1.7', '60'),
('P00010', 'user10', 'Nociceptive Pain', 'Exercise', 'Arm', 'Severe', '1', 'Panadol', 'Low-carb', '25/07/2021 11:26:52 am', 'Active', 'none', '1.7', '68'),
('P00011', 'user11', 'Nociceptive Pain', 'Home Accident', 'Foot', 'Acute', '3', 'naproxen', 'Paleo', '25/07/2021 11:39:11 am', 'Super-Active', 'Cow milk', '1.7', '71'),
('P00012', 'user12', 'Neuropathic Pain', 'Exercise', 'Waist', 'Acute', '2', 'none', 'Paleo', '25/07/2021 12:40:09 pm', 'Super-Active', 'none', '70', '1.7'),
('P00013', 'user13', 'Neuropathic Pain', 'Home Accident', 'Neck', 'Severe', '1', 'ibuprofen', 'Vegan', '25/07/2021 02:27:22 pm', 'Super-Active', 'none', '1.7', '63'),
('P00014', 'user14', 'Nociceptive Pain', 'Exercise', 'Neck', 'Very Severe', '3', 'naproxen', 'Low-carb', '25/07/2021 03:38:50 pm', 'Regular', 'none', '1.8', '70'),
('P00015', 'user15', 'Neuropathic Pain', 'Home Accident', 'Thigh and Groin', 'Painful', '4', 'ibuprofen', 'Paleo', '25/07/2021 04:01:29 pm', 'Regular', 'none', '1.9', '71'),
('P00016', 'user16', 'Nociceptive Pain', 'Home Accident', 'Arm', 'Severe', '8', 'none', 'Fast and can Food', '26/07/2021 12:13:43 am', 'Sedentary', 'none', '1.7', '88'),
('P00017', 'user17', 'Inflammatory Pain', 'Drug side effec', 'Abdomen', 'Acute', '7', 'Panadol', 'Fast and can Food', '26/07/2021 12:38:58 am', 'Handicapped', 'none', '1.8', '91'),
('P00018', 'user18', 'Functional Pain', 'Home Accident', 'Back', 'Very Severe', '5', 'none', 'Regular', '26/07/2021 01:06:04 am', 'Sedentary', 'none', '1.7', '85'),
('P00019', 'user19', 'Inflammatory Pain', 'Drug side effec', 'Abdomen', 'Acute', '7', 'none', 'Meat', '26/07/2021 10:41:29 am', 'Sedentary', 'none', '1.5', '70'),
('P0002', 'user2', 'Nociceptive Pain', 'Home Accident', 'Arm', 'Acute', '1', 'none', 'Paleo', '23/07/2021 03:55:46 pm', 'Active', 'none', '1.7', '63'),
('P00020', 'user20', 'Nociceptive Pain', 'Unknown/others', 'Leg', 'Severe', '8', 'Panadol', 'Fast and can Food', '26/07/2021 11:01:51 am', 'Sedentary', 'none', '1.5', '95'),
('P00021', 'user21', 'Nociceptive Pain', 'Home Accident', 'Thigh and Groin', 'Very Severe', '7', 'Panadol', 'Fast and can Food', '26/07/2021 11:36:11 am', 'Sedentary', 'none', '1.6', '86'),
('P00022', 'user22', 'Inflammatory Pain', 'Drug side effec', 'Chest', 'Acute', '5', 'naproxen', 'Regular', '26/07/2021 11:47:27 am', 'Handicapped', 'none', '1.7', '79'),
('P00023', 'user23', 'Nociceptive Pain', 'Unknown/others', 'Back', 'Severe', '8', 'none', 'Others', '26/07/2021 02:58:15 pm', 'Sedentary', 'none', '1.6', '70'),
('P00024', 'user24', 'Neuropathic Pain', 'Home Accident', 'Arm', 'Very Severe', '6', 'none', 'Fast and can Food', '26/07/2021 03:42:05 pm', 'Handicapped', 'Cow milk', '1.5', '55'),
('P00025', 'user25', 'Nociceptive Pain', 'Home Accident', 'Neck', 'Severe', '6', 'none', 'Regular', '26/07/2021 03:58:59 pm', 'Sedentary', 'none', '1.6', '90'),
('P00026', 'user26', 'Neuropathic Pain', 'Unknown/others', 'Leg', 'Acute', '3', 'none', 'Low-carb', '26/07/2021 10:07:54 pm', 'Regular', 'none', '1.7', '75'),
('P00027', 'user27', 'Neuropathic Pain', 'Drug side effec', 'Arm', 'Uncomfortable', '5', 'aspirin', 'The Duncan', '26/07/2021 10:46:17 pm', 'Regular', 'none', '1.5', '73'),
('P00028', 'user28', 'Neuropathic Pain', 'Exercise', 'Chest', 'Acute', '8', 'aspirin', 'Fast and can Food', '26/07/2021 11:24:22 pm', 'Active', 'none', '1.5', '67'),
('P00029', 'user1', 'Inflammatory Pain', 'Home Accident', 'Arm', 'Acute', '3', 'none', 'Vegan', '08/08/2021 04:54:46 pm', 'Super-Active', 'none', '1.7', '60'),
('P0003', 'user3', 'Neuropathic Pain', 'Home Accident', 'Back', 'Severe', '2', 'Panadol', 'Low-carb', '23/07/2021 10:19:48 pm', 'Active', 'none', '1.6', '61'),
('P0004', 'user4', 'Inflammatory Pain', 'Exercise', 'Joints', 'Painful', '2', 'none', 'Vegan', '24/07/2021 12:01:13 am', 'Active', 'none', '1.8', '70'),
('P0005', 'user5', 'Nociceptive Pain', 'Home Accident', 'Head', 'Painful', '2', 'none', 'Paleo', '24/07/2021 12:14:44 am', 'Regular', 'none', '1.8', '68'),
('P0006', 'user6', 'Inflammatory Pain', 'Exercise', 'Thigh and Groin', 'Unbearable', '1', 'none', 'Low-carb', '24/07/2021 11:31:45 pm', 'Regular', 'none', '1.8', '70'),
('P0007', 'user7', 'Neuropathic Pain', 'Home Accident', 'Waist', 'Very Severe', '2', 'ibuprofen', 'Paleo', '24/07/2021 11:43:17 pm', 'Regular', 'none', '1.6', '61'),
('P0008', 'user8', 'Neuropathic Pain', 'Home Accident', 'Arm', 'Painful', '1', 'Panadol', 'Low-carb', '24/07/2021 11:55:35 pm', 'Active', 'none', '1.6', '58'),
('P0009', 'user9', 'Nociceptive Pain', 'Exercise', 'Joints', 'Very Severe', '2', 'ibuprofen', 'Vegan', '25/07/2021 12:08:50 am', 'Regular', 'none', '1.7', '63');

-- --------------------------------------------------------

--
-- Table structure for table `pain_record`
--

CREATE TABLE `pain_record` (
  `record_id` varchar(25) NOT NULL,
  `case_id` varchar(25) NOT NULL,
  `patient_id` varchar(25) NOT NULL,
  `intensity` varchar(25) NOT NULL,
  `word_description` varchar(100) NOT NULL,
  `medication` varchar(150) NOT NULL,
  `therapy` varchar(150) NOT NULL,
  `progress_rate` varchar(100) NOT NULL,
  `aggravating_factor` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pain_record`
--

INSERT INTO `pain_record` (`record_id`, `case_id`, `patient_id`, `intensity`, `word_description`, `medication`, `therapy`, `progress_rate`, `aggravating_factor`, `date`, `time`) VALUES
('R0001', 'P0001 ', 'user1', 'Acute', 'Throbbing', 'ibuprofen', 'Massage', 'Stagnant(0)', 'cold', '2021-07-10', '02:45:25 am'),
('R00010', 'P0001 ', 'user1', 'Moderate', 'Burning\"', 'none', 'Exercise', 'Speedy(4)', 'cold', '2021-07-19', '03:30:55 pm'),
('R000100', 'P00011', 'user11', 'Painful', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Mood swings', '2021-07-11', '11:41:31 am'),
('R000101', 'P00011', 'user11', 'Uncomfortable', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-12', '11:42:25 am'),
('R000102', 'P00011', 'user11', 'Tolerable', 'Aching', 'ibuprofen', 'Massage', 'Regular(2)', 'Stress', '2021-07-13', '11:44:21 am'),
('R000103', 'P00011', 'user11', 'Moderate', 'Dull', 'ibuprofen', 'Massage', 'Speedy(4)', 'Stress', '2021-07-14', '11:46:12 am'),
('R000104', 'P00011', 'user11', 'Moderate', 'Dull', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-15', '11:47:15 am'),
('R000105', 'P00011', 'user11', 'Mild', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-17', '11:48:31 am'),
('R000106', 'P00011', 'user11', 'None', 'None', 'ibuprofen', 'Massage', 'Complete(5)', 'Stress', '2021-07-18', '11:49:20 am'),
('R000107', 'P00011', 'user11', 'None', 'None', 'ibuprofen', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '11:49:49 am'),
('R000108', 'P00012', 'user12', 'Painful', 'Sharp', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-10', '02:15:52 pm'),
('R000109', 'P00012', 'user12', 'Painful', 'Sharp', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-11', '02:16:28 pm'),
('R00011', 'P0001 ', 'user1', 'Home Moderate', 'Mild', 'Panadol', 'Exercise', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-20', '03:33:38 pm'),
('R000110', 'P00012', 'user12', 'Hurts a bit', 'Aching', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-12', '02:18:06 pm'),
('R000111', 'P00012', 'user12', 'Tolerable', 'Aching', 'naproxen', 'Rest-Ice-Compression', 'Regular(2)', 'Stress', '2021-07-13', '02:19:29 pm'),
('R000112', 'P00012', 'user12', 'Moderate', 'Dull', 'Panadol', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-14', '02:20:30 pm'),
('R000113', 'P00012', 'user12', 'Mild', 'Dull', 'Panadol', 'Massage', 'Speedy(4)', 'Stress', '2021-07-15', '02:21:48 pm'),
('R000114', 'P00012', 'user12', 'Mild', 'Mild', 'none', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-16', '02:23:04 pm'),
('R000115', 'P00012', 'user12', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Stress', '2021-07-17', '02:23:46 pm'),
('R000116', 'P00012', 'user12', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Stress', '2021-07-18', '02:24:21 pm'),
('R000117', 'P00013', 'user13', 'Painful', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-10', '03:08:00 pm'),
('R000118', 'P00013', 'user13', 'Hurts a bit', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Regular(2)', 'Stress', '2021-07-11', '03:09:49 pm'),
('R000119', 'P00013', 'user13', 'Uncomfortable', 'Burning\"', 'ibuprofen', 'Rest-Ice-Compression', 'Regular(2)', 'Stress', '2021-07-12', '03:11:09 pm'),
('R00012', 'P0001 ', 'user1', 'Mild', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-21', '03:34:31 pm'),
('R000120', 'P00013', 'user13', 'Tolerable', 'Dull', 'ibuprofen', 'Rest-Ice-Compression', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-13', '03:28:27 pm'),
('R000121', 'P00013', 'user13', 'Mild', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-14', '03:31:08 pm'),
('R000122', 'P00013', 'user13', 'Mild', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-15', '03:31:39 pm'),
('R000123', 'P00013', 'user13', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Stress', '2021-07-17', '03:32:05 pm'),
('R000124', 'P00014', 'user14', 'Very Severe', 'Throbbing', 'naproxen', 'Massage', 'Aggravating(-1)', 'Stress', '2021-07-10', '03:40:11 pm'),
('R000125', 'P00014', 'user14', 'Severe', 'Throbbing', 'naproxen', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-11', '03:43:27 pm'),
('R000126', 'P00014', 'user14', 'Painful', 'Throbbing', 'naproxen', 'Massage', 'Slow(1)', 'Mood swings', '2021-07-12', '03:46:51 pm'),
('R000127', 'P00014', 'user14', 'Tolerable', 'Dull', 'naproxen', 'Massage', 'Regular(2)', 'Stress', '2021-07-13', '03:48:09 pm'),
('R000128', 'P00014', 'user14', 'Moderate', 'Dull', 'naproxen', 'Rest-Ice-Compression', 'Notable Relief(3)', 'Stress', '2021-07-14', '03:50:57 pm'),
('R000129', 'P00014', 'user14', 'Mild', 'Dull', 'naproxen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-15', '03:51:57 pm'),
('R00013', 'P0001 ', 'user1', 'None', 'None', 'none', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-23', '03:40:37 pm'),
('R000130', 'P00014', 'user14', 'None', 'None', 'naproxen', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-16', '03:52:36 pm'),
('R000131', 'P00015', 'user15', 'Painful', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'clothing', '2021-07-10', '04:21:38 pm'),
('R000132', 'P00015', 'user15', 'Hurts a bit', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'cold', '2021-07-11', '04:22:26 pm'),
('R000133', 'P00015', 'user15', 'Tolerable', 'Aching', 'naproxen', 'Massage', 'Regular(2)', 'Stress', '2021-07-12', '04:23:25 pm'),
('R000134', 'P00015', 'user15', 'Moderate', 'Dull', 'naproxen', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-13', '04:24:59 pm'),
('R000135', 'P00015', 'user15', 'Mild', 'Mild', 'naproxen', 'Massage', 'Speedy(4)', 'Stress', '2021-07-14', '04:25:58 pm'),
('R000136', 'P00015', 'user15', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Stress', '2021-07-15', '04:26:43 pm'),
('R000137', 'P00015', 'user15', 'None', 'None', 'naproxen', 'Exercise', 'Complete(5)', 'Mood swings', '2021-07-16', '04:27:32 pm'),
('R000138', 'P00016', 'user16', 'Severe', 'Throbbing', 'none', 'Massage', 'Aggravating(-1)', 'Inactive/Sedentary', '2021-07-10', '12:24:30 am'),
('R000139', 'P00016', 'user16', 'Severe', 'Throbbing', 'Panadol', 'Unknown/others', 'Aggravating(-1)', 'Stress', '2021-07-11', '12:25:20 am'),
('R00014', 'P0001 ', 'user1', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-24', '03:43:03 pm'),
('R000140', 'P00016', 'user16', 'Painful', 'Throbbing', 'Panadol', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-12', '12:26:18 am'),
('R000141', 'P00016', 'user16', 'Painful', 'Sharp', 'Panadol', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-13', '12:32:35 am'),
('R000142', 'P00016', 'user16', 'Painful', 'Throbbing', 'Panadol', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-14', '12:33:49 am'),
('R000143', 'P00016', 'user16', 'Severe', 'Throbbing', 'none', 'Massage', 'Aggravating(-1)', 'Inactive/Sedentary', '2021-07-15', '12:34:53 am'),
('R000144', 'P00016', 'user16', 'Painful', 'Throbbing', 'Panadol', 'Massage', 'Slow(1)', 'Inactive/Sedentary', '2021-07-16', '12:35:47 am'),
('R000145', 'P00016', 'user16', 'Painful', 'Throbbing', 'none', 'Massage', 'Slow(1)', 'Stress', '2021-07-17', '12:36:25 am'),
('R000146', 'P00017', 'user17', 'Acute', 'Aching', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Walking', '2021-07-10', '12:40:36 am'),
('R000147', 'P00017', 'user17', 'Acute', 'Burning\"', 'Panadol', 'None', 'Stagnant(0)', 'Stress', '2021-07-11', '12:51:42 am'),
('R000148', 'P00017', 'user17', 'Painful', 'Aching', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-12', '12:54:48 am'),
('R000149', 'P00017', 'user17', 'Painful', 'Aching', 'none', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-13', '12:56:31 am'),
('R00015', 'P0001 ', 'user1', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-25', '03:43:44 pm'),
('R000150', 'P00017', 'user17', 'Uncomfortable', 'Dull', 'ibuprofen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-14', '12:57:53 am'),
('R000151', 'P00017', 'user17', 'Hurts a bit', 'Aching', 'none', 'Massage', 'Slow(1)', 'Stress', '2021-07-15', '12:59:18 am'),
('R000152', 'P00017', 'user17', 'Hurts a bit', 'Aching', 'none', 'None', 'Stagnant(0)', 'Stress', '2021-07-16', '01:02:20 am'),
('R000153', 'P00018', 'user18', 'Very Severe', 'Pins', 'none', 'Massage', 'Aggravating(-1)', 'cold', '2021-07-10', '01:07:11 am'),
('R000154', 'P00018', 'user18', 'Severe', 'Pins', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'cold', '2021-07-11', '01:08:20 am'),
('R000155', 'P00018', 'user18', 'Painful', 'Electric Shocks', 'Panadol', 'Exercise', 'Stagnant(0)', 'Stress', '2021-07-12', '01:10:08 am'),
('R000156', 'P00018', 'user18', 'Painful', 'Pins', 'Panadol', 'Massage', 'Slow(1)', 'Stress', '2021-07-13', '01:11:10 am'),
('R000157', 'P00018', 'user18', 'Painful', 'Pins', 'ibuprofen', 'Massage', 'Slow(1)', 'cold', '2021-07-14', '01:12:09 am'),
('R000158', 'P00018', 'user18', 'Painful', 'Electric Shocks', 'Panadol', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-15', '01:13:25 am'),
('R000159', 'P00018', 'user18', 'Painful', 'Electric Shocks', 'Panadol', 'None', 'Stagnant(0)', 'Others', '2021-07-16', '01:14:57 am'),
('R00016', 'P0001 ', 'user1', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-26', '03:44:10 pm'),
('R000160', 'P00019', 'user19', 'Severe', 'Throbbing', 'none', 'None', 'Aggravating(-1)', 'Inactive/Sedentary', '2021-07-10', '10:48:07 am'),
('R000161', 'P00019', 'user19', 'Severe', 'Throbbing', 'Panadol', 'Massage', 'Stagnant(0)', 'Standing', '2021-07-11', '10:50:04 am'),
('R000162', 'P00019', 'user19', 'Tolerable', 'Dull', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-12', '10:51:10 am'),
('R000163', 'P00019', 'user19', 'Painful', 'Sharp', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-13', '10:51:57 am'),
('R000164', 'P00019', 'user19', 'Painful', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-14', '10:52:57 am'),
('R000165', 'P00019', 'user19', 'Tolerable', 'Throbbing', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Inactive/Sedentary', '2021-07-15', '10:54:10 am'),
('R000166', 'P00019', 'user19', 'Hurts a bit', 'Sharp', 'ibuprofen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-16', '10:55:33 am'),
('R000167', 'P00020', 'user20', 'Severe', 'Throbbing', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-10', '11:03:28 am'),
('R000168', 'P00020', 'user20', 'Painful', 'Sharp', 'none', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-11', '11:04:07 am'),
('R000169', 'P00020', 'user20', 'Painful', 'Throbbing', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Sitting', '2021-07-12', '11:04:53 am'),
('R00017', 'P0002', 'user2', 'Acute', 'Sharp', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'clothing', '2021-07-10', '03:57:59 pm'),
('R000170', 'P00020', 'user20', 'Uncomfortable', 'Aching', 'none', 'Massage', 'Slow(1)', 'Stress', '2021-07-13', '11:14:12 am'),
('R000171', 'P00020', 'user20', 'Uncomfortable', 'Aching', 'naproxen', 'Massage', 'Slow(1)', 'Stress', '2021-07-15', '11:15:42 am'),
('R000172', 'P00020', 'user20', 'Painful', 'Throbbing', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-16', '11:16:25 am'),
('R000173', 'P00021', 'user21', 'Painful', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'cold', '2021-07-10', '11:37:45 am'),
('R000174', 'P00021', 'user21', 'Painful', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'cold', '2021-07-11', '11:38:51 am'),
('R000175', 'P00021', 'user21', 'Hurts a bit', 'Aching', 'none', 'Massage', 'Slow(1)', 'Inactive/Sedentary', '2021-07-12', '11:39:46 am'),
('R000176', 'P00021', 'user21', 'Uncomfortable', 'Burning\"', 'Panadol', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-13', '11:40:29 am'),
('R000177', 'P00021', 'user21', 'Painful', 'Burning\"', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-14', '11:41:30 am'),
('R000178', 'P00021', 'user21', 'Hurts a bit', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-15', '11:42:09 am'),
('R000179', 'P00021', 'user21', 'Uncomfortable', 'Burning\"', 'ibuprofen', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-16', '11:44:20 am'),
('R00018', 'P0002', 'user2', 'Very Severe', 'Sharp', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-11', '03:59:23 pm'),
('R000180', 'P00022', 'user22', 'Uncomfortable', 'Aching', 'Panadol', 'Massage', 'Stagnant(0)', 'Standing', '2021-07-10', '02:44:54 pm'),
('R000181', 'P00022', 'user22', 'Painful', 'Aching', 'Panadol', 'Massage', 'Stagnant(0)', 'cold', '2021-07-11', '02:45:59 pm'),
('R000182', 'P00022', 'user22', 'Painful', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-12', '02:48:13 pm'),
('R000183', 'P00022', 'user22', 'Painful', 'Dull', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Standing', '2021-07-13', '02:50:22 pm'),
('R000184', 'P00022', 'user22', 'Painful', 'Aching', 'naproxen', 'Massage', 'Stagnant(0)', 'Standing', '2021-07-14', '02:51:29 pm'),
('R000185', 'P00022', 'user22', 'Painful', 'Aching', 'none', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-15', '02:52:32 pm'),
('R000186', 'P00022', 'user22', 'Painful', 'Aching', 'none', 'Massage', 'Stagnant(0)', 'Standing', '2021-07-16', '02:53:50 pm'),
('R000187', 'P00023', 'user23', 'Severe', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'clothing', '2021-07-10', '03:00:06 pm'),
('R000188', 'P00023', 'user23', 'Hurts a bit', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'heat', '2021-07-11', '03:03:27 pm'),
('R000189', 'P00023', 'user23', 'Severe', 'Electric Shocks', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-12', '03:07:22 pm'),
('R00019', 'P0002', 'user2', 'Uncomfortable', 'Sharp', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'clothing', '2021-07-12', '04:00:11 pm'),
('R000190', 'P00023', 'user23', 'Uncomfortable', 'Aching', 'naproxen', 'Massage', 'Slow(1)', 'Inactive/Sedentary', '2021-07-13', '03:08:41 pm'),
('R000191', 'P00023', 'user23', 'Hurts a bit', 'Electric Shocks', 'naproxen', 'Massage', 'Slow(1)', 'Stress', '2021-07-14', '03:09:41 pm'),
('R000192', 'P00023', 'user23', 'Painful', 'Sharp', 'Panadol', 'Massage', 'Slow(1)', 'Inactive/Sedentary', '2021-07-15', '03:10:31 pm'),
('R000193', 'P00023', 'user23', 'Painful', 'Electric Shocks', 'none', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-16', '03:11:31 pm'),
('R000194', 'P00024', 'user24', 'Very Severe', 'Throbbing', 'none', 'Massage', 'Aggravating(-1)', 'cold', '2021-07-10', '03:43:12 pm'),
('R000195', 'P00024', 'user24', 'Severe', 'Throbbing', 'Panadol', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-11', '03:44:34 pm'),
('R000196', 'P00024', 'user24', 'Painful', 'Electric Shocks', 'naproxen', 'Massage', 'Slow(1)', 'Stress', '2021-07-12', '03:50:48 pm'),
('R000197', 'P00024', 'user24', 'Hurts a bit', 'Aching', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-13', '03:52:27 pm'),
('R000198', 'P00024', 'user24', 'Painful', 'Burning\"', 'none', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-14', '03:53:09 pm'),
('R000199', 'P00024', 'user24', 'Painful', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-15', '03:54:15 pm'),
('R0002', 'P0001 ', 'user1', 'Acute', 'Throbbing', 'ibuprofen', 'Massage', 'Slow(1)', 'cold', '2021-07-11', '03:18:07 pm'),
('R00020', 'P0002', 'user2', 'Hurts a bit', 'Dull', 'ibuprofen', 'Rest-Ice-Compression', 'Slow(1)', 'Mood swings', '2021-07-13', '04:01:22 pm'),
('R000200', 'P00024', 'user24', 'Painful', 'Throbbing', 'none', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-16', '03:55:16 pm'),
('R000201', 'P00025', 'user25', 'Severe', 'Throbbing', 'naproxen', 'Massage', 'Aggravating(-1)', 'Stress', '2021-07-10', '04:00:10 pm'),
('R000202', 'P00025', 'user25', 'Painful', 'Throbbing', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-11', '04:01:09 pm'),
('R000203', 'P00025', 'user25', 'Painful', 'Throbbing', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-12', '04:02:07 pm'),
('R000204', 'P00025', 'user25', 'Painful', 'Throbbing', 'naproxen', 'Massage', 'Stagnant(0)', 'Stress', '2021-07-13', '04:12:18 pm'),
('R000205', 'P00025', 'user25', 'Uncomfortable', 'Burning\"', 'none', 'Rest-Ice-Compression', 'Slow(1)', 'heat', '2021-07-14', '04:13:08 pm'),
('R000206', 'P00025', 'user25', 'Hurts a bit', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-15', '04:13:50 pm'),
('R000207', 'P00025', 'user25', 'Severe', 'Throbbing', 'naproxen', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-16', '04:16:34 pm'),
('R000208', 'P00026', 'user26', 'Severe', 'Sharp', 'aspirin', 'Rest-Ice-Compression', 'Aggravating(-1)', 'cold', '2021-07-10', '10:08:49 pm'),
('R000209', 'P00026', 'user26', 'Painful', 'Aching', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'cold', '2021-07-11', '10:09:34 pm'),
('R00021', 'P0002', 'user2', 'Tolerable', 'Sharp', 'none', 'Rest-Ice-Compression', 'Regular(2)', 'Inactive/Sedentary', '2021-07-14', '04:03:31 pm'),
('R000210', 'P00026', 'user26', 'Painful', 'Aching', 'aspirin', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-12', '10:11:06 pm'),
('R000211', 'P00026', 'user26', 'Tolerable', 'Dull', 'Panadol', 'Massage', 'Slow(1)', 'Stress', '2021-07-13', '10:12:01 pm'),
('R000212', 'P00026', 'user26', 'Mild', 'Dull', 'Panadol', 'Massage', 'Regular(2)', 'Stress', '2021-07-14', '10:13:17 pm'),
('R000213', 'P00026', 'user26', 'Mild', 'Mild', 'aspirin', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-15', '10:14:15 pm'),
('R000214', 'P00026', 'user26', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Stress', '2021-07-16', '10:28:36 pm'),
('R000215', 'P00027', 'user27', 'Hurts a bit', 'Burning\"', 'none', 'Exercise', 'Stagnant(0)', 'Stress', '2021-07-10', '10:47:24 pm'),
('R000216', 'P00027', 'user27', 'Tolerable', 'Burning\"', 'none', 'Massage', 'Slow(1)', 'Stress', '2021-07-11', '10:48:33 pm'),
('R000217', 'P00027', 'user27', 'Painful', 'Aching', 'aspirin', 'Massage', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-12', '10:51:01 pm'),
('R000218', 'P00027', 'user27', 'Moderate', 'Aching', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Inactive/Sedentary', '2021-07-13', '10:53:49 pm'),
('R000219', 'P00027', 'user27', 'Tolerable', 'Aching', 'naproxen', 'Massage', 'Regular(2)', 'Inactive/Sedentary', '2021-07-14', '10:56:41 pm'),
('R00022', 'P0002', 'user2', 'Tolerable', 'Dull', 'ibuprofen', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-15', '04:04:27 pm'),
('R000220', 'P00027', 'user27', 'Moderate', 'Aching', 'naproxen', 'Massage', 'Slow(1)', 'Inactive/Sedentary', '2021-07-15', '11:09:38 pm'),
('R00023', 'P0002', 'user2', 'Moderate', 'Dull', 'ibuprofen', 'Exercise', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-16', '04:05:13 pm'),
('R00024', 'P0002', 'user2', 'Mild', 'Dull', 'Panadol', 'Exercise', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-17', '04:06:43 pm'),
('R00025', 'P0002', 'user2', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '04:10:27 pm'),
('R00026', 'P0002', 'user2', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '04:11:05 pm'),
('R00027', 'P0003', 'user3', 'Severe', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Aggravating(-1)', 'Stress', '2021-07-10', '10:21:52 pm'),
('R00028', 'P0003', 'user3', 'Painful', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-11', '10:22:16 pm'),
('R00029', 'P0003', 'user3', 'Uncomfortable', 'Electric Shocks', 'naproxen', 'Massage', 'Slow(1)', 'cold', '2021-07-12', '10:22:54 pm'),
('R0003', 'P0001 ', 'user1', 'Very Severe', 'Throbbing', 'Iboprofein', 'Massage', 'Slow(1)', 'cold', '2021-07-12', '03:25:01 pm'),
('R00030', 'P0003', 'user3', 'Uncomfortable', 'Electric Shocks', 'none', 'Massage', 'Regular(2)', 'Inactive/Sedentary', '2021-07-12', '10:23:28 pm'),
('R00031', 'P0003', 'user3', 'Hurts a bit', 'Burning\"', 'naproxen', 'Massage', 'Regular(2)', 'cold', '2021-07-13', '10:23:58 pm'),
('R00032', 'P0003', 'user3', 'Tolerable', 'Burning\"', 'Panadol', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-14', '10:24:32 pm'),
('R00033', 'P0003', 'user3', 'Tolerable', 'Burning\"', 'naproxen', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-15', '10:25:39 pm'),
('R00034', 'P0003', 'user3', 'Moderate', 'Dull', 'naproxen', 'Rest-Ice-Compression', 'Speedy(4)', 'cold', '2021-07-16', '10:26:31 pm'),
('R00035', 'P0003', 'user3', 'Mild', 'Mild', 'none', 'Massage', 'Speedy(4)', 'cold', '2021-07-17', '10:27:21 pm'),
('R00036', 'P0003', 'user3', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-18', '10:27:44 pm'),
('R00037', 'P0003', 'user3', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '10:28:17 pm'),
('R00038', 'P0004', 'user4', 'Painful', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-10', '12:02:05 am'),
('R00039', 'P0004', 'user4', 'Painful', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-11', '12:02:37 am'),
('R0004', 'P0001 ', 'user1', 'Uncomfortable', 'Throbbing', 'Panadol', 'Rest-Ice-Compression', 'Regular(2)', 'cold', '2021-07-13', '03:25:51 pm'),
('R00040', 'P0004', 'user4', 'Uncomfortable', 'Aching', 'none', 'Massage', 'Slow(1)', 'Stress', '2021-07-12', '12:03:19 am'),
('R00041', 'P0004', 'user4', 'Hurts a bit', 'Aching', 'Panadol', 'Massage', 'Regular(2)', 'Standing', '2021-07-13', '12:03:56 am'),
('R00042', 'P0004', 'user4', 'Tolerable', 'Dull', 'none', 'Massage', 'Regular(2)', 'Stress', '2021-07-15', '12:05:16 am'),
('R00043', 'P0004', 'user4', 'Mild', 'Dull', 'naproxen', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-16', '12:05:48 am'),
('R00044', 'P0004', 'user4', 'Mild', 'Mild', 'none', 'Massage', 'Speedy(4)', 'Others', '2021-07-17', '12:09:14 am'),
('R00045', 'P0004', 'user4', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Others', '2021-07-18', '12:09:49 am'),
('R00046', 'P0004', 'user4', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Others', '2021-07-19', '12:10:34 am'),
('R00047', 'P0005', 'user5', 'Painful', 'Pins', 'none', 'Rest-Ice-Compression', 'Stagnant(0)', 'cold', '2021-07-10', '12:18:01 am'),
('R00048', 'P0005', 'user5', 'Uncomfortable', 'Pins', 'ibuprofen', 'Rest-Ice-Compression', 'Slow(1)', 'cold', '2021-07-11', '12:18:39 am'),
('R00049', 'P0005', 'user5', 'Uncomfortable', 'Aching', 'ibuprofen', 'Massage', 'Regular(2)', 'cold', '2021-07-12', '12:19:35 am'),
('R0005', 'P0001 ', 'user1', 'Uncomfortable', 'Aching', 'ibuprofen', 'Rest-Ice-Compression', 'Regular(2)', 'cold', '2021-07-14', '03:26:32 pm'),
('R00050', 'P0005', 'user5', 'Moderate', 'Dull', 'ibuprofen', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-13', '12:20:35 am'),
('R00051', 'P0005', 'user5', 'Moderate', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'cold', '2021-07-14', '12:21:07 am'),
('R00052', 'P0005', 'user5', 'Mild', 'Mild', 'ibuprofen', 'Massage', 'Speedy(4)', 'cold', '2021-07-15', '12:22:11 am'),
('R00053', 'P0005', 'user5', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'cold', '2021-07-16', '12:22:37 am'),
('R00054', 'P0005', 'user5', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Others', '2021-07-18', '12:23:10 am'),
('R00055', 'P0006', 'user6', 'Unbearable', 'Throbbing', 'ibuprofen', 'Massage', 'Aggravating(-1)', 'Mood swings', '2021-07-10', '11:32:47 pm'),
('R00056', 'P0006', 'user6', 'Acute', 'Throbbing', 'ibuprofen', 'Massage', 'Stagnant(0)', 'cold', '2021-07-11', '11:33:23 pm'),
('R00057', 'P0006', 'user6', 'Painful', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Slow(1)', 'cold', '2021-07-12', '11:34:04 pm'),
('R00058', 'P0006', 'user6', 'Tolerable', 'Dull', 'ibuprofen', 'Rest-Ice-Compression', 'Regular(2)', 'Inactive/Sedentary', '2021-07-13', '11:34:46 pm'),
('R00059', 'P0006', 'user6', 'Moderate', 'Dull', 'ibuprofen', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-14', '11:37:00 pm'),
('R0006', 'P0001 ', 'user1', 'Uncomfortable', 'Dull', 'none', 'Massage', 'Regular(2)', 'Inactive/Sedentary', '2021-07-15', '03:27:25 pm'),
('R00060', 'P0006', 'user6', 'Mild', 'Mild', 'ibuprofen', 'Rest-Ice-Compression', 'Speedy(4)', 'cold', '2021-07-17', '11:37:52 pm'),
('R00061', 'P0006', 'user6', 'None', 'None', 'none', 'Rest-Ice-Compression', 'Complete(5)', 'Inactive/Sedentary', '2021-07-17', '11:38:37 pm'),
('R00062', 'P0006', 'user6', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '11:39:06 pm'),
('R00063', 'P0007', 'user7', 'Severe', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-10', '11:44:24 pm'),
('R00064', 'P0007', 'user7', 'Painful', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-11', '11:44:51 pm'),
('R00065', 'P0007', 'user7', 'Uncomfortable', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-13', '11:45:30 pm'),
('R00066', 'P0007', 'user7', 'Hurts a bit', 'Electric Shocks', 'naproxen', 'Rest-Ice-Compression', 'Regular(2)', 'Inactive/Sedentary', '2021-07-14', '11:46:12 pm'),
('R00067', 'P0007', 'user7', 'Moderate', 'Dull', 'naproxen', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-15', '11:47:25 pm'),
('R00068', 'P0007', 'user7', 'Mild', 'Mild', 'none', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-16', '11:47:59 pm'),
('R00069', 'P0007', 'user7', 'Mild', 'Mild', 'naproxen', 'Rest-Ice-Compression', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-17', '11:48:55 pm'),
('R0007', 'P0001 ', 'user1', 'Hurts a bit', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Regular(2)', 'Inactive/Sedentary', '2021-07-16', '03:28:13 pm'),
('R00070', 'P0007', 'user7', 'None', 'None', 'naproxen', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-18', '11:52:24 pm'),
('R00071', 'P0007', 'user7', 'None', 'None', 'none', 'Exercise', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '11:52:51 pm'),
('R00072', 'P0008', 'user8', 'Painful', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Inactive/Sedentary', '2021-07-10', '11:56:55 pm'),
('R00073', 'P0008', 'user8', 'Uncomfortable', 'Burning\"', 'Panadol', 'Rest-Ice-Compression', 'Slow(1)', 'Mood swings', '2021-07-11', '11:57:36 pm'),
('R00074', 'P0008', 'user8', 'Tolerable', 'Aching', 'Panadol', 'Massage', 'Regular(2)', 'Inactive/Sedentary', '2021-07-12', '11:58:46 pm'),
('R00075', 'P0008', 'user8', 'Moderate', 'Aching', 'Panadol', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-16', '12:03:05 am'),
('R00076', 'P0008', 'user8', 'Mild', 'Dull', 'Panadol', 'Rest-Ice-Compression', 'Speedy(4)', 'Stress', '2021-07-17', '12:03:39 am'),
('R00077', 'P0008', 'user8', 'Mild', 'Mild', 'Panadol', 'Massage', 'Speedy(4)', 'Stress', '2021-07-10', '12:04:04 am'),
('R00078', 'P0008', 'user8', 'None', 'None', 'Panadol', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-19', '12:04:37 am'),
('R00079', 'P0008', 'user8', 'None', 'None', 'Panadol', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-20', '12:05:28 am'),
('R0008', 'P0001 ', 'user1', 'Tolerable', 'Dull', 'Panadol', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-17', '03:28:50 pm'),
('R00080', 'P0008', 'user8', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-21', '12:05:55 am'),
('R00081', 'P0009', 'user9', 'Severe', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-10', '12:16:44 am'),
('R00082', 'P0009', 'user9', 'Severe', 'Burning\"', 'naproxen', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-11', '12:20:31 am'),
('R00083', 'P0009', 'user9', 'Hurts a bit', 'Aching', 'naproxen', 'Massage', 'Regular(2)', 'Stress', '2021-07-12', '12:23:44 am'),
('R00084', 'P0009', 'user9', 'Tolerable', 'Dull', 'naproxen', 'Massage', 'Notable Relief(3)', 'Stress', '2021-07-13', '12:24:44 am'),
('R00085', 'P0009', 'user9', 'Tolerable', 'Dull', 'naproxen', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-14', '12:26:09 am'),
('R00086', 'P0009', 'user9', 'Moderate', 'Mild', 'naproxen', 'Massage', 'Speedy(4)', 'Stress', '2021-07-15', '12:27:41 am'),
('R00087', 'P0009', 'user9', 'Mild', 'Mild', 'naproxen', 'Rest-Ice-Compression', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-16', '12:29:04 am'),
('R00088', 'P0009', 'user9', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-17', '01:38:04 am'),
('R00089', 'P0009', 'user9', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-18', '01:38:33 am'),
('R0009', 'P0001 ', 'user1', 'Tolerable', 'Dull', 'none', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-19', '03:29:38 pm'),
('R00090', 'P00010', 'user10', 'Severe', 'Sharp', 'Panadol', 'Rest-Ice-Compression', 'Stagnant(0)', 'Stress', '2021-07-10', '11:27:46 am'),
('R00091', 'P00010', 'user10', 'Painful', 'Sharp', 'Panadol', 'Rest-Ice-Compression', 'Slow(1)', 'Stress', '2021-07-11', '11:28:43 am'),
('R00092', 'P00010', 'user10', 'Painful', 'Sharp', 'Panadol', 'Massage', 'Slow(1)', 'cold', '2021-07-12', '11:29:32 am'),
('R00093', 'P00010', 'user10', 'Hurts a bit', 'Dull', 'Panadol', 'Massage', 'Regular(2)', 'Inactive/Sedentary', '2021-07-13', '11:31:21 am'),
('R00094', 'P00010', 'user10', 'Tolerable', 'Dull', 'Panadol', 'Massage', 'Notable Relief(3)', 'Inactive/Sedentary', '2021-07-14', '11:32:34 am'),
('R00095', 'P00010', 'user10', 'Mild', 'Mild', 'Panadol', 'Massage', 'Speedy(4)', 'Stress', '2021-07-15', '11:33:36 am'),
('R00096', 'P00010', 'user10', 'Mild', 'Mild', 'Panadol', 'Massage', 'Speedy(4)', 'Inactive/Sedentary', '2021-07-15', '11:34:22 am'),
('R00097', 'P00010', 'user10', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-16', '11:35:39 am'),
('R00098', 'P00010', 'user10', 'None', 'None', 'none', 'Massage', 'Complete(5)', 'Inactive/Sedentary', '2021-07-17', '11:36:03 am'),
('R00099', 'P00011', 'user11', 'Very Severe', 'Throbbing', 'ibuprofen', 'Rest-Ice-Compression', 'Aggravating(-1)', 'Mood swings', '2021-07-10', '11:40:52 am');

-- --------------------------------------------------------

--
-- Table structure for table `patient_biodata`
--

CREATE TABLE `patient_biodata` (
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `age` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `names` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_biodata`
--

INSERT INTO `patient_biodata` (`username`, `email`, `phone_number`, `gender`, `country`, `province`, `address`, `age`, `date`, `names`) VALUES
('user1', 'maihankspinas@gmail.com', '08068816818', 'MALE', 'Nigeria', 'Taraba', '  Wukari                              ', '21', '13/07/2021 12:1', 'Munura Maihankali'),
('user10', 'ijeoma@gmail.com', '9838378', 'FEMALE', 'Mexico', 'Cancun', '27 Cancun                            ', '28', '23/07/2021 02:0', 'Ijeoma Okeke'),
('user11', 'lucky@gmail.com', '657746278', 'MALE', 'Spain', 'Madrid', '27 Madrid                              ', '24', '23/07/2021 02:0', 'Lucky Wiliams'),
('user12', 'gideon@gmail.com', '89758390', 'MALE', 'France', 'Paris', '68 Paris', '30', '23/07/2021 02:1', 'Gideon Dauda'),
('user13', 'samuel@gmail.com', '74894758', 'MALE', 'Spain', 'Barcelona', '46 Barcelona                               ', '25', '23/07/2021 02:1', 'Samuel Gibson'),
('user14', 'frank@gmail.com', '718384978', 'MALE', 'Angola', 'Luanda', '29 Luanda                                ', '29', '23/07/2021 02:1', 'Frank Godwin'),
('user15', 'judith@gmail.com', '08046758374', 'FEMALE', 'Nigeria', 'Anambra', '28 Anambra                                ', '29', '23/07/2021 02:1', 'Judith Paul'),
('user16', 'felicia@gmail.com', '084757728', 'FEMALE', 'Germany', 'Munich', '59 Munich                                ', '23', '23/07/2021 02:1', 'Felicia Randy'),
('user17', 'dondo@gmail.com', '74846782', 'MALE', 'Portugal', 'Porto', '30 Porto                                ', '20', '23/07/2021 02:1', 'Dondo Victor'),
('user18', 'faith@gmail.com', '6573939', 'FEMALE', 'Angola', 'Malanje', '40 Malanje                              ', '55', '23/07/2021 02:1', 'Faith Evans'),
('user19', 'comfort@gmail.com', '63739849', 'FEMALE', 'Brazil', 'Sao Paulo', '57 Sao Paulo                               ', '43', '23/07/2021 02:2', 'Comfort Danlami'),
('user2', 'abraham@gmail.com', '08099819179', 'MALE', 'Nigeria', 'Adamawa', 'Numan                                ', '25', '14/07/2021 11:4', 'Abraham Gabriel'),
('user20', 'ricardo@gmail.com', '34848929', 'MALE', 'Portugal', 'Braga', '20 Braga                              ', '22', '23/07/2021 02:2', 'Ricardo Quaresma'),
('user21', 'lilian@gmail.com', '0806773846', 'FEMALE', 'Nigeria', 'Taraba', 'Wukari city                               ', '31', '25/07/2021 11:2', 'Lilian Yabura'),
('user22', 'ajikini@gmail.com', '08047738738', 'FEMALE', 'Ghana', 'Kumasi', '34 Kumasi                             ', '33', '25/07/2021 11:2', 'Ajikini Hikon'),
('user23', 'magaji@gmail.com', '87849339', 'MALE', 'Germany', 'Harmburg', '45 Harmburg                               ', '43', '25/07/2021 11:3', 'Magaji Shuaibu'),
('user24', 'ande@gmail.con', '08094646838', 'MALE', 'Spain', 'Barcelona', '56 Barcelona                                ', '63', '25/07/2021 11:3', 'Ande Tukura'),
('user25', 'uche@gmail.com', '048739848', 'MALE', 'Portugal', 'Porto', '20 Porto                               ', '79', '25/07/2021 11:4', 'Uchenna Gabriel'),
('user26', 'victor@gmail.com', '09078947396', 'MALE', 'Mexico', 'Chiapas', '78 Fomrada Street, Chiapas                                ', '40', '26/07/2021 05:0', 'Victor Adagba'),
('user27', 'wando@gmail.com', '775884793', 'FEMALE', 'France', 'Marseille', '29 De javu Street Marseille                                ', '37', '26/07/2021 05:1', 'Wando Adimbo'),
('user28', 'cliford@gmail.com', '8974900589', 'MALE', 'Angola', 'Kissama', '23 Gamala Street , Kissama                             ', '48', '26/07/2021 05:2', 'Cliford Lamu'),
('user29', 'ikedi@gmail.com', '08937489468', 'MALE', 'Spain', 'Madrid', '38 Santiago, Madrid                                ', '63', '26/07/2021 05:2', 'Ikedi Nwankwo'),
('user3', 'hw@gmail.com', '8904748829', 'FEMALE', 'Angola', 'Luanda', '33 Lusaka                                ', '23', '22/07/2021 09:3', 'Hassana Williams'),
('user30', 'eka@gmail.com', '89364874', 'MALE', 'France', 'Monaco', '56 Jean du pearl street, Monaco                               ', '23', '26/07/2021 05:3', 'Eka Adeka'),
('user31', 'john@gmail.com', '8937400927', 'MALE', 'Brazil', 'Rio', '35 sambasta street, rio-de jenairo                                ', '47', '26/07/2021 05:3', 'John Haris'),
('user32', 'onyekachi@gmail.com', '0948857849', 'MALE', 'Germany', 'Berlin', '78 Thustchad street, Berlin                                ', '28', '26/07/2021 05:3', 'Onyekachi Ngwum'),
('user33', 'chisom@gmail.com', '07056637848', 'FEMALE', 'Nigeria', 'Imo', '45 Ohafia Street, Imo State                              ', '73', '26/07/2021 05:4', 'Chisom Nwankwo'),
('user34', 'karim@gmail.com', '8947782789', 'MALE', 'Ghana', 'Accra', '30 Damfodi street, Accra                             ', '44', '26/07/2021 05:5', 'Karim Benzema'),
('user35', 'christina@gmail.com', '84749849', 'FEMALE', 'Angola', 'Luanda', '56 jamada crescent Luanda                                 ', '27', '26/07/2021 06:0', 'Christina Millan'),
('user4', 'dami@gmail.com', '0893748829', 'FEMALE', 'Nigeria', 'Abia', '33 Umuahia                                ', '29', '22/07/2021 09:4', 'Damilola Samuel'),
('user5', 'ben@gmail.com', '908736728', 'MALE', 'Ghana', 'Accra', 'Kumasi                                ', '27', '23/07/2021 01:5', 'Benjamin Musa'),
('user6', 'esther@gmail.com', '18920478', 'FEMALE', 'Germany', 'Berlin', '29 Berlin                                 ', '29', '23/07/2021 01:5', 'Esther Jefferson'),
('user7', 'praise@gmail.com', '667583972', 'FEMALE', 'Portugal', 'Lisbon', '30 Lisbon                                ', '23', '23/07/2021 01:5', 'Praise Samuel'),
('user8', 'wisdom@gmail.com', '738497482', 'MALE', 'Brazil', 'Brasilia', ' 19 Brasilia                               ', '20', '23/07/2021 01:5', 'Wisdom Tervaku'),
('user9', 'wama@gmail.co', '893747892', 'FEMALE', 'France', 'Monaco', '29 Monaco                            ', '25', '23/07/2021 02:0', 'Wama Ato');

-- --------------------------------------------------------

--
-- Table structure for table `physician_biodata`
--

CREATE TABLE `physician_biodata` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `health_center_id` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `phone_number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `physician_biodata`
--

INSERT INTO `physician_biodata` (`username`, `email`, `name`, `address`, `gender`, `health_center_id`, `date`, `phone_number`) VALUES
('phy1', 'um@gmail.com', 'Umar Johnson', 'Hellensport                                ', 'MALE', 'h003', '21/07/2021 07:36:55 ', '079389949');

-- --------------------------------------------------------

--
-- Table structure for table `userslog`
--

CREATE TABLE `userslog` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userslog`
--

INSERT INTO `userslog` (`username`, `password`, `category`) VALUES
('a1', '', 'Administrator'),
('admin1', 'a1', 'Administrator'),
('phy1', 'p1', 'Physician'),
('user1', 'u1', 'Patient'),
('user10', 'u10', 'Patient'),
('user11', 'u11', 'Patient'),
('user12', 'u12', 'Patient'),
('user13', 'u13', 'Patient'),
('user14', 'u14', 'Patient'),
('user15', 'u15', 'Patient'),
('user16', 'u16', 'Patient'),
('user17', 'u17', 'Patient'),
('user18', 'u18', 'Patient'),
('user19', 'u19', 'Patient'),
('user2', 'u2', 'Patient'),
('user20', 'u20', 'Patient'),
('user21', 'u21', 'Patient'),
('user22', 'u22', 'Patient'),
('user23', 'u23', 'Patient'),
('user24', 'u24', 'Patient'),
('user25', 'u25', 'Patient'),
('user26', 'u26', 'Patient'),
('user27', 'u27', 'Patient'),
('user28', 'u28', 'Patient'),
('user29', 'u29', 'Patient'),
('user3', 'u3', 'Patient'),
('user30', 'u30', 'Patient'),
('user31', 'u31', 'Patient'),
('user32', 'u32', 'Patient'),
('user33', 'u33', 'Patient'),
('user34', 'u34', 'Patient'),
('user35', 'u35', 'Patient'),
('user4', 'u4', 'Patient'),
('user5', 'u5', 'Patient'),
('user6', 'u6', 'Patient'),
('user7', 'u7', 'Patient'),
('user8', 'u8', 'Patient'),
('user9', 'u9', 'Patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator_biodata`
--
ALTER TABLE `administrator_biodata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_response`
--
ALTER TABLE `complaint_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pain_case`
--
ALTER TABLE `pain_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Indexes for table `pain_record`
--
ALTER TABLE `pain_record`
  ADD PRIMARY KEY (`record_id`);

--
-- Indexes for table `patient_biodata`
--
ALTER TABLE `patient_biodata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `physician_biodata`
--
ALTER TABLE `physician_biodata`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `userslog`
--
ALTER TABLE `userslog`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
