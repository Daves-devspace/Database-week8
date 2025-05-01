# Database-week8
# 🎓 Student Records System

This project is a **Student Records Management API** built with **FastAPI** and **MySQL**. It provides endpoints to manage student data, course records, and enrollment details using a RESTful interface.

---

## 🚀 Features

- Add, view, update, and delete students
- Course management
- Student course enrollments
- Built with FastAPI for high performance
- SQLAlchemy ORM
- Pydantic schema validation

---

## 🛠 Tech Stack

- **Backend**: Python 3.10+, FastAPI
- **Database**: MySQL
- **ORM**: SQLAlchemy
- **Driver**: mysql-connector-python

---

## 🧱 Database Schema

### Tables
- `students`
- `courses`
- `enrollments`

### ERD (Entity Relationship Diagram)

![ERD Screenshot](link-to-your-ERD.png)

---

## 📦 Setup Instructions

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-username/student-records-api.git
cd student-records-api



2️⃣ Set Up Virtual Environment

python -m venv env
source env/bin/activate  # On Windows use `env\Scripts\activate`

3️⃣ Install Requirements
pip install -r requirements.txt

4️⃣ MySQL Setup
Create a database called studentdb

Import the SQL file provided:
mysql -u root -p studentdb < studentdb.sql

5️⃣ Update Connection String
Edit database.py:
DATABASE_URL = "mysql+mysqlconnector://root:yourpassword@localhost:3306/studentdb"

6️⃣ Run the App
uvicorn main:app --reload

student-records-api/
│
├── main.py              # FastAPI entry point
├── database.py          # MySQL connection
├── models.py            # SQLAlchemy models
├── schemas.py           # Pydantic schemas
├── views.py              # CRUD operations
├── studentdb.sql        # SQL setup script
├── requirements.txt
└── README.md


🧪 API Endpoints
Method	Endpoint	Description
GET	/students	List all students
POST	/students	Create a new student
PUT	/students/{id}	Update a student
DELETE	/students/{id}	Delete a student

