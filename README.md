# Grocery Store Application

## Overview

Welcome to the **Grocery Store Application** built with **Python**, **Flask**, and **MySQL**. This project provides a simple platform to manage products, track orders, and perform basic **CRUD** (Create, Read, Update, Delete) operations. It follows a **vertical slice development approach**, starting with the database setup and then integrating the frontend.

### Key Features:
- **Database Setup**: MySQL database with tables for products, units of measurement (UOM), orders, and order details.
- **Backend API**: Python Flask app connected to MySQL using **MySQL Connector**.
- **CRUD Operations**: Add, list, update, and delete products in the store.
- **Foreign Key Relationships**: Ensures data integrity across products, orders, and order details.
- **Security**: Uses parameterized SQL queries to prevent SQL injection attacks.

---

## Getting Started

Follow these steps to set up the project on your local machine:

### Prerequisites

To run this project locally, ensure you have the following installed:

- **MySQL**: For database management and creation.
- **MySQL Workbench**: For interacting with and visualizing the database schema.
- **Python** (3.x): For the backend development.
- **Flask**: For building the web application.
- **MySQL Connector for Python**: Required for connecting Flask to the MySQL database.

### Setup Instructions

#### 1. **Download MySQL and MySQL Workbench**
- Install **[MySQL](https://dev.mysql.com/downloads/installer/)** (choose the version for your OS).
- Install **[MySQL Workbench](https://dev.mysql.com/downloads/workbench/)** to manage your database and visualize the schema.

#### 2. **Create the Database**

In **MySQL Workbench**, create a new database and follow the steps to add tables:

- **Products Table**: Stores product information like name, unit, and price.
- **UOM (Units of Measurement) Table**: Stores units such as "kg", "each", etc.
- **Orders Table**: Tracks orders with total price and order date.
- **Order Details Table**: Links products to orders with quantity and price.

Each table should have **foreign key relationships** to ensure data integrity.

> **Insert Image**: Screenshot of the MySQL Workbench schema here (replace placeholder).

#### 3. **Install Python Dependencies**

Create a virtual environment and install necessary Python libraries:

```bash
python -m venv venv
source venv/bin/activate  # On Windows use venv\Scripts\activate
pip install Flask mysql-connector-python
