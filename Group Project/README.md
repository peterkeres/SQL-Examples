# MISM 3136/CPSC 3131-01 Database Design

## Project Description

### Purpose: 
The purpose of MISM 3136/CPSC 3131 term project is to provide the practical understanding of how a how database design is developed. Even if students have studied the concepts of database design/management in the textbook, as a practice of the concepts, students are required to do a group project to develop the following skills and knowledge:
**Skills about:** 
1) Defining customers’ requirements from various sources
2) Development of entity-relationship models from requirements
3) Design, implement, and manage relational databases
4) Development of data t query language (SQL) 

**Knowledge on:**  
1) Activities in project requirement determination 
2) Relational model and related concepts such as entity, relationships, normalization, and etc.
3) Structured query language (SQL)

### Task: 
In the project, students should analyze customer’s requirement and develop a database design and implementation based on business process suggested by instructor. In the Business Process provided on page 3, the outline of the entire business process will be given to students, and a business process discussion session will be held in a class to gather the client’s detail requirements. After the discussion, students may add more functionalities to their design. 

The project should consist of three main components: 
- the Requirement and Entity Definition; 
-  Relational Database Design;
-   Database Implementation and SQL Development. According to the milestone and presentation schedule below, students should provide deliverables. 

### Deliverables
The following milestone reports will be due in PDF file. All milestones should be submitted to CougarVIEW Assignment.

#### Milestone 1: Requirement and Entity Definition Due 2/21 11:59pm in two PDF files. Separate documents are not accepted

The Requirement and Entity Definition should contain the following components: 1) Requirement Determination and 2) Table List
-	Requirement Determination 
    -	Read Business Process in Project Description. 
    -	Based on your understanding, gather client’s detail requirements in a business process discussion session
    -	After the discussion session, organize the requirements you collected in the form Handout 1-Requirement Determination
    -	Add cover page and your team’s information
    -	Convert it to a PDF file and submit it to CougarVIEW
-	Table List 
    -	Based on the requirements, extract and normalize the tables 
    -	List the table in the form Handout 2-Table List
    -	Add cover page and your team’s information
    -	Convert it to a PDF file and submit it to CougarVIEW

#### Milestone 2:  Relational Database Design – Due 3/17 11:59pm (in a PDF file. Separate documents are not accepted)
The Relational Database Design should contain the following components: 1) Entity Relationship Diagram (ERD)

-	Entity Relationship Diagram (ERD)
    -	Develop complete ERD based on your Table List and Requirement Determination
    -	Use any tool to draw diagram, but follow the notation used in the textbook example Figure 4-19 or 4-21
    -	You may separate tables into multiple pages if one page is too small to fit all tables
    -	Diagram should be readable!!!
    -	Convert it to a PDF file and submit it to CougarVIEW

#### Milestone 3: Database Implementation and Database Application – Due 5/6 11:59pm 
The detail instructions of milestone 3 is provided in Handout 3 – Instruction for Database Application. Submission of Milestone 3 should contain the following components: 1) SQLite file (.sqlite file), 2) Python program file (.py file), and 3) presentation file.

*note: Due to the class not doing so well on this project, the professor changed milestone 3. So the py file does not reflect this version of milestone 3*

-	SQLite file
    -	Submit your database file (.sqlite or .db file) to CougarVIEW Assignments

-	Python file
    -	Submit your Python file to CougarVIEW Assignments

-	Presentation file (or hyperlink if you use web presentation tool)
    -	Submit your presentation file to CougarVIEW Assignments

- Group Presentations – Advanced Database Model & Big Data
	- Topic of group presentation is the introduction of new trend/technology in the field of database and the application of data. The presentation will be held on 4/29, 5/1, and 5/6. The topics of presentation include, but is not limited to, NoSQL database, Big Data, data mining, business intelligence, and business analytics. Since the main goal of the pentation is to introduce the new trend popular in industry, you may choose any topic as you want as long as it is related to database and the application of data. Every member of a group has to take part in the presentation. The presentation should not be more than about 20 minutes long. This is a part of milestone #3.

#### Formation of Groups
There should be 4-5 students in each group, and the same grading criteria will be applied to all groups regardless of the number of members. More than 5 students would not be allowed in a group. The formation of groups is finalized by the end of the second week. Students who have not formed a group would be grouped randomly.

 
### Business Process

James is about to starting a new PC company, James’ Computer (JC), that purchases parts from suppliers, assemble them into PCs, sell it to business customers. This business model is very similar to Dell’s business model, but he is targeting to business customers like universities, companies, and government. Due to the business strategy, he understand that efficient supply chain management is the key to the success of his business. Hence, he decided to manage all of the data from supply chain management in a database. Since he doesn’t know about database, he invites a database expert to design and implement a database.

 
![Figure 1. JC's business overview](Readme%20Files/figure%201.png)

The business process of JC is largely composed of four parts: 
- procurement; 
- production; 
- sales; and
- various types of report or information retrieval for business analysis. 
 
JC’s procurement process includes activities regarding procurement of computer parts from suppliers. Production process includes the activities assembling parts into PCs in its factory using limited production capacity. In sales process, JC has to bid on the offers coming from business customers to win orders. Details of process is as below.

 
![Figure 2. JC's business proces](Readme%20Files/figure%202.png)

A transaction of sales order begins with sales RFQs (Request for Quote) from customers to JC and other PC companies. JC then submit a sales offer with bidding price to win the order, and customers choose the bid with the lowest price. To assemble PCs, agents need to procure computer components from suppliers. When an agent wants to purchase a component, it issues a procure RFQ to multiple suppliers. Each supplier then decides the price and quantity and sends the procurement offers to the companies. As a final step, JC send procurement orders to suppliers if they want to purchase the product as offered in the procurement offer. Then the components are delivered on the due date and these components can be used on the next day of the delivery. These delivered components are stored in components storage. Every day the cost of components in storage is charged until they are removed for production.

After receiving the components, JC assemble PCs to fulfill the customers’ orders. JC need to therefore establish plans for production and shipment. The factory assembles PCs as planned in the production schedule using component inventory and factory capacity within the boundaries of available resources. Finished PCs are shifted into product storage on the same day. Once PCs are stored in storage, these products are shipped to the customer according to the shipping schedule to satisfy customer orders. Unlike component delivery, the delivery for PCs should meet the entire amount in sales RFQs. If it is not met, the agent is charged for late delivery. This is the sales penalty.
This is one cycle of required work to complete a customer order. However, customer orders arrive every day with various due dates between three and twelve days after the current day even if the previous orders have not been completed. Figure 2 is the depiction of the cycle of sales order and procurement process.

In these business processes, JC wants to store ALL of the information, e.g., procurement and sales RFQs, sales offers, procurement prices, winning sales prices, factory resource log, daily inventory level, production plan, shipping plan, and etc, for future business analysis. JC will have a meeting to talk about the details of the processes if database designers want since this document just reveals the outline of JC’s business processes and related requirement.


