# Knowledge Showdown Database

Welcome to the Knowledge Showdown Database repository! This repository contains the SQL scripts and database schema for implementing a comprehensive knowledge showdown system. The database is designed to store and manage data related to avatars, countries, average scores, categories, questions, users, games, responses, answers, and various roles and permissions. The schema consists of 16 tables, including 11 primary tables and 5 joining tables.

![Knowledge Showdown Database](https://github.com/BorisPaunovic/Knowledge-Showdown-Database/assets/119711363/e9b2c448-0c60-47af-b1ca-1c8b450eae6d)

Figure 1 Knowledge Showdown Database Diagram.
## Tables:

1. **Avatars:**
   - Stores avatar images and associated data.

2. **Countries:**
   - Contains information about countries.

3. **AverageScores:**
   - Stores average scores data.

4. **CategoriesQuestions:**
   - A joining table connecting categories and questions.

5. **Users:**
   - Stores information about users, including unique IDs, names, and contact details.

6. **Categories:**
   - Contains information about knowledge categories.

7. **Questions:**
   - Stores details about questions, including question IDs, text, and other pertinent information.

8. **Games:**
   - Keeps track of games and their details.

9. **Responses:**
   - Stores responses to questions.

10. **Answers:**
    - Contains information about answers to questions.

11. **UsersRoles:**
    - A joining table connecting users and roles.

12. **GamesQuestions:**
    - A joining table connecting games and questions.

13. **RolesPermissions:**
    - A joining table connecting roles and permissions.

14. **Roles:**
    - Stores information about user roles.

15. **UsersPermissions:**
    - A joining table connecting users and permissions.

16. **Permissions:**
    - Stores information about user permissions.

## Setup

To set up the Knowledge Showdown Database on your MySQL Server, follow these steps:

1. Connect to your MySQL Server using your preferred client or MySQL Workbench.
2. Create a new database using the provided SQL commands in the `create_database.sql` file.

Execute the SQL scripts in the `Knowledge Showdown Database Scripts` folder in the following order:

 1.`create database` : Create the database named Knowledge-Showdown-Database
 2. `primary tables`: Create the necessary primary tables in the database.
 3. `joining tables`: Create the necessary joining tables in the database.
 

The database is now set up and ready to be used by the Knowledge Showdown application.

Alternatively, you can restore the database from the provided `.mwb` file.

## Contributing

Contributions to the Knowledge Showdown Database project are welcome. If you would like to contribute, please follow these guidelines:

1. Fork the repository and create your branch: `git checkout -b your-branch-name`
2. Make changes following the project's coding conventions.
3. Test your changes thoroughly to ensure they don't introduce any issues.
4. Commit your changes: `git commit -m "Your commit message"`
5. Push to the branch: `git push origin your-branch-name`
6. Open a pull request, describing your changes and their purpose.

## License

The Knowledge Showdown Database project is released under the MIT License. You are free to use, modify, and distribute the database schema and SQL scripts according to the terms of the license.

## Contact

If you have any questions, suggestions, or feedback, please feel free to reach out. You can contact us by opening an issue on the repository.

Thank you for your interest in the Knowledge Showdown Database project. We hope it proves to be a valuable resource for implementing the database component of your knowledge showdown system!
