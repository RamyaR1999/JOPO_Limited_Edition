-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Jul 08, 2022 at 07:25 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(40) NOT NULL,
  `Education` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `Education`) VALUES
(1, 'B.A'),
(2, 'B.Arch'),
(3, 'B.Com'),
(4, 'B.Ed'),
(5, 'B.Pharma'),
(6, 'B.Sc'),
(7, 'B.Tech/B.E'),
(8, 'BCA'),
(9, 'BDS'),
(10, 'BVSC'),
(11, 'CA'),
(12, 'CS'),
(13, 'Diploma'),
(14, 'H.Sc/+2/Intermediate'),
(15, 'ICWA (CMA)'),
(16, 'ITI'),
(17, 'LLB'),
(18, 'LLM'),
(19, 'M.A');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(50) NOT NULL,
  `Experience` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `Experience`) VALUES
(1, '1 year'),
(2, '2 years'),
(3, '3 years'),
(4, '4 years'),
(5, '5 years'),
(6, '6 years'),
(7, '7 years'),
(8, '8 years'),
(9, '9 years'),
(10, '10 years'),
(11, '11 years'),
(12, '12 years'),
(13, '13 years'),
(14, '14 years'),
(15, '15 years'),
(16, '16 years'),
(17, '17 years'),
(18, '18 years'),
(19, '19 years'),
(20, '20 years');

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE `function` (
  `id` int(40) NOT NULL,
  `Function` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `function`
--

INSERT INTO `function` (`id`, `Function`) VALUES
(1, 'Accounting / Tax / Company Secretary / Audit'),
(2, 'Airline / Reservations / Ticketing / Travel'),
(3, 'Analytics & Business Intelligence'),
(4, 'Anchoring / TV / Films / Production'),
(5, 'Architects / Interior Design / Naval Arch'),
(6, 'Art Director / Graphic / Web Designer'),
(7, 'Banking / Insurance'),
(8, 'Beauty / Fitness / Spa Services'),
(9, 'Content / Journalism'),
(10, 'Corporate Planning / Consulting'),
(11, 'CSR & Sustainability'),
(12, 'Engineering Design / R&D'),
(13, 'Export / Import / Merchandising'),
(14, 'Fashion / Garments / Merchandising'),
(15, 'Guards / Security Services'),
(16, 'Hotels / Restaurants'),
(17, 'HR / Administration / IR'),
(18, 'IT - Hardware / Telecom / Technical Staff / Support'),
(19, 'IT Software - Application Programming / Maintenance'),
(20, 'IT Software - Client Server'),
(21, 'IT Software - DBA / Data warehousing'),
(22, 'IT Software - Ecommerce / Internet Technologies'),
(23, 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des'),
(24, 'IT Software - ERP / CRM'),
(25, 'IT Software - Mainframe'),
(26, 'IT Software - Middleware'),
(27, 'IT Software - Mobile'),
(28, 'IT Software - Network Administration / Security'),
(29, 'IT Software - QA & Testing'),
(30, 'IT Software - System Programming'),
(31, 'IT Software - Systems / EDP / MIS'),
(32, 'IT Software - Telecom Software'),
(33, 'ITES / BPO / KPO / Customer Service / Operations'),
(34, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(40) NOT NULL,
  `Industry` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `Industry`) VALUES
(1, 'Accounting / Finance'),
(2, 'Banking & finance'),
(3, 'General Administration'),
(4, 'Human Resources'),
(5, 'Information Technology'),
(6, 'Insurance'),
(7, 'ITeS & BPO'),
(8, 'Manufacturing'),
(9, 'Sales'),
(10, 'FMCG'),
(11, 'Retail'),
(12, 'Telecom'),
(13, 'Media & entertainment'),
(14, 'Education'),
(15, 'Hospitality & Tourism'),
(16, 'Consulting & VC'),
(17, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(100) NOT NULL,
  `Fullname` varchar(32) NOT NULL,
  `Company_name` varchar(60) NOT NULL,
  `Job_title` varchar(60) NOT NULL,
  `Job_posted` varchar(200) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Service` varchar(100) NOT NULL,
  `Location` varchar(200) NOT NULL,
  `Location_country` varchar(500) NOT NULL,
  `Experience_Range` varchar(200) NOT NULL,
  `Salary_Range` varchar(200) NOT NULL,
  `Sector` varchar(6000) NOT NULL,
  `Skills` varchar(1000) NOT NULL,
  `Work_type` varchar(200) NOT NULL,
  `Job_type` varchar(500) NOT NULL,
  `Job_description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `Fullname`, `Company_name`, `Job_title`, `Job_posted`, `Phone`, `Email`, `Service`, `Location`, `Location_country`, `Experience_Range`, `Salary_Range`, `Sector`, `Skills`, `Work_type`, `Job_type`, `Job_description`) VALUES
(1, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'ASP .NET Developer', '20 Jan 2022', '', '', 'Permanent Recruitment', 'Bangalore', 'India', '', '', 'Information Technology', 'Angular JS/ASP .NET Developer', 'Hybrid', 'Full time', 'The person selected would be responsible for web/API development work using following technologies ASP.NET MVC, WCF, JQuery and RESTful services, .NET/.NET Core,\r\nwriting unit test cases - mocking framework, ReactJS/Angular and SQL server as database Person would work in Retirement Services GPT team, Pune, SP Infocity.\r\nWrite high quality/efficient code, debug, unit test cases, resolve issues and further develop deep Product knowledge over a period of time \r\nWork collaboratively in Agile scrum team including Developers/ lead developers, Architects/Tech leads, Product Owners, Scrum master and Testers for next-gen UI development. This will include 2-4 hours overlap with global RS team in US (EST time) based on project needs.\r\nWould be responsible for peer code reviews; provide suggestions to improve code efficiency/performance.\r\nResults-oriented, knowledge of new and legacy technologies, knowledge of the relevant platforms and environments, and familiar with business processes, functions and data within their domain to provide innovative, insightful, and secure solutions.\r\n\r\n\r\nEligibility/Experience\r\n\r\n•	B.E. or MCA with 4-6 years of web/API development experience using .NET, ASP.NET MVC, REST APIs, WCF services, SQL server, Javascript/JQuery are must to have skills. \r\n•	Knowledge on ReactJS, AngularJS, .NET core would be added advantage \r\n•	Experience working in an agile process Object oriented development RESTful web services implementation XML and JSON \r\n•	Good communication and interpersonal skills Strong analytical and problem-solving skills\r\n\r\nWe currently have multiple openings for these roles, these roles are in Bangalore.'),
(2, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'DevOps/ AWS/ Kubernetes Engineer', '20 Jan 2022', '', '', 'Permanent Recruitment', 'Onsite/Remote', 'India', '', '', 'Information Technology', 'Devops/AWS', '', 'Full time', 'DevOps/ Kubernetes Certified/\r\n\r\nExperience : 3+ years\r\n\r\nRequirement : The need is of a mid-level Kubernetes resource, somebody who can be up & running independently. \r\n\r\nMostly working on following- \r\n	Implement and manage CI/CD pipelines. \r\n	Implement an auto-scaling system for the Kubernetes nodes\r\n	Consolidate Clusters \r\n	Implement and improve monitoring and alerting. \r\n	Build and maintain highly available systems on Kubernetes.\r\n'),
(3, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'WMS/solution Consultant', '20 Jan 2022', '', '', 'Contract Staffing', 'Bangalore', 'India', '', '', 'Information Technology', 'WMS', '', 'Full time', 'Solution Consultant \r\nMain Domain: WMS Consultant, relevant qualifications in Information Technology or \r\nComputer science.\r\n\r\nCurrent work experience: 3 to 5 years in related IT or supply chain industries\r\n\r\n\r\nResponsibilities\r\nJob description:\r\n- \r\nSupport day to day issues faced by customer’s users on site , English and Russian\r\n- \r\nMap customer requirements, provide solutions to requirements\r\n- \r\nWork with customer’s IT team for Highjump WMS\r\n- \r\nPerform testing, training activities on behalf of the customer’s IT team for new \r\nchanges.\r\nThe Person:\r\nRequired skills: \r\nIndependent and self-driven personality\r\n- \r\nAble to travel and work on site at customer’s location with minimal supervision\r\n- \r\nOpen to new ideas and changes\r\n- \r\nFamiliar with WMS related concepts as well as integration points\r\n- \r\nBasic knowledge of Reporting tools and MSSQL\r\n- \r\nAnalytical with good interpersonal skills\r\n- Good understanding of supply chain processes\r\n\r\nPreferred skills:\r\n- Understanding of logistics and supply chain management particularly in areas of \r\nWarehousing\r\n- Knowledgeable In MSSQL and Microsoft technologies\r\n- Experience in the Highjump WMS is strong benefit\r\n- Good interpersonal skills with high Emotional quotient'),
(4, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'JAVA DEVELOPER', '20 Jan 2022', '', '', 'Permanent Recruitment', 'Bangalore', 'India', '', '', 'Information Technology', 'Java', '', 'Full time', 'We are looking for a Java Developer with experience in building high-performing, scalable, \r\nenterprise-grade applications.\r\n\r\nEXPERIENCE – More than 2 years\r\n\r\nResponsibilities \r\n•Contribute in all phases of the development lifecycle \r\n•Write well designed, testable, efficient code \r\n•Ensure designs are in compliance with specifications \r\n•Prepare and produce releases of software components \r\n•Support continuous improvement by investigating alternatives and technologies and presenting \r\nthese for architectural review \r\nRequirements \r\n•BS/MS degree in Computer Science, Engineering or a related subject \r\n•Proven hands-on Software Development experience \r\n•Proven working experience in Java development \r\n•Hands on experience in designing and developing applications using Java EE platforms \r\n•Object Oriented analysis and design using common design patterns. \r\n•Profound insight of Java and JEE internals (Classloading, Memory Management, Transaction \r\nmanagement etc) \r\n•Excellent knowledge of Relational Databases, SQL and ORM technologies (JPA2, Hibernate) \r\n•Experience in the Spring Framework \r\n•Experience as a Sun Certified Java Developer \r\n•Experience in developing web applications using at least one popular web framework (JSF, \r\nWicket, GWT, Spring MVC) \r\n•Experience with test-driven development'),
(5, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'REACT .JS DEVELOPER', '20 Jan 2022', '', '', 'Permanent Recruitment', 'Bangalore', 'India', '', '', 'Information Technology', 'Angular JS', '', 'Full time', 'We are looking for a skilled react.js developer to join our front-end development team.\r\n            \r\nResponsibilities:   \r\n• Meeting with the development team to discuss user interface ideas and applications. \r\n• Reviewing application requirements and interface designs. \r\n• Identifying web-based user interactions. \r\n• Developing and implementing highly responsive user interface components using react concepts. \r\n• Writing application interface codes using JavaScript following react.js workflows. \r\n• Troubleshooting interface software and debugging application codes. \r\n• Developing and implementing front-end architecture to support user interface concepts. \r\n• Monitoring and improving front-end performance. \r\n• Documenting application changes and developing updates.\r\n \r\nRequirements: \r\n• Bachelor’s degree in computer science, information technology, or a similar field. \r\n• 2+ years experience in working as a react.js developer. \r\n• In-depth knowledge of JavaScript, CSS, HTML, and front-end languages. \r\n• Knowledge of REACT tools including React.js, Webpack, Enzyme, Redux, and Flux. \r\n• Experience with user interface design. \r\n• Knowledge of performance testing frameworks including Mocha and Jest. \r\n• Experience with browser-based debugging and performance testing software. \r\n• Excellent troubleshooting skills. \r\n• Good project management skills. \r\n• Strong knowledge and experience of building for Security, Performance, and Scalability'),
(6, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Senior Angular Developer', '20 Jan 2022', '', '', 'Permanent Recruitment', 'Bangalore', 'India', '', '', 'Information Technology', 'Angular JS', 'Hybrid', 'Full time', 'Role Skills\r\n•	Expertise in Angular (latest version);  \r\n•	Expertise in TypeScript; \r\n•	Experience working with Grapes.js;  \r\n•	Experience working with NGXS State management; \r\n•	Knowledge of RxJS; \r\n•	A bit of experience with React; \r\n•	Expertise in Stencil.js;  \r\n•	Knowledge of Object-oriented Design and Design Patterns; \r\n•	Experience working with Git and Bitbucket;  \r\n•	Keep up-to-date with developing technologies and showcase them in your work; \r\n•	Understand web application scalability and performance; \r\n•	Analysis, design, and development with the mentioned technologies; \r\n•	Effort estimation; \r\nRequirements \r\n\r\nExperience working in agile teams; \r\n \r\nExperience working with agile tools, knowledge of agile processes; \r\n \r\nTake part and initiative in software and architectural development activities; \r\n \r\nConduct software analysis, programming, testing, and debugging; \r\n \r\nRecommend changes to improve established application processes; \r\n \r\nDevelop technical designs for application development; \r\n \r\nOpenness to fix critical bugs with high business impact on the customers; \r\n \r\nAnalytical and creative problem-solving abilities, good communication skills, result-oriented; \r\n \r\nAbility to work independently, proactively as well with a team, and within tight deadlines; \r\n \r\nSelf-motivating, with customer focus and ability to manage multiple tasks; \r\n \r\nEnglish: good speaking and writing level;\r\n\r\nExperience:  3- 6yrs'),
(7, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Senior Software developer (Java )', '18 Apr 2022', '', '', '', 'Rajasthan', 'India', '', '', '', 'Java, J2EE HTML, CSS , Javascript,.Liferay, ', 'Onsite', 'Full-time', 'Senior Software Developer, Jaipur\r\n\r\n.\r\n\r\nWhat are we looking for in our new colleague?\r\n\r\nFrom the technical side:\r\nâ€¢	You have a minimum of 5 years of hands-on experience in web development using J2EE technologies JSP, Servlet etc.\r\nâ€¢	You have hands-on experience in developing web applications using MVX Framework, and you are familiar with HTML, CSS and Javascript.\r\nâ€¢	You are able to write well designed, testable and efficient code.\r\nâ€¢	Experience working with Liferay is considered as an advantage.\r\n\r\nAlso:\r\nâ€¢	You believe in teamwork and are able to work in a team efficiently.\r\nâ€¢	You have good social skills and you enjoy sharing knowledge with your colleagues.\r\nâ€¢	You enjoy communicating with the customer and you are able to explain the technical features and issues to them in an understandable way.\r\nâ€¢	You have good time management and skills and you are good at prioritizing tasks.\r\nâ€¢	You are efficient in making decisions based on your knowledge and experience.\r\nâ€¢	You are eager to learn and develop your skills and knowledge.\r\nâ€¢	In work projects, you can see the whole picture as well as the fine details.\r\n\r\n'),
(8, '', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Role', '20 Apr 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Test Role', 'Onsite', 'Contract', 'Test Role'),
(9, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Specialist', '25 Apr 2022', '', '', '', 'Amsterdam', 'Netherlands', '', '', '', '\r\nHardware: PC, Laptop, Printer, Fax, Scanner, Tablet & Mobile devices.\r\nInstall, upgrade, support and troubleshoot Windows 8, 10 and any other authorized desktop applications\r\nSoftware: O365, MS Office 2010/2013, Outlook 2010/2013, Adobe, IE, MS\r\nTools: Active Directory, Exchange, Call Management software.\r\nNetworking: TCP/IP, Hands & Eyes Support.', 'Onsite', 'Contract', 'Desktop Support Role\r\n\r\nType Contract \r\nLocation â€“ Amsterdam - Netherlands\r\nLanguage: Dutch & English\r\n\r\nTechnical skills & Experience:\r\n\r\nâ€¢	2+ yearsâ€™ experience providing onsite technical support for.\r\n\r\nâ€¢	Hardware: PC, Laptop, Printer, Fax, Scanner, Tablet & Mobile devices.\r\nâ€¢	Install, upgrade, support and troubleshoot Windows 8, 10 and any other authorized desktop applications\r\nâ€¢	Software: O365, MS Office 2010/2013, Outlook 2010/2013, Adobe, IE, MS\r\nâ€¢	Tools: Active Directory, Exchange, Call Management software.\r\nâ€¢	Networking: TCP/IP, Hands & Eyes Support.\r\n\r\nâ€¢	Building, configuring and troubleshooting all desktop & mobile devices.\r\nâ€¢	Previous experience with SLAs and ITIL Best Practice & Process.\r\nâ€¢	CompTIA A+ Certification or equivalent \r\n\r\n\r\nKey Responsibilities:\r\nâ€¢	Capture, log and update incidents via a call management system according to SLAs.\r\nâ€¢	Troubleshooting hardware and software issues.\r\nâ€¢	Installing and maintaining hardware and computer peripherals.\r\nâ€¢	Installing and upgrading operating systems and computer software.\r\nâ€¢	Troubleshooting networking and connection issues.\r\n'),
(10, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Java Developer - Liferay', '25 Apr 2022', '', '', '', 'Pune', 'India', '', '', '', 'Test Role', 'Onsite', 'Full-time', 'Test Role'),
(11, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Help Desk Support - London', '05 May 2022', '', '', '', 'Paddington- London', 'United Kingdom', '', '', '', 'Help Desk Support - IT Support ', 'Onsite', 'Full-time', 'IT Infrastructure field support which includes troubleshooting hardware, software, operating system issues and problems and fixing the issues without impacting / violating the hardware warranty or customer security compliance requirements.\r\n\r\nWin10, iOS, AD, SCCM, ticket system\r\n\r\nâ€¢	Hands on experience in installing, troubleshooting and fixing desktops, printers, laptop and other computer peripherals hardware problems as well as desktop applications.\r\nâ€¢	Basic knowledge of enterprise LAN and WAN setups and concepts. Ability to perform smart hand activity under instruction-based activities at sites.\r\nâ€¢	Ability to lift / move computer equipment weighing up to 20kg\r\nâ€¢	Skilled in desk side support and PC break/fix including basic administration of Windows O/S.\r\nâ€¢	Experience with Anti-spyware and Anti-virus software.\r\nâ€¢	Some usage Knowledge of TCP/IP networking, DNS, DHCP, VPN, and RDP.\r\nâ€¢	Smart hand support for peripheral and networking hardware, including, but not limited to monitors, keyboards, mice, printers, fax machines, scanners, routers, wireless routers, switches, firewalls, racks, cabinets, multi-port data termination panels all under â€˜Smart Handsâ€™ capability.\r\nâ€¢	Ability to troubleshoot issues with systems and networks using good deductive reasoning skills.\r\nâ€¢	perform Installs, Moves, Adds or Changes (IMACs) activities to install, remove, remodel, relocate, upgrade, modify, or otherwise reconfigure customer site equipment including software and related services at designated Customer sites, such as desktop office PCs, workstations, etc.\r\nâ€¢	Good written and oral communications skills with clients and management as well as people skills.\r\nâ€¢	Ability to work with deadlines and complete tasks on-time.\r\nâ€¢	Good communication skills are mandate to have.\r\n'),
(12, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Help Desk Support - London', '06 May 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Help Desk Support - London', 'Onsite', 'Full-time', 'TEST Role'),
(13, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Help Desk Support - London - Onsite', '06 May 2022', '', '', '', 'Paddington - London', 'United Kingdom', '', '', '', 'HD- London', 'Onsite', 'Full-time', 'JOB PURPOSE:  \r\n\r\nThe IS Department is responsible for supporting and maintaining the firmâ€™s IT, IS and telecoms systems and for providing efficient desktop support to all business users. The department is responsible for resolving any IS-related faults quickly and efficiently, including a broad range of queries, plus enhancing and developing the provision of IS systems within the business.\r\n\r\nBased in our London office this role will provide IT, IS & Telecommunications first and second line support to approximately 150 users in both our London, Cambridge and Munich offices. This includes ensuring all calls for support are dealt with promptly and appropriately, installing and configuring computers, associated peripherals, software and carrying out daily monitoring and checks of all IT Systems to ensure all systems are operating correctly and efficiently. \r\n\r\nThe post holder is also expected to provide adequate cover in the absence of the IT Support Analyst.\r\n\r\nKEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n\r\nOTHER DUTIES:\r\n\r\nâ€¢	To maintain personal and professional development to meet the changing demands of the job and participate in appropriate training activities.\r\nâ€¢	To undertake health and safety duties appropriate within the post.\r\nâ€¢	Be prepared to work flexibly to cover duties outside of normal working hours to ensure the provision of the IT services to the firm.\r\n\r\nSKILLS KNOWLEDGE & EXPERIENCE:\r\n\r\nESSENTIAL	DESIRABLE\r\nWindows 10 - 3-4 years	A Levels\r\nOffice 365 (Word/Excel/Power Point) 2-3 years	Degree\r\nMicrosoft Edge 	Teams Telephony\r\nUnderstanding Networking TCP/IP / DNS / AD	WIFI\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure 	Exchange 365 \r\nAnti-virus / SPAM / Malware	MS SQL\r\nOutlook 365 â€“ Online 2-3 years	AD â€“ group policies\r\nConcept of virtual environment	Zoho â€“ ManageEngine Products\r\nPC/Laptop hardware components & Build Process\r\n2-3 years	Azure AD\r\nRemote & On prem Support	Microsoft Azure Cloud\r\nBasic AD Tasks (Add users, Group Changes)	Document Management System (DM)\r\n	Mimecast â€“ Email filtering\r\n	Windows server 2016/2019 O/S\r\n\r\n'),
(14, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support - Amsterdam', '16 May 2022', '', '', '', 'Amsterdam', 'Netherlands', '', '', '', 'ESSENTIAL	DESIRABLE\r\nWindows 10 - 3-4 years	A Levels\r\nOffice 365 (Word/Excel/Power Point) 2-3 years	Degree\r\nMicrosoft Edge 	Teams Telephony\r\nUnderstanding Networking TCP/IP / DNS / AD	WIFI\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure 	Exchange 365 \r\nAnti-virus / SPAM / Malware	MS SQL\r\nOutlook 365 â€“ Online 2-3 years	AD â€“ group policies\r\nConcept of virtual environment	Zoho â€“ ManageEngine Products\r\nPC/Laptop hardware components & Build Process\r\n2-3 years	Azure AD\r\nRemote & On prem Support	Microsoft Azure Cloud\r\nBasic AD Tasks (Add users, Group Changes)	Document Management System (DM)\r\n	Mimecast â€“ Email filtering\r\n	Windows server 2016/2019 O/S\r\n\r\n\r\nSTATEMENT:\r\n\r\nThis job description is issued as a guideline to assist you in your duties, it is not exhaustive and we would be pleased to discuss any constructive comments you may have. Because of the evolving nature and changing demands of our business, this job description may be subject to change', 'Onsite', 'Contract', 'L2- Role\r\n\r\nKEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n\r\n'),
(15, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support - Surrey', '17 May 2022', '', '', '', 'Surrey', 'United Kingdom', '', '', '', 'SKILLS KNOWLEDGE & EXPERIENCE:\r\n\r\nESSENTIAL	DESIRABLE\r\nWindows 10 - 3-4 years	A Levels\r\nOffice 365 (Word/Excel/Power Point) 2-3 years	Degree\r\nMicrosoft Edge 	Teams Telephony\r\nUnderstanding Networking TCP/IP / DNS / AD	WIFI\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure 	Exchange 365 \r\nAnti-virus / SPAM / Malware	MS SQL\r\nOutlook 365 â€“ Online 2-3 years	AD â€“ group policies\r\nConcept of virtual environment	Zoho â€“ ManageEngine Products\r\nPC/Laptop hardware components & Build Process\r\n2-3 years	Azure AD\r\nRemote & On prem Support	Microsoft Azure Cloud\r\nBasic AD Tasks (Add users, Group Changes)	Document Management System (DM)\r\n	Mimecast â€“ Email filtering\r\n	Windows server 2016/2019 O/S\r\n\r\n', 'Onsite', 'Full-time', 'KEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n\r\nOTHER DUTIES:\r\n\r\nâ€¢	To maintain personal and professional development to meet the changing demands of the job and participate in appropriate training activities.\r\nâ€¢	To undertake health and safety duties appropriate within the post.\r\nâ€¢	Be prepared to work flexibly to cover duties outside of normal working hours to ensure the provision of the IT services to the firm.\r\n'),
(16, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Onsite IT Technician ', '26 May 2022', '', '', '', 'Helsinki', 'Finland', '', '', '', 'Technical/Business Skills\r\nâ€¢	Good technical knowledge of workplace environment and end-user services: Win7/Win10 environment, General use applications (Office 2007/2016 and 365), Mobile services (AirWatch, RSA token, Mail services, Collaboration tools, MS SCCMâ€¦)\r\nâ€¢	Good knowledge of Apple environment (Mac, IPhoneâ€¦)\r\nâ€¢	ITIL basics\r\nâ€¢	IT Support experience in a large enterprise environment (+ 1000 users), experience in a Trading environment would be a bonus\r\n', 'Onsite', 'Contract', 'ResponsabilitÃ©s\r\nâ€¢	Assist the customerâ€™s client with first and second level support on workstations, mobility devices and infrastructures (installations, replacement, change, relocation, removal)\r\nâ€¢	Provide support for computer systems in case of hardware and software incidents\r\nâ€¢	Provide support for mobile devices (iPad, Iphone) in case of software incidents\r\nâ€¢	Provide support of inventory units (monitors, local printers, local scanners and notebook docking stations) as well as support for local network printer systems\r\nâ€¢	Receive materials and spare parts, inventory, prepare for installation, install and ensure a feedback to customers.\r\nâ€¢	Demonstrate excellent customer service at all times\r\n\r\nEssential experience/skills\r\nâ€¢	At least 3 years of onsite support and customer care experience is required\r\nâ€¢	Aptitude for providing positive customer service, interpersonal skills, listening skills, analytical skills and team spirit.\r\nâ€¢	Spoken languages: fluent French (mandatory) and English or Flemish/Dutch (optional but preferred)\r\nâ€¢	A driving license is required\r\nSector: fashion & luxury\r\nLocation:\r\nâ€¢	Nordics countries (Oslo, Stockholm, Helsinki, Copenhagen) \r\n'),
(17, 'tes', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Tes', '08 Jun 2022', '', '', '', 'Delhi', 'India', '', '', '', 'Tes', 'Onsite', 'Full-time', 'Tes'),
(18, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Onsite IT Technician - Retails Stores - Europe', '08 Jun 2022', '', '', '', 'Amsterdam', 'Netherlands', '', '', '', 'Essential experience/skills\r\nâ€¢	At least 3 years of onsite support and customer care experience is required\r\nâ€¢	Aptitude for providing positive customer service, interpersonal skills, listening skills, analytical skills and team spirit.\r\nâ€¢	Spoken languages: fluent French (mandatory) and English or Flemish/Dutch (optional but preferred)\r\nâ€¢	A driving license is required\r\nSector: fashion & luxury\r\n', 'Onsite', 'Part-time', 'Responsibilities\r\nâ€¢	Assist the customerâ€™s client with first and second level support on workstations, mobility devices and infrastructures (installations, replacement, change, relocation, removal)\r\nâ€¢	Provide support for computer systems in case of hardware and software incidents\r\nâ€¢	Provide support for mobile devices (iPad, Iphone) in case of software incidents\r\nâ€¢	Provide support of inventory units (monitors, local printers, local scanners and notebook docking stations) as well as support for local network printer systems\r\nâ€¢	Receive materials and spare parts, inventory, prepare for installation, install and ensure a feedback to customers.\r\nâ€¢	Demonstrate excellent customer service at all times\r\nTechnical/Business Skills\r\nâ€¢	Good technical knowledge of workplace environment and end-user services: Win7/Win10 environment, General use applications (Office 2007/2016 and 365), Mobile services (AirWatch, RSA token, Mail services, Collaboration tools, MS SCCMâ€¦)\r\nâ€¢	Good knowledge of Apple environment (Mac, IPhoneâ€¦)\r\nâ€¢	ITIL basics\r\nâ€¢	IT Support experience in a large enterprise environment (+ 1000 users), experience in a Trading environment would be a bonus\r\n'),
(19, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support - London', '09 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Windows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\n', 'Onsite', 'Full-time', 'JOB PURPOSE:  \r\n\r\nProvide IT, IS & Telecommunications first and second line support to approximately 150 users in both our London, Cambridge and Munich offices. This includes ensuring all calls for support are dealt with promptly and appropriately, installing and configuring computers, associated peripherals, software and carrying out daily monitoring and checks of all IT Systems to ensure all systems are operating correctly and efficiently. \r\n\r\n\r\nKEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n'),
(20, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - London', '13 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'ESSENTIAL\r\nWindows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\nConcept of virtual environment\r\nPC/Laptop hardware components & Build Process\r\n2-3 years\r\nRemote & On prem Support\r\nBasic AD Tasks (Add users, Group Changes)\r\n', 'Onsite', 'Full-time', 'JOB PURPOSE:  \r\n\r\nProvide IT, IS & Telecommunications first and second line support to approximately 150 users in both our London, Cambridge and Munich offices. This includes ensuring all calls for support are dealt with promptly and appropriately, installing and configuring computers, associated peripherals, software and carrying out daily monitoring and checks of all IT Systems to ensure all systems are operating correctly and efficiently. \r\n\r\n\r\nKEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n\r\nOTHER DUTIES:\r\n\r\nâ€¢	To maintain personal and professional development to meet the changing demands of the job and participate in appropriate training activities.\r\nâ€¢	To undertake health and safety duties appropriate within the post.\r\nâ€¢	Be prepared to work flexibly to cover duties outside of normal working hours to ensure the provision of the IT services to the firm.\r\n\r\nPERSONAL SPECIFICATION:\r\n\r\nâ€¢	Flexible\r\nâ€¢	Patient\r\nâ€¢	Ability to Prioritise\r\n'),
(21, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - London', '15 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Windows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\nConcept of virtual environment\r\nPC/Laptop hardware components & Build Process\r\n2-3 years\r\nRemote & On prem Support\r\nBasic AD Tasks (Add users, Group Changes)\r\n\r\n', 'Onsite', 'Full-time', 'â€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n'),
(22, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - London', '16 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Windows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\nConcept of virtual environment\r\nPC/Laptop hardware components & Build Process\r\n2-3 years\r\nRemote & On prem Support\r\nBasic AD Tasks (Add users, Group Changes)\r\n', 'Hybrid', 'Full-time', 'â€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n'),
(23, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - London', '16 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Windows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\nConcept of virtual environment\r\nPC/Laptop hardware components & Build Process\r\n2-3 years\r\nRemote & On prem Support\r\nBasic AD Tasks (Add users, Group Changes)\r\n', 'Onsite', 'Full-time', 'KEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n\r\n'),
(24, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - Ireland', '18 Jun 2022', '', '', '', 'Kerry', 'Ireland', '', '', '', 'Desired Requirements\r\n Excellent written and verbal communication and customer service skills with proven ability to work in fast paced environments \r\nCommercial experience in an IT support technician role that includes 2+ years of technical support experience in a hybrid Windows and MAC environment\r\n Experience in working with a helpdesk operations, to include Windows and Mac clients\r\n Hands on experience and in-depth knowledge of Macintosh technologies\r\n Windows +  Experience with mobile applications/products including: iPhone, iPad, and Android platforms Expertise in iPad / iPhone \r\nSelf-starter that is able to collaborate actively with others in a cross-functional team Proven attention to detail and high standards for quality\r\n', 'Onsite', 'Full-time', 'Base Skill Set \r\nMicrosoft certified System Administrator in XP/WIN 7/Win 10 (certified engineers is not mandatory skillset requirement, its preferred. Candidate having professional desktop support environment experience will suffice the requirement and if the required knowledge is demonstrated by them). \r\nExperience supporting HP, Canon and Xerox printers\r\n Good working knowledge of Active Directory\r\n providing technical support in a fast paced and constantly changing environment up to executive management level. \r\nExcellent customer service and communication skills including providing VIP support Experience supporting large Windows-based environments to desktop level with emphasis on Win 7 OS / office 2010 as well as Win 10 and O365 \r\nSupport video conferencing units. \r\nSupport of mobile devices \r\nHands and feet support for Server, Storage, Backup & Network equipment \r\nExperience in troubleshooting basic application issues, and also deeper diagnosis under direction from remote teams \r\n'),
(25, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - London', '18 Jun 2022', '', '', '', 'London', 'United Kingdom', '', '', '', 'Windows 10 - 3-4 years\r\nOffice 365 (Word/Excel/Power Point) 2-3 years\r\nMicrosoft Edge \r\nUnderstanding Networking TCP/IP / DNS / AD\r\nExperience in IT Helpdesk procedures & processes 3-4 Years Exposure \r\nAnti-virus / SPAM / Malware\r\nOutlook 365 â€“ Online 2-3 years\r\nConcept of virtual environment\r\nPC/Laptop hardware components & Build Process\r\n2-3 years\r\nRemote & On prem Support\r\nBasic AD Tasks (Add users, Group Changes)\r\n', 'Onsite', 'Full-time', 'KEY RESPONSIBILITIES:\r\n\r\nâ€¢	To provide technical support to users for all computer hardware, software and associated peripherals.\r\nâ€¢	To log support calls and document their outcome to facilitate the resolution of common queries and keep the users informed of the progress.\r\nâ€¢	To redirect or escalate support requests to the appropriate member of the IT Support team.\r\nâ€¢	To deploy computers and associated peripherals including new installations and the redeployment of existing equipment.\r\nâ€¢	To install and configure operating systems and software to agreed standards.\r\nâ€¢	To assist in the compilation and maintenance of an accurate inventory of hardware and software.\r\nâ€¢	To provide at all times a professional, courteous and rapid response to individual users.\r\nâ€¢	To liaise with colleagues for continuity\r\nâ€¢	To conform to all the firm policies and guidelines with respect to information systems.\r\nâ€¢	To provide one to one training to end users on the use of IT Systems.\r\nâ€¢	Server monitoring, ensuring correct functionality and maintenance planning.\r\nâ€¢	Identifying and addressing complex IT problems.\r\nâ€¢	Management of Telephone system.\r\nâ€¢	Managing various user accounts such as Windows domain, email and other systems, ensuring that appropriate levels of security are maintained.\r\nâ€¢	To ensure initial daily checks are completed and any issues raised to IT Manager and resolved where possible.\r\nâ€¢	Maintain backup files where manual intervention is appropriate.\r\nâ€¢	Review processes with IT Manager periodically.\r\nâ€¢	Adhere to policies and procedures.\r\nâ€¢	If instructed to do so, attend the Cambridge to resolve any IT issues. Provide report to IT Manager. \r\nâ€¢	To undertake such projects of a level appropriate with the responsibility of the post, as designated by the IT Manager or senior member of a department\r\nâ€¢	To undertake such other work as may be assigned which is consistent with the nature of the job and its level of responsibility.\r\n');
INSERT INTO `jobs` (`id`, `Fullname`, `Company_name`, `Job_title`, `Job_posted`, `Phone`, `Email`, `Service`, `Location`, `Location_country`, `Experience_Range`, `Salary_Range`, `Sector`, `Skills`, `Work_type`, `Job_type`, `Job_description`) VALUES
(26, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - Ireland', '20 Jun 2022', '', '', '', 'Kerry', 'Ireland', '', '', '', 'Additional skill set requirements (desired) \r\nExperience supporting applications in an enterprise environment \r\nExperience with Microsoft System Center Configuration Manager specifically on Reporting, patch management and image deployment. \r\nKnowledge of MAC OS in an enterprise environment \r\nBA or equivalent job related experience \r\nImaging \r\nITIL v3 foundation qualification. \r\nMicrosoft certified System Administrator in XP/WIN 7 \r\nSupport of End point for video conferencing units.\r\n', 'Onsite', 'Full-time', 'Base Skill Set \r\nMicrosoft certified System Administrator in XP/WIN 7/Win 10 (certified engineers is not mandatory skillset requirement, its preferred. Candidate having professional desktop support environment experience will suffice the requirement and if the required knowledge is demonstrated by them). \r\nExperience supporting HP, Canon and Xerox printers\r\n Good working knowledge of Active Directory\r\n providing technical support in a fast paced and constantly changing environment up to executive management level. \r\nExcellent customer service and communication skills including providing VIP support Experience supporting large Windows-based environments to desktop level with emphasis on Win 7 OS / office 2010 as well as Win 10 and O365.\r\n'),
(27, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'AWS/DevOps Engineer', '21 Jun 2022', '', '', '', 'Bangalore', 'India', '', '', '', 'Key Skills\r\n\r\n1. Building and setting up new development tools and infrastructure. \r\n2. Should have excellent knowledge of AWS cloud services (Added advantage Azure Web services). \r\n3. Should have excellent knowledge of Docker and Kubernetes. \r\n4. Ensuring that systems are safe and secure against cybersecurity threats. \r\n5. Working with software developers and software engineers to ensure that development follows established processes and works as intended. \r\n6. Planning out projects and being involved in project management decisions. \r\n7. Having excellent knowledge of cloud infrastructure. \r\n8. Understanding the needs of stakeholders and conveying this to developers. \r\n9. Working on ways to automate and improve development and release processes. \r\n', 'Onsite', 'Full-time', '1.	At least 1-3years of hands-on professional experience in the DevOps/Infrastructure Engineering domain.\r\n2.	Proficiency Linux, Opensource, Infrastructure Engineering, DevOps fundamentals.\r\n3.	Must have good understanding of the Software Development Lifecycle.\r\n4.	Hands-on experience with Infrastructure as Code, using CloudFormation, Terraform, or other tools.\r\n5.	Ability to implement modern cloud Integration architecture\r\n6.	Experience developing cloud-native CI/CD workflows and tools, such as Jenkins, Bamboo, TeamCity, Code Deploy (AWS), and GitLab.\r\n7.	The candidate must have flair to learn and grow and lead the team.\r\n8.	Candidate must have good communication, interpersonal and analytical skills.\r\n9.	The candidate must be well versed in the English Language.\r\n10.	Strong awareness of security considerations and tools used to integrate with the build pipelines etc.\r\n'),
(28, 'Test Login', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Desktop Support Engineer - Kerry - Ireland', '21 Jun 2022', '', '', '', 'Kerry', 'Ireland', '', '', '', 'Excellent written and verbal communication and customer service skills with proven ability to work in fast paced environments \r\nCommercial experience in an IT support technician role that includes 2+ years of technical support experience in a hybrid Windows and MAC environment\r\n Experience in working with a helpdesk operations, to include Windows and Mac clients\r\n Hands on experience and in-depth knowledge of Macintosh technologies\r\n Windows +  Experience with mobile applications/products including: iPhone, iPad, and Android platforms Expertise in iPad / iPhone \r\n', 'Onsite', 'Full-time', 'Microsoft certified System Administrator in XP/WIN 7/Win 10 (certified engineers is not mandatory skillset requirement, its preferred. Candidate having professional desktop support environment experience will suffice the requirement and if the required knowledge is demonstrated by them). \r\nExperience supporting HP, Canon and Xerox printers\r\n Good working knowledge of Active Directory\r\n providing technical support in a fast paced and constantly changing environment up to executive management level. \r\nExcellent customer service and communication skills including providing VIP support Experience supporting large Windows-based environments to desktop level with emphasis on Win 7 OS / office 2010 as well as Win 10 and O365 \r\nSupport video conferencing units. \r\nSupport of mobile devices \r\nHands and feet support for Server, Storage, Backup & Network equipment \r\nExperience in troubleshooting basic application issues, and also deeper diagnosis under direction from remote teams \r\n'),
(29, 'Poornima Jaishekar', 'Cognate Global Business Solutions PRIVATE LIMITED', 'Technical Business Analyst: ', '22 Jun 2022', '', '', '', 'Pondicherry', 'India', '', '', '', 'Requirements gathering, Proposal Creation, SRS documentation, BRD, Clickable wireframes ', 'Onsite', 'Full-time', 'Technical Business Analyst: \r\n\r\n> The candidate should have a minimum of 2+ Years of Experience working on Requirements gathering.\r\n> Good Communication Skills.\r\n> Technical Knowledge to be able to interact with the internal tech team and arrive at project estimates. \r\n> Proposal Creation, SRS documentation, BRD, Clickable wireframes etc\r\n> Candidate must be willing to work from an Office located in Pondicherry.Job Location : Pondicherry\r\n'),
(43, 'Admin', 'Cognate Global Business Solutions PRIVATE LIMITED', 'web development', '30 Jun 2022', '', '', '', 'Tamil Nadu', 'India', '1 Year - 5 Years', '50,000 - 100000', '', 'k klkl,', 'Onsite', 'Full-time', 'l,klkkl');

-- --------------------------------------------------------

--
-- Table structure for table `location_india`
--

CREATE TABLE `location_india` (
  `id` int(40) NOT NULL,
  `Location_india` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_india`
--

INSERT INTO `location_india` (`id`, `Location_india`) VALUES
(1, 'Ahmedabad'),
(2, 'Baroda'),
(3, 'Bangalore'),
(4, 'Bhubaneswar'),
(5, 'Chandigarh'),
(6, 'Chennai'),
(7, 'Cochin'),
(8, 'Coimbatore'),
(9, 'Gurgaon'),
(10, 'Guwahat'),
(11, 'Hubli'),
(12, 'Hyderabad'),
(13, 'Indore'),
(14, 'Jaipur'),
(15, 'Jamshedpur'),
(16, 'Karnataka'),
(17, 'Kolkata'),
(18, 'Lucknow'),
(19, 'Madurai'),
(20, 'Mangalore'),
(21, 'Mumbai'),
(22, 'Nagpur'),
(23, 'New Delhi'),
(24, 'Patna'),
(25, 'Pune'),
(26, 'Rajkot'),
(27, 'Surat'),
(28, 'Trivandrum'),
(29, 'Visakapatnam');

-- --------------------------------------------------------

--
-- Table structure for table `location_uk`
--

CREATE TABLE `location_uk` (
  `id` int(11) NOT NULL,
  `Location_UK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_uk`
--

INSERT INTO `location_uk` (`id`, `Location_UK`) VALUES
(1, 'Aberconwy and Colwyn'),
(2, 'Aberdeen City'),
(3, 'Aberdeenshire'),
(4, 'Anglesey'),
(5, 'Angus'),
(6, 'Antrim'),
(7, 'England'),
(8, 'Argyll and Bute'),
(9, 'Armagh'),
(10, 'Avon'),
(11, 'Ayrshire'),
(12, 'Bath and NE Somerset'),
(13, 'Bedfordshire'),
(14, 'Belfast'),
(15, 'Berkshire'),
(16, 'Berwickshire'),
(17, 'BFPO'),
(18, 'Blaenau Gwent'),
(19, 'Buckinghamshire'),
(20, 'Caernarfonshire'),
(21, 'Caerphilly'),
(22, 'Caithness'),
(23, 'Cambridgeshire'),
(24, 'Cardiff'),
(25, 'Cardiganshire'),
(26, 'Ceredigion'),
(27, 'Channel Islands'),
(28, 'Cheshire'),
(29, 'City of Bristol'),
(30, 'Clackmannanshire'),
(31, 'Clwyd'),
(32, 'Conwy'),
(33, 'Cornwall/Scilly'),
(34, 'Cumbria'),
(35, 'Denbighshire'),
(36, '	\r\nDerbyshire'),
(37, 'Derry/Londonderry'),
(38, 'Devon'),
(39, 'Dorset'),
(40, 'Down'),
(41, 'Dumfries and Galloway'),
(42, 'Dunbartonshire'),
(43, 'Dundee'),
(44, 'Durham'),
(45, 'Dyfed'),
(46, 'East Ayrshire'),
(47, '	\r\nEast Dunbartonshire'),
(48, '	\r\nEast Lothian'),
(49, 'East Renfrewshire'),
(50, 'East Riding Yorkshire'),
(51, 'East Sussex'),
(52, 'Edinburgh'),
(53, 'England'),
(54, 'Essex'),
(55, 'Falkirk'),
(56, 'Fermanagh'),
(57, 'Fife'),
(58, 'Flintshire'),
(59, 'Glasgow'),
(60, 'Gloucestershire'),
(61, 'Greater London'),
(62, 'Greater Manchester'),
(63, 'Gwent'),
(64, 'Gwynedd'),
(65, 'Hampshire'),
(66, 'Hartlepool'),
(67, 'Hereford and Worcester'),
(68, 'Hertfordshire'),
(69, 'Highlands'),
(70, 'Inverclyde'),
(71, 'Inverness-Shire'),
(72, 'Isle of Man\r\n'),
(73, 'Isle of Wight'),
(74, 'Kent'),
(75, 'Kincardinshire'),
(76, 'Kincardinshire'),
(77, 'Kinross-Shire'),
(78, 'Kirklees'),
(79, 'Lanarkshire'),
(80, 'Lancashire'),
(81, 'Leicestershire'),
(82, 'Lincolnshire'),
(83, 'Londonderry'),
(84, 'Londonderry'),
(85, 'Merthyr Tydfil'),
(86, 'Mid Glamorgan'),
(87, 'Mid Glamorgan'),
(88, 'Middlesex'),
(89, 'Monmouthshire'),
(90, 'Moray'),
(91, 'Neath & Port Talbot'),
(92, 'Newport'),
(93, 'Norfolk'),
(94, 'North Ayrshire'),
(95, 'North East Lincolnshire'),
(96, 'North Lanarkshire'),
(97, 'North Lincolnshire'),
(98, 'North Somerset'),
(99, 'North Yorkshire'),
(100, 'Northamptonshire'),
(101, 'Northern Ireland'),
(102, 'Northumberland'),
(103, 'Nottinghamshire'),
(104, 'Orkney and Shetland Isles'),
(105, 'Oxfordshire'),
(106, 'Pembrokeshire'),
(107, 'Perth and Kinross'),
(108, 'Powys\r\n\r\n'),
(109, 'Redcar and Cleveland'),
(110, 'Renfrewshire'),
(111, 'Rhonda Cynon Taff'),
(112, 'Rutland'),
(113, 'Scottish Borders'),
(114, 'Shetland'),
(115, 'Shropshire'),
(116, 'Somerset'),
(117, 'South Ayrshire'),
(118, 'South Glamorgan'),
(119, 'South Gloucesteshire'),
(120, 'South Lanarkshire'),
(121, 'South Yorkshire'),
(122, 'Staffordshire'),
(123, 'Stirling'),
(124, 'Stockton On Tees'),
(125, 'Suffolk'),
(126, 'Surrey'),
(127, 'Swansea'),
(128, 'Torfaen'),
(129, 'Tyne and Wear'),
(130, 'Tyrone'),
(131, 'Vale Of Glamorgan'),
(132, 'Wales'),
(133, 'Warwickshire'),
(134, 'West Berkshire'),
(135, 'West Dunbartonshire'),
(136, 'West Glamorgan'),
(137, 'West Lothian'),
(138, 'West Midlands'),
(139, 'West Sussex'),
(140, 'West Yorkshire'),
(141, 'Western Isles'),
(142, 'Wiltshire'),
(143, 'Wirral'),
(144, 'Worcestershire'),
(145, 'Wrexham'),
(146, 'York');

-- --------------------------------------------------------

--
-- Table structure for table `location_us`
--

CREATE TABLE `location_us` (
  `id` int(40) NOT NULL,
  `Location_US` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_us`
--

INSERT INTO `location_us` (`id`, `Location_US`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia '),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Indiana'),
(15, 'Iowa'),
(16, 'Kansas'),
(17, 'Kentucky'),
(18, 'Louisiana'),
(19, 'Maine'),
(20, 'Maryland'),
(21, 'Massachusetts'),
(22, 'Michigan'),
(23, 'Minnesota'),
(24, 'Mississippi'),
(25, 'Nevada'),
(26, 'Missouri'),
(27, 'Montana'),
(28, 'New York (state)'),
(29, 'Washington'),
(30, 'West_Virginia');

-- --------------------------------------------------------

--
-- Table structure for table `request_callback`
--

CREATE TABLE `request_callback` (
  `id` int(40) NOT NULL,
  `Fullname` varchar(32) NOT NULL,
  `Email` varchar(42) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Designation` varchar(200) NOT NULL,
  `Company` varchar(200) NOT NULL,
  `Branch` varchar(200) NOT NULL,
  `Service` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(200) NOT NULL,
  `Skills` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `Skills`) VALUES
(1, 'PHP'),
(2, 'Python'),
(3, 'Java'),
(4, 'C'),
(5, 'C++'),
(6, 'Angular JS/ASP .NET Developer'),
(7, 'React JS'),
(8, 'Devops/AWS'),
(9, 'WMS');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `Fullname` varchar(32) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `email_verification_link` varchar(200) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Confirm_password` varchar(50) NOT NULL,
  `User_type` varchar(40) NOT NULL DEFAULT 'Job Seeker',
  `Phone` varchar(15) NOT NULL,
  `Image` varchar(60) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Industry` varchar(300) NOT NULL,
  `Skills` varchar(255) NOT NULL,
  `Function` varchar(200) NOT NULL,
  `Education` varchar(40) NOT NULL,
  `Experience_years` varchar(40) NOT NULL,
  `Experience_months` varchar(40) NOT NULL,
  `Current_Salary_lakhs` varchar(40) NOT NULL,
  `Current_Salary_thousand` varchar(40) NOT NULL,
  `Expected_Salary_lakhs` varchar(40) NOT NULL,
  `Expected_Salary_thousand` varchar(40) NOT NULL,
  `Recruiters_note` varchar(10000) NOT NULL,
  `Company_Name` varchar(200) NOT NULL,
  `GST` varchar(200) NOT NULL,
  `PAN_No` varchar(200) NOT NULL,
  `CV` text NOT NULL,
  `CV_date` varchar(200) NOT NULL,
  `Email_status` varchar(50) NOT NULL DEFAULT 'unverified',
  `Role` varchar(255) NOT NULL,
  `Post_count` int(200) NOT NULL,
  `otp` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Fullname`, `Email`, `email_verification_link`, `Password`, `Confirm_password`, `User_type`, `Phone`, `Image`, `City`, `Industry`, `Skills`, `Function`, `Education`, `Experience_years`, `Experience_months`, `Current_Salary_lakhs`, `Current_Salary_thousand`, `Expected_Salary_lakhs`, `Expected_Salary_thousand`, `Recruiters_note`, `Company_Name`, `GST`, `PAN_No`, `CV`, `CV_date`, `Email_status`, `Role`, `Post_count`, `otp`) VALUES
(1, 'Admin', 'Admin@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', '0e7517141fb53f21ee439b355b5a1d0a', '0e7517141fb53f21ee439b355b5a1d0a', 'Admin', '9876896534', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', 'cognate global', 'gst', 'las87654', '', '', 'Verified', '', 0, 979275),
(2, 'Abhishek B D', 'abhishekbd5656@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Employee', '8105020825', 'profile.png', '', '', 'windows, Shell Script', 'Architects / Interior Design / Naval Arch', 'BCA', '2 years', '', '', '', '', '', '', '', '', '', 'AbhishekBD[3_11].pdf', '03 Mar 2021', 'Verified', '', 0, 723673),
(3, 'AMIT CHAND', 'amitchand254@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS, MS Azure, Linux, Windows', 'Fashion / Garments / Merchandising', '', '20 years', '', '', '', '', '', '', '', '', '', 'AmitChand[3_9].pdf', '04 Jun 2021', 'Verified', '', 0, 385018),
(4, 'Anand Nagaraju', 'anandnagaraju@outlook.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', '20200727-222558.jpg', '', '', 'Linux, AIX, HPUX', 'Accounting / Tax / Company Secretary / Audit', '', '1 year', '', '', '', '', '', '', '', '', '', 'Anand Nagaraju_30 days- Bangalore.pdf', '08 Jul 2021', 'Verified', '', 0, 685050),
(5, 'Shekar S', 'shekarsadula001@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'IT Software - DBA / Data warehousing', '', '7 years', '', '', '', '', '', '', '', '', '', '_Shekhar_deloite_5yrs_2mths.pdf', '02 Jan 2021', 'Verified', '', 0, 645456),
(6, 'Abilash kushwaha', 'abhilashkushwaha1993@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'HR / Administration / IR', '', '20 years', '', '', '', '', '', '', '', '', '', 'ABHILASH _3yrs_ mth.pdf', '08 Feb 2022', 'Verified', '', 0, 298622),
(7, 'Amrita Dwibedy', 'amritadwibedy58@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows , AIX, LINUX          ', 'IT Software - ERP / CRM', '', '19 years', '', '', '', '', '', '', '', '', '', 'Amrita Dwibedy_ 6yrs_3mths.pdf', '09 Mar 2022', 'Verified', '', 0, 244961),
(8, 'Ashis Kumar Sarangi', 'aksarangi55@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'J2SE,J2EE', 'Architects / Interior Design / Naval Arch', '', '14 years', '', '', '', '', '', '', '', '', '', 'Ashis Kumar Sarangi _submit.pdf', '03 Apr 2021', 'Verified', '', 0, 892670),
(9, 'Ashish Kumar Raul', 'raulashishkumar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java ', 'IT Software - Mainframe', '', '1 year', '', '', '', '', '', '', '', '', '', 'Ashish Kumar Raul Resume_15days_Java Developer.pdf', '18 May 2021', 'Verified', '', 0, 114283),
(10, 'Bharath Akinapally', 'bharath.akinapally@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Python Linux, Windows', 'IT Software - Application Programming / Maintenance', '', '6 years', '', '', '', '', '', '', '', '', '', 'Bharath Akinapally_5yrs_2mths.pdf', '23 May 2022', 'Verified', '', 0, 596075),
(11, 'Bhargava Chary  N', 'nannojibhargava@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', '', '', '16 years', '', '', '', '', '', '', '', '', '', 'Bhargava Chary Resume- 1.9 yrs_3+mths.pdf', '17 Apr 2021', 'Verified', '', 0, 249851),
(12, 'Bangaru Bhavya Sree', 'bangarubhavya3377@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java', 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des', '', '11 years', '', '', '', '', '', '', '', '', '', 'BhavyaSreeBangaru_ 1 month_Java Developer.pdf', '16 May 2022', 'Verified', '', 0, 547433),
(13, 'Chandrashekhar Marishetty', 'chandrashekhar.97016@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java 8', 'Accounting / Tax / Company Secretary / Audit', '', '20 years', '', '', '', '', '', '', '', '', '', 'Chandrashekhar_6 yrs-3mths.pdf', '26 Feb 2021', 'Verified', '', 0, 885461),
(14, 'Durga Bhavani', 'durgamaadu@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Java ,PHP', 'IT Software - Mainframe', '', '3 years', '', '', '', '', '', '', '', '', '', 'Durga Bhavani_3.11_1 mth.pdf', '25 Oct 2021', 'Verified', '', 0, 769269),
(15, 'venuvanka ganesh', 'ganeshvenuvanka88@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Python ,HTML, CSS, Windows, Linux', 'IT Software - DBA / Data warehousing', '', '9 years', '', '', '', '', '', '', '', '', '', 'Ganesh Venuvanka_4.7_55days.pdf', '14 April 2021', 'Verified', '', 0, 377768),
(16, 'Chandragopal vadlamudi', 'Chandragopal007@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'java, HTML, CSS, Linux, windows', '', '', '14 years', '', '', '', '', '', '', '', '', '', 'gopal_resume_4yrs_2 mths.pdf', '15 Sep 2021', 'Verified', '', 0, 156106),
(17, 'Gopi Krishna Grandhi', 'gopigrandhi0464@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, SQL.', 'Corporate Planning / Consulting', '', '18 years', '', '', '', '', '', '', '', '', '', 'Gopi Grandhi _4.4yrs_2 mths.pdf', '16 Jun 2021', 'Verified', '', 0, 271773),
(18, 'PRASAD', 'kambapuprasad1991@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Windows,Linux', '', '', '4 years', '', '', '', '', '', '', '', '', '', 'KAMBAPU PRASAD_5.8yrs_2 mths.pdf', '17 Jul 2021', 'Verified', '', 0, 745031),
(19, 'Kumari Rashmi', 'rashmijajwari@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'Hotels / Restaurants', '', '20 years', '', '', '', '', '', '', '', '', '', 'Kumari Rashmi_2 yrs_serving NP.pdf', '19 Apr 2022', 'Verified', '', 0, 961731),
(20, 'Sai Naveen ', 'sainaveen57344@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA', 'IT Software - Client Server', '', '15 years', '', '', '', '', '', '', '', '', '', 'M.Sai Naveen_15 days.pdf', '23 Jun 2021', 'Verified', '', 0, 749026),
(21, 'Mandula Soma Ratnam', 'mandulasomaratnam@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'IT Software - ERP / CRM', '', '3 years', '', '', '', '', '', '', '', '', '', 'Mandula Somaratnam_3.9 years _1mth.pdf', '24 Aug 2021', 'Verified', '', 0, 676678),
(22, 'Valavala Mani Surekha', 'mani.surekha1266@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'J2SE, J2EE', 'Anchoring / TV / Films / Production', '', '18 years', '', '', '', '', '', '', '', '', '', 'Mani Surekha ValaVala_2.7yrs_2mths.pdf', '21 Feb 2022', 'Verified', '', 0, 873439),
(23, 'Mihir Prakash', 'mihirp90@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, HTML,CSS', '', '', '6 years', '', '', '', '', '', '', '', '', '', 'Mihir Prakash -Java Developer Resume.pdf', '26 May 2022', 'Verified', '', 0, 292657),
(24, 'Venkata Murali Krishna Sola', 'vmuralikrishnasola@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Angular, HTML, CSS', 'IT Software - Application Programming / Maintenance', '', '14 years', '', '', '', '', '', '', '', '', '', 'Murali Krishna Sola_2.5_2mths.pdf', '27 Jun 2021', 'Verified', '', 0, 157677),
(25, 'Murali M', 'murali.infs@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java', 'Banking / Insurance', '', '20 years', '', '', '', '', '', '', '', '', '', 'Murali M_4.8yrs-2 mths.pdf', '13 Aug 2021', 'Verified', '', 0, 306665),
(26, 'NagiReddy', 'nagireddy.javainfo@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'J2EE', 'IT Software - Mainframe', '', '10 years', '', '', '', '', '', '', '', '', '', 'NagiReddy_6yrs_3 mths.pdf', '26 Jan 2022', 'Verified', '', 0, 997627),
(27, ' Naresh Reddy Yenugula', 'nareshreddy9y@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, JDBC, Servlets', '', '', '4 years', '', '', '', '', '', '', '', '', '', 'Naresh Reddy Yenugula_Java Developer.pdf', '18 Feb 2022', 'Verified', '', 0, 221049),
(28, 'Nishi Kanta Behera', 'kantanishi1993@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'IT Software - Ecommerce / Internet Technologies', '', '16 years', '', '', '', '', '', '', '', '', '', 'Nishi Kanta Behera_2.4yrs_1mth.pdf', '17 Mar 2021', 'Verified', '', 0, 933067),
(29, 'padma', 'padmahyd21@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA ,J2EE, SQL', 'Architects / Interior Design / Naval Arch', '', '18 years', '', '', '', '', '', '', '', '', '', 'padma_5.9yrs_2 mths.pdf', '13 May 2021', 'Verified', '', 0, 982408),
(30, 'Pavani Oruganti                 ', 'pavani123.oruganti@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, HTML ,JavaScript', 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des', '', '6 years', '', '', '', '', '', '', '', '', '', 'Pavani Oruganti_4 yrs_15days_submit.pdf', '14 Jun 2022', 'Verified', '', 0, 306665),
(31, 'Perugu Vikram Babu', 'peruguvikram21@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Angular ', 'Export / Import / Merchandising', '', '3 years', '', '', '', '', '', '', '', '', '', 'Perugu Vikram Babu_5 yrs_LWD june16.pdf', '16 Nov 2021', 'Verified', '', 0, 963295),
(32, 'Prathyusha Vattigunta', 'prathyushav999@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java, Python, Html, CSS, Android, AWS', 'IT Software - Mainframe', '', '1 year', '', '', '', '', '', '', '', '', '', 'Prathyusha vattigunta_5.3_ 1mth.pdf', '21 Sep 2021', 'Verified', '', 0, 458879),
(33, 'Sunil Kumar Reddy Putta', 'puttasunil.2279@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Python, SQL, Angular', 'IT Software - DBA / Data warehousing', '', '5 years', '', '', '', '', '', '', '', '', '', 'Putta Sunil Kumar_2 months.pdf', '17 Dec 2021', 'Verified', '', 0, 753695),
(34, 'RAJKUMAR VODNALA', 'rajkumarvodnala928@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java,JPA', 'Accounting / Tax / Company Secretary / Audit', '', '18 years', '', '', '', '', '', '', '', '', '', 'Rajkumar Vodnala_4_2 mths.pdf', '23 Oct 2021', 'Verified', '', 0, 642087),
(35, 'Raman Dwivedi', 'ramandwivedivolantetech@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Core Java 1.8, Python.', '', '', '14 years', '', '', '', '', '', '', '', '', '', 'Raman_Dwivedi JavaDeveloper-converted_2.6yrs_2mths.pdf', '29 Nov 2021', 'Verified', '', 0, 428962),
(36, 'Ramanjaneyulu A', 'ram.ab5690@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, XML, SQL', 'HR / Administration / IR', '', '8 years', '', '', '', '', '', '', '', '', '', 'Ramanjaneyulu A_Java Developer-90days.pdf', '30 Jun 2021', 'Verified', '', 0, 135070),
(37, 'RAMESH G', 'rameshgk.online@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, HTML, Java Script , XML', '', '', '3 years', '', '', '', '', '', '', '', '', '', 'Ramesh g k_7yrs_2months.pdf', '17 Oct 2021', 'Verified', '', 0, 601179),
(38, 'Tulasi RamKumar Kolamala', 'ramkumarkolamala@yahoo.in', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, SQL, JavaScript', 'Corporate Planning / Consulting', '', '17 years', '', '', '', '', '', '', '', '', '', 'Ramkumar kolamala_5.7yrs_3 months.pdf', '18 Nov 2021', 'Verified', '', 0, 830773),
(39, 'RAMYA REDDY MOTHE', 'motheramyareddy0904@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, C ,HTML , CSS, ', '', '', '4 years', '', '', '', '', '', '', '', '', '', 'Ramya_Java Developer Front End.pdf', '19 Jun 2021', 'Verified', '', 0, 958239),
(40, '  Ravi', 'ravi050613@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA', 'Hotels / Restaurants', '', '20 years', '', '', '', '', '', '', '', '', '', 'Ravi_3.11yrs_2 mths.pdf', '27 May 2021', 'Verified', '', 0, 952860),
(41, 'Harish Reddi', 'harishreddy96420@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'Architects / Interior Design / Naval Arch', '', '15 years', '', '', '', '', '', '', '', '', '', 'Reddi Harish_2 mths.pdf', '18 Mar 2022', 'Verified', '', 0, 582551),
(42, 'Saishrinivas Polishetti', 'p.saishrinivas3292@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java 8', 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des', '', '3 years', '', '', '', '', '', '', '', '', '', 'Saishrinivas_5yrs_3 mths.pdf', '15 Aug 2021', 'Verified', '', 0, 117663),
(43, 'SANDEEP LAKKA', 'sandeeplakka@outlook.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java 8', 'Banking / Insurance', '', '6 years', '', '', '', '', '', '', '', '', '', 'SandeepLakka_6yr_2mth.pdf', '16 June 2021', 'Verified', '', 0, 365104),
(44, 'Sathya Pasupuleti', 'sathyanagamani1991@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'IT Software - ERP / CRM', '', '1 year', '', '', '', '', '', '', '', '', '', 'Sathya Pasupuleti_4.6yrs_1 month.pdf', '19 Feb 2022', 'Verified', '', 0, 883762),
(45, 'Ramsatyanarayana', 'sathya.mallula265@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, SQL', 'Art Director / Graphic / Web Designer', '', '7 years', '', '', '', '', '', '', '', '', '', 'Satya_2.9_15 days.pdf', '20 Jan 2021', 'Verified', '', 0, 865638),
(46, 'SIDDHARTH BISOYI', 'siddharthbisoyi2@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'CSR & Sustainability', '', '18 years', '', '', '', '', '', '', '', '', '', 'Siddharth Bisoyi _4.5yrs_1 mth.pdf', '23 Aug 2021', 'Verified', '', 0, 654564),
(47, 'Sivaparvathi Vutla', 'sivaparvathi.pac@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java, J2EE, JMS', 'IT Software - Application Programming / Maintenance', '', '16 years', '', '', '', '', '', '', '', '', '', 'Sivaparvathi Vutula.pdf', '18 Jul 2021', 'Verified', '', 0, 367016),
(48, 'Snigdha Reddy Mekala', 'snigdhareddy115@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java', 'Analytics & Business Intelligence', '', '4 years', '', '', '', '', '', '', '', '', '', 'Snigdha Resume_2.1yrs_1 month.pdf', '18 Aug 2021', 'Verified', '', 0, 884815),
(49, 'SRAVAN KUMAR', 'sravankp690@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, SQL, Python', 'IT Software - Mainframe', '', '16 years', '', '', '', '', '', '', '', '', '', 'Sravan Kumar_5.6yrs_2 mths.pdf', '19 Jan 2022', 'Verified', '', 0, 458117),
(50, 'Sreenivasulu Sadu', 'sreenu.config@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'HTML, CSS, JavaScript, \nAngular ,Java', 'Engineering Design / R&D', '', '3 years', '', '', '', '', '', '', '', '', '', 'Sreenivasulu_Sadu_Java_FullStack_4 Yrs_2mths.pdf', '17 May 2021', 'Verified', '', 0, 525987),
(51, 'PALIVELA VEERABABU', 'VEERABABUPALIVELA85@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Java', 'IT - Hardware / Telecom / Technical Staff / Support', '', '17 years', '', '', '', '', '', '', '', '', '', 'Veerababu_2.7Yrs_2 mths.pdf', '16 June 2021', 'Verified', '', 0, 761967),
(52, 'Venkata Krishna', 'venkatakrishna18.goda@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA', 'Banking / Insurance', '', '20 years', '', '', '', '', '', '', '', '', '', 'VenkataKrishna_4 yrs_3 mths.pdf', '18 Mar 2022', 'Verified', '', 0, 549740),
(53, 'Vipin Kumar Patel', 'patelvipinkumar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, MySQL, AWS', '', '', '6 years', '', '', '', '', '', '', '', '', '', 'Vipin Kumar Patel_expected 10L Neg_ Accenture_3mths NP.pdf', '19 Sep 2021', 'Verified', '', 0, 538513),
(54, 'Vivek Kumar Patel', 'springboot.ai@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'Anchoring / TV / Films / Production', '', '8 years', '', '', '', '', '', '', '', '', '', 'Vivek Patel_Java developer_6.15 L_3mths.pdf', '20 Jul 2022', 'Verified', '', 0, 594053),
(55, 'Areti Saikrishna', 'saikrishnadaddy7@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'DotNet, PHP ', 'Architects / Interior Design / Naval Arch', '', '18 years', '', '', '', '', '', '', '', '', '', 'Areti Saikrishna_2yrs_.net.pdf', '16 Oct 2021', 'Verified', '', 0, 393314),
(56, 'ATHAR MEHDI ', 'athar_mehdi89@yahoo.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Asp.Net , VB.Net, C#', '', '', '9 years', '', '', '', '', '', '', '', '', '', 'AtharM_resume_8.9yrs_.net.pdf', '21 May 2022', 'Verified', '', 0, 312307),
(57, 'Deepak HN', 'deepu.rrr@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '\nC, C#,  ASP.NET', 'Beauty / Fitness / Spa Services', '', '15 years', '', '', '', '', '', '', '', '', '', 'DeepakHN_8yrs_.Net.pdf', '23 Nov 2021', 'Verified', '', 0, 840954),
(58, 'Harsha Prasad', 'harshap9484@yahoo.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'ASP.Net \n', '', '', '9 years', '', '', '', '', '', '', '', '', '', 'Harsha Prasad_.NET_10yrs.pdf', '16 Sep 2021', 'Verified', '', 0, 876578),
(59, 'MISHEL MALIK', 'mishelmalik7993@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'ASP.Net MVC, C#, ASP.Net,', 'Export / Import / Merchandising', '', '10 years', '', '', '', '', '', '', '', '', '', 'MISHEL MALIK_.net_3+.pdf', '27 Dec 2021', 'Verified', '', 0, 893481),
(60, 'Monika', 'monikar029@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '.Net , ASP.Net MVC', 'IT Software - ERP / CRM', '', '8 years', '', '', '', '', '', '', '', '', '', 'Monika_6+yrs_.NET.pdf', '18 Jul 2021', 'Verified', '', 0, 897108),
(61, 'Naga Sandhya Pothireddy', 'pothireddy413@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Dot Net', 'IT Software - Client Server', '', '6 years', '', '', '', '', '', '', '', '', '', 'NagaSandhyaPothireddy_5yrs_.NET.pdf', '19 Mar 2021', 'Verified', '', 0, 358404),
(62, 'NAGASHREE   K', 'nagashree911@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'C sharp', 'Accounting / Tax / Company Secretary / Audit', '', '20 years', '', '', '', '', '', '', '', '', '', 'Nagashree+K-_7+yrs.pdf', '24 Jun 2021', 'Verified', '', 0, 942338),
(63, 'NEERAJ KUMAR SINGH', 'jerry231088@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'NodeJS', 'Fashion / Garments / Merchandising', '', '16 years', '', '', '', '', '', '', '', '', '', 'Neeraj Kumar Singh_6 yrs_.net.pdf', '23 Aug 2020', 'Verified', '', 0, 559818),
(64, 'parshwa K Shah', 'parshwashah007@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Microsoft ,C# , ASP, NET, ASP', '', '', '9 years', '', '', '', '', '', '', '', '', '', 'Parshwa+Shah-6+_.NET_full Stack.pdf', '15 Oct 2020', 'Verified', '', 0, 972228),
(65, 'SHAMBHAVI', 'shambhavi240@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'C#, .Net Core, Asp.Net', 'Analytics & Business Intelligence', '', '2 years', '', '', '', '', '', '', '', '', '', 'ShambhaviResume_2yrs_.net.pdf', '17 Dec 2020', 'Verified', '', 0, 598006),
(66, 'SHRUJANA U', 'shrujanaundavalli@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'C#,ASP.NET', '', '', '9 years', '', '', '', '', '', '', '', '', '', 'SHRUJANA.U_.NET_genuine_1.2yrs_1mth.pdf', '21 Nov 2021', 'Verified', '', 0, 920596),
(67, 'S U N I L   K U M A R   B ', 'sunilkumarb2005@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '.Net ', 'Corporate Planning / Consulting', '', '15 years', '', '', '', '', '', '', '', '', '', 'Sunil Kumar B_.NET_10yyrs.pdf', '26 May 2020', 'Verified', '', 0, 874250),
(68, 'Swapnil Raj', 'ajswapnil06@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'HTML, CSS, JAVASCRIPT', '', '', '18 years', '', '', '', '', '', '', '', '', '', 'Swapnil Raj_.NET_2yrs.pdf', '17 Aug 2021', 'Verified', '', 0, 615547),
(69, ' P R A B H O D A BS', 'prabhoda.kurthekar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'C# .Net, LINQ', 'Beauty / Fitness / Spa Services', '', '19 years', '', '', '', '', '', '', '', '', '', 'Prabhoda__DotNet_13+yrs.pdf', '19 Sep 2020', 'Verified', '', 0, 254296),
(70, 'Ananta Gunvanta Ghatol', 'agghatol@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Devops , AWS', 'Guards / Security Services', '', '3 years', '', '', '', '', '', '', '', '', '', 'AnantaGunvanataGhatol[4_6].pdf', '20 Mar 2020', 'Verified', '', 0, 585043),
(71, 'Anirudh Patil', 'anirudhpatilmca@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS ', 'Airline / Reservations / Ticketing / Travel', '', '19 years', '', '', '', '', '', '', '', '', '', 'AnirudhLPatil[7_0].pdf', '19 dec 2020', 'Verified', '', 0, 169665),
(72, 'Anuj Kumar Rohit', 'anujkumarrohit@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS , Python ', '', '', '14 years', '', '', '', '', '', '', '', '', '', 'AnujKumarRohit[8_0].pdf', '21 Jul 2020', 'Verified', '', 0, 303880),
(73, 'ARE SUDHEER BABU', 'sudheerare024@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'Engineering Design / R&D', '', '20 years', '', '', '', '', '', '', '', '', '', 'AreSudheerBabu[2_9].pdf', '19 Aug 2020', 'Verified', '', 0, 608112),
(74, 'ARUP KUMAR DAS ', 'arup.kumar.das06@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Windows , Linux', 'Anchoring / TV / Films / Production', '', '3 years', '', '', '', '', '', '', '', '', '', 'Arup Kumar Das _10 yrs _13L.pdf', '27 May 2021', 'Verified', '', 0, 129386),
(75, 'Ashish Kumar', 'kumar1010ashish@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS ,DevOps', 'Hotels / Restaurants', '', '9 years', '', '', '', '', '', '', '', '', '', 'AshishKumar[6_0].pdf', '18 Feb 2021', 'Verified', '', 0, 877583),
(76, 'ASHWINI G', 'ashwini.ganapathy4130@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Git, GitHub', '', '', '18 years', '', '', '', '', '', '', '', '', '', 'AshwiniG[3_3].pdf', '16 Jan 2022', 'Verified', '', 0, 491484),
(77, 'Bala Harish N P', 'harishnelapati777@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'Art Director / Graphic / Web Designer', '', '16 years', '', '', '', '', '', '', '', '', '', 'BalaHarishNelapati[3_4].pdf', '07 May 2021', 'Verified', '', 0, 603504),
(78, 'Balambika Ganesan', 'balambika.g@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'DevOps, AWS, OS', '', '', '4 years', '', '', '', '', '', '', '', '', '', 'BalambikaGanesan[6_0].pdf', '09 Jul 2020', 'Verified', '', 0, 974659),
(79, 'BANDLA SANDEEP', 'bandlasandeep77@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'LINUX Ubuntu, Windows', 'IT - Hardware / Telecom / Technical Staff / Support', '', '19 years', '', '', '', '', '', '', '', '', '', 'BANDLASANDEEP[4_2].pdf', '08 Oct 2020', 'Verified', '', 0, 148609),
(80, 'Lokesh B', 'beesabathini.lokesh@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Linux, Unix', 'Accounting / Tax / Company Secretary / Audit', '', '2 years', '', '', '', '', '', '', '', '', '', 'BeesabathiniLokesh[3_0].pdf', '23 Jul 2021', 'Verified', '', 0, 995881),
(81, 'Bhabani shankar Satapathy', 'bhabani9964@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Linux', 'Guards / Security Services', '', '14 years', '', '', '', '', '', '', '', '', '', 'BhabaniShankarSatapathy[2_0].pdf', '26 May 2020', 'Verified', '', 0, 989284),
(82, 'Bhanuprakash Y', 'BhanuHN0011@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Linux', '', '', '5 years', '', '', '', '', '', '', '', '', '', 'BhanuprakashNaidu[3_6] (1).pdf', '19 Mar 2021', 'Verified', '', 0, 780948),
(83, 'BHARGAV ADHIMULAM', 'bhargav.adimulam@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'Corporate Planning / Consulting', '', '10 years', '', '', '', '', '', '', '', '', '', 'BhargavAdhimulam[2_0].pdf', '29 Jun 2021', 'Verified', '', 0, 336874),
(84, 'Bhupendra Joshi', 'deepakj7739@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS,Azure', 'IT Software - ERP / CRM', '', '20 years', '', '', '', '', '', '', '', '', '', 'BhupendraJoshi[6_0].pdf', '16 May 2020', 'Verified', '', 0, 955957),
(85, 'BirenderBhardwaj', 'virendra.hcl@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux, Devops', 'Fashion / Garments / Merchandising', '', '15 years', '', '', '', '', '', '', '', '', '', 'Birender (Veer) _Exp- 14L_Available immediatly.pdf', '05 Jan 2021', 'Verified', '', 0, 133963),
(86, 'Bismaya Kumar Sahoo', 'bismayakumar606@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS, GCP', '', '', '14 years', '', '', '', '', '', '', '', '', '', 'BismayaKumar[5_0].pdf', '04 Feb 2020', 'Verified', '', 0, 675633),
(87, 'BRAHMARAO MEDARAMETLA', 'brahma.devops340@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'd9310d46839fc5957115f29d979bc355', 'd9310d46839fc5957115f29d979bc355', 'Job Seeker', '', 'profile.png', '', '', ' AWS , Azure', 'Airline / Reservations / Ticketing / Travel', '', '7 years', '', '', '', '', '', '', '', '', '', 'Brahmarao[2_0].pdf', '09 Oct 2021', 'Verified', '', 0, 854868),
(88, 'B SAI VENKATESH', 'saivenkatesh450@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'UNIX ,Java', 'IT Software - MainframeIT Software - Mainframe', '', '1 year', '', '', '', '', '', '', '', '', '', 'Bsaivenkatesh[3_0].pdf', '23 Jul 2020', 'Verified', '', 0, 913123),
(89, 'CHANDRAKANTH H', 'chandrakanth2496@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java , Python', '', '', '3 years', '', '', '', '', '', '', '', '', '', 'ChandrakanthH[2_9].pdf', '14 Jan 2021', 'Verified', '', 0, 832440),
(90, 'CH SRINIVAS ', 'csrini8238@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Unix, Linux ,Windows', 'CSR & Sustainability', '', '16 years', '', '', '', '', '', '', '', '', '', 'ChandraSrinivasu[4_3].pdf', '23 Feb 2022', 'Verified', '', 0, 463816),
(91, 'LaxmaReddy', 'laxmar663@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux , Windows', '', '', '2 years', '', '', '', '', '', '', '', '', '', 'CHILUKURILAXMAREDDY[3_3].pdf', '19 Aug 2021', 'Verified', '', 0, 147848),
(92, 'CHINNADURAI K', 'chinnaduraiece07@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS, Azure ,Cloud', 'Analytics & Business Intelligence', '', '19 years', '', '', '', '', '', '', '', '', '', 'ChinnaduraiK[8_0].pdf', '26 Dec 2020', 'Verified', '', 0, 789977),
(93, 'Jahnavi Chakala', 'janujanvi3@gmil.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Microsoft, Windows', '', '', '5 years', '', '', '', '', '', '', '', '', '', 'CJahnavi[3_6].pdf', '19 May 2021', 'Verified', '', 0, 140704),
(94, 'DEEPALI WADEKAR', 'wadekar.deepali0211@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'DevOps, AWS ,Linux', 'IT Software - Ecommerce / Internet Technologies', '', '15 years', '', '', '', '', '', '', '', '', '', 'DeepaliTukaramWadekar[2_5].pdf', '19 Jun 2021', 'Verified', '', 0, 794939),
(95, 'Devi Prasad Mohanty ', 'devmohanty1991@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'LINU X ,UNIX', 'Hotels / Restaurants', '', '14 years', '', '', '', '', '', '', '', '', '', 'DeviPrasadMohanty[7_0].pdf', '12 Jan 2021', 'Verified', '', 0, 700632),
(96, 'Dhanalakshmi Ramachandran', 'dhanadivya17@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'DevOps, OS-Linux, Windows', 'IT Software - Client Server', '', '8 years', '', '', '', '', '', '', '', '', '', 'Dhanalakshmi[4_0].pdf', '06 Feb 2022', 'Verified', '', 0, 212924),
(97, 'Dhanunjaya Talari ', 'dhanunjaydev@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Linux, Centos, Ubuntu', 'HR / Administration / IR', '', '1 year', '', '', '', '', '', '', '', '', '', 'Dhanunjaya[4_4].pdf', '09 Mar 2021', 'Verified', '', 0, 482839),
(98, 'DHEERAJ ARANI', 'ARANISAIDHEERAJ@GMAIL.COM', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '\nAWS ', 'Anchoring / TV / Films / Production', '', '7 years', '', '', '', '', '', '', '', '', '', 'DheerajArani[3_5].pdf', '06 Oct 2021', 'Verified', '', 0, 656981),
(99, 'Dinkar', '4dinkar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux, Windows, Azure,\nGitHub ,Python', 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des', '', '4 years', '', '', '', '', '', '', '', '', '', 'Dinkar[3_5].pdf', '19 Aug 2021', 'Verified', '', 0, 405369),
(100, 'JANA DURGA NAGAMANI', 'durgajana2011@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux , Windows', 'Art Director / Graphic / Web Designer', '', '17 years', '', '', '', '', '', '', '', '', '', 'DurgaNagamaniJana[2_8] (1).pdf', '23 Sep 2020', 'Verified', '', 0, 885625),
(101, 'Chaithanya Deepika', 'eedigachaithanyadeepika@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'IT Software - ERP / CRM', '', '20 years', '', '', '', '', '', '', '', '', '', 'EChaithanyaDeepika[3_0].pdf', '05 Jun 2021', 'Verified', '', 0, 373159),
(102, 'EDWIN INBARAJ DEVAN', 'Edwin.devan27@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Linux', 'Content / Journalism', '', '5 years', '', '', '', '', '', '', '', '', '', 'EdwinInbarajDevan[5_0].pdf', '05 Apr 2021', 'Verified', '', 0, 935252),
(103, 'FARHAN AHEMAD', 'farhan91293@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux ,Windows NT', 'IT - Hardware / Telecom / Technical Staff / Support', '', '16 years', '', '', '', '', '', '', '', '', '', 'Farhanahemad[4_0].pdf', '07 Jun 2020', 'Verified', '', 0, 145364),
(104, 'GIRISH RP', 'girish313392@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA', 'Airline / Reservations / Ticketing / Travel', '', '7 years', '', '', '', '', '', '', '', '', '', 'GirishRP[5_10].pdf', '08 Apr 2021', 'Verified', '', 0, 637224),
(105, 'Manikanta Reddy', 'mani.devops@outlook.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'IT Software - DBA / Data warehousing', '', '5 years', '', '', '', '', '', '', '', '', '', 'GManikantaReddy[3_8].pdf', '02 Dec 2020', 'Verified', '', 0, 724030),
(106, 'ADITYA VARMA GOTTUMUKKALA', 'gottumukkalaadityavarma@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'GIT, GitHub, SVN', 'Guards / Security Services', '', '1 year', '', '', '', '', '', '', '', '', '', 'GottumukkalaAdityaVarma[5_0].pdf', '04 Jul 2021', 'Verified', '', 0, 129227),
(107, 'Govind S Kumar', 'govindskumar22@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS, Python', 'IT Software - Ecommerce / Internet Technologies', '', '14 years', '', '', '', '', '', '', '', '', '', 'GovindSKumar[5_2].pdf', '04 May 2021', 'Verified', '', 0, 749973),
(108, 'Gowthami Sivanga M              ', 'gowthamisivanga16@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'Engineering Design / R&D', '', '5 years', '', '', '', '', '', '', '', '', '', 'Gowthami[5_5].pdf', '19 Aug 2021', 'Verified', '', 0, 465942),
(109, 'Hardeep Singh', 'Hardeep.singh18@outlook.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Python, HTML, XML, CSS', '', '', '2 years', '', '', '', '', '', '', '', '', '', 'HardeepSingh[6_0].pdf', '20 Feb 2022', 'Verified', '', 0, 250470),
(110, 'HARINEE VIVEKANANDABABU', 'harineevj7991@hotmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', '4955d61d33a6cf96af919989f55a05a9', '4955d61d33a6cf96af919989f55a05a9', 'Job Seeker', '', 'profile.png', '', '', 'Linux, Windows', 'Accounting / Tax / Company Secretary / Audit', '', '17 years', '', '', '', '', '', '', '', '', '', 'HarineeVivekanandababu[2_4].pdf', '21 Mar 2020', 'Verified', '', 0, 562839),
(111, 'Harsh P Gindi', 'harshgindi007@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', '4955d61d33a6cf96af919989f55a05a9', '4955d61d33a6cf96af919989f55a05a9', 'Job Seeker', '', 'profile.png', '', '', 'C, C++, Java, Python, PHP', 'IT Software - Client Server', '', '4 years', '', '', '', '', '', '', '', '', '', 'HarshGindi[3_0].pdf', '12 Apr 2021', 'Verified', '', 0, 526504),
(112, 'HEMANTH', 'hemanthv068@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'SLES, RHEL.', 'IT Software - ERP / CRM', '', '10 years', '', '', '', '', '', '', '', '', '', 'Hemanth[5_5].pdf', '17 Jun 2020', 'Verified', '', 0, 817371),
(113, 'Kalavathi R', 'kalavathir55@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux ,Windows ,Automation', '', '', '20 years', '', '', '', '', '', '', '', '', '', 'KalavathiR[3_0].pdf', '18 Aug 2020', 'Verified', '', 0, 294816),
(114, 'KARTHIKEYAN VENKATACHALAM', 'karthikeyanv.1991@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'Export / Import / Merchandising', '', '16 years', '', '', '', '', '', '', '', '', '', 'KARTHIKEYANVENKATACHALAM[7_0].pdf', '19 May 2020', 'Verified', '', 0, 702662),
(115, 'kavya GM', 'gmkavya211996@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Python', 'Airline / Reservations / Ticketing / Travel', '', '15 years', '', '', '', '', '', '', '', '', '', 'KavyaGM[4_6].pdf', '17 Jun 2021', 'Verified', '', 0, 482999),
(116, 'Kedharnadh Aduri', 'adurikedharnadh@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'PYTHON ', 'IT Software - Mainframe', '', '2 years', '', '', '', '', '', '', '', '', '', 'kedharnadh[3_1].pdf', '17 May 2020', 'Verified', '', 0, 866734),
(117, 'Komal Urkude', 'komalurkude543@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Linux , Windows', '', '', '17 years', '', '', '', '', '', '', '', '', '', 'KomalUrkude[2_7].pdf', '23 Oct 2020', 'Verified', '', 0, 483450),
(118, 'Venkata Nagendra Kumar Kone', 'nagendra-kumar.kone@outlook.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, .NET', 'Art Director / Graphic / Web Designer', '', '5 years', '', '', '', '', '', '', '', '', '', 'KONEVENKATANAGENDRAKUMAR[2_11].pdf', '12 Mar 2021', 'Verified', '', 0, 130310),
(119, 'KRISHNAKUMAR P', 'krish0337@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Windows, Linux ', 'Fashion / Garments / Merchandising', '', '1 year', '', '', '', '', '', '', '', '', '', 'Krishnakumar[3_0].pdf', '14 Jun 2020', 'Verified', '', 0, 769193),
(120, 'Purneet Kumar Satapathy', 'purneet.k.satapathy@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'UNIX, Linux, Windows', '', '', '4 years', '', '', '', '', '', '', '', '', '', 'Purneet_Soft-Dev-Ops-ASE.pdf', '07 Oct 2021', 'Verified', '', 0, 626189);
INSERT INTO `users` (`id`, `Fullname`, `Email`, `email_verification_link`, `Password`, `Confirm_password`, `User_type`, `Phone`, `Image`, `City`, `Industry`, `Skills`, `Function`, `Education`, `Experience_years`, `Experience_months`, `Current_Salary_lakhs`, `Current_Salary_thousand`, `Expected_Salary_lakhs`, `Expected_Salary_thousand`, `Recruiters_note`, `Company_Name`, `GST`, `PAN_No`, `CV`, `CV_date`, `Email_status`, `Role`, `Post_count`, `otp`) VALUES
(121, 'Shiva Kumar T', 'tshivakumar@engineer.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, PHP', 'Hotels / Restaurants', '', '8 years', '', '', '', '', '', '', '', '', '', 'shiva_DevOps TL _30days _28L.pdf', '08 Nov 2021', 'Verified', '', 0, 692533),
(122, 'Vallikannu L', 'vallikanu.sekar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Aws', 'Analytics & Business Intelligence', '', '7 years', '', '', '', '', '', '', '', '', '', 'Vallikannu[10_0]_30%_immmediate_DevOps Lead.pdf', '05 Jul 2020', 'Verified', '', 0, 789908),
(123, 'VIPUL AGARWAL', 'vipagarwal79@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'HTML, CSS , Node.js, AngularJS', 'IT Software - Ecommerce / Internet Technologies', '', '12 years', '', '', '', '', '', '', '', '', '', '14+_yrs_exp_Technical_Test_Lead_Vipul_Agarwal.pdf', '08 Mar 2021', 'Verified', '', 0, 370780),
(124, 'ADITI', 'ady1321@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Windows, Linux', '', '', '2 years', '', '', '', '', '', '', '', '', '', 'ady_CV_v1.2.pdf', '23 Feb 2021', 'Verified', '', 0, 195909),
(125, 'Ashvin Gajera', 'ashvin2266@yahoo.co.in', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, JSON.', 'Content / Journalism', '', '11 years', '', '', '', '', '', '', '', '', '', 'Ashvin_CV.pdf', '19 Aug 2020', 'Verified', '', 0, 361936),
(126, ' Baljeev M R ', 'baljeev@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS', 'IT Software - Mainframe', '', '3 years', '', '', '', '', '', '', '', '', '', 'Baljeev.pdf', '07 Sep 2020', 'Verified', '', 0, 421354),
(127, 'Kristina Vaitiekute', 'k.vaitiekute4@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'HTML, CSS', 'IT - Hardware / Telecom / Technical Staff / Support', '', '13 years', '', '', '', '', '', '', '', '', '', 'CV_test.EN.pdf', '16 Jun 2021', 'Verified', '', 0, 810011),
(128, 'Edinaldo Lima', 'edinaldo.lima@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '\nAutomation\n', 'IT Software - Embedded /EDA /VLSI /ASIC / Chip Des', '', '14 years', '', '', '', '', '', '', '', '', '', 'Edinaldo_CVd.pdf', '21 Dec 2020', 'Verified', '', 0, 601054),
(129, 'Italo Moraes', 'italoe@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' AWS', 'Anchoring / TV / Films / Production', '', '1 year', '', '', '', '', '', '', '', '', '', 'Italo_Moraes_-_Full_Stack_Software_Engineer.pdf', '18 May 2020', 'Verified', '', 0, 828097),
(130, 'Jagdeep Bhoria', 'jagdeep.bhoria@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, C#, Python,  Visual Studio, Notepad++', 'IT Software - Ecommerce / Internet Technologies', '', '19 years', '', '', '', '', '', '', '', '', '', 'Jagdeep_Bhoria_Test_Analyst.pdf', '19 Jun 2020', 'Verified', '', 0, 325434),
(131, 'Sherry Raheem', 'sherryraheem15@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'HR / Administration / IR', '', '15 years', '', '', '', '', '', '', '', '', '', 'LatestCV2019new1.pdf', '02 Feb 2021', 'Verified', '', 0, 956447),
(132, 'NIKE  OLABINTAN ', 'toyasolabint@yahoo.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, Java script, Python, PHP, Ruby', 'IT Software - DBA / Data warehousing', '', '10 years', '', '', '', '', '', '', '', '', '', 'Nike_Olabintan_-_Tester.pdf', '06 Mar 2021', 'Verified', '', 0, 335503),
(133, ' O n d e r   T a p a r ', 'ondertapar@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Python, VBScript', 'Banking / Insurance', '', '12 years', '', '', '', '', '', '', '', '', '', 'OnderTapar.pdf', '08 May 2020', 'Verified', '', 0, 275537),
(134, 'Pradip Pack', 'pradip.pack@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'JAVA, PHP, Java script', 'IT Software - Application Programming / Maintenance', '', '15 years', '', '', '', '', '', '', '', '', '', 'PradipPackCV-06-19.pdf', '29 Jun 2021', 'Verified', '', 0, 190415),
(135, 'Pallavi Yewale', 'pallaviyewale15@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', 'Content / Journalism', '', '7 years', '', '', '', '', '', '', '', '', '', 'Resume-TestAnalyst-Automation-Manual.pdf', '17 Jul 2020', 'Verified', '', 0, 672294),
(136, 'Uyoyo oghene Okoro   ', 'okoro.uyoyo@aol.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java,\nC, Angular JS,\nHTML, CSS,\nPython\n', 'Guards / Security Services', '', '20 years', '', '', '', '', '', '', '', '', '', 'ResumeUYOYO+OKOROAnalyst.pdf', '21 Sep 2020', 'Verified', '', 0, 604994),
(137, '  REVANTH', 'rcrazy61@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java, HTML, CSS, Python,', 'Engineering Design / R&D', '', '1 year', '', '', '', '', '', '', '', '', '', 'REV_CV.pdf', '19 Aug 2020', 'Verified', '', 0, 337928),
(138, 'SATIP RANJAN PADHY', 'satippadhyds@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'R, Python, Java', 'Airline / Reservations / Ticketing / Travel', '', '10 years', '', '', '', '', '', '', '', '', '', 'Satip_7yrs_DB_ETL_CV.pdf', '23 May 2020', 'Verified', '', 0, 632867),
(139, 'Seema Kodihalli Balachandra', 'seema.sorab@gmail.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '\nUbuntu, Linux', 'Export / Import / Merchandising', '', '6 years', '', '', '', '', '', '', '', '', '', 'Seema_Testlead_CV_July2019.pdf', '26 Aug 2021', 'Verified', '', 0, 748887),
(140, 'Taiwo Afolabi Fajemirokun', 'tkfajek@yahoo.com', 'http://localhost:8889/demo/Cognate_jobsearch/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'UNIX, Jira, CA Agile', 'CSR & Sustainability', '', '2 years', '', '', '', '', '', '', '', '', '', 'TAIWO_FAJEMIROKUN_CV_Test_Analyst_updated..pdf', '29 Oct 2020', 'Verified', '', 0, 866300),
(141, 'Ashok Kumar Challa', 'ashokraj.challa.1993@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', ' Linux ,AWS , Python', '', '', '', '', '', '', '', '', '', '', '', '', 'AshokKumar[4_8].pdf', '30 Nov 2021', 'Verified', '', 0, 744690),
(142, 'AVINASH MADIWALAR', 'avinashmadiwalar@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'AWS  , DevOps', '', '', '', '', '', '', '', '', '', '', '', '', 'AvinashMadiwal[3_6].pdf', '01 Oct 2020', 'Verified', '', 0, 801253),
(143, 'GAGAN KUMAR JC', 'Gaganjc2610@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', '', '', '', '', '', '', '', '', '', '', '', '', 'GaganKumarJC[2_3].pdf', '09 Aug 2021', 'Verified', '', 0, 768783),
(144, 'Gopichand', 'gopichandganta@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Core  java, C++,C', '', '', '', '', '', '', '', '', '', '', '', '', 'GANTAGOPICHAND[4_0].pdf', '17 May 2020', 'Verified', '', 0, 201434),
(145, 'Jamseer VK', 'mzjamsheer123@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'JamseerVK[4_6].pdf', '21 May 2021', 'Verified', '', 0, 576457),
(146, 'Kanika Jain', 'Kanikajain1512@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', '', '', '', '', '', '', '', '', '', '', '', '', 'kanika_cv_sm_qa_2019_india.pdf', '23 Feb 2020', 'Verified', '', 0, 153613),
(147, 'Krishna Reddy', 'lkrishna6060@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Linux,Ubuntu', '', '', '', '', '', '', '', '', '', '', '', '', 'krishnaReddy[4_2].pdf', '14 Sep 2020', 'Verified', '', 0, 346115),
(148, 'Sowmya Bheemavarapu', 'sowmyab72@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'Java', '', '', '', '', '', '', '', '', '', '', '', '', 'Sowmya_6yrs_3 months.pdf', '19 Aug 2021', 'Verified', '', 0, 218846),
(149, ' Srikala Kuraku', 'Srikala15.kuraku@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'profile.png', '', '', 'C, Java, AWS , Python', '', '', '', '', '', '', '', '', '', '', '', '', 'Srikala Kuraku_4 yrs_2mths.pdf', '20 Feb 2021', 'Verified', '', 0, 706882),
(150, 'VIVEKANANDA REDDY RAGIPINDI', 'viveknandareddy.ragipindi@gmail.com', 'https://cognateglobal.com/cognateglobal.com/Cognate_jobsearch/2/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job Seeker', '', 'aa.php', '', '', 'JAVA,PYTHON', '', '', '', '', '', '', '', '', '', '', '', '', 'Vivekananda JAVA_Developer_3yrs_1 month.pdf', '07 Mar 2022', 'Verified', '', 0, 526400),
(151, 'Poornima Jaishekar', 'poornima.j@cognateglobal.com', 'http://jopo.co.in/email_verification.php', 'eed3a93237d9e94cea12b6526f3f03f4', 'eed3a93237d9e94cea12b6526f3f03f4', 'Admin', '', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'PRAVEEN KUMAR.pdf', '23 Jul 2021', 'unverified', '', 0, 259731),
(152, 'Test Login', 'Arcott@rediffmail.com', 'http://jopo.co.in/email_verification.php', 'b6400930bb4010e0a0f0da2d7e05c34d', 'b6400930bb4010e0a0f0da2d7e05c34d', 'Admin', '', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '28 Mar 2022', 'unverified', '', 0, 632359),
(153, 'Denisha Mehta ', 'denishap31@gmail.com', 'http://jopo.co.in/email_verification.php', 'b7c15431d9817a4e66f0371b7b92753f', 'b7c15431d9817a4e66f0371b7b92753f', 'Employee', '', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '28 May 2022', 'unverified', '', 0, 590500),
(166, 'tes', 'tes@gmail.com', 'http://jopo.co.in/email_verification.php', 'ce9b3fce235a262d940d40c8d892dbc6', 'ce9b3fce235a262d940d40c8d892dbc6', 'Employee', '', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'byp.php.pdf', '07 Jun 2022', 'unverified', '', 0, 381769),
(167, 'ikjhjn ghgjhjhng h', 'tes1@gmail.com', 'http://jopo.co.in/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job\r\n    Seeker', '0812345678', 'profile.png', '', '', 'meki', '', '', '1 year', '', '5000-10000', '', '25,000-50,000', '', 'eee', '', '', '', 'aa.php', '07 Jun 2022', 'unverified', '', 0, 144499),
(168, 'Tes', 'anjayy@gmail.com', 'http://jopo.co.in/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job\r\n    Seeker', '9112345678', 'profile.png', '', '', 'Tes', '', '', '1 year', '', '663', '', '63637', '', 'Tes', '', '', '', 'aa.php', '08 Jun 2022', 'unverified', '', 0, 440992),
(169, 'Tes', 'anjayyq@gmail.com', 'http://jopo.co.in/email_verification.php', 'cde83d11de39e5902fa33ddd99526359', 'cde83d11de39e5902fa33ddd99526359', 'Job\r\n    Seeker', '9112345679', 'profile.png', '', '', 'Tes', '', '', '2 years', '', '6377ðŸ˜Œ', '', '7373737377â¤ï¸', '', 'Tes', '', '', '', 'byp.php.pdf', '08 Jun 2022', 'unverified', '', 0, 156651),
(170, 'KP Arcot', 'Arckind@gmailcom', 'http://jopo.co.in/email_verification.php', '', '', 'Job Poster', '9632407157', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '14 Jun 2022', 'unverified', 'Founder', 2, 730262),
(171, 'Ujjal Gangopadhyay', 'augmentersujjal@gmail.com', 'http://jopo.co.in/email_verification.php', '', '', 'Recruiter', '9945757777', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15 Jun 2022', 'unverified', 'HR consultant / founder ', 3, 434960),
(172, 'Sridhar Raju', 'sri.raju07@gmail.com', 'http://jopo.co.in/email_verification.php', '', '', 'Recruiter', '9886523792', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16 Jun 2022', 'unverified', 'Founder-Partner Wise Collaborations', 1, 942953),
(173, 'Ananda Umayal', 'ananda.umayal@gmail.com', 'http://jopo.co.in/email_verification.php', '', '', 'Recruiter', '9976104454', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16 Jun 2022', 'unverified', 'Lead Recruiter', 25, 275890),
(174, 'Thyaga', 'thyaga.rajesh.v@gmail.com', 'http://jopo.co.in/email_verification.php', '', '', 'Recruiter', '8884108484', 'profile.png', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '18 Jun 2022', 'unverified', 'Founder', 2, 104042);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `function`
--
ALTER TABLE `function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_india`
--
ALTER TABLE `location_india`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_uk`
--
ALTER TABLE `location_uk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_us`
--
ALTER TABLE `location_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_callback`
--
ALTER TABLE `request_callback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `function`
--
ALTER TABLE `function`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `request_callback`
--
ALTER TABLE `request_callback`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
