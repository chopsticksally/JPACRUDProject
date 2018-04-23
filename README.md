# JPACRUDProject

##Week 8 Homework Project for Skill Distillery


##What I did:
1. Researched all the information for the database.
2. Used MySql workbench to lay out the table and all the inserts then forward engineer to create the database.
3. Created a new workspace in STS.
4. Created a new Java Project with an entities package, a test package, a log and persistence xml
5. The Entities package houses the table created in the database and all its properties.
6. The test package houses Junit tests for mapping.
7. Entities were added to the persistence xml.
8. Created a Dynamic Web Project with a data package, a controllers package, a dispatcher servlet and Web content.
9. Data package contains the DAO where a list of the methods that reach into the database live. It also houses the DAOImpl which implements the DAO.
10. The DAOImpl uses the Enitity Manager to add, edit and delete inserts in and out of the database. Use the @Transactional annotation to begin and commit all transactions. This is the JPQL, using SQL statements with Java. Persist to commit to the database turning a detached entity into a managed entity.
11. The Controllers package houses the controller. The controller houses CRUD functionality and the ModelAndView for the jsp's. This is where the mapping takes place.
12. The Dispatcher servlet will need new beans for the Entity Manager Factory and the Entity Manager.
13. Create a web xml that leads to the home page in your welcome file.
14. Create a jsp for evey view that will be mapped to in the Controller.
15. Create a css folder and an images folder, in Web Content, for all the pictures and css that will be included in the project.
16. The Jsps live in a views folder in the WEB-INF folder. Jsp's will house the HTML and Bootstrap links ( if used ) and a return home link.
17. Add Jsp will have a form to add a new object to the datbase.
18. Display Jsp will have a form to update the existing object and an option to delete the existing object. 
19. DisplayAll Jsp will show the entire list of all objects in the database.
20. Home Jsp will be everything displayed on the home page, featuring a navbar that allows look up by id, add and display all.
21. Make everything pretty with css.... Link the css file to the individual jsp that it applies to.


##What I learned:
1. Being able to work on this project individually, I was able to put all the pieces together. It was a lot easier to follow the mapping of my own methods.
2. I learned a lot of CSS and HTML by just experimenting with different templates, divs and class names.
3. I learned how to link css to a jsp.
4. I have learned to stop hating ugly EL :)



##Technologies used:
CSS
HTML
JAVA
JPQL
MySQL
MySQL Workbench
And lots of Google!



