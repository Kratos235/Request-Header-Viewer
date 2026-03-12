# Request Header Viewer (CRUD Web Application)

## Overview

This project is a Java-based web application that captures HTTP request headers sent by a client browser and stores them in a MySQL database. The application allows users to view the headers of the current request as well as manage previously stored header records using CRUD operations.

The application is built using Java Servlets, JSP, JDBC, and MySQL, following a simple MVC architecture.

## Features

- Capture HTTP request headers from the browser
- Store request headers in a MySQL database
- View current request headers
- View history of stored headers with record count
- Update notes associated with a header record
- Delete stored header records with confirmation prompt
- Clear all records at once
- Client-side search/filter on history page
- XSS-safe output using JSTL `<c:out>` tags

## Technologies Used

### Frontend
- HTML5
- CSS3
- JSP (JavaServer Pages)
- JSTL (JSP Standard Tag Library)
- Expression Language (EL)

### Backend
- Java 17
- Java Servlets
- MVC architecture

### Data Access
- JDBC (Java Database Connectivity)
- DAO (Data Access Object) pattern

### Database
- MySQL

### Tools
- IntelliJ IDEA
- Apache Tomcat
- Maven
- Git & GitHub

## Database Setup

Run the `schema.sql` file to create the required database and table:

```sql
mysql -u root -p < schema.sql
```

Or open `schema.sql` in MySQL Workbench and execute it.

## How to Run

1. Clone the repository
2. Run `schema.sql` against your MySQL server
3. Update the database credentials in `src/main/java/util/DBConnection.java`
4. Build the project using Maven: `mvn clean package`
5. Deploy the generated WAR file (`target/RequestHeaderViewer.war`) to Apache Tomcat
6. Open `http://localhost:8080/RequestHeaderViewer/` in your browser
