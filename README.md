#Taxi Service 
This program is a taxi service, a database of cars, drivers.
The program provides functionality: 
- Create a new driver.
- Create a new car.
- Check your cars.
- Connect a driver with one or more cars.
- Add detailed description of car with creating manufacturer information.
- Provide a list of cars for each driver.
- Delete cars, drivers and manufacturers. 
  
Allows access only to authorized drivers, also provides the ability to register new ones.
  
This project follows the rules of N-tier Architecture and SOLID. Has DAO, SERVICE and CONTROLLER layers and uses custom Injector class and Logger.
  ## Architecture layers
- **DAO** -  It communicates with the Database and handles the persisting of our data.
- **Service**  - The program's business processed  here.
- **Controller** - This is where we handle all the incoming requests to our application from user/driver and return a response.
## Technologies used
- Java 11
- Apache Tomcat - version 9.0.50
- MySQL - version 8.0.25
- JDBC
- Servlet
- JSTL
- JSP
- HTML, CSS
- Logger log4j2
## Setup
1. Install IDE, Tomcat, MySQL.
1. Clone the project into your local directory and then open it in the IDE.
1. Create MySQL database (schema), and the necessary tables using resources/init_db.sql.
1. Put in the fields(URL, USERNAME, PASSWORD) in the "ConnectionUtil" class in the "taxi.util" package.
   If you use another database you need to change field "JDBC_DRIVER" and dependencies in web.xml.
1. For using Logger you should write path to your logs file to field "filename" in resources/log4j2.xml.
1. Before running the application you have to configure Apache Tomcat.
1. Run the program. 
1. You get page in the browser window.
1. Authenticate or register yourself.

