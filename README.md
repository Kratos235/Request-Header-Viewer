Request Header Viewer (CRUD Web Application)
Overview

This project is a Java-based web application that captures HTTP request headers sent by a client browser and stores them in a MySQL database. The application allows users to view the headers of the current request as well as manage previously stored header records using CRUD operations.

The application is built using Java Servlets, JSP, JDBC, and MySQL, following a simple MVC architecture.

Features

Capture HTTP request headers from the browser

Store request headers in a MySQL database

View current request headers

View history of stored headers

Update notes associated with a header record

Delete stored header records

Technologies Used
Frontend

HTML5

CSS3

JSP (JavaServer Pages)

JSTL (JSP Standard Tag Library)

Expression Language (EL)

Backend

Java

Java Servlets

MVC architecture

Data Access

JDBC (Java Database Connectivity)

DAO (Data Access Object) pattern

Database

MySQL

Tools

IntelliJ IDEA

Apache Tomcat

Maven

Git & GitHub

Project Structure
RequestHeaderViewer
│
├── src/main/java
│   ├── controller
│   │   ├── HeaderServlet
│   │   ├── HistoryServlet
│   │   ├── DeleteHeaderServlet
│   │   └── UpdateHeaderServlet
│   │
│   ├── dao
│   │   └── HeaderDAO
│   │
│   ├── model
│   │   └── Header
│   │
│   └── util
│       └── DBConnection
│
├── src/main/webapp
│   ├── css
│   │   └── style.css
│   │
│   ├── index.jsp
│   ├── headers.jsp
│   ├── history.jsp
│   └── edit.jsp
│
└── pom.xml
