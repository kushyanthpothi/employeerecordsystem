# Employee Record System

![Employee Record System](./media/profile_pic/logo_2.png)

## 📋 About the Project

The Employee Record System is a comprehensive web-based application developed using Django, designed to streamline employee data management. It provides a platform for efficient employee record keeping, including personal details, educational background, and professional experience.

## ✨ Features

### Admin Panel
- **User Management**: Create, view, update, and delete employee accounts
- **Profile Management**: View and update employee profiles
- **Education Details**: Track and manage employee educational qualifications
- **Experience Records**: Monitor employee work experience history
- **Dashboard**: Comprehensive overview of the system

### Employee Panel
- **Self-registration**: New employees can register themselves
- **Profile Management**: Update personal information and upload profile pictures
- **Education Details**: Add and update educational qualifications
- **Experience Records**: Maintain professional experience information
- **Secure Authentication**: Protected access to personal data

## 🛠️ Technology Stack

- **Backend**: Django 5.0.4
- **Frontend**: HTML, CSS, JavaScript, Bootstrap
- **Database**: MySQL
- **Icons**: Font Awesome
- **jQuery**: For enhanced interactivity

## 🔧 Installation & Setup

### Prerequisites
- Python 3.8+
- MySQL Server
- pip (Python package installer)

### Step 1: Clone the Repository
```bash
git clone https://github.com/kushyanthpothi/employeerecordsystem.git
cd employee-record-system/ers
```

### Step 2: Create Virtual Environment (Recommended)
```bash
python -m venv env
# On Windows
env\Scripts\activate
# On macOS/Linux
source env/bin/activate
```

### Step 3: Install Dependencies
```bash
pip install -r recovered_requirements.txt
```

### Step 4: Database Setup
1. Create a MySQL database named `erspythondb`
   ```sql
   CREATE DATABASE erspythondb;
   ```
2. Configure database settings in `employeerecord/settings.py` if needed:
   ```python
   DATABASES = {
       'default': {
           'ENGINE': 'django.db.backends.mysql',
           'NAME': 'erspythondb',
           'USER': 'root',
           'PASSWORD': '123456',
           'HOST': 'localhost',
           'PORT': '3306',
       }
   }
   ```

### Step 5: Run Migrations
```bash
python manage.py migrate
```

### Step 6: Create Superuser (Admin)
```bash
python manage.py createsuperuser
```

### Step 7: Run the Development Server
```bash
python manage.py runserver
```

## 📊 Project Structure

```
employeerecord/
├── ersapp/                     # Main application
│   ├── migrations/            # Database migrations
│   ├── models.py              # Data models
│   ├── admin.py              # Admin configurations
│   ├── apps.py               # App configurations
├── employeerecord/            # Project settings
│   ├── settings.py           # Django settings
│   ├── urls.py               # URL patterns
│   ├── views.py              # Core views
│   ├── adminviews.py         # Admin panel views
│   ├── empviews.py           # Employee panel views
├── media/                     # User-uploaded media
│   ├── profile_pic/          # Profile pictures
├── static/                    # Static files
│   ├── assets/               # CSS, JS, images
├── templates/                 # HTML templates
│   ├── admin/                # Admin templates
│   ├── employee/             # Employee templates
│   ├── includes/             # Reusable components
├── manage.py                  # Django management script
├── recovered_requirements.txt # Project dependencies
```

## 💻 Usage Guide

### Admin Panel
1. Access the admin login at `http://localhost:8000/`
2. Login using your admin credentials
3. From the dashboard, you can:
   - View all employees
   - View and update employee profiles
   - Manage employee education and experience details
   - Update your admin profile

### Employee Panel
1. Access the login page at `http://localhost:8000/`
2. Register as a new employee or login with existing credentials
3. From the dashboard, you can:
   - View and update your profile
   - Add/update education details
   - Add/update work experience
   - Change your password

## 📱 Screenshots

![Login Screen](./media/profile_pic/login.jpg)
*(Place actual screenshots here)*

<!-- Add more screenshots for dashboard, profile pages, etc. -->

## 🔐 Security Features

- Password hashing and protection
- Login required decorators for protected views
- CSRF protection
- User type-based access control

## 🚀 Future Enhancements

- Email notifications system
- Document upload capability
- Leave management system
- Performance evaluation module
- API integration for external systems

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Contact

For any queries, please contact [kushyanthpothineni2003@gmail.com](mailto:kushyanthpothineni2003@gmail.com)
