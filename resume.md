# Jay W. Hannah

Omaha, Nebraska USA |
+1-402-598-7782 |
jay@jays.net

**Objective:** Identify challenging technical leadership opportunity managing large scale data systems. 100% telecommute.

**Leadership:** For seven years in the early 2000s I managed 8-12 programmers and database/system
administrators in a mission critical OLTP database environment ($400M revenue stream). Daily management of
operations problems while simultaneously managing high level expectations and deliverables for senior management
team and ownership.

**Technical:** 27 years of programming / lead developer experience. Strong data modeling skills. Sustained focus
on the construction and maintenance of TCP/IP services (over "trusted" and untrusted networks).
Large-scale JSON / XML standards data processing and REST APIs exposing those.
Developed multi-site load balancing, high availability, and disaster recovery solutions; including
procedure definition, enforcement, and trials.
Strong focus on open source technologies. Passingly skilled with network design concepts. I pride myself on 
my documentation skills. Throughout my career I have championed documentation efforts for many companies.

**Dream Job:** Using my backend / database / programming skills to help with massively scaled providers of emergency /
low-income housing and food. The UNHCR (High Council on Refugees) and WFP (World Food Program)
are the largest examples of that mission I'm aware of. I'm very interested in logistics.
The highest calling I can imagine is working on empowering thousands / millions of deliveries of food / clothing / shelter.

## Experience

### Project Lead / Programmer | Infinity Interactive | 2011 - Present

Telecommuting consultant. Perl, Golang, Python, PL/pgSQL, large scale databases, REST APIs, minor web.
Industries have included e-commerce (retail), large event / venue equipment rental (and data mining thereof),
advertising technology, and various start-ups.

In principle recent clients have a lot of DevOps support so I can focus on programming (Golang, Perl, Python).
In practice I've been learning a lot of DevOps because resources aren't available and sometimes
I have access to fix things.

I have a functional / "emergency" understanding of deployment
of various stacks for monoliths and "micro-services." Clients have swung back and forth between those strategies
over time. Most recent deployments on "bare metal," Xen VMs, in-house managed Kubernetes, and AWS (EC2, ECS, S3,
etc.). Those stacks are variously driven by Docker, Docker Compose, Chef/Ansible, Helm Charts (of which I know
very little), and various other tools.

### Staff Augmentation | MediaMath Inc. ($170M) | 2014-2023

Worked as staff augmentation consultant for REST API team and associated services. The company totalled ~140
engineers. Our primary mission was to design, maintain, and enhance a PostgreSQL schema and REST APIs for
modifying data in that schema, primarily for configuration of advertising campaigns.

Primary PostgreSQL: 273 tables, 75 views, 234 functions (mostly PL/pgSQL). ~500GB, 80M rows

API v3 stack: Golang 1.20.5, gin 1.9.1 web framework. 67K lines of tests, 116K total lines of code. Stack
built locally (development) via Docker Compose (DB and application). IDE: Visual Studio Code plus custom
linting rules (revive). Continuous integration via CircleCI. If tests all pass, topic branches deployed
automatically to in-house Kubernetes cluster for both QA and PROD. Fully automated continuous delivery via
Helm Charts. Prometheus integration for statistics. Production alerting via PagerDuty. Log aggregation via
SumoLogic, including Sumologic Traces (in-app OpenTelemetry hooks).

API v2 stack: Perl 5.30.1, Catalyst 5.90128 web framework. 98K lines of tests, 232K total lines of code. Stack
built locally (development) via Docker Compose (DB and applications (main API and ancillary applications)).
IDE: Whatever the developer prefers. Visual Studio Code and vim were both common. Continuous integration via
Jenkins, which also served as our "continuous delivery" mechanism to pre-allocated in-house clusters of QA
servers (18 sets). Production deployment automated and integrated into Slack, sending status updates for ~15
different phases of production rollout. All hardware pre-allocated, dedicated (not dynamic). statsd
integration for statistics. Production alerting via PagerDuty. Log aggregation via SumoLogic. No
OpenTelemetry.

core-serializer: Perl 5.34.0, Python3 (Dockerfile "latest"). 12K lines of tests, 17K total lines of code.
Stack built locally (DEV and QA) via Docker Compose (DB and application). Continuous integration and delivery
via CircleCI. If tests all pass, production deployed automatically via Chef recipe updates and published via
in-house Chef Manage server (chef-client on dedicated hardware).

In 2020 Golang was chosen as an API v2 replacement (Perl), API v3 expansion
began in earnest. We re-implemented core functions, driven by next-generation
UI layer requirements. I coordinated with product owners and stakeholders as
needed to design and deliver those solutions. I wrote reams of documentation
for those systems, with countless diagrams. I emphasized solving problems once
since our historical one-off ad-hoc solutions continued to be inconsistent and
extremely expensive (time, resource consuming) over years and multiple
generations of product, leadership, and engineering staff.

The APIs also serve as orchestration layers, back-ending requests to other services (APIs and others). We
spent lots of time and effort developing and maintaining integrations to those systems, hosted by other
MediaMath departments, and many third party vendors.

For three years the company went through an AWS microservices phase. We split large chunks of the above DB and
APIs out into AWS EC2, RDS, ECS, and a dozen other AWS services. Eventually AWS proved too expensive
($3M/month), and several of those microservices were re-absorbed back into the above services. I designed,
developed, and tore-down services on both sides of those transitions.

I served as an informal part-time trainer / mentor for several new hires. I upgraded thousands of lines of
abandoned (yet business critical) Python2 into Python3 and modernized that software stack. I proposed
high-level overhauls of systems that were causing long-running inefficiencies in business operations.

### Software Architect / Director of Development | Omni Hotels ($720M) | 1999 - 2010

* Design, manage, implement, and document complex software/data systems to fulfill the stated technology goals
of the senior management team. Provide regular status updates and cost estimates.
* Until 2004, managed all daily operations for central reservations call center and data center, a $400M revenue
stream. In 2004, hired an IT Manager to manage daily operations to allow more focus on high-level development.
* In tandem with Software Architect, implemented custom Internet booking engine (www.omnihotels.com), saving
the company $140M a year in commissions (Linux, Apache, OO Perl 5, mod_ssl, mod_perl, Linux based load
balancing and high availability).
* Continuing to replace legacy systems with centralized object oriented Class structure (OO Perl 5) that controls
all database I/O (central reservation system is 300 tables in monolithic RDBMS install), centralizing disparate
business controls into single, consistent framework.
* Replacing numerous inconsistent system interfaces with single OpenTravel Alliance (hospitality / travel industry
standards body) XML specification to ensure data integrity and consistent application of business rules. In this
design, all data exchange inside and outside the company will be served by a single highly available and load
balanced cluster of low-cost Linux servers running a single application framework enforcing all business rules.
* First hired to replace a primarily one-man development team who was departing and a series of consultants.
* Established documentation systems, revision control, operating procedures, monitoring and paging, and
departmental cross training.

### Application Support / Development Specialist | University of Nebraska Medical Center | 2007 - 2010

* Worked part-time from UNMC while persuing a B.S. in Bioinformatics.
* Genetic Sequence Analysis Facility (GSAF) provides application and hardware support and development for researchers
at the University of Nebraska Medical Center.
* Collaborative Laboratory of Applied Bioinformatics (CLAB) provides application and hardware support and development
for researchers and students across the University of Nebraska system. CLAB is based at the Peter Kiewit Institute
(PKI) of the University of Nebraska, Omaha (UNO).
* In one project I wrote a bunch of Perl, deployed it to UNO's super computer cluster, crunched a ton of data, and that work ended
up being useful enough to the scientists that I was listed as a co-author on a scientific paper. Don't ask me to explain
the science (my biology / chemistry is weak) but I can try to remember a vague outline of the software I wrote if you're interested:
[Loss of Dnmt3b function upregulates the tumor modifier Ment and accelerates mouse lymphomagenesis](https://pubmed.ncbi.nlm.nih.gov/22133874/).

### Senior Software Engineer, Webmaster | Viatel, Inc. ($570M) | 1998 - 1999

* Lead developer of Internet / Intranet applications.
* Designed and lead ongoing technical production, implementation and maintenance of Viatel’s first Internet /
Intranet customer signup systems. Systems supported customer signup in Belgium and France (languages
Dutch and French), allowing for direct customer signup on the Internet, customer service aided signup on Viatel’s
corporate Intranet, and bulk load system from third party call centers. Expansion plans include the addition of
most of Viatel’s 60 service types (products) for customers in 230 countries and territories worldwide in 7
languages and 17 currencies.
* Lead developer of corporate Intranet, providing distributed real time departmental and project information to 31
executive and sales offices worldwide.
* To-specification modifications of “Call Detail” program: 4700+ lines of legacy code which, during each billing
cycle, manipulates and analyses 24 million revenue records (on average) to generate bills sent to 34K+ active
SME customers.
* Miscellaneous accounting system analysis and modification tasks to support new products and procedures in
600+ program and 500+ data table accounting environment (mostly legacy Informix-4GL and FourGen
applications).
* As-needed miscellaneous system engineering, system administration, and network administration / monitoring
responsibilities (e.g.: built and maintaining Internet / Intranet server rack of 3 dual-processor x86 Linux servers
providing all Internet, Intranet ,and Extranet services worldwide.

### Director of Software Development | Quality Service Management, Inc. ($16M) | 1997 - 1998

* Director of Software Development and telecommunications coordinator for $16 million direct marketing
consulting firm with 700+ employees and a 4 year trend of 100% annual growth (1995-1998).
* Heavy database administration workload in distributed environment. Included logical development, data
migration, system design, query optimization, security planning and control, and disaster recovery procedures
(Informix Online 7.20).
* Various Unix system administration functions (Linux and SCO OpenServer 5).
* Designed, developed, and implemented a client-server “agent monitoring” data input and storage system. 17
table Informix database is accessed via ODBC by a staff of data entry employees (19 stations, 3 shifts). Server
side includes fully normalized and constrained data structures using complete referential integrity and a handful
of triggers, stored procedures and synonyms. Client side GUI (Microsoft Access) contains Visual Basic enhanced
live “scoring” and graphical reporting and trending.
* Telecommunications coordinator responsibilities included the cost profiling, installation, management,
expansion, cost/benefit analysis, and crisis management of a 5 point wide area network (including dedicated
Internet access), 14 voice T1s and 30-odd analog circuits. Role also included the monitoring and approval of all
telecommunications bills, totaling $75K (2 million calls) per month.

### President | Global Shopping Club, Inc., Yankton SD ($7M) | 1996 - 1997

* Founding partner in Internet-based computer components and home electronics distribution company with 25
employees.
* Lead programmer in from-scratch development of Internet-based auction-style sales system. Tools included
Microsoft SQL Server, Internet Information Server, and Active Server Pages (Visual Basic extension to IIS). The
system dynamically responded to over 1 million server “hits” each week from 10K+ customers from 94 countries.
The data set became the backbone of corporate data flow eventually controlling inventory, shipping, credit card
processing, and the majority of accounting systems.
* Authored core corporate documents including business plan and operations manual.
* Organized and conducted managerial and (occasionally) departmental meetings.
* Performed all advertising and public relations duties including newspaper, trade publication, magazine, radio,
and television interviews. Wrote press releases and promotional materials for such purposes.
* Wrote and presented “Successful Internet Commerce – One Flourishing Model” at 1996 Techlaunch 2000
technology conference held in Sioux City, IA.

### Network Systems Coordinator | General Service Computers, Inc., Yankton SD ($7M) | 1995 - 1996

* Designed, implemented, and managed Perl-based CGI web site allowing customers to access inventory
information and place orders via the Internet.
* Managed and monitored voice and data circuits via drop-and-insert channel bank (2 T1s), including mission-
critical repair scenarios.
* Performed Unix system administrator duties (x86 BSDi).

### Training

1998: Certified Informix Database Specialist.

### Education

2007-2010: University of Nebraska at Omaha: Persued B.S. in Bioinformatics. Earned no degrees.

1993-1995: Iowa State University: Majored in Mechanical Engineering, Psychology, and Philosophy. 
Psychology minor completed. Earned no degrees. Member, Delta Tau Delta social fraternity. 

### Interests

Philosophy, “blitz” Go (Igo / Wei Qi / Baduk), chess, podcasting, motorcycles, scuba diving (SSI Master Diver), 
genetics, genealogy, advanced dog management.
Volunteer, Open/Nebraska aka Code for Nebraska (formerly a Code for America Brigade).
Volunteer, Food Not Bombs (Omaha).

### References

Personal and business references available upon request.

