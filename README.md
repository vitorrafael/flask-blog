# Flask Blog


### Blog Structure

The blog has one main goal: **To enable the users to create posts about any kind of subject.**
In order to make that happen, I had to create a login system, a CRUD system using SQLite to storage users and their posts, all of that using Python's microframework Flask.

### Flask Specifications
There are **four main blueprints** in the application:
* **_main_**: holds the main pages like about and home;
* **_users_**: has all the features and forms related to users, such as ResetPasswordForm, PostForm, RegisterForm, LoginForm;
* **_posts_**: has the specific features related to the posts themselves.
* **_errors_**: used when the user tries to access an unauthorized section or when there is an internal server error.

### How to start the application:
1. First of all, install all packages:  
``` shell
pip install -r requirements.txt  
```
2. You will have to create all the tables in the Python terminal:  
``` python
>>> from flaskblog import create_app, db
>>> app = create_app()
>>> with app.app_context():
>>> .... db.create_all()
```
3. Export some environment variables:
``` shell
export FLASK_APP=flaskblog
export SQLALCHEMY_DATABASE_URI="put your database here"
export SECRET_KEY="secret key here"
export EMAIL_USERNAME="email"
export EMAIL_PASSWORD="email password"
```
3. After that in your terminal type the following code:
``` shell
flask run
```
4. Open your localhost.
* Extra: If you want debug mode type the following code in your terminal:
``` shell
export FLASK_DEBUG=1
```
