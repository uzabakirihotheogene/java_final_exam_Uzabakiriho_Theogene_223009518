-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Dec 19, 2025 at 08:42 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `AccountID` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `account_holder_id` int DEFAULT NULL,
  `account_number` varchar(30) NOT NULL,
  `status` enum('active','inactive','closed') DEFAULT 'active',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`AccountID`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `branch_id` (`branch_id`),
  KEY `account_holder_id` (`account_holder_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`AccountID`, `branch_id`, `account_holder_id`, `account_number`, `status`, `CreatedAt`) VALUES
(1, 1, 12, '', 'active', '2025-11-04 23:06:47'),
(2, 2, 7, 'ACC1002', 'active', '2025-11-04 23:06:47'),
(3, 3, 11, 'ACC1003', 'active', '2025-11-04 23:06:47'),
(4, 4, 4, 'ACC1004', 'active', '2025-11-04 23:06:47'),
(5, 5, 5, 'ACC1005', 'active', '2025-11-04 23:06:47'),
(6, 6, 6, 'ACC1006', 'active', '2025-11-04 23:06:47'),
(7, 7, 7, 'ACC1007', 'active', '2025-11-04 23:06:47'),
(8, 8, 8, 'ACC1008', 'active', '2025-11-04 23:06:47'),
(9, 9, 9, 'ACC1009', 'active', '2025-11-04 23:06:47'),
(10, 10, 10, 'ACC1010', 'active', '2025-11-04 23:06:47'),
(11, 10, 14, 'FMS-200', 'active', '2025-11-18 09:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `accountholder`
--

DROP TABLE IF EXISTS `accountholder`;
CREATE TABLE IF NOT EXISTS `accountholder` (
  `AccountHolderID` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `PasswordHash` varchar(255) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL,
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `LastLogin` datetime DEFAULT NULL,
  PRIMARY KEY (`AccountHolderID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accountholder`
--

INSERT INTO `accountholder` (`AccountHolderID`, `Username`, `PasswordHash`, `Email`, `FullName`, `Role`, `CreatedAt`, `LastLogin`) VALUES
(12, 'theo', '125', 'theo@12gmail.com', 'theogene uzabakiriho', 'customer', '2025-11-05 09:53:27', NULL),
(2, 'user2', 'pass2', 'user2@mail.com', 'User Two', 'customer', '2025-11-04 23:06:31', NULL),
(3, 'user3', 'pass3', 'user3@mail.com', 'User Three', 'customer', '2025-11-04 23:06:31', NULL),
(4, 'user4', 'pass4', 'user4@mail.com', 'User Four', 'customer', '2025-11-04 23:06:31', NULL),
(5, 'user5', 'pass5', 'user5@mail.com', 'User Five', 'customer', '2025-11-04 23:06:31', NULL),
(6, 'user6', 'pass6', 'user6@mail.com', 'User Six', 'customer', '2025-11-04 23:06:31', NULL),
(7, 'mucyo', 'pass7', 'mucyo@mail.com', 'mucyo diedone', 'customer', '2025-11-04 23:06:31', NULL),
(13, 'patrick', '$2y$10$CKVhDIda7CmnlWGMMIy0v.TQ9iYFP8l7m1zFEd7RY1.g146QxJvXi', 'p@gmail.com', 'patrick nshimiyimana', 'admin', '2025-11-18 08:24:41', NULL),
(9, 'user9', 'pass9', 'user9@mail.com', 'User Nine', 'customer', '2025-11-04 23:06:31', NULL),
(10, 'user10', 'pass10', 'user10@mail.com', 'User Ten', 'customer', '2025-11-04 23:06:31', NULL),
(11, 'theogen', '1234', 'theo250@gmai.com', 'theo geo', 'admin', '2025-11-04 23:20:32', NULL),
(14, 'a', '1234', 'a@gmail.com', 'a al', 'custom', '2025-11-18 08:59:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `BranchID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Capacity` int DEFAULT NULL,
  `Manager` varchar(100) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BranchID`, `Name`, `Address`, `Capacity`, `Manager`, `Contact`) VALUES
(1, 'Branch A', 'Street 1', 100, 'Manager A', '0780000001'),
(2, 'Branch B', 'Street 2', 120, 'Manager B', '0780000002'),
(3, 'Branch C', 'Street 3', 80, 'Manager C', '0780000003'),
(4, 'Branch D', 'Street 4', 90, 'Manager D', '0780000004'),
(5, 'Branch E', 'Street 5', 70, 'Manager E', '0780000005'),
(6, 'Branch F', 'Street 6', 60, 'Manager F', '0780000006'),
(7, 'Branch G', 'Street 7', 110, 'Manager G', '0780000007'),
(8, 'Branch H', 'Street 8', 95, 'Manager H', '0780000008'),
(9, 'Branch I', 'Street 9', 85, 'Manager I', '0780000009'),
(10, 'Branch J', 'Street 10', 105, 'Manager J', '0780000010');

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
CREATE TABLE IF NOT EXISTS `card` (
  `CardID` int NOT NULL AUTO_INCREMENT,
  `branch_id` int DEFAULT NULL,
  `card_holder` int DEFAULT NULL,
  `CardNumber` varchar(20) NOT NULL,
  `CardType` enum('debit','credit','prepaid') DEFAULT 'debit',
  `ExpiryDate` date NOT NULL,
  `CVV` char(3) NOT NULL,
  `Status` enum('active','blocked','expired') DEFAULT 'active',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CardID`),
  UNIQUE KEY `CardNumber` (`CardNumber`),
  KEY `branch_id` (`branch_id`),
  KEY `card_holder` (`card_holder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`CardID`, `branch_id`, `card_holder`, `CardNumber`, `CardType`, `ExpiryDate`, `CVV`, `Status`, `CreatedAt`) VALUES
(1, 1, 1, '4000000000000001', 'debit', '2028-12-31', '123', 'active', '2025-11-04 23:07:06'),
(2, 2, 2, '4000000000000002', 'debit', '2028-12-31', '234', 'active', '2025-11-04 23:07:06'),
(3, 3, 3, '4000000000000003', 'credit', '2028-12-31', '345', 'active', '2025-11-04 23:07:06'),
(4, 4, 4, '4000000000000004', 'debit', '2028-12-31', '456', 'active', '2025-11-04 23:07:06'),
(5, 5, 5, '4000000000000005', 'prepaid', '2028-12-31', '567', 'active', '2025-11-04 23:07:06'),
(6, 6, 6, '4000000000000006', 'debit', '2028-12-31', '678', 'active', '2025-11-04 23:07:06'),
(7, 7, 7, '4000000000000007', 'credit', '2028-12-31', '789', 'active', '2025-11-04 23:07:06'),
(8, 8, 8, '4000000000000008', 'debit', '2028-12-31', '890', 'active', '2025-11-04 23:07:06'),
(9, 9, 9, '4000000000000009', 'prepaid', '2028-12-31', '901', 'active', '2025-11-04 23:07:06'),
(10, 10, 10, '4000000000000010', 'debit', '2028-12-31', '012', 'active', '2025-11-04 23:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `LoanID` int NOT NULL AUTO_INCREMENT,
  `accountHolder_id` int DEFAULT NULL,
  `LoanType` varchar(50) DEFAULT NULL,
  `PrincipalAmount` decimal(12,2) NOT NULL,
  `InterestRate` decimal(5,2) NOT NULL,
  `TermMonths` int NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Status` enum('active','closed','defaulted','pending') DEFAULT 'pending',
  `CreatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`LoanID`),
  KEY `accountHolder_id` (`accountHolder_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`LoanID`, `accountHolder_id`, `LoanType`, `PrincipalAmount`, `InterestRate`, `TermMonths`, `StartDate`, `EndDate`, `Status`, `CreatedAt`) VALUES
(1, 1, 'personal', 1000.00, 5.50, 12, '2025-01-01', '2026-01-01', 'active', '2025-11-04 23:07:15'),
(2, 2, 'home', 5000.00, 4.00, 24, '2025-02-01', '2027-02-01', 'active', '2025-11-04 23:07:15'),
(3, 3, 'car', 2000.00, 6.00, 18, '2025-03-01', '2026-09-01', 'active', '2025-11-04 23:07:15'),
(4, 4, 'education', 1500.00, 3.50, 12, '2025-04-01', '2026-04-01', 'active', '2025-11-04 23:07:15'),
(5, 5, 'business', 3000.00, 7.00, 36, '2025-05-01', '2028-05-01', 'pending', '2025-11-04 23:07:15'),
(6, 6, 'personal', 1200.00, 5.00, 12, '2025-06-01', '2026-06-01', 'active', '2025-11-04 23:07:15'),
(7, 7, 'home', 7000.00, 4.50, 24, '2025-07-01', '2027-07-01', 'active', '2025-11-04 23:07:15'),
(8, 8, 'car', 2500.00, 6.50, 18, '2025-08-01', '2026-02-01', 'active', '2025-11-04 23:07:15'),
(9, 9, 'education', 1800.00, 3.00, 12, '2025-09-01', '2026-09-01', 'active', '2025-11-04 23:07:15'),
(10, 14, 'business', 4000.00, 6.00, 36, '2025-10-01', '2028-10-01', 'pending', '2025-11-04 23:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `loanbranch`
--

DROP TABLE IF EXISTS `loanbranch`;
CREATE TABLE IF NOT EXISTS `loanbranch` (
  `LoanID` int NOT NULL,
  `BranchID` int NOT NULL,
  PRIMARY KEY (`LoanID`,`BranchID`),
  KEY `BranchID` (`BranchID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loanbranch`
--

INSERT INTO `loanbranch` (`LoanID`, `BranchID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `OrderNumber` varchar(50) DEFAULT NULL,
  `Date` datetime DEFAULT CURRENT_TIMESTAMP,
  `accountid` int DEFAULT NULL,
  `loanId` int DEFAULT NULL,
  `Status` enum('pending','completed','failed') DEFAULT 'pending',
  `TotalAmount` decimal(12,2) DEFAULT NULL,
  `type` enum('withdraw','deposit','repayment','rollback','loan disbursement','loan repayment') DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`TransactionID`),
  KEY `accountid` (`accountid`),
  KEY `loanId` (`loanId`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`TransactionID`, `OrderNumber`, `Date`, `accountid`, `loanId`, `Status`, `TotalAmount`, `type`, `PaymentMethod`, `Notes`) VALUES
(1, 'ORD1001', '2025-11-04 23:07:35', 1, 1, 'completed', 500.00, 'deposit', 'cash', 'Initial deposit'),
(2, 'ORD1002', '2025-11-04 23:07:35', 2, 2, 'completed', 1000.00, 'deposit', 'card', 'Salary deposit'),
(3, 'ORD1003', '2025-11-04 23:07:35', 3, 3, 'pending', 200.00, 'repayment', 'transfer', 'Monthly loan repayment'),
(4, 'ORD1004', '2025-11-04 23:07:35', 4, 4, 'completed', 300.00, 'withdraw', 'atm', 'Cash withdrawal'),
(5, 'ORD1005', '2025-11-04 23:07:35', 5, 5, 'pending', 500.00, 'loan disbursement', 'bank', 'Loan disbursed'),
(6, 'ORD1006', '2025-11-04 23:07:35', 6, 6, 'completed', 150.00, 'deposit', 'cash', 'Deposit for savings'),
(7, 'ORD1007', '2025-11-04 23:07:35', 7, 7, 'pending', 700.00, 'loan repayment', 'transfer', 'Partial repayment'),
(8, 'ORD1008', '2025-11-04 23:07:35', 8, NULL, 'failed', 100.00, 'withdraw', 'atm', 'ATM failed transaction'),
(9, 'ORD1009', '2025-11-04 23:07:35', 9, 9, 'completed', 400.00, 'deposit', 'card', 'Monthly deposit'),
(10, 'ORD1010', '2025-11-04 23:07:35', 10, 10, 'pending', 1000.00, 'loan disbursement', 'bank', 'Loan processed'),
(11, '111', '2025-11-18 13:28:05', 1, NULL, 'completed', 1000.00, 'deposit', 'mtn', 'done?'),
(12, 'FMS-200-20251811', '2025-11-18 13:43:34', 11, NULL, 'completed', 50000.00, 'deposit', 'mtn', 'none'),
(13, '1', '2025-11-18 14:03:18', 11, NULL, 'pending', 4000.00, 'deposit', 'mtn', 'note'),
(14, '', '2025-11-18 14:16:22', 11, 1, 'pending', 200.00, 'withdraw', 'mtn', 'note');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','cashier') NOT NULL DEFAULT 'admin',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '1234', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
