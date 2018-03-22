# The-Pizza-Wagon

Pizza Ordering Web app using Java Spring MVC Framework

## Spring Framework Version : 3.1.1.RELEASE 

## Features

1.Data Binding

2.JDBC SQL Injection

3.Sending Email (using JavaMailer)

4.PDF Generation (using iTextPdf)

5.SMS on Registration (using Twilio)

6.File Upload

## Steps of Installation 

1.Download and Install Spring Tool Suite(STS)/Eclipse.

2.Download or Clone "The-Pizza-Wagon" from here.

3.Import "the-pizza-wagon" into STS/Eclipse.

4.Verify and Enter your database username and password at "the-pizza-wagon/src/main/webapp/WEB-INF/spring/root-context.xml".

5.Create a database "the-pizza-wagon" and import the database from "database/the-pizza-wagon.sql".

6.Make a Twilio account to get Account SID, Auth Token and Twilio Mobile Number and substitute them in the placeholders at "the-pizza-wagon/src/main/java/com/rjsk/mvc/controllers/SignupController.java".

7.Place "cacert.pem" inside any directory inside C drive.

8.Open php.ini and uncomment the line "curl.cainfo = " by removing the semicolon at the start of the line.

9.Update curl.cainfo="C:/path/of/file/cacert.pem" and restart WAMP/XAMPP.

10.Substitute your Gmail account credentials in the placeholders at "the-pizza-wagon/src/main/webapp/WEB-INF/spring/root-context.xml".

11.Substitute your Birthday/Catering Order as well as Contact Queries receiving Email Address at “the-pizza-wagon/src/main/java/com/rjsk/mvc/controllers/EmailController.java”.

12.Allow use of less secured apps in the Settings Panel of your Gmail Account (just in case Sending Emails is not working).

13.Get the Google Map API Key from google and substitute it in the placeholder at “the-pizza-wagon/src/main/webapp/WEB-INF/views/findus.jsp”.

## NOTE 

1.Twilio only sends SMS between morning 9am to evening 9pm.

2.Sample PDF is available at "pdf/SampleOrder.pdf".

## Screenshots

### Home Page

![Home Page](/screenshots/Home%20Page.PNG)

### Order Page

![Order Page](/screenshots/Order%20Page.PNG)

### Order PDF

![Order PDF](/screenshots/Order%20PDF.PNG)

### Previous Order Page

![Previous Order Page](/screenshots/Previous%20Order%20Page.PNG)

### Contact Us Page

![Contact Us Page](/screenshots/Contact%20Us%20Page.PNG)

### Review Page

![Review Page](/screenshots/Review%20Page.PNG)
