-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 04:13 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `investapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `camsdata`
--

CREATE TABLE `camsdata` (
  `amc_code` varchar(3) DEFAULT NULL,
  `folio_no` varchar(20) DEFAULT NULL,
  `prodcode` varchar(7) DEFAULT NULL,
  `scheme` varchar(100) DEFAULT NULL,
  `inv_name` varchar(70) DEFAULT NULL,
  `trxntype` varchar(7) DEFAULT NULL,
  `trxnno` double NOT NULL,
  `trxnmode` varchar(1) DEFAULT NULL,
  `trxnstat` varchar(1) DEFAULT NULL,
  `usercode` varchar(10) DEFAULT NULL,
  `usrtrxno` double DEFAULT NULL,
  `traddate` date DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `purprice` double DEFAULT NULL,
  `units` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `brokcode` varchar(20) DEFAULT NULL,
  `subbrok` varchar(30) DEFAULT NULL,
  `brokperc` double DEFAULT NULL,
  `brokcomm` double DEFAULT NULL,
  `altfolio` double DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `time1` varchar(5) DEFAULT NULL,
  `trxnsubtyp` varchar(7) DEFAULT NULL,
  `applicatio` varchar(20) DEFAULT NULL,
  `trxn_natur` varchar(80) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `te_15h` varchar(2) DEFAULT NULL,
  `micr_no` varchar(40) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `swflag` varchar(12) DEFAULT NULL,
  `old_folio` varchar(30) DEFAULT NULL,
  `seq_no` double DEFAULT NULL,
  `reinvest_f` varchar(1) DEFAULT NULL,
  `mult_brok` varchar(32) DEFAULT NULL,
  `stt` double DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `scheme_typ` varchar(15) DEFAULT NULL,
  `tax_status` varchar(35) DEFAULT NULL,
  `loads` double DEFAULT NULL,
  `scanrefno` varchar(50) DEFAULT NULL,
  `pan` varchar(20) DEFAULT NULL,
  `inv_iin` double DEFAULT NULL,
  `targ_src_s` varchar(100) DEFAULT NULL,
  `trxn_type_` varchar(30) DEFAULT NULL,
  `ticob_trty` varchar(2) DEFAULT NULL,
  `ticob_trno` varchar(2) DEFAULT NULL,
  `ticob_post` varchar(2) DEFAULT NULL,
  `dp_id` varchar(20) DEFAULT NULL,
  `trxn_charg` double DEFAULT NULL,
  `eligib_amt` double DEFAULT NULL,
  `src_of_txn` varchar(14) DEFAULT NULL,
  `trxn_suffi` varchar(150) DEFAULT NULL,
  `siptrxnno` double DEFAULT NULL,
  `ter_locati` varchar(1) DEFAULT NULL,
  `euin` varchar(20) DEFAULT NULL,
  `euin_valid` varchar(1) DEFAULT NULL,
  `euin_opted` varchar(1) DEFAULT NULL,
  `sub_brk_ar` varchar(20) DEFAULT NULL,
  `exch_dc_fl` varchar(1) DEFAULT NULL,
  `src_brk_co` varchar(20) DEFAULT NULL,
  `sys_regn_d` date DEFAULT NULL,
  `ac_no` varchar(40) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `reversal_c` double DEFAULT NULL,
  `exchange_f` varchar(3) DEFAULT NULL,
  `ca_initiat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


--
-- Table structure for table `investorcams`
--

CREATE TABLE `investorcams` (
  `foliochk` varchar(20) DEFAULT NULL,
  `inv_name` varchar(70) DEFAULT NULL,
  `address1` varchar(120) DEFAULT NULL,
  `address2` varchar(120) DEFAULT NULL,
  `address3` varchar(120) DEFAULT NULL,
  `city` varchar(35) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `product` varchar(7) DEFAULT NULL,
  `sch_name` varchar(100) DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `clos_bal` double DEFAULT NULL,
  `rupee_bal` double DEFAULT NULL,
  `jnt_name1` varchar(70) DEFAULT NULL,
  `jnt_name2` varchar(70) DEFAULT NULL,
  `phone_off` varchar(35) DEFAULT NULL,
  `phone_res` varchar(35) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `holding_na` varchar(2) DEFAULT NULL,
  `uin_no` varchar(15) DEFAULT NULL,
  `pan_no` varchar(45) DEFAULT NULL,
  `joint1_pan` varchar(45) DEFAULT NULL,
  `joint2_pan` varchar(45) DEFAULT NULL,
  `guard_pan` varchar(45) DEFAULT NULL,
  `tax_status` varchar(35) DEFAULT NULL,
  `broker_cod` varchar(20) DEFAULT NULL,
  `subbroker` varchar(30) DEFAULT NULL,
  `reinv_flag` varchar(1) DEFAULT NULL,
  `bank_name` varchar(40) DEFAULT NULL,
  `branch` varchar(40) DEFAULT NULL,
  `ac_type` varchar(5) DEFAULT NULL,
  `ac_no` varchar(40) DEFAULT NULL,
  `b_address1` varchar(35) DEFAULT NULL,
  `b_address2` varchar(35) DEFAULT NULL,
  `b_address3` varchar(35) DEFAULT NULL,
  `b_city` varchar(35) DEFAULT NULL,
  `b_pincode` varchar(15) DEFAULT NULL,
  `inv_dob` date DEFAULT NULL,
  `mobile_no` varchar(30) DEFAULT NULL,
  `occupation` varchar(35) DEFAULT NULL,
  `inv_iin` double DEFAULT NULL,
  `nom_name` varchar(70) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `nom_addr1` varchar(120) DEFAULT NULL,
  `nom_addr2` varchar(120) DEFAULT NULL,
  `nom_addr3` varchar(120) DEFAULT NULL,
  `nom_city` varchar(40) DEFAULT NULL,
  `nom_state` varchar(2) DEFAULT NULL,
  `nom_pincod` varchar(15) DEFAULT NULL,
  `nom_ph_off` varchar(40) DEFAULT NULL,
  `nom_ph_res` varchar(35) DEFAULT NULL,
  `nom_email` varchar(128) DEFAULT NULL,
  `nom_percen` double DEFAULT NULL,
  `nom2_name` varchar(70) DEFAULT NULL,
  `nom2_relat` varchar(20) DEFAULT NULL,
  `nom2_addr1` varchar(120) DEFAULT NULL,
  `nom2_addr2` varchar(120) DEFAULT NULL,
  `nom2_addr3` varchar(120) DEFAULT NULL,
  `nom2_city` varchar(40) DEFAULT NULL,
  `nom2_state` varchar(2) DEFAULT NULL,
  `nom2_pinco` varchar(15) DEFAULT NULL,
  `nom2_ph_of` varchar(40) DEFAULT NULL,
  `nom2_ph_re` varchar(35) DEFAULT NULL,
  `nom2_email` varchar(128) DEFAULT NULL,
  `nom2_perce` double DEFAULT NULL,
  `nom3_name` varchar(70) DEFAULT NULL,
  `nom3_relat` varchar(20) DEFAULT NULL,
  `nom3_addr1` varchar(120) DEFAULT NULL,
  `nom3_addr2` varchar(120) DEFAULT NULL,
  `nom3_addr3` varchar(120) DEFAULT NULL,
  `nom3_city` varchar(40) DEFAULT NULL,
  `nom3_state` varchar(2) DEFAULT NULL,
  `nom3_pinco` varchar(15) DEFAULT NULL,
  `nom3_ph_of` varchar(40) DEFAULT NULL,
  `nom3_ph_re` varchar(35) DEFAULT NULL,
  `nom3_email` varchar(128) DEFAULT NULL,
  `nom3_perce` double DEFAULT NULL,
  `ifsc_code` varchar(25) DEFAULT NULL,
  `dp_id` varchar(20) DEFAULT NULL,
  `demat` varchar(1) DEFAULT NULL,
  `guard_name` varchar(60) DEFAULT NULL,
  `brokcode` varchar(20) DEFAULT NULL,
  `folio_date` date DEFAULT NULL,
  `aadhaar` varchar(12) DEFAULT NULL,
  `tpa_linked` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `investorkarvy`
--

CREATE TABLE `investorkarvy` (
  `prcode` varchar(10) DEFAULT NULL,
  `fund` varchar(5) DEFAULT NULL,
  `acno` double DEFAULT NULL,
  `funddesc` varchar(255) DEFAULT NULL,
  `invname` varchar(160) DEFAULT NULL,
  `jtname1` varchar(60) DEFAULT NULL,
  `jtname2` varchar(60) DEFAULT NULL,
  `add1` varchar(50) DEFAULT NULL,
  `add2` varchar(50) DEFAULT NULL,
  `add3` varchar(50) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `pin` double DEFAULT NULL,
  `state` varchar(40) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  `tpin` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `fname` varchar(10) DEFAULT NULL,
  `mname` varchar(10) DEFAULT NULL,
  `rphone` varchar(40) DEFAULT NULL,
  `ph_res1` varchar(10) DEFAULT NULL,
  `ph_res2` varchar(10) DEFAULT NULL,
  `ophone` varchar(40) DEFAULT NULL,
  `ph_off1` varchar(10) DEFAULT NULL,
  `ph_off2` varchar(10) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `fax_off` varchar(10) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `occpn` double DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bnkacno` varchar(20) DEFAULT NULL,
  `bname` varchar(60) DEFAULT NULL,
  `bnkactype` varchar(40) DEFAULT NULL,
  `branch` varchar(10) DEFAULT NULL,
  `badd1` varchar(50) DEFAULT NULL,
  `badd2` varchar(50) DEFAULT NULL,
  `badd3` varchar(40) DEFAULT NULL,
  `bcity` varchar(40) DEFAULT NULL,
  `bphone` varchar(10) DEFAULT NULL,
  `bstate` varchar(40) DEFAULT NULL,
  `bcountry` varchar(40) DEFAULT NULL,
  `inv_id` varchar(10) DEFAULT NULL,
  `brokcode` varchar(20) DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `crtime` varchar(6) DEFAULT NULL,
  `pangno` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `divopt` varchar(1) DEFAULT NULL,
  `occp_desc` varchar(60) DEFAULT NULL,
  `modeofhold` varchar(60) DEFAULT NULL,
  `mapin` varchar(20) DEFAULT NULL,
  `pan2` varchar(50) DEFAULT NULL,
  `pan3` varchar(50) DEFAULT NULL,
  `imcategory` double DEFAULT NULL,
  `guardiann0` varchar(100) DEFAULT NULL,
  `nominee` varchar(100) DEFAULT NULL,
  `clientid` varchar(30) DEFAULT NULL,
  `dpid` varchar(30) DEFAULT NULL,
  `categoryd1` varchar(100) DEFAULT NULL,
  `statusdesc` varchar(100) DEFAULT NULL,
  `ifsc` varchar(30) DEFAULT NULL,
  `nominee2` varchar(100) DEFAULT NULL,
  `nominee3` varchar(100) DEFAULT NULL,
  `kyc1flag` varchar(10) DEFAULT NULL,
  `kyc2flag` varchar(10) DEFAULT NULL,
  `kyc3flag` varchar(10) DEFAULT NULL,
  `guardpanno` varchar(20) DEFAULT NULL,
  `lastupdat2` date DEFAULT NULL,
  `can` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `karvydata`
--

CREATE TABLE `karvydata` (
  `fmcode` varchar(10) DEFAULT NULL,
  `td_fund` varchar(4) DEFAULT NULL,
  `td_scheme` varchar(2) DEFAULT NULL,
  `td_plan` varchar(2) DEFAULT NULL,
  `td_acno` double DEFAULT NULL,
  `schpln` varchar(4) DEFAULT NULL,
  `divopt` varchar(1) DEFAULT NULL,
  `funddesc` varchar(200) DEFAULT NULL,
  `td_purred` varchar(1) DEFAULT NULL,
  `td_trno` double DEFAULT NULL,
  `smcode` double DEFAULT NULL,
  `chqno` varchar(20) DEFAULT NULL,
  `invname` varchar(80) DEFAULT NULL,
  `trnmode` varchar(1) DEFAULT NULL,
  `trnstat` varchar(1) DEFAULT NULL,
  `td_branch` varchar(50) DEFAULT NULL,
  `isctrno` double DEFAULT NULL,
  `td_trdt` date DEFAULT NULL,
  `td_prdt` date DEFAULT NULL,
  `td_units` double DEFAULT NULL,
  `td_amt` double DEFAULT NULL,
  `td_agent` varchar(20) DEFAULT NULL,
  `td_broker` varchar(20) DEFAULT NULL,
  `brokper` varchar(1) DEFAULT NULL,
  `brokcomm` varchar(1) DEFAULT NULL,
  `invid` varchar(1) DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `crtime` varchar(6) DEFAULT NULL,
  `trnsub` varchar(1) DEFAULT NULL,
  `td_appno` varchar(20) DEFAULT NULL,
  `unqno` varchar(50) DEFAULT NULL,
  `trdesc` varchar(40) DEFAULT NULL,
  `td_trtype` varchar(10) DEFAULT NULL,
  `navdate` date DEFAULT NULL,
  `portdt` date DEFAULT NULL,
  `assettype` varchar(30) DEFAULT NULL,
  `subtrtype` varchar(30) DEFAULT NULL,
  `citycateg0` varchar(50) DEFAULT NULL,
  `euin` varchar(20) DEFAULT NULL,
  `trcharges` double DEFAULT NULL,
  `clientid` varchar(20) DEFAULT NULL,
  `dpid` varchar(20) DEFAULT NULL,
  `stt` double DEFAULT NULL,
  `ihno` double DEFAULT NULL,
  `branchcode` varchar(10) DEFAULT NULL,
  `inwardnum1` varchar(15) DEFAULT NULL,
  `pan1` varchar(20) DEFAULT NULL,
  `pan2` varchar(20) DEFAULT NULL,
  `pan3` varchar(20) DEFAULT NULL,
  `tdsamount` double DEFAULT NULL,
  `chqdate` date DEFAULT NULL,
  `chqbank` varchar(40) DEFAULT NULL,
  `trflag` varchar(5) DEFAULT NULL,
  `load1` double DEFAULT NULL,
  `brok_entdt` date DEFAULT NULL,
  `nctremarks` varchar(200) DEFAULT NULL,
  `prcode1` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `schemeisin` varchar(30) DEFAULT NULL,
  `td_nav` varchar(30) DEFAULT NULL,
  `insamount` double DEFAULT NULL,
  `rejtrnoor2` varchar(20) DEFAULT NULL,
  `evalid` varchar(40) DEFAULT NULL,
  `edeclflag` varchar(40) DEFAULT NULL,
  `subarncode` varchar(40) DEFAULT NULL,
  `atmcardre3` varchar(250) DEFAULT NULL,
  `atmcardst4` varchar(30) DEFAULT NULL,
  `sch1` varchar(4) DEFAULT NULL,
  `pln1` varchar(4) DEFAULT NULL,
  `td_trxnmo5` varchar(20) DEFAULT NULL,
  `newunqno` varchar(200) DEFAULT NULL,
  `sipregdt` date DEFAULT NULL,
  `sipregslno` double DEFAULT NULL,
  `divper` double DEFAULT NULL,
  `can` varchar(30) DEFAULT NULL,
  `exchorgtr6` varchar(20) DEFAULT NULL,
  `electrxnf7` varchar(1) DEFAULT NULL,
  `td_pop` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `navdata`
--

CREATE TABLE `navdata` (
  `SchemeCode` varchar(200) DEFAULT NULL,
  `ISIN_Div_Payout_ISIN_Growth` varchar(30) DEFAULT NULL,
  `ISIN_Div_Reinvestment` varchar(30) DEFAULT NULL,
  `SchemeName` varchar(200) DEFAULT NULL,
  `NetAssetValue` decimal(10,5) DEFAULT NULL,
  `RepurchasePrice` decimal(10,5) DEFAULT NULL,
  `SalePrice` decimal(10,5) DEFAULT NULL,
  `Date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Table structure for table `newcamsdata`
--

CREATE TABLE `newcamsdata` (
  `amc_code` varchar(5) DEFAULT NULL,
  `folio_no` varchar(25) DEFAULT NULL,
  `prodcode` varchar(10) DEFAULT NULL,
  `scheme` varchar(120) DEFAULT NULL,
  `inv_name` varchar(80) DEFAULT NULL,
  `trxntype` varchar(10) DEFAULT NULL,
  `trxnno` double NOT NULL,
  `trxnmode` varchar(4) DEFAULT NULL,
  `trxnstat` varchar(4) DEFAULT NULL,
  `usercode` varchar(15) DEFAULT NULL,
  `usrtrxno` double DEFAULT NULL,
  `traddate` varchar(30) DEFAULT NULL,
  `postdate` varchar(30) DEFAULT NULL,
  `purprice` double DEFAULT NULL,
  `units` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `brokcode` varchar(25) DEFAULT NULL,
  `subbrok` varchar(35) DEFAULT NULL,
  `brokperc` double DEFAULT NULL,
  `brokcomm` double DEFAULT NULL,
  `altfolio` double DEFAULT NULL,
  `rep_date` varchar(30) DEFAULT NULL,
  `time1` varchar(8) DEFAULT NULL,
  `trxnsubtyp` varchar(10) DEFAULT NULL,
  `applicatio` varchar(25) DEFAULT NULL,
  `trxn_natur` varchar(85) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total_tax` double DEFAULT NULL,
  `te_15h` varchar(5) DEFAULT NULL,
  `micr_no` varchar(45) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `swflag` varchar(15) DEFAULT NULL,
  `old_folio` varchar(35) DEFAULT NULL,
  `seq_no` double DEFAULT NULL,
  `reinvest_f` varchar(4) DEFAULT NULL,
  `mult_brok` varchar(36) DEFAULT NULL,
  `stt` double DEFAULT NULL,
  `location` varchar(35) DEFAULT NULL,
  `scheme_typ` varchar(20) DEFAULT NULL,
  `tax_status` varchar(40) DEFAULT NULL,
  `loads` double DEFAULT NULL,
  `scanrefno` varchar(55) DEFAULT NULL,
  `pan` varchar(25) DEFAULT NULL,
  `inv_iin` double DEFAULT NULL,
  `targ_src_s` varchar(120) DEFAULT NULL,
  `trxn_type_` varchar(35) DEFAULT NULL,
  `ticob_trty` varchar(5) DEFAULT NULL,
  `ticob_trno` varchar(5) DEFAULT NULL,
  `ticob_post` varchar(5) DEFAULT NULL,
  `dp_id` varchar(25) DEFAULT NULL,
  `trxn_charg` double DEFAULT NULL,
  `eligib_amt` double DEFAULT NULL,
  `src_of_txn` varchar(18) DEFAULT NULL,
  `trxn_suffi` varchar(180) DEFAULT NULL,
  `siptrxnno` double DEFAULT NULL,
  `ter_locati` varchar(4) DEFAULT NULL,
  `euin` varchar(25) DEFAULT NULL,
  `euin_valid` varchar(4) DEFAULT NULL,
  `euin_opted` varchar(4) DEFAULT NULL,
  `sub_brk_ar` varchar(25) DEFAULT NULL,
  `exch_dc_fl` varchar(4) DEFAULT NULL,
  `src_brk_co` varchar(25) DEFAULT NULL,
  `sys_regn_d` varchar(30) DEFAULT NULL,
  `ac_no` varchar(50) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `reversal_c` double DEFAULT NULL,
  `exchange_f` varchar(5) DEFAULT NULL,
  `ca_initiat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- --------------------------------------------------------

--
-- Table structure for table `newkarvydata`
--

CREATE TABLE `newkarvydata` (
  `fmcode` varchar(10) DEFAULT NULL,
  `td_fund` varchar(4) DEFAULT NULL,
  `td_scheme` varchar(2) DEFAULT NULL,
  `td_plan` varchar(2) DEFAULT NULL,
  `td_acno` double DEFAULT NULL,
  `schpln` varchar(4) DEFAULT NULL,
  `divopt` varchar(1) DEFAULT NULL,
  `funddesc` varchar(200) DEFAULT NULL,
  `td_purred` varchar(1) DEFAULT NULL,
  `td_trno` double DEFAULT NULL,
  `smcode` double DEFAULT NULL,
  `chqno` varchar(20) DEFAULT NULL,
  `invname` varchar(80) DEFAULT NULL,
  `trnmode` varchar(1) DEFAULT NULL,
  `trnstat` varchar(1) DEFAULT NULL,
  `td_branch` varchar(50) DEFAULT NULL,
  `isctrno` double DEFAULT NULL,
  `td_trdt` date DEFAULT NULL,
  `td_prdt` date DEFAULT NULL,
  `td_units` double DEFAULT NULL,
  `td_amt` double DEFAULT NULL,
  `td_agent` varchar(20) DEFAULT NULL,
  `td_broker` varchar(20) DEFAULT NULL,
  `brokper` varchar(1) DEFAULT NULL,
  `brokcomm` double DEFAULT NULL,
  `invid` varchar(1) DEFAULT NULL,
  `crdate` date DEFAULT NULL,
  `crtime` varchar(6) DEFAULT NULL,
  `trnsub` varchar(1) DEFAULT NULL,
  `td_appno` varchar(20) DEFAULT NULL,
  `unqno` varchar(50) DEFAULT NULL,
  `trdesc` varchar(40) DEFAULT NULL,
  `td_trtype` varchar(10) DEFAULT NULL,
  `navdate` date DEFAULT NULL,
  `portdt` date DEFAULT NULL,
  `assettype` varchar(30) DEFAULT NULL,
  `subtrtype` varchar(30) DEFAULT NULL,
  `citycateg0` varchar(50) DEFAULT NULL,
  `euin` varchar(20) DEFAULT NULL,
  `trcharges` double DEFAULT NULL,
  `clientid` varchar(20) DEFAULT NULL,
  `dpid` varchar(20) DEFAULT NULL,
  `stt` double DEFAULT NULL,
  `ihno` double DEFAULT NULL,
  `branchcode` varchar(10) DEFAULT NULL,
  `inwardnum1` varchar(15) DEFAULT NULL,
  `pan1` varchar(20) DEFAULT NULL,
  `pan2` varchar(20) DEFAULT NULL,
  `pan3` varchar(20) DEFAULT NULL,
  `tdsamount` double DEFAULT NULL,
  `chqdate` date DEFAULT NULL,
  `chqbank` varchar(40) DEFAULT NULL,
  `trflag` varchar(5) DEFAULT NULL,
  `load1` double DEFAULT NULL,
  `brok_entdt` date DEFAULT NULL,
  `nctremarks` varchar(200) DEFAULT NULL,
  `prcode1` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `schemeisin` varchar(30) DEFAULT NULL,
  `td_nav` varchar(30) DEFAULT NULL,
  `insamount` double DEFAULT NULL,
  `rejtrnoor2` varchar(20) DEFAULT NULL,
  `evalid` varchar(40) DEFAULT NULL,
  `edeclflag` varchar(40) DEFAULT NULL,
  `subarncode` varchar(40) DEFAULT NULL,
  `atmcardre3` varchar(250) DEFAULT NULL,
  `atmcardst4` varchar(30) DEFAULT NULL,
  `sch1` varchar(4) DEFAULT NULL,
  `pln1` varchar(4) DEFAULT NULL,
  `td_trxnmo5` varchar(20) DEFAULT NULL,
  `newunqno` varchar(200) DEFAULT NULL,
  `sipregdt` date DEFAULT NULL,
  `divper` double DEFAULT NULL,
  `td_pop` double DEFAULT NULL,
  `electrxnf6` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `camsdata`
--
ALTER TABLE `camsdata`
  ADD UNIQUE KEY `seq_no` (`seq_no`);

--
-- Indexes for table `karvydata`
--
ALTER TABLE `karvydata`
  ADD UNIQUE KEY `unqno` (`unqno`);

--
-- Indexes for table `newcamsdata`
--
ALTER TABLE `newcamsdata`
  ADD UNIQUE KEY `seq_no` (`seq_no`);

--
-- Indexes for table `newkarvydata`
--
ALTER TABLE `newkarvydata`
  ADD UNIQUE KEY `unqno` (`unqno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
