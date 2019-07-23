-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2019 at 02:40 PM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `names` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `names`, `address`, `region`, `country`, `email`, `phone`) VALUES
(1, 'Arden Joseph', 'P.O. Box 285, 8865 Augue Road', 'NI', 'Mauritius', 'pede.Cras.vulputate@Sedegetlacus.com', '3116807407273'),
(2, 'Elton Caldwell', '7904 Bibendum Avenue', 'Istanbul', 'Gibraltar', 'tellus@sit.co.uk', '3406264950774'),
(3, 'Fletcher Hernandez', 'Ap #457-4545 Feugiat. St.', 'Maryland', 'French Polynesia', 'lorem@velarcu.net', '3710771878241'),
(4, 'Camden Mann', '6350 Vehicula. Avenue', 'Montana', 'Bouvet Island', 'ultrices@in.net', '1835928979980'),
(5, 'Uriah Gates', 'P.O. Box 487, 8965 Arcu. St.', 'Ontario', 'Grenada', 'eros.turpis.non@fermentum.ca', '6790621732585'),
(6, 'Rooney Sloan', 'Ap #114-2153 Mi. Street', 'Vienna', 'El Salvador', 'commodo.auctor.velit@dignissimMaecenas.com', '6123615590753'),
(7, 'Jermaine Pope', '8858 Egestas St.', 'Orkney', 'Gambia', 'fringilla.cursus@utpellentesque.co.uk', '8040271954805'),
(8, 'Oleg Vaughan', '746-1434 Mollis. Road', 'WB', 'Georgia', 'in.lobortis.tellus@Donecelementum.com', '8136986955478'),
(9, 'Ignatius Mcgowan', '3161 Lacinia St.', 'BU', 'Qatar', 'sapien.Aenean.massa@Fuscemilorem.org', '5808183538296'),
(10, 'Quentin Ortiz', 'P.O. Box 196, 7226 Tellus. Street', 'Manisa', 'Iraq', 'nibh.Phasellus@rhoncusDonecest.ca', '0044135873584'),
(11, 'Ashton Pratt', '9380 Mauris. Street', 'Rivers', 'Hong Kong', 'pellentesque@ipsumleoelementum.org', '7664372063495'),
(12, 'Dexter Horn', '4385 Imperdiet Rd.', 'C', 'Zimbabwe', 'lobortis.quis@tincidunt.ca', '7654179762351'),
(13, 'Austin Velazquez', 'P.O. Box 159, 523 Nullam St.', 'Ontario', 'Colombia', 'Ut.sagittis.lobortis@nec.edu', '7234816024093'),
(14, 'Salvador Ballard', 'Ap #248-4848 Neque St.', 'AN', 'Tonga', 'Integer@semelit.co.uk', '3019103161383'),
(15, 'Xenos Stephens', '396-1696 Vulputate Ave', 'WA', 'Serbia', 'mi.Duis.risus@risusQuisquelibero.org', '7870819269272'),
(16, 'Quentin Stephenson', 'Ap #138-2987 Molestie St.', 'Connacht', 'Mali', 'auctor.Mauris@atarcu.edu', '0403622937181'),
(17, 'Paul Short', '5334 Vel Street', 'NI', 'Tanzania', 'ornare.elit@natoquepenatibuset.ca', '7851765000029'),
(18, 'Len Cervantes', '1021 Nunc Rd.', 'Andalucía', 'Uzbekistan', 'eu.turpis.Nulla@vitaeerat.ca', '2909077743373'),
(19, 'Giacomo Patton', '3555 In Ave', 'Corse', 'Sudan', 'mollis.Phasellus@duiCum.com', '6338158727528'),
(20, 'Hasad Roberson', 'P.O. Box 338, 2193 Eget, Street', 'AP', 'Andorra', 'pellentesque@vitaesodales.ca', '8405428115715'),
(21, 'Arsenio Kirk', '4310 Elit. Rd.', 'Gl', 'Peru', 'fringilla@acrisus.edu', '5831662507393'),
(22, 'Chandler Mckee', 'Ap #941-598 Est Avenue', 'North Island', 'Cyprus', 'sit@Nullaegetmetus.co.uk', '0553931094330'),
(23, 'Dylan Carroll', 'P.O. Box 882, 6676 Ipsum Ave', 'NSW', 'Saudi Arabia', 'eu.odio.tristique@velarcu.co.uk', '1821542721240'),
(24, 'Dylan Whitney', '484-2503 Accumsan Av.', 'NB', 'Monaco', 'pretium.et@quispede.net', '5379777691664'),
(25, 'Carter Beck', 'Ap #534-535 Aliquam Rd.', 'Virginia', 'Reunion', 'sed.dui@blandit.ca', '7838926302136'),
(26, 'Hamilton Thompson', '666-4164 Dis Street', 'IM', 'Bouvet Island', 'egestas.ligula@Aeneaneget.ca', '9385820123248'),
(27, 'Ross Duran', 'Ap #384-6266 Eu St.', 'BA', 'Poland', 'condimentum@scelerisquemollis.edu', '6409018415451'),
(28, 'Wyatt Sears', 'P.O. Box 893, 4890 Rutrum Street', 'Manitoba', 'Singapore', 'pede.Cum.sociis@Donecvitaeerat.org', '8390561469195'),
(29, 'Eric Strong', 'Ap #807-1088 Interdum Rd.', 'Wie', 'Lebanon', 'lorem.vitae.odio@Phaselluslibero.co.uk', '3542588759143'),
(30, 'Zeph Jarvis', 'Ap #710-8370 Magna St.', 'Wie', 'Guatemala', 'velit.Cras@faucibusut.org', '8999915820798'),
(31, 'Arthur Dean', '706-6354 Penatibus St.', 'South Island', 'Albania', 'sociis.natoque.penatibus@elementum.net', '0333517055412'),
(32, 'Russell Smith', '359-8722 Turpis Rd.', 'Niger', 'Korea, South', 'ridiculus.mus@sitamet.org', '2144935261221'),
(33, 'Howard Clay', 'Ap #925-5464 Nisl. St.', 'Wie', 'Egypt', 'netus.et@inmagnaPhasellus.net', '9824104638413'),
(34, 'Adam Edwards', 'Ap #485-3485 Nulla Street', 'Berlin', 'Western Sahara', 'tristique@disparturient.com', '5160574493790'),
(35, 'Nash Wilder', '549-4466 Cursus Avenue', 'Vienna', 'Liechtenstein', 'ligula.tortor.dictum@nisi.net', '2840208607277'),
(36, 'Shad Burris', 'P.O. Box 700, 9688 Nunc Rd.', 'NI', 'Suriname', 'nulla.Integer@velvulputateeu.edu', '5724604078209'),
(37, 'Herman Petersen', 'Ap #442-7211 Suspendisse St.', 'British Columbia', 'Bonaire, Sint Eustatius and Saba', 'ullamcorper.magna@elitpharetra.co.uk', '5575693081998'),
(38, 'Harlan Delgado', '749-7049 Ornare Ave', 'ON', 'Djibouti', 'luctus@infaucibus.ca', '9535820191699'),
(39, 'Warren Fletcher', 'Ap #683-3584 Orci Street', 'Zeeland', 'Montenegro', 'consequat.purus@convallis.co.uk', '9044811664555'),
(40, 'Hayes Wallace', 'Ap #249-3744 Elit Av.', 'Hat', 'Mayotte', 'lorem.eget@augue.co.uk', '7925142997585'),
(41, 'Dolan Bartlett', 'Ap #588-4364 Nec St.', 'WB', 'South Sudan', 'sit.amet.metus@imperdietornare.com', '9189392789859'),
(42, 'Adam Battle', 'Ap #532-6559 Nisi Ave', 'Nord-Pas-de-Calais', 'Bhutan', 'ac.turpis@diam.org', '4348822744602'),
(43, 'Zephania Hewitt', 'Ap #341-874 Ligula. Road', 'North Island', 'Cuba', 'lorem@Vivamussit.com', '1767149614128'),
(44, 'Derek Holloway', '5683 Urna Road', 'Maryland', 'Jersey', 'sed.pede.nec@cursusNunc.co.uk', '0824467533043'),
(45, 'Ivan Stevenson', '4643 Et, Avenue', 'Hawaii', 'Guinea-Bissau', 'eleifend.nunc@rutrum.ca', '3920912547811'),
(46, 'Dominic Larson', 'P.O. Box 616, 6892 Dui. Rd.', 'Istanbul', 'Guam', 'nulla.In@pedePraesent.ca', '8312005613473'),
(47, 'Kadeem Aguilar', 'P.O. Box 466, 3575 Phasellus Street', 'São Paulo', 'Saint Martin', 'mi.lorem.vehicula@nisiCum.co.uk', '6946334123246'),
(48, 'Galvin Roy', '4003 Ridiculus Rd.', 'AN', 'Belarus', 'interdum.ligula@Maecenas.net', '9285223626247'),
(49, 'Stephen Sosa', '6012 Sed Av.', 'L', 'India', 'enim@pedeblanditcongue.ca', '8150903840417'),
(50, 'Keith Rogers', '467-2652 Sed Rd.', 'NI', 'Cayman Islands', 'In@cursuset.ca', '4154638295085'),
(51, 'Hu Cochran', '108-4186 Dui, Ave', 'Ontario', 'Seychelles', 'Aliquam.ornare.libero@Suspendissenonleo.net', '4250856110500'),
(52, 'Richard Carter', '591-8604 Rutrum, Road', 'PIE', 'Burundi', 'fringilla@aliquam.org', '2685370879913'),
(53, 'Shad Taylor', 'Ap #920-7636 Tristique Avenue', 'KO', 'Laos', 'dictum.eu.eleifend@Aenean.net', '0226949158312'),
(54, 'Emmanuel Lindsey', 'P.O. Box 883, 7122 Fusce Rd.', 'Queensland', 'Libya', 'lorem@Donec.org', '2883121151863'),
(55, 'Reuben Bryan', 'Ap #816-8077 Pretium Rd.', 'Queensland', 'Zambia', 'imperdiet.dictum.magna@musProin.com', '1843467797264'),
(56, 'Noble Gaines', 'P.O. Box 518, 5197 Eu Road', 'MO', 'Virgin Islands, British', 'augue.eu.tellus@adipiscing.co.uk', '5117971084119'),
(57, 'Zachery Burns', '5830 Scelerisque Street', 'Ceará', 'Guernsey', 'aliquam.arcu.Aliquam@etrutrumnon.net', '4589168561925'),
(58, 'Ivor Porter', 'P.O. Box 623, 3894 Semper Street', 'NA', 'Jersey', 'eleifend.vitae.erat@Nam.org', '6735282224270'),
(59, 'Ronan Glass', '8693 Nisl St.', 'II', 'Viet Nam', 'suscipit.est.ac@auctornunc.edu', '9522896461666'),
(60, 'Addison Coffey', '587-3185 Velit. St.', 'Vienna', 'Falkland Islands', 'tincidunt.nibh.Phasellus@tortor.co.uk', '4856889950887'),
(61, 'Honorato Vega', 'P.O. Box 767, 1579 Gravida St.', 'Victoria', 'Gabon', 'odio.semper.cursus@tincidunt.ca', '8194706387077'),
(62, 'Clayton Bruce', 'Ap #305-8566 Pulvinar Street', 'C', 'Monaco', 'magna@dui.com', '5509369477239'),
(63, 'Zephania Solomon', '807-3769 Justo. Avenue', 'Vermont', 'Andorra', 'consequat.auctor@nuncid.edu', '3537441120172'),
(64, 'Carlos Mooney', '392-7920 Vel, Street', 'Ontario', 'Liberia', 'eros@pharetraQuisqueac.co.uk', '3459371503546'),
(65, 'Lane Reese', '3558 Sit Street', 'Namen', 'Cook Islands', 'Duis.volutpat@sociisnatoquepenatibus.edu', '3526413370355'),
(66, 'Kareem Russell', 'Ap #728-4306 Vel St.', 'HI', 'Morocco', 'a.enim@magnaPhasellusdolor.ca', '1224024248513'),
(67, 'Aladdin Morgan', 'P.O. Box 729, 8438 Eu Ave', 'Mississippi', 'Gabon', 'ligula.Aenean@egestashendreritneque.ca', '4736619227018'),
(68, 'Tanek Fry', '152-6094 Vel Street', 'Noord Holland', 'Liberia', 'In.ornare.sagittis@nasceturridiculusmus.edu', '6620670707073'),
(69, 'Kenyon Owens', 'Ap #625-1136 Nunc. St.', 'KP', 'Tonga', 'nec.luctus.felis@Maecenasmifelis.org', '5486557577834'),
(70, 'Talon Prince', 'Ap #829-686 Semper St.', 'Östergötlands län', 'France', 'aliquet@tempor.com', '4894474945931'),
(71, 'Quinn Mccarty', '571-8184 Non, Av.', 'Aragón', 'Bahrain', 'feugiat@dapibusgravida.net', '3122957359353'),
(72, 'Nissim Hancock', 'Ap #992-5859 Semper. Rd.', 'X', 'Djibouti', 'Cum.sociis@Duis.net', '1728244520723'),
(73, 'Thane Daniel', 'Ap #564-7412 Rutrum Road', 'NI', 'Maldives', 'mus.Donec@auctorMauris.co.uk', '7565607064555'),
(74, 'Lars Snyder', 'Ap #580-2664 Augue Avenue', 'Overijssel', 'Cocos (Keeling) Islands', 'in.molestie@eratvelpede.co.uk', '8021926187043'),
(75, 'Burton Foley', 'Ap #173-4749 Mi, Rd.', 'O', 'Jordan', 'facilisis@facilisi.edu', '1857245100069'),
(76, 'Isaiah Irwin', 'P.O. Box 647, 5251 Feugiat Street', 'North Island', 'Swaziland', 'amet@ut.edu', '0005923089695'),
(77, 'Jack Fulton', 'P.O. Box 569, 6456 Mauris Avenue', 'SI', 'Bahamas', 'non@augueSedmolestie.co.uk', '4439627391919'),
(78, 'Anthony Boyle', '827-4202 Urna Av.', 'HB', 'Lebanon', 'tellus.eu@semsempererat.com', '2135095037547'),
(79, 'Tiger Cohen', '933 At Road', 'Ontario', 'United Arab Emirates', 'tristique.pharetra@sapien.co.uk', '6249719207229'),
(80, 'Erasmus Fox', '2509 Lorem. Av.', 'QC', 'Timor-Leste', 'vitae@pedenecante.edu', '0697905297565'),
(81, 'Axel Roth', 'P.O. Box 171, 494 Montes, Street', 'DE', 'Guinea', 'in.consectetuer@sed.org', '9430608706217'),
(82, 'Mohammad Maldonado', '5601 Sed Avenue', 'X', 'Virgin Islands, United States', 'Proin.non@viverraMaecenas.edu', '5045429499780'),
(83, 'Dillon Chan', 'Ap #685-833 Arcu. Rd.', 'FL', 'Jersey', 'molestie@justofaucibus.com', '7576058299045'),
(84, 'Jonas Romero', 'Ap #728-3970 Massa Rd.', 'Minnesota', 'Tuvalu', 'sem.ut@blanditat.net', '6570228248897'),
(85, 'Reese Noble', 'Ap #863-9474 Facilisis, Street', 'East Lothian', 'Belgium', 'Donec.tempus@auguemalesuadamalesuada.co.uk', '3737844096325'),
(86, 'Christian Blake', '2234 A, Rd.', 'Ist', 'Palestine, State of', 'molestie@nislMaecenas.net', '5048703779623'),
(87, 'Judah Brady', 'P.O. Box 115, 7066 Nisi. Rd.', 'Catalunya', 'Guinea', 'sed.dolor@posuere.edu', '3479240791287'),
(88, 'Xander Kidd', '284-3990 Est, Av.', 'Ontario', 'Finland', 'Proin.vel.nisl@Aliquam.net', '1090987776145'),
(89, 'Mohammad Hawkins', '801-6225 Felis. Rd.', 'QLD', 'Hong Kong', 'lorem.fringilla.ornare@Fuscealiquamenim.net', '6766767832594'),
(90, 'Wade Ferguson', 'Ap #302-3816 Accumsan Av.', 'MU', 'Saint Barthélemy', 'pretium@magnis.net', '6754971370810'),
(91, 'Blaze Blevins', 'P.O. Box 500, 9831 Facilisis St.', 'Waals-Brabant', 'Saudi Arabia', 'sit@etpedeNunc.org', '5361758026796'),
(92, 'Zane Reilly', '8216 Facilisis, Ave', 'Vienna', 'Zambia', 'nulla.at@et.co.uk', '2871430317919'),
(93, 'Malik Patton', 'P.O. Box 743, 7956 Dui, Avenue', 'KY', 'Micronesia', 'ac.urna@pulvinar.com', '4210429619632'),
(94, 'Carson Blackwell', '3015 Morbi Avenue', 'Ulster', 'Oman', 'cursus.Nunc.mauris@faucibusorciluctus.co.uk', '4446452886025'),
(95, 'Lamar Potts', 'P.O. Box 263, 3365 Orci Av.', 'Ontario', 'Malta', 'in.cursus.et@ullamcorpernislarcu.edu', '2489458928647'),
(96, 'Coby Hale', '376-1622 Massa. Road', 'X', 'Tanzania', 'Mauris@urna.net', '3789324066929'),
(97, 'Jelani Jensen', 'Ap #843-2989 Nec Street', 'ERM', 'Burkina Faso', 'Vestibulum.ut@nunc.com', '9405951661038'),
(98, 'Byron Horne', 'P.O. Box 975, 1408 Dictum Av.', 'Biobío', 'Sao Tome and Principe', 'sit.amet.orci@lobortisauguescelerisque.ca', '0967042029867'),
(99, 'Chase Humphrey', '507-4731 Massa St.', 'VIC', 'Greenland', 'sapien@quis.ca', '0537072037205'),
(100, 'Igor Finley', '144 Dis Avenue', 'ON', 'Côte D\'Ivoire (Ivory Coast)', 'vitae@Phasellus.edu', '2609898261532');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
