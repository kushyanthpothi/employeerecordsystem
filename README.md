<div align="center">

# 🏢 Employee Record System

[![Django](https://img.shields.io/badge/Django-5.0.4-092E20?style=for-the-badge&logo=django&logoColor=white)](https://djangoproject.com/)
[![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=for-the-badge&logo=python&logoColor=white)](https://python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)](https://mysql.com/)
[![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white)](https://getbootstrap.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

<p align="center">
  <img src="./media/profile_pic/logo_2.png" alt="Employee Record System Logo" width="200" height="auto">
</p>

### 🚀 A comprehensive web-based employee management system built with Django

[View Demo](https://github.com/kushyanthpothi/employeerecordsystem) · [Report Bug](https://github.com/kushyanthpothi/employeerecordsystem/issues) · [Request Feature](https://github.com/kushyanthpothi/employeerecordsystem/issues)

</div>

---

## 📋 Table of Contents

- [About the Project](#-about-the-project)
- [Features](#-features)
- [Technology Stack](#️-technology-stack)
- [Installation & Setup](#-installation--setup)
- [Usage Guide](#-usage-guide)
- [Project Structure](#-project-structure)
- [Screenshots](#-screenshots)
- [Security Features](#-security-features)
- [API Endpoints](#-api-endpoints)
- [Contributing](#-contributing)
- [Future Enhancements](#-future-enhancements)
- [License](#-license)
- [Contact](#-contact)

## 🎯 About the Project

The **Employee Record System** is a comprehensive web-based application developed using Django, designed to streamline employee data management for organizations of all sizes. This system provides a robust platform for efficient employee record keeping, including personal details, educational background, and professional experience tracking.

### 🎪 Key Highlights

- **Dual Interface**: Separate panels for administrators and employees
- **Secure Authentication**: Role-based access control system
- **Comprehensive Records**: Complete employee lifecycle management
- **Responsive Design**: Modern UI with Bootstrap integration
- **Data Integrity**: MySQL database with proper relationships

## ✨ Features

<table>
<tr>
<td width="50%">

### 👑 Admin Panel
- **📊 Dashboard**: Comprehensive system overview
- **👥 User Management**: Full CRUD operations for employee accounts
- **📝 Profile Management**: View and update employee profiles
- **🎓 Education Tracking**: Manage employee educational qualifications
- **💼 Experience Records**: Monitor work experience history
- **🔧 System Configuration**: Administrative controls

</td>
<td width="50%">

### 👤 Employee Panel
- **🔐 Self-Registration**: New employee onboarding
- **📋 Profile Management**: Personal information updates
- **📸 Photo Upload**: Profile picture management
- **🎓 Education Details**: Self-managed qualification records
- **💼 Experience Records**: Professional history maintenance
- **🔒 Secure Access**: Protected personal data access

</td>
</tr>
</table>

## 🛠️ Technology Stack

<div align="center">

| Category | Technologies |
|----------|-------------|
| **Backend** | ![Django](https://img.shields.io/badge/Django-5.0.4-092E20?style=flat&logo=django) ![Python](https://img.shields.io/badge/Python-3.8+-3776AB?style=flat&logo=python) |
| **Frontend** | ![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white) ![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white) ![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black) ![Bootstrap](https://img.shields.io/badge/Bootstrap-7952B3?style=flat&logo=bootstrap&logoColor=white) |
| **Database** | ![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=flat&logo=mysql&logoColor=white) |
| **Styling** | ![SCSS](https://img.shields.io/badge/SCSS-CC6699?style=flat&logo=sass&logoColor=white) ![Font Awesome](https://img.shields.io/badge/Font_Awesome-339AF0?style=flat&logo=fontawesome&logoColor=white) |
| **Libraries** | ![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=flat&logo=jquery&logoColor=white) |

</div>

## 🚀 Installation & Setup

### Prerequisites

Before you begin, ensure you have the following installed:

```bash
# Check Python version (3.8+ required)
python --version

# Check MySQL installation
mysql --version

# Check pip installation
pip --version
```

### 📥 Installation Steps

#### 1️⃣ Clone the Repository

```bash
git clone https://github.com/kushyanthpothi/employeerecordsystem.git
cd employeerecordsystem
```

#### 2️⃣ Create Virtual Environment

```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows
venv\Scripts\activate
# On macOS/Linux
source venv/bin/activate
```

#### 3️⃣ Install Dependencies

```bash
pip install -r recovered_requirements.txt
```

#### 4️⃣ Database Configuration

1. **Create MySQL Database**
   ```sql
   CREATE DATABASE erspythondb;
   CREATE USER 'ers_user'@'localhost' IDENTIFIED BY 'your_password';
   GRANT ALL PRIVILEGES ON erspythondb.* TO 'ers_user'@'localhost';
   FLUSH PRIVILEGES;
   ```

2. **Update Database Settings** (Optional)
   ```python
   # In employeerecord/settings.py
   DATABASES = {
       'default': {
           'ENGINE': 'django.db.backends.mysql',
           'NAME': 'erspythondb',
           'USER': 'ers_user',  # Update with your username
           'PASSWORD': 'your_password',  # Update with your password
           'HOST': 'localhost',
           'PORT': '3306',
       }
   }
   ```

#### 5️⃣ Database Migration

```bash
python manage.py makemigrations
python manage.py migrate
```

#### 6️⃣ Create Superuser

```bash
python manage.py createsuperuser
# Follow the prompts to create admin account
```

#### 7️⃣ Collect Static Files

```bash
python manage.py collectstatic
```

#### 8️⃣ Run Development Server

```bash
python manage.py runserver
```

🎉 **Success!** Navigate to `http://localhost:8000/` to access the application.

## 💻 Usage Guide

### 🔐 Admin Access

1. **Login**: Navigate to `http://localhost:8000/admin/`
2. **Credentials**: Use superuser credentials created in step 6
3. **Dashboard Features**:
   - View all registered employees
   - Manage employee profiles and permissions
   - Access education and experience records
   - System administration tasks

### 👤 Employee Access

1. **Registration**: Visit `http://localhost:8000/` and click "Register"
2. **Login**: Use employee credentials
3. **Available Actions**:
   - Update personal profile information
   - Upload/change profile picture
   - Manage education qualifications
   - Update work experience
   - Change account password

## 📊 Project Structure

```
employeerecordsystem/
├── 📁 ersapp/                      # Main Django application
│   ├── 📁 migrations/             # Database migration files
│   ├── 📄 models.py               # Data models (Employee, Education, Experience)
│   ├── 📄 admin.py                # Django admin configurations
│   ├── 📄 apps.py                 # App configuration
│   └── 📄 __init__.py
├── 📁 employeerecord/             # Project settings directory
│   ├── 📄 settings.py             # Django project settings
│   ├── 📄 urls.py                 # URL routing patterns
│   ├── 📄 views.py                # Core application views
│   ├── 📄 adminviews.py           # Administrator panel views
│   ├── 📄 empviews.py             # Employee panel views
│   └── 📄 wsgi.py                 # WSGI configuration
├── 📁 media/                      # User-uploaded content
│   └── 📁 profile_pic/            # Employee profile pictures
├── 📁 static/                     # Static files (CSS, JS, Images)
│   └── 📁 assets/                 # Bootstrap, jQuery, custom styles
├── 📁 templates/                  # HTML templates
│   ├── 📁 admin/                  # Admin panel templates
│   ├── 📁 employee/               # Employee panel templates
│   └── 📁 includes/               # Reusable template components
├── 📄 manage.py                   # Django management script
├── 📄 recovered_requirements.txt  # Python dependencies
└── 📄 README.md                   # Project documentation
```

## 📱 Screenshots

<div align="center">

### 🔐 Login Interface
![Login Screen](./media/profile_pic/login.jpg)

*Modern, responsive login interface with secure authentication*

<!-- Add more screenshots when available -->
### 📊 Admin Dashboard
*Coming soon - Admin panel overview*

### 👤 Employee Dashboard  
*Coming soon - Employee self-service portal*

### 📝 Profile Management
*Coming soon - Profile editing interface*

</div>

## 🔐 Security Features

| Feature | Description |
|---------|-------------|
| **🔒 Password Security** | Robust password hashing using Django's built-in security |
| **🛡️ Authentication** | Login required decorators for protected views |
| **🔐 CSRF Protection** | Cross-Site Request Forgery protection enabled |
| **👥 Role-Based Access** | User type-based access control (Admin/Employee) |
| **🔑 Session Management** | Secure session handling and timeout management |

## 🌐 API Endpoints

### Authentication Endpoints
- `POST /login/` - User authentication
- `POST /logout/` - User logout
- `POST /register/` - Employee registration

### Employee Management
- `GET /admin/employees/` - List all employees (Admin only)
- `POST /admin/employee/create/` - Create new employee (Admin only)
- `PUT /admin/employee/{id}/update/` - Update employee (Admin only)
- `DELETE /admin/employee/{id}/delete/` - Delete employee (Admin only)

### Profile Management
- `GET /employee/profile/` - View own profile
- `PUT /employee/profile/update/` - Update own profile
- `POST /employee/education/` - Add education details
- `POST /employee/experience/` - Add work experience

## 🤝 Contributing

Contributions make the open source community an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

### 🔄 Contributing Process

1. **Fork the Project**
2. **Create your Feature Branch**
   ```bash
   git checkout -b feature/AmazingFeature
   ```
3. **Commit your Changes**
   ```bash
   git commit -m 'Add some AmazingFeature'
   ```
4. **Push to the Branch**
   ```bash
   git push origin feature/AmazingFeature
   ```
5. **Open a Pull Request**

### 📋 Contribution Guidelines

- Follow PEP 8 style guidelines for Python code
- Write clear, descriptive commit messages
- Include tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting PR

## 🚀 Future Enhancements

<div align="center">

| Feature | Priority | Status |
|---------|----------|--------|
| 📧 **Email Notifications** | High | 🔄 Planned |
| 📎 **Document Upload** | High | 🔄 Planned |
| 🏖️ **Leave Management** | Medium | 🔄 Planned |
| 📈 **Performance Evaluation** | Medium | 🔄 Planned |
| 🔌 **REST API** | Medium | 🔄 Planned |
| 📱 **Mobile App** | Low | 💡 Idea |
| 📊 **Analytics Dashboard** | Low | 💡 Idea |
| 🔄 **Backup System** | High | 💡 Idea |

</div>

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2024 Kushyanth Pothineni

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

## 📞 Contact & Support

<div align="center">

**Kushyanth Pothineni**

[![Email](https://img.shields.io/badge/Email-kushyanthpothineni2003@gmail.com-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:kushyanthpothineni2003@gmail.com)
[![GitHub](https://img.shields.io/badge/GitHub-kushyanthpothi-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/kushyanthpothi)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/kushyanthpothi)

**Project Link**: [https://github.com/kushyanthpothi/employeerecordsystem](https://github.com/kushyanthpothi/employeerecordsystem)

</div>

---

<div align="center">

### 🌟 Show Your Support

If this project helped you, please consider giving it a ⭐️!

**Made with ❤️ using Django**

</div>
