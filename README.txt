Assistant Management Backend Application

This backend application provides CRUD (Create, Read, Update, Delete) APIs for managing assistant records. It utilizes Node.js for the server-side code and MySQL for the database.

How to Run

Follow these steps to run the application locally:

1. Clone the Repository: 
   
   git clone <repository-url>
   

2. Install Dependencies:
   Navigate to the project directory and run the following command to install the required dependencies:
   
   npm install
   

3. Configure MySQL Database:
   - Make sure you have MySQL Server installed and running on your machine.
   - Create a MySQL database named `AssistantManagement`.
   - Adjust the database connection parameters in the `app.js` file if necessary.

4. Start the Server:
   Run the following command to start the backend server:
   
   node app.js
   

5. Testing API Endpoints:
   - Once the server is running, you can test the API endpoints using tools like Postman or cURL.
   - Use the following base URL for sending requests: `http://localhost:3000`

Dependencies

- express: "^4.17.1"
- mysql: "^2.18.1"

Known Issues and Troubleshooting

- MySQL Authentication Protocol Error: If you encounter the error "Client does not support authentication protocol requested by server," it may be due to compatibility issues between the MySQL server version and client libraries. 
  Ensure that your MySQL server version is compatible with the client libraries used by the Node.js MySQL module. You may need to upgrade your MySQL client or downgrade your server version accordingly.

- Module Not Found Error: If you encounter a "Module not found" error while running the server, double-check the path to your `app.js` file and ensure that it exists in the specified location.

Additional Information

- This application was developed as part of an assignment to demonstrate CRUD operations using Node.js and MySQL.
- Feel free to explore and modify the code according to your requirements.

---