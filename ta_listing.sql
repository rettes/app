-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 29, 2020 at 02:08 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE `ta_listing`;
USE `ta_listing`;
--s
-- Database: `ta_listing`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `USER_ID` varchar(15) NOT NULL,
  `HASHED_PASSWORD` varchar(256) NOT NULL,
  `EMAIL` varchar(32) NOT NULL,
  `USER_TYPE` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`USER_ID`, `HASHED_PASSWORD`, `EMAIL`, `USER_TYPE`) VALUES
('admin', '6195c50590ea85adc6a1735508e173ecbf410a4765ea303addeafd33d6b7fe5d95d0916dd6efb652f3aab2da04595c9478896e82ec5b7f330e5f268ec7b19038df3eca9d40cdcc0a8436adf4928b06fcb6b82612ec60a9b516205e397c8c43e1', 'admin@smu.edu.sg', 'admin'),
('cposkitt', '81863954779856f60c6252a1858f8e6b12aa7c69cf7f581e3611d28ebe62b87b90b0d8ef8846025022e092525bea4b1232c072c301077baaf8e2ab9fc056aa3752914022f5f772b3886a8ecf9a0bdf56cfbc4ed1a778b0bc478c01b39abf385f', 'cposkitt@smu.edu.sg', 'professor'),
('davidlo', '3a776eabfa2973b0cc6603fa1e37c80556da0d5dfb8e78cc0a83b2ffe962db121efc736b91bbcd0d4a1f267e12a6357ed794c5e813b95b30e0b0e33493be1aa4428cc6e96bceef8b24f4a9ce48b30081d4ebb1c3797615d860cba1e74eeb4878', 'davidlo@smu.edu.sg', 'professor'),
('elouh', 'd938dfa6b07a7b470cef62a0bdadfc6da6071cad9f1228e283cf9c25b4ae3dbd11ca717445f61c8970d99f194982251f57198e484671b47e3c430065227b0af7ccc92da82e754b1da1587779ea216b11f341d01d22495ad20692b2000a27dcb6', 'elouh@smu.edu.sg', 'professor'),
('john.2017', '6032d61f9bceb2f4870b1b97aca9e639bc2f85323aeb4539ceab38c7066a7ba6c25540014b2ba0417fb936719a71da8afa09cd10e9c46b5268c3c16a74461c0633f11d6267e99b80ee135c273750a45dfde536e13a5e9d2891a5bc2166c1b082', 'john.2017@sis.smu.edu.sg', 'student'),
('junsun', 'b7147cd5a8d2eb1331fc44c7b0f3fd895bd0ae776ac87222ec53e76ce826edabf547221b4ebce30a655aa322c4e06554886923f4150b659225d1d9d3e8ff816bce6020c104b0695f88df9286f29669c7daec012490da6f345870492640c569fc', 'junsun@smu.edu.sg', 'professor'),
('kjshim', 'a04995817b2706e0988472580ddacea3a8b7a5d98b4d50656d3c6dc9d62ff529e6ee417f3705cbf27ef0368442540afdb6ac57e87ae5bc31359461406350f969661224fe75e4db4b059bf92df244af7883aee79934df0419ed474ae4afca1810', 'kjshim@smu.edu.sg', 'professor'),
('lkshar', '523d30080dd5507d8ab184a1450b0d8f22fae7765428db4fd486c0496a76eecbf8013ca9fb19f2f1fde23d63cc8c55ef8e1dbd2b5e607a486c293e39e2c9ada4557f5cc1abf47e61b95fda4d28ad098400b3933c3f562b49012fdb050bd36d6f', 'lkshar@smu.edu.sg', 'professor'),
('lxjiang', '876a912c9cfe1fe4f07dacb7b5f9f7d5437aad27d2619e1b374c1f95aae590bb4c590c90d5dc9ab168798bf62e3e39d85c72e3e52d1b9e3396d9a6d22e091ff8e2f8de84d316fc9e11825b9e14c80350598957788c892c999beb1c6f9d2eed92', 'lxjiang@smu.edu.sg', 'professor'),
('mary.2018', 'de10d109b13dc22c0b7f82bc30c003bba8731ceadb35f87d8dbe044217c98ec6a7c31c764497f923630f7f61309f742e41a2fc9352b76edbe8113a8d9da02d501842958e8bd66a1922902206ecbf3429395bb510dcfbb7f37d9feb257c1e0233', 'mary.2018@sis.smu.edu.sg', 'student'),
('rafaelbarros', 'd3965b4703cb1535aa0d639f93d8b7903b03e9f70ea06f2730edbf18fcf437a5dd687c97010c9c653dfb017ed34e1bf3ac90cd2e79f26325d633599a513720caa54e571e17df95f58f8fde5cafc53022594232e2e0d4e1adb2510a0f0d52cc40', 'rafaelbarros@smu.edu.sg', 'professor'),
('rajesh', 'd70186a357feb175bf40a0777e3d8e26208e8087a562555d6e2179a0bff697a766f1c6c559ea879fe4e1b1269ab9dd3f55ca160b4e20ff947b01c4697d1eda4e7d1a27a986ac5172762e890ac405d288aeb2d07d9778a1ba4158f0507510c374', 'rajesh@smu.edu.sg', 'professor'),
('subhajitd', '769b3f501ba0757888a4e796fa563a2c21b6c4b5587e7e27fcdb29d57b2d482c9bb42101e9193456b30f9621abefbd17ffb9a937f1505b325dd4ef678f30d7f7', 'subhajitd@smu.edu.sg', 'professor'),
('swapnag', 'bc790da13442713b1e30edfbe1d82f36ddb819472588a6d789672d0e2b78401b24639bfdb2581aae76d9d9a244981229a07ecd9475d90e69b47380e3f1f82f13a20703110cc9347c98389552845f3ea7ae1e287671a71e778342e7a987d3727d', 'swapnag@smu.edu.sg', 'professor'),
('tom.2017', '16d89caa318c2b9b028cf81366d227a4fb77c02f3ec20bc27f24c64ebfc3a7b230be6a2e6e37c4b171df115ccc6a01294dae073c2c586f4057c319b4af371b003d8d27e69f37547f90e4f68c07718a422f9af24ab00ca086a594e19a169ea51d', 'tom.2017@sis.smu.edu.sg', 'student'),
('xiaohua.2017', '0132459b8c839ec5acdb534f70d4969dff5bcf791770eb87c4907e8c7ee96e7db2942087f19f9f341e48a0e47cddc9ce8b4c0da7b2f2835b52a15a3438fb24f9cc30950521a385dc98c6881375ffe2f87646d02bd6d0e7e8e8be8431aac89340', 'xiaohua.2017@soe.smu.edu.sg', 'student'),
('xiaoli.2018', '5749ace379ba5565d6f46de5f78f2e3b3578b9846cb54668275c79e67d60a98c1ca2b7af5dc2e1b46d1e0fd728638b3ff34d60b19d227129cb12f3266270084562730453115330b1b800c20fd68cce4076d80ec8ae344f2b914bd7f0abad3c77', 'xiaoli.2018@soe.smu.edu.sg', 'student'),
('yllee', '59df546881c02be09c1f5b495c0ce5c1eeb276534d04c8ebca287d54aa8a504e9976c44f5cdbc2d56c2d511de0f1ebc93982829e2d8495e5b357fd50307df817b6f20549c6d2a7007abbdc1f362ceb8b4da4acb510e9fe5c05fd7b5d4d7450f7', 'yllee@smu.edu.sg', 'professor');

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `STUDENT_NAME` varchar(30) NOT NULL,
  `STUDENT_ID` varchar(15) NOT NULL,
  `APPLICATION_NO` int(11) NOT NULL,
  `STATUS` tinyint(3) NOT NULL,
  `MOD_ID` varchar(30) NOT NULL,
  `PROFESSOR_NAME` varchar(20) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`STUDENT_NAME`, `STUDENT_ID`, `APPLICATION_NO`, `STATUS`, `MOD_ID`, `PROFESSOR_NAME`, `PROFESSOR_ID`) VALUES
('Mary Lim', 'mary.2018', 1, 2, 'IS442_2019_2_G1', 'Rajesh Krishna BALAN', 'rajesh'),
('Xiao Li', 'xiaoli.2018', 2, 2, 'IS212_2019_2_G1', 'LEE Yeow Leong', 'yllee'),
('Tom Lee', 'tom.2017', 3, 1, 'IS216_2020_1_G3', 'SUN Jun', 'junsun'),
('Xiao Hua', 'xiaohua.2017', 4, 3, 'IS216_2020_1_G3', 'SUN Jun', 'junsun'),
('Mary Lim', 'mary.2018', 5, 2, 'IS216_2020_1_G1', 'Chris POSKITT', 'cposkitt'),
('John Tan', 'john.2017', 6, 1, 'IS216_2020_1_G1', 'Chris POSKITT', 'cposkitt'),
('Tom Lee', 'tom.2017', 7, 2, 'IS211_2020_1_G1', 'OUH Eng Lieh', 'elouh'),
('Xiao Hua', 'xiaohua.2017', 8, 3, 'IS113_2020_1_G1', 'David LO', 'davidlo');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `MOD_ID` varchar(30) NOT NULL,
  `MOD_NAME` varchar(30) NOT NULL,
  `POSITIONS_AVAILABLE` int(2) NOT NULL,
  `JOB_SCOPE` varchar(99) NOT NULL,
  `PROFESSOR_NAME` varchar(30) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL,
  `school` varchar(1000) NOT NULL,
  `level` varchar(100) NOT NULL,
  `Description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`MOD_ID`, `MOD_NAME`, `POSITIONS_AVAILABLE`, `JOB_SCOPE`, `PROFESSOR_NAME`, `PROFESSOR_ID`, `school`, `level`, `Description`) VALUES
('ACCT101_2020_1_G1', 'Financial Accounting', 3, 'TA', 'Charles CHEN', 'charlescsy', 'School of Accountancy', 'Introductory', 'This course provides the student with a basic understanding of accounting as \"the language of business\". It introduces students to the basic concepts, principles, procedures and approaches underlying the accounting process. This basic understanding facilitates the interpretation of financial information, which is necessary for making business decisions.'),
('ACCT102_2020_1_G1', 'Management Accounting', 1, 'TA', 'An Ping LIN', 'aplin', 'School of Accountancy', 'Introductory', 'This course introduces cost and management accounting topics to enable students to understand how accounting information is used to manage an organisation. It focuses on the factors that differentiate one company from another. The course will look at various functional areas within the firm, ranging from manufacturing to marketing, and from accounting to human relations. In addition, the concept of management, how senior managers plan, implement and control those plans through people will be briefly discussed. The course will enhance students\' personal skills in preparation for more advanced courses at the university in the following ways: working in groups, analysing cases, writing reports, and making presentations.'),
('ACCT221_2020_1_G1', 'Accounting Information Systems', 3, 'TA', 'SEOW Poh Sun', 'psseow', 'School of Accountancy', 'Advanced', 'The role of this course is to provide a specialised in-depth accounting course that addresses these key notions: role of information systems within accounting; documentation of accounting information systems including data flow diagrams and flowcharts; database management, processes and modeling; exposures and risks associated with accounting information systems; evaluation of information technology internal controls and impact on internal control; impact of information technology on the audit process; relationship of accounting information systems to major processes of the business cycle; and development, design and analysis of accounting information systems.'),
('COMM1304_2020_1_G1', 'Management Communication', 1, 'TA', 'Tracy LOH', 'tracyloh', 'School of Business', 'Introductory', 'Management Communication equips students with strategies that will enable them to successfully communicate their solutions to organizational problems.  Since the course emphasizes the importance of effective written and spoken communication within a business setting, students will be exposed to strategies that will enable them to communicate their ideas and values in a clear, persuasive and memorable way.  Students will, therefore, learn the art of producing impactful business documents and delivering engaging presentations in various business contexts.  By the end of the course, students will be able to function as proficient communicators who are ready to embrace the communicative challenges inherent in today’s dynamic business environment.'),
('COMM1304_2020_1_G2', 'Management Communication', 1, 'TA', 'Tracy LOH', 'tracyloh', 'School of Business', 'Introductory', 'Management Communication equips students with strategies that will enable them to successfully communicate their solutions to organizational problems.  Since the course emphasizes the importance of effective written and spoken communication within a business setting, students will be exposed to strategies that will enable them to communicate their ideas and values in a clear, persuasive and memorable way.  Students will, therefore, learn the art of producing impactful business documents and delivering engaging presentations in various business contexts.  By the end of the course, students will be able to function as proficient communicators who are ready to embrace the communicative challenges inherent in today’s dynamic business environment.'),
('CS301_2020_1_G1', 'InfoTech Solution Architecture', 1, 'TA', 'OUH Eng Lieh', 'elouh', 'School of Information Systems', 'Advanced', 'The IT Solution Architecture course integrates design concepts and methods to develop IT solutions from both the software and system-level perspectives.  It focuses on the analysis, design and implementation of an IT solution through which business requirements, software qualities and solution elements are transformed into implementable artefacts.  By combining critical analysis with hands-on design and development, the course prepares students to participate effectively in the architecture design and development stages of a software-intensive IT solution project.It is highly recommended that students are also proficient in IS442 Object Oriented Programming prior to reading this course.'),
('IS105_2020_1_G1', 'Business Data Management', 4, 'TA', 'Subhajit DATTA', 'subhajitd', 'School of Information Systems', 'Introductory', 'This course will cover fundamentals of relational database theory, important data management concepts such as data modelling, database design, database implementation in current business information systems, and some basic concepts related to unstructured data.\r\nA series of in-class exercises, tests, pop quizzes and a course project will help students understand the covered topics. Students are expected to apply knowledge learned in the classroom to solve many problems based on real-life business scenarios, while gaining hands-on experience in designing, implementing, and managing database systems. Students are also expected to understand the differences between structured data and unstructured data.'),
('IS113_2020_1_G1', 'Web Application Development I', 3, 'TA', 'David LO', 'davidlo', 'School of Information Systems', 'Introductory', 'In this course, students be equipped with the knowledge and skill to develop a database-driven web application. PHP will be used as the vehicle of exploration. Other related topics like HTTP, HTML, CSS, Javascript will be covered as well. Students will learn the concepts gradually in the 13 weeks of the semester while building a web application of medium complexity.'),
('IS210_2020_1_G1', 'Business Analysis ', 2, 'TA', 'Rafael J. BARROS', 'rafaelbarros', 'School of Information Systems', 'Introductory', 'In practice, a management decision to invest in business process modelling is often motivated by the need to document requirements for an information technology project. So this course aims to help students:\r\n- Understand and apply BPM  project needs and life-cycle stages\r\n- Gain knowledge of business process and its role in an industry.\r\n- Understand business models and create models for the as-is business process.\r\n- Understand analysis techniques static and dynamic and  analyse the business process\r\n- Apply dynamic analysis techniques using tools and analyse the simulation results\r\n- Identify business needs in the process and convert them to the IT needs\r\n- Understand techniques for solutioning and design solution models for the to-be process\r\n- Understand enterprises and they are implemented in an organization.\r\n- Gain understanding of the process innovation and identify the needs for process innovation.\r\n- Analyze and review innovated business processes in industry cases where digital transformation is applied.'),
('IS210_2020_1_G2', 'Business Analysis ', 3, 'TA', 'Swapna GOTTIPATI', 'swapnag', 'School of Information Systems', 'Intermediate', 'In practice, a management decision to invest in business process modelling is often motivated by the need to document requirements for an information technology project. So this course aims to help students:\r\n- Understand and apply BPM  project needs and life-cycle stages\r\n- Gain knowledge of business process and its role in an industry.\r\n- Understand business models and create models for the as-is business process.\r\n- Understand analysis techniques static and dynamic and  analyse the business process\r\n- Apply dynamic analysis techniques using tools and analyse the simulation results\r\n- Identify business needs in the process and convert them to the IT needs\r\n- Understand techniques for solutioning and design solution models for the to-be process\r\n- Understand enterprises and they are implemented in an organization.\r\n- Gain understanding of the process innovation and identify the needs for process innovation.\r\n- Analyze and review innovated business processes in industry cases where digital transformation is applied.'),
('IS211_2020_1_G1', 'Interaction Design & Prototype', 2, 'TA', 'OUH Eng Lieh', 'elouh', 'School of Information Systems', 'Intermediate', 'This course introduces fundamental human-computer interaction principles and techniques for designing usable interactive systems. Topics include common methods for gathering user requirements, basic UI and graphics programming techniques, and common evaluation techniques. Hands-on experience with UI prototyping tools will be provided and students will complete a UI design and prototyping project as part of this course.'),
('IS212_2019_2_G1', 'Software Management', 1, 'TA', 'Rajesh Krishna BALAN', 'rajesh', 'School of Information Systems', 'Intermediate', 'This course is geared to teach students project and people management skills in the context of a software project. This is done in a very hands-on manner where students are formed into teams and given a semester long project on day 1. This project will require them to work together to build a fully working web application prototype, that is deployed on a commercial cloud service, from scratch in a team of 5.'),
('IS213_2020_1_G1', 'Enterprise Solution Dev', 3, 'TA', 'JIANG Lingxiao', 'lxjiang', 'School of Information Systems', 'Intermediate', 'With the emergence of new technologies and evolution of existing ones, organizations are changing the way they build enterprise solutions. Rather than build monolithic applications, the current emphasis is on building solutions by leveraging existing functionality exposed as services (a.k.a API). This approach to composing solutions using services follows the Service Oriented Architecture (SOA) paradigm, where applications are structured as a collection of loosely coupled services. In this course students will learn how to design and implement enterprise solutions using SOA using enterprise tools. The course will cover topics such as cloud computing, SOA, Enterprise Service Bus (ESB), XML, web services and micro-services architecture.'),
('IS216_2020_1_G1', 'Web Application Development 2', 2, 'TA', 'Chris POSKITT', 'cposkitt', 'School of Information Systems', 'Intermediate', 'This course is designed to equip students with knowledge and skills to develop well-styled and responsive web applications that provide rich user experiences. Combining with the skills learnt in IS113 course, which focuses on developing database-driven web applications with basic web designs, after this course, the students will be equipped with full stack web development skills, who can build both front-end and back-end software.   In the introductory weeks of the course, the students will revisit HTML and server-side programming (PHP) concepts learnt in IS113. Then, the students will learn the concept of “Styling” the web pages. The students will learn a style sheet language called cascading style sheets (CSS) and learn how to separate the content and presentation of web pages, how to control web page layout, colors and fonts, how to bring multiple styles into a web page, how to control the layout of multiple web pages efficiently, etc. Next, the students will learn the concept of adding responsive behaviors to web pages to enhance the user experience. The students will learn a client-side programming language called JavaScript to make ordinary web elements like input boxes, buttons, forms, tables, menus interactive and animated. Furthermore, they will learn how to connect to API gateways and process data from external sources like RESTful web services so that they can build practical applications. In the latter weeks of the course, the students will be introduced to programming with frameworks. The students will learn how to use frameworks to build complex web applications in an efficient, scalable manner. More specifically, the students will be introduced to Bootstrap, a popular CSS framework for developing responsive website and introduced to Vue, a progressive JavaScript framework for building rich user interfaces.'),
('IS216_2020_1_G2', 'Web Application Development 2', 2, 'TA', 'Kyong Jin SHIM', 'kjshim', 'School of Information Systems', 'Intermediate', 'This course is designed to equip students with knowledge and skills to develop well-styled and responsive web applications that provide rich user experiences. Combining with the skills learnt in IS113 course, which focuses on developing database-driven web applications with basic web designs, after this course, the students will be equipped with full stack web development skills, who can build both front-end and back-end software.   In the introductory weeks of the course, the students will revisit HTML and server-side programming (PHP) concepts learnt in IS113. Then, the students will learn the concept of “Styling” the web pages. The students will learn a style sheet language called cascading style sheets (CSS) and learn how to separate the content and presentation of web pages, how to control web page layout, colors and fonts, how to bring multiple styles into a web page, how to control the layout of multiple web pages efficiently, etc. Next, the students will learn the concept of adding responsive behaviors to web pages to enhance the user experience. The students will learn a client-side programming language called JavaScript to make ordinary web elements like input boxes, buttons, forms, tables, menus interactive and animated. Furthermore, they will learn how to connect to API gateways and process data from external sources like RESTful web services so that they can build practical applications. In the latter weeks of the course, the students will be introduced to programming with frameworks. The students will learn how to use frameworks to build complex web applications in an efficient, scalable manner. More specifically, the students will be introduced to Bootstrap, a popular CSS framework for developing responsive website and introduced to Vue, a progressive JavaScript framework for building rich user interfaces.'),
('IS216_2020_1_G3', 'Web Application Development 2', 2, 'TA', 'SUN Jun', 'junsun', 'School of Information Systems', 'Advanced', 'This course is designed to equip students with knowledge and skills to develop well-styled and responsive web applications that provide rich user experiences. Combining with the skills learnt in IS113 course, which focuses on developing database-driven web applications with basic web designs, after this course, the students will be equipped with full stack web development skills, who can build both front-end and back-end software.   In the introductory weeks of the course, the students will revisit HTML and server-side programming (PHP) concepts learnt in IS113. Then, the students will learn the concept of “Styling” the web pages. The students will learn a style sheet language called cascading style sheets (CSS) and learn how to separate the content and presentation of web pages, how to control web page layout, colors and fonts, how to bring multiple styles into a web page, how to control the layout of multiple web pages efficiently, etc. Next, the students will learn the concept of adding responsive behaviors to web pages to enhance the user experience. The students will learn a client-side programming language called JavaScript to make ordinary web elements like input boxes, buttons, forms, tables, menus interactive and animated. Furthermore, they will learn how to connect to API gateways and process data from external sources like RESTful web services so that they can build practical applications. In the latter weeks of the course, the students will be introduced to programming with frameworks. The students will learn how to use frameworks to build complex web applications in an efficient, scalable manner. More specifically, the students will be introduced to Bootstrap, a popular CSS framework for developing responsive website and introduced to Vue, a progressive JavaScript framework for building rich user interfaces.'),
('IS216_2020_1_G4', 'Web Application Development 2', 2, 'TA', 'SHAR Lwin Khin', 'lkshar', 'School of Information Systems', 'Advanced', 'This course is designed to equip students with knowledge and skills to develop well-styled and responsive web applications that provide rich user experiences. Combining with the skills learnt in IS113 course, which focuses on developing database-driven web applications with basic web designs, after this course, the students will be equipped with full stack web development skills, who can build both front-end and back-end software.   In the introductory weeks of the course, the students will revisit HTML and server-side programming (PHP) concepts learnt in IS113. Then, the students will learn the concept of “Styling” the web pages. The students will learn a style sheet language called cascading style sheets (CSS) and learn how to separate the content and presentation of web pages, how to control web page layout, colors and fonts, how to bring multiple styles into a web page, how to control the layout of multiple web pages efficiently, etc. Next, the students will learn the concept of adding responsive behaviors to web pages to enhance the user experience. The students will learn a client-side programming language called JavaScript to make ordinary web elements like input boxes, buttons, forms, tables, menus interactive and animated. Furthermore, they will learn how to connect to API gateways and process data from external sources like RESTful web services so that they can build practical applications. In the latter weeks of the course, the students will be introduced to programming with frameworks. The students will learn how to use frameworks to build complex web applications in an efficient, scalable manner. More specifically, the students will be introduced to Bootstrap, a popular CSS framework for developing responsive website and introduced to Vue, a progressive JavaScript framework for building rich user interfaces.'),
('IS442_2019_2_G1', 'Object Oriented Programming', 1, 'TA', 'LEE Yeow Leong', 'yllee', 'School of Information Systems', 'Advanced', 'This course focuses on fundamental concepts of developing programs using an object orientated approach. There will be an emphasis on writing clean and efficient code, and the ability to use an appropriate data structure or algorithm to solve problems. The Java programming language will be taught in depth. Students are expected to have a strong foundation in programming.\r\n\r\nThis is a compulsory course for IS (Software Development Track) for 2017 intake and onwards.\r\n\r\nUpon completion of the course, students will be able to: \r\n1. Practice problem solving skills \r\n2. Read UML sequence and class diagrams\r\n3. Apply basic concepts of Object Orientation to a given scenario/context \r\n4. Apply good programming practices and design concepts to develop software\r\n5. Appreciate the role of algorithms and in problem solving'),
('OPIM101_2020_1_G1', 'Decision Analysis', 1, 'TA', 'FENG Guiyun', 'gyfeng', 'School of Business', 'Introductory', 'The objective of this course is to introduce students to decision analysis, which is the application of the scientific method to managerial and personal decision-making. Selected decision analysis tools will be introduced to help making decisions in certain and uncertain environments, such as linear and integer programming and decision trees. The usefulness of these tools will be illustrated through examples drawn from all functional areas of business. These example applications include capacity and inventory management, portfolio management, supply chain management and project scheduling.');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `PAYMENT_ID` int(4) NOT NULL,
  `PAYMENT_AMT` int(3) NOT NULL,
  `PAYMENT_DETAILS` varchar(99) NOT NULL,
  `PAYMENT_DATE` datetime NOT NULL,
  `MOD_ID` varchar(30) NOT NULL,
  `STUDENT_ID` varchar(15) NOT NULL,
  `PROFESSOR_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`PAYMENT_ID`, `PAYMENT_AMT`, `PAYMENT_DETAILS`, `PAYMENT_DATE`, `MOD_ID`, `STUDENT_ID`, `PROFESSOR_ID`) VALUES
(1, 500, 'transferred to account number xxxx', '2021-01-04 00:00:00', 'IS442_2019_2_G1', 'mary.2018', 'rajesh'),
(2, 500, 'transferred to account number xxxx', '2021-01-05 00:00:00', 'IS212_2019_2_G1', 'xiaoli.2018', 'yllee');

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `PROFESSORS_NAME` varchar(30) NOT NULL,
  `PROFESSOR_ID` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`PROFESSORS_NAME`, `PROFESSOR_ID`) VALUES
('Chris POSKITT', 'cposkitt'),
('David LO', 'davidlo'),
('OUH Eng Lieh', 'elouh'),
('SUN Jun', 'junsun'),
('Kyong Jin SHIM', 'kjshim'),
('SHAR Lwin Khin', 'lkshar'),
('JIANG Lingxiao', 'lxjiang'),
('Rafael J. BARROS', 'rafaelbarros'),
('Rajesh Krishna BALAN', 'rajesh'),
('Subhajit DATTA', 'subhajitd'),
('Swapna GOTTIPATI', 'swapnag'),
('LEE Yeow Leong', 'yllee');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDENT_NAME` varchar(30) NOT NULL,
  `STUDENT_ID` varchar(12) NOT NULL,
  `RESUME` varchar(99) NOT NULL,
  `RATING` float NOT NULL,
  `CURRENT_YEAR` int(11) NOT NULL,
  `FACULTY` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`STUDENT_NAME`, `STUDENT_ID`, `RESUME`, `RATING`, `CURRENT_YEAR`, `FACULTY`) VALUES
('John Tan', 'john.2017', '', 3.6, 4, 'SIS'),
('Mary Lim', 'mary.2018', '', 4.6, 3, 'SIS'),
('Tom Lee', 'tom.2017', '', 4.5, 4, 'SIS'),
('Xiao Hua', 'xiaohua.2017', '', 4.1, 4, 'SOE'),
('Xiao Li', 'xiaoli.2018', '', 3.8, 3, 'SOE');

-- --------------------------------------------------------

--
-- Table structure for table `student_experience`
--

CREATE TABLE `student_experience` (
  `STUDENT_ID` varchar(15) NOT NULL,
  `STUDENT_NAME` varchar(30) NOT NULL,
  `EXPERIENCE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_experience`
--

INSERT INTO `student_experience` (`STUDENT_ID`, `STUDENT_NAME`, `EXPERIENCE`) VALUES
('john.2017', 'John Tan', 'Experience of John Tan'),
('mary.2018', 'Mary Lim', 'Experience of Mary Lim'),
('tom.2017', 'Tom Lee', 'Experience of Tom Lee'),
('xiaohua.2017', 'Xiao Hua', 'Experience of Xiao Hua'),
('xiaoli.2018', 'Xiao Li', 'Experience of Xiao li');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`APPLICATION_NO`),
  ADD KEY `APPLICANT_NAME` (`STUDENT_NAME`),
  ADD KEY `MOD_ID` (`MOD_ID`),
  ADD KEY `APPLICANT_ID` (`STUDENT_ID`),
  ADD KEY `PROFESSOR_NAME` (`PROFESSOR_NAME`),
  ADD KEY `PROFESSOR_ID` (`PROFESSOR_ID`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`MOD_ID`),
  ADD KEY `PROFESSOR_ID` (`PROFESSOR_ID`),
  ADD KEY `PROFESSOR_NAME` (`PROFESSOR_NAME`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PAYMENT_ID`,`MOD_ID`,`STUDENT_ID`,`PROFESSOR_ID`),
  ADD KEY `payments_ibfk_1` (`PROFESSOR_ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `MOD_ID` (`MOD_ID`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`PROFESSORS_NAME`,`PROFESSOR_ID`),
  ADD KEY `USER_ID` (`PROFESSOR_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDENT_NAME`,`STUDENT_ID`),
  ADD KEY `USER_ID` (`STUDENT_ID`);

--
-- Indexes for table `student_experience`
--
ALTER TABLE `student_experience`
  ADD PRIMARY KEY (`STUDENT_ID`,`STUDENT_NAME`),
  ADD KEY `student_experience_ibfk_2` (`STUDENT_NAME`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `APPLICATION_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `PAYMENT_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
