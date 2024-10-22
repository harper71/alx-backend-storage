### NoSQL Overview

**NoSQL** refers to a class of database management systems that do not follow the traditional relational database management system (RDBMS) model. Unlike SQL databases, which use structured query language (SQL) and have a fixed schema, NoSQL databases are designed to store, retrieve, and manage a wide variety of data models, including document, key-value, graph, and column-family formats. NoSQL databases are known for their flexibility, scalability, and performance, particularly in handling large volumes of unstructured or semi-structured data.

### Differences between SQL and NoSQL

1. **Schema:**
   - **SQL:** Fixed schema; tables with predefined rows and columns.
   - **NoSQL:** Dynamic schema; can store varied data formats without a predefined structure.

2. **Data Storage:**
   - **SQL:** Stores data in tables with rows and columns.
   - **NoSQL:** Stores data in various formats such as documents, key-value pairs, wide-column stores, and graphs.

3. **Scalability:**
   - **SQL:** Vertically scalable (scale-up by adding more power to a single machine).
   - **NoSQL:** Horizontally scalable (scale-out by adding more machines to the database).

4. **Transactions:**
   - **SQL:** Supports ACID transactions (Atomicity, Consistency, Isolation, Durability).
   - **NoSQL:** Often supports BASE transactions (Basically Available, Soft state, Eventually consistent), although some NoSQL databases now offer ACID compliance.

5. **Query Language:**
   - **SQL:** Uses SQL (Structured Query Language).
   - **NoSQL:** Uses various query languages depending on the database type (e.g., MongoDB uses a JSON-like query language).

### ACID

**ACID** is an acronym that stands for Atomicity, Consistency, Isolation, and Durability. These properties ensure reliable processing of database transactions.

1. **Atomicity:** Ensures that all operations within a transaction are completed; if not, the transaction is aborted.
2. **Consistency:** Ensures that a transaction brings the database from one valid state to another, maintaining database invariants.
3. **Isolation:** Ensures that concurrently executed transactions result in a system state that would be obtained if transactions were executed serially.
4. **Durability:** Ensures that once a transaction has been committed, it remains so, even in the event of a system crash.

### Document Storage

**Document storage** is a type of NoSQL database where data is stored in documents. Each document is typically stored in a format like JSON or BSON and can contain nested structures, arrays, and key-value pairs. This allows for a more flexible and hierarchical data model compared to traditional relational databases.

### Types of NoSQL Databases

1. **Document Stores:** Store and retrieve documents, e.g., MongoDB, CouchDB.
2. **Key-Value Stores:** Store data as key-value pairs, e.g., Redis, DynamoDB.
3. **Column-Family Stores:** Store data in columns rather than rows, e.g., Apache Cassandra, HBase.
4. **Graph Databases:** Store data in graph structures with nodes, edges, and properties, e.g., Neo4j, ArangoDB.

### Benefits of NoSQL Databases

1. **Scalability:** Easily scale horizontally by adding more servers.
2. **Flexibility:** Handle a wide variety of data models and structures.
3. **Performance:** Optimized for high performance with large volumes of data.
4. **Availability:** Designed for high availability and fault tolerance.
5. **Ease of Use:** Often easier to set up and use, with less complexity in schema design.

### Querying Information from a NoSQL Database

The method to query data varies based on the type of NoSQL database:

- **Document Stores (MongoDB):** Use a query language similar to JSON to retrieve documents.
- **Key-Value Stores (Redis):** Retrieve values based on keys.
- **Column-Family Stores (Cassandra):** Use CQL (Cassandra Query Language) to query columns.
- **Graph Databases (Neo4j):** Use graph query languages like Cypher.

### Inserting/Updating/Deleting Information from a NoSQL Database

- **Inserting Data:**
  - MongoDB: `db.collection.insertOne({ ... })` or `db.collection.insertMany([{ ... }, { ... }])`
  - Redis: `SET key value`
  - Cassandra: `INSERT INTO table (column1, column2) VALUES (value1, value2)`

- **Updating Data:**
  - MongoDB: `db.collection.updateOne({ query }, { $set: { ... } })` or `db.collection.updateMany({ query }, { $set: { ... } })`
  - Redis: `SET key new_value`
  - Cassandra: `UPDATE table SET column1 = value1 WHERE condition`

- **Deleting Data:**
  - MongoDB: `db.collection.deleteOne({ query })` or `db.collection.deleteMany({ query })`
  - Redis: `DEL key`
  - Cassandra: `DELETE FROM table WHERE condition`

### Using MongoDB

1. **Install MongoDB:**
   - Download and install MongoDB from the official MongoDB website or use a package manager.

2. **Start MongoDB:**
   - Start the MongoDB server with the `mongod` command.

3. **Connect to MongoDB:**
   - Use the MongoDB shell (`mongo`) to connect to the server.

4. **Basic Operations:**
   - **Insert Document:**
     ```javascript
     db.collection.insertOne({ name: "John Doe", age: 30, city: "New York" })
     ```
   - **Query Document:**
     ```javascript
     db.collection.find({ age: { $gt: 25 } })
     ```
   - **Update Document:**
     ```javascript
     db.collection.updateOne({ name: "John Doe" }, { $set: { age: 31 } })
     ```
   - **Delete Document:**
     ```javascript
     db.collection.deleteOne({ name: "John Doe" })
     ```

5. **Advanced Features:**
   - Use indexing, aggregation, and replication for advanced database operations and optimizations.

MongoDB's official documentation provides detailed guides and tutorials to help you get started and master its features.