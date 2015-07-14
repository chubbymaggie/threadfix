-- ----------------------------------------------------------------------
-- OpenSAMM Survey Data
--  USAGE: Use for importing only the survey. This is contained within import.sql
--	Date: August 6th 2010
--
-- 	Runtime: Command Line mysql source [file] (0.25 - 1.0 minutes)
-- 	Contains: Survey (OpenSAMM) Sections, Objective, Question, Assertion for database.
--
--  ERRORS: DO NOT run after running import.sql - Inserts will cause duplication
-- ----------------------------------------------------------------------

-- ------------------------------------
-- INSERT SURVEY OPENSAMM -------------
-- NOTE: Order is Important for -------
--       foreign key restraints. ------
-- ------------------------------------
-- [1]Survey
INSERT INTO survey VALUES (1,'OpenSAMM Maturity Survey');

-- [2]SurveySection
INSERT INTO surveysection VALUES (1,'#0B5679','#E5ECF4','Governance',1);
INSERT INTO surveysection VALUES (2,'#7F350E','#F6E6DA','Construction',1);
INSERT INTO surveysection VALUES (3,'#007C3A','#EAF6EA','Verification',1);
INSERT INTO surveysection VALUES (4,'#83000D','#F7E0D8','Deployment',1);

-- [3]SurveyPractic
INSERT INTO surveypractice VALUES (1,'Strategy & Metrics',NULL,1);
INSERT INTO surveypractice VALUES (2,'Policy & Compliance',NULL,1);
INSERT INTO surveypractice VALUES (3,'Education & Guidance',NULL,1);
INSERT INTO surveypractice VALUES (4,'Threat Assessment',NULL,2);
INSERT INTO surveypractice VALUES (5,'Security Requirements',NULL,2);
INSERT INTO surveypractice VALUES (6,'Secure Architecture',NULL,2);
INSERT INTO surveypractice VALUES (7,'Design Review',NULL,3);
INSERT INTO surveypractice VALUES (8,'Code Review',NULL,3);
INSERT INTO surveypractice VALUES (9,'Security Testing',NULL,3);
INSERT INTO surveypractice VALUES (10,'Vulnerability Management',NULL,4);
INSERT INTO surveypractice VALUES (11,'Environment Hardening',NULL,4);
INSERT INTO surveypractice VALUES (12,'Operational Enablement',NULL,4);

-- [4]SurveyObjectiv
INSERT INTO surveyobjective VALUES (1,'Establish unified strategic roadmap for software security within the organization',1,1);
INSERT INTO surveyobjective VALUES (2,'Measure relative value of data and software assets and choose risk tolerance',2,1);
INSERT INTO surveyobjective VALUES (3,'Align security expenditure with relevant business indicators and asset value',3,1);
INSERT INTO surveyobjective VALUES (4,'Understand relevant governance and compliance drivers to the organization',1,2);
INSERT INTO surveyobjective VALUES (5,'Establish security and compliance baseline and understand per-project risks',2,2);
INSERT INTO surveyobjective VALUES (6,'Require compliance and measure projects against organization-wide policies and standards',3,2);
INSERT INTO surveyobjective VALUES (7,'Offer development staff access to resources around the topics of secure programming and deployment',1,3);
INSERT INTO surveyobjective VALUES (8,'Educate all personnel in the software life-cycle with role-specific guidance on secure development',2,3);
INSERT INTO surveyobjective VALUES (9,'Mandate comprehensive security training and certify personnel for baseline knowledge',3,3);
INSERT INTO surveyobjective VALUES (10,'Identify and understand high-level threats to the organization and individual projects',1,4);
INSERT INTO surveyobjective VALUES (11,'Increase accuracy of threat assessment and improve granularity of perproject understanding',2,4);
INSERT INTO surveyobjective VALUES (12,'Concretely tie compensating controls to each threat against internal and third-party software',3,4);
INSERT INTO surveyobjective VALUES (13,'Consider security explicitly during the software requirements process',1,5);
INSERT INTO surveyobjective VALUES (14,'Increase granularity of security requirements derived from business logic and known risks',2,5);
INSERT INTO surveyobjective VALUES (15,'Mandate security requirements process for all software projects and third-party dependencies',3,5);
INSERT INTO surveyobjective VALUES (16,'Insert consideration of proactive security guidance into the software design process',1,6);
INSERT INTO surveyobjective VALUES (17,'Direct the software design process toward knownsecure services and secureby-default designs',2,6);
INSERT INTO surveyobjective VALUES (18,'Formally control the software design process and validate utilization of secure components',3,6);
INSERT INTO surveyobjective VALUES (19,'Support ad hoc reviews of software design to ensure baseline mitigations for known risks',1,7);
INSERT INTO surveyobjective VALUES (20,'Offer assessment services to review software design against comprehensive best practices for security',2,7);
INSERT INTO surveyobjective VALUES (21,'Require assessments and validate artifacts to develop detailed understanding of protection mechanisms',3,7);
INSERT INTO surveyobjective VALUES (22,'Opportunistically find basic code-level vulnerabilities and other high-risk security issues',1,8);
INSERT INTO surveyobjective VALUES (23,'Make code review during development more accurate and efficient through automation',2,8);
INSERT INTO surveyobjective VALUES (24,'Mandate comprehensive code review process to discover language-level and application-specific risks',3,8);
INSERT INTO surveyobjective VALUES (25,'Establish process to perform basic security tests based on implementation and software requirements',1,9);
INSERT INTO surveyobjective VALUES (26,'Make security testing during development more complete and efficient through automation',2,9);
INSERT INTO surveyobjective VALUES (27,'Require application-specific security testing to ensure baseline security before deployment',3,9);
INSERT INTO surveyobjective VALUES (28,'Understand high-level plan for responding to vulnerability reports or incidents',1,10);
INSERT INTO surveyobjective VALUES (29,'Elaborate expectations for response process to improve consistency and communications',2,10);
INSERT INTO surveyobjective VALUES (30,'Improve analysis and data gathering within response process for feedback into proactive planning',3,10);
INSERT INTO surveyobjective VALUES (31,'Understand baseline operational environment for applications and software components',1,11);
INSERT INTO surveyobjective VALUES (32,'Improve confidence in application operations by hardening the operating environment',2,11);
INSERT INTO surveyobjective VALUES (33,'Validate application health and status of operational environment against known best practices',3,11);
INSERT INTO surveyobjective VALUES (34,'Enable communications between development teams and operators for critical security-relevant data',1,12);
INSERT INTO surveyobjective VALUES (35,'Improve expectations for continuous secure operations through provision of detailed procedures',2,12);
INSERT INTO surveyobjective VALUES (36,'Mandate communication of security information and validate artifact for completeness',3,12);

-- [5]SurveyLevel
INSERT INTO surveylevel VALUES (1,'Initial understanding and ad hoc provision of Security Practice',1,1);
INSERT INTO surveylevel VALUES (2,'Increase efficiency and/or effectiveness of the Security Practice',2,1);
INSERT INTO surveylevel VALUES (3,'Comprehensive mastery of the Security Practice at scale',3,1);

-- [6]SurveyQuestion
INSERT INTO surveyquestion VALUES (1,'Is there a software security assurance program already in place?',1);
INSERT INTO surveyquestion VALUES (2,'Is most of your development staff aware of future plans for the assurance program?',1);
INSERT INTO surveyquestion VALUES (3,'Do most of the business stakeholders understand your organization''s risk profile?',1);
INSERT INTO surveyquestion VALUES (4,'Are most of your applications and resources categorized by risk?',2);
INSERT INTO surveyquestion VALUES (5,'Are risk ratings used to tailor the required assurance activities?',2);
INSERT INTO surveyquestion VALUES (6,'Does most of the organization know about what''s required based on risk ratings?',2);
INSERT INTO surveyquestion VALUES (7,'Is per-project data for cost of assurance activities collected?',3);
INSERT INTO surveyquestion VALUES (8,'Does your organization regularly compare your security spending with other organizations?',3);
INSERT INTO surveyquestion VALUES (9,'Do most project stakeholders know their project''s compliance status?',4);
INSERT INTO surveyquestion VALUES (10,'Are compliance requirements specifically considered by project teams?',4);
INSERT INTO surveyquestion VALUES (11,'Does the organization utilize a set of policies and standards to control software development?',5);
INSERT INTO surveyquestion VALUES (12,'Are project teams able to request an audit for compliance with policies and standards?',5);
INSERT INTO surveyquestion VALUES (13,'Are projects periodically audited to ensure a baseline of compliance with policies and standards?',6);
INSERT INTO surveyquestion VALUES (14,'Does the organization systematically use audits to collect and control compliance evidence?',6);
INSERT INTO surveyquestion VALUES (15,'Have most developers been given high-level security awareness training?',7);
INSERT INTO surveyquestion VALUES (16,'Does each project team have access to secure development best practices and guidance?',7);
INSERT INTO surveyquestion VALUES (17,'Are most roles in the development process given role-specific training and guidance?',8);
INSERT INTO surveyquestion VALUES (18,'Are most roles in the development process given role-specific training and guidance?',8);
INSERT INTO surveyquestion VALUES (19,'Is security-related guidance centrally controlled and consistently distributed throughout the organization?',9);
INSERT INTO surveyquestion VALUES (20,'Are most people tested to ensure a baseline skillset for secure development practices?',9);
INSERT INTO surveyquestion VALUES (21,'Do most projects in your organization consider and document likely threats?',10);
INSERT INTO surveyquestion VALUES (22,'Does your organization understand and document the types of attackers it faces?',10);
INSERT INTO surveyquestion VALUES (23,'Do project teams regularly analyze functional requirements for likely abuses?',11);
INSERT INTO surveyquestion VALUES (24,'Do project teams use a method of rating threats for relative comparison?',11);
INSERT INTO surveyquestion VALUES (25,'Are stakeholders aware of relevant threats and ratings?',11);
INSERT INTO surveyquestion VALUES (26,'Do project teams specifically consider risk from external software?',12);
INSERT INTO surveyquestion VALUES (27,'Are all protection mechanisms and controls captured and mapped back to threats?',12);
INSERT INTO surveyquestion VALUES (28,'Do most project teams specify some security requirements during development?',13);
INSERT INTO surveyquestion VALUES (29,'Do project teams pull requirements from best practices and compliance guidance?',13);
INSERT INTO surveyquestion VALUES (30,'Are most stakeholders reviewing access control matrices for relevant projects?',14);
INSERT INTO surveyquestion VALUES (31,'Are project teams specifying requirements based on feedback from other security activities?',14);
INSERT INTO surveyquestion VALUES (32,'Are most stakeholders reviewing vendor agreements for security requirements?',15);
INSERT INTO surveyquestion VALUES (33,'Are the security requirements specified by project teams being audited?',15);
INSERT INTO surveyquestion VALUES (34,'Are project teams provided with a list of recommended third-party components?',16);
INSERT INTO surveyquestion VALUES (35,'Are most project teams aware of secure design principles and applying them?',16);
INSERT INTO surveyquestion VALUES (36,'Do you advertise shared security services with guidance for project teams?',17);
INSERT INTO surveyquestion VALUES (37,'Are project teams provided with prescriptive design patterns based on their application architecture?',17);
INSERT INTO surveyquestion VALUES (38,'Are project teams building software from centrally controlled platforms and frameworks?',18);
INSERT INTO surveyquestion VALUES (39,'Are project teams being audited for usage of secure architecture components?',18);
INSERT INTO surveyquestion VALUES (40,'Do project teams document the attack perimeter of software designs?',19);
INSERT INTO surveyquestion VALUES (41,'Do project teams check software designs against known security risks?',19);
INSERT INTO surveyquestion VALUES (42,'Do most project teams specifically analyze design elements for security mechanisms?',20);
INSERT INTO surveyquestion VALUES (43,'Are most project stakeholders aware of how to obtain a formal design review?',20);
INSERT INTO surveyquestion VALUES (44,'Does the design review process incorporate detailed data-level analysis?',21);
INSERT INTO surveyquestion VALUES (45,'Does routine project audit require a baseline for design review results?',21);
INSERT INTO surveyquestion VALUES (46,'Do most project teams have review checklists based on common problems?',22);
INSERT INTO surveyquestion VALUES (47,'Are project teams generally performing review of selected high-risk code?',22);
INSERT INTO surveyquestion VALUES (48,'Can most project teams access automated code analysis tools to find security problems?',23);
INSERT INTO surveyquestion VALUES (49,'Do most stakeholders consistently require and review results from code reviews?',23);
INSERT INTO surveyquestion VALUES (50,'Do project teams utilize automation to check code against application-specific coding standards?',24);
INSERT INTO surveyquestion VALUES (51,'Does routine project audit require a baseline for code review results prior to release?',24);
INSERT INTO surveyquestion VALUES (52,'Are projects specifying some security tests based on requirements?',25);
INSERT INTO surveyquestion VALUES (53,'Do most projects perform penetration tests prior to release?',25);
INSERT INTO surveyquestion VALUES (54,'Are most stakeholders aware of the security test status prior to release?',25);
INSERT INTO surveyquestion VALUES (55,'Are projects using automation to evaluate security test cases?',26);
INSERT INTO surveyquestion VALUES (56,'Do most projects follow a consistent process to evaluate and report on security tests to stakeholders?',26);
INSERT INTO surveyquestion VALUES (57,'Are security test cases comprehensively generated for application-specific logic?',27);
INSERT INTO surveyquestion VALUES (58,'Do routine project audits demand minimum standard results from security testing?',27);
INSERT INTO surveyquestion VALUES (59,'Do most projects have a point of contact for security issues?',28);
INSERT INTO surveyquestion VALUES (60,'Does your organization have an assigned security response team?',28);
INSERT INTO surveyquestion VALUES (61,'Are most project teams aware of their security point(s) of contact and response team(s)?',28);
INSERT INTO surveyquestion VALUES (62,'Does the organization utilize a consistent process for incident reporting and handling?',29);
INSERT INTO surveyquestion VALUES (63,'Are most project stakeholders aware of relevant security disclosures related to their software projects?',29);
INSERT INTO surveyquestion VALUES (64,'Are most incidents inspected for root causes to generate further recommendations?',30);
INSERT INTO surveyquestion VALUES (65,'Do most projects consistently collect and report data and metrics related to incidents?',30);
INSERT INTO surveyquestion VALUES (66,'Do the majority of projects document some requirements for the operational environment?',31);
INSERT INTO surveyquestion VALUES (67,'Do most projects check for security updates to third-party software components?',31);
INSERT INTO surveyquestion VALUES (68,'Is a consistent process used to apply upgrades and patches to critical dependencies?',32);
INSERT INTO surveyquestion VALUES (69,'Do most project leverage automation to check application and environment health?',32);
INSERT INTO surveyquestion VALUES (70,'Are stakeholders aware of options for additional tools to protect software while running in operations?',33);
INSERT INTO surveyquestion VALUES (71,'Does routine audit check most projects for baseline environment health?',33);
INSERT INTO surveyquestion VALUES (72,'Do you deliver security notes with the majority of software releases?',34);
INSERT INTO surveyquestion VALUES (73,'Are security-related alerts and error conditions documented for most projects?',34);
INSERT INTO surveyquestion VALUES (74,'Are most project utilizing a change management process that''s well understood?',35);
INSERT INTO surveyquestion VALUES (75,'Do project teams deliver an operational security guide with each product release?',35);
INSERT INTO surveyquestion VALUES (76,'Are most projects being audited to check each release for appropriate operational security information?',36);
INSERT INTO surveyquestion VALUES (77,'Is code signing routinely performed on software components using a consistent process?',36);

-- [7]SurveyAssertion
INSERT INTO surveyassertion VALUES (1,'Assurance program is documented and accessible to staff.',NULL,1);
INSERT INTO surveyassertion VALUES (2,'Assurance program has been used in recent development efforts.',NULL,1);
INSERT INTO surveyassertion VALUES (3,'Staff receives training against assurance program and responsibilities.',NULL,1);
INSERT INTO surveyassertion VALUES (4,'Assurance program goals are documented and accessible to staff.',NULL,2);
INSERT INTO surveyassertion VALUES (5,'Assurance program goals have been presented to staff.',NULL,2);
INSERT INTO surveyassertion VALUES (6,'A plan has been put in place to reach those goals in a specific period of time.',NULL,2);
INSERT INTO surveyassertion VALUES (7,'Organization has documented motivation behind creating a software security assurance program.',NULL,3);
INSERT INTO surveyassertion VALUES (8,'Assurance program has been customized to align with the organization\'s motivation and goals.',NULL,3);
INSERT INTO surveyassertion VALUES (9,'Worst-case scenarios for organization\'s application and data assets have been collected and documented.',NULL,3);
INSERT INTO surveyassertion VALUES (10,'Scenarios, contributing factors, and mitigating factors have been reviewed with business owners and other stakeholders.',NULL,3);
INSERT INTO surveyassertion VALUES (11,'A data and application risk classification system has been documented.',NULL,4);
INSERT INTO surveyassertion VALUES (12,'An evaluation criteria has been created to apply the classification system to data and applications.',NULL,4);
INSERT INTO surveyassertion VALUES (13,'Staff receives training in how to apply evaluation criteria to application and data assets.',NULL,4);
