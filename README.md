# README

An application that allows for the creation and management of schools, courses, batches, and students by
various user types including Admin, School Admin, and Student. With different user types and their respective
capabilities, the application offers a flexible and secure platform for educational organisations.

## Steps to setup application

Open terminal and go to project directory and run below commands.

```
rails db:create
rails db:migrate
rails db:seed
```

## Steps to run application

Open terminal and go to project directory and run below commands.

```
rails s
```

## Steps to view application in browser

```
http://localhost:3000/
```

## Roles

### Admin

* Admins have full control over the system and can create schools and SchoolAdmins.

On home page click on `Admin Sign In` to login using admin credentials.

### School Admin

* SchoolAdmins can update information about the school
* SchoolAdmins are responsible for creating courses
* SchoolAdmins are responsible for creating batches
* SchoolAdmins are responsible for adding students to batches
* They can also approve or deny enrolment requests made by students

On home page click on `School Admin Sign In` to login using admin credentials.


### Student

* Students can raise a request to enrol in a batch.
* Students from the same batch can see their classmates and their progress

On home page click on `Student Sign In` to login using admin credentials.

On home page click on `Student Sign Up` to signup and enroll in a batch.
