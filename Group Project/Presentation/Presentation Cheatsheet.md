### WHAT IS NOSQL/ NON RELATIONAL DATABASE

- Why the need for a non relational database
    - This style of database came about to try and address the issues with the conventional sql database. One of the big issues was the need for a ridgid schema/how the data is inserted into the database. Nosql database stores data in a schema-less fashion with the ability to store any data in any record. It not only addresses this issue, but also allows for a higher operational speed and greater flexibility for the developers. Companies like google and amazon, needed a new way to process data for there massive websites. 
    - https://www.infoworld.com/article/3240644/what-is-nosql-nosql-databases-explained.html

- Has pictures for how data is stored in a sql vs nosql
    - How sql stores its data is you already have fields and you insert data into those fields that match. But what if you have to add some data that you don't have a field for? Now you can ether restructure your schema or transform the data to make it fit. What nosql does is it allows you to add new fields as you are inserting data into a record and then you can decide later if that new field is important enough to be searchable later. The picture’s are about half way down the page. Figure 1 and Figure 2
    - https://www.couchbase.com/resources/why-nosql   

- A tutorial on what a NoSQL is and how it is applied
    - There are 4 major types of NoSQL databases: Key-value Pair Based, Column-Oriented, Graph based, and Document based. In the year 1998- Carlo Strozzi used the term NoSQL for his lightweight, open-source relational database. It also includes the advantages and disadvantages of NoSQL. There are images that are examples of the 4 types of NoSQL databases.
    - https://www.guru99.com/nosql-tutorial.html


- A basic rundown of what a NoSQL is and what it can do
    - Probably the most important part of the whole article is that it includes a list of the most used NoSQL databases and the very end which include: MongoDB, CouchDB, GemFire, Redis, and Cassandra
    - https://spring.io/understanding/NoSQL


- Why nosql is faster at retrieving data
    - When you search for records in a relational database, It goes through different tables and grabs rows that match the search you asked for. It returns this as a giant table that is a mismatch of all the records it searched for(its set up in a n*m looking table). Now you have to let the application filter out all the duplicate data which takes a lot of time when the data is massive. Nosql on the other hand, stores data in an object with the data nested in a single document. Pictures of this are figure 3,4,5
    - https://www.couchbase.com/resources/why-nosql


- Not sure if you want to put this in a slide, but if you need to wrap your head around nosql, found a 2 min video that sums it up. 
    - Details of the data you found
    - https://www.youtube.com/watch?v=qUV2j3XBRHc


- Disadvantages of nosql
    - Because it is relatively new, the community around it is not as large as sql. You have compatibility issues with SQL instructions during a query. There is a lack of standardization.  
    - https://medium.com/swlh/should-you-use-nosql-or-sql-db-or-both-349cb26c9add


- Disadvantage with sql database
    - Main problem is scaling with data. Especially when searching and sharding happens. 
    - https://medium.com/swlh/should-you-use-nosql-or-sql-db-or-both-349cb26c9add


- Advantages with nosql database
    - It's really really good when the data is massive. You can store huge amounts of data with little to no structure. You can add new types of data as your need changes. There is no prep for Nosql database, because of the nature of it, you can quickly create databases without having a detailed schema. 
    - https://medium.com/swlh/should-you-use-nosql-or-sql-db-or-both-349cb26c9add


### WHAT ARE THE TRENDS FOR USE OF A NON RELATIONAL DATABASE

- Contains information of the trends of database usage, combinations, and critical problems currently being used 
    - The data shows that NoSQL is on the rise and more and more are using combinations of both databases
    - http://highscalability.com/blog/2019/3/6/2019-database-trends-sql-vs-nosql-top-databases-single-vs-mu.html


- A chart showing the popularity of the top databases from the past 6 years to now
    - It’s a nice chart
    - https://db-engines.com/en/ranking_trend

### HOW BOTH ARE BEING USED IN A MODERN DATABASES 

- There is a database called CrateDB that combines NoSQL and SQL
    - It is a distributed SQL database that is built on top of a NoSQL foundation. It allows users who are comfortable using and SQL database to save and query machine data, as well as handle the diversity, velocity, and volume of machine and log data
    - https://www.dataversity.net/connecting-sql-nosql-one-platform/#

- The writer creates a CQRS which combines SQL and NoSQL and use it to group book review votes and find the best reviewed one.
    - There are charts comparing the running time and the setup of the combined database to a regular SQL one. It is a basic run-through of how he went about applying and changing his SQL database into the combined one. 
    - https://www.thereformedprogrammer.net/ef-core-combining-sql-and-nosql-databases-for-better-performance/
