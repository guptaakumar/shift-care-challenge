# shift-care-challenge

Client Search Application

This is a minimalist command-line application built with Ruby that allows you to search through a JSON dataset of clients and find duplicates based on their email addresses.

Getting Started To get started with this application, follow the steps below:

Prerequisites Please install Ruby on your system. Your version is 2.7.5. Please install Rails on your system. Your version is 7.0.8. bundle install

Installation Download and Extract the Zip File:

Download the project's zip file from the source provided.

Extract the contents of the zip file to a directory of your choice on your computer.

Navigate to the Project Directory:

Open your terminal or command prompt and navigate to the directory where you extracted the project files.

Running the Application Run the following command to start the server: rails server The server will start, and you will be able to access the API.

Access the API: Once the server is running, you can access the API at the following URL: http://localhost:3000/clients You can make GET requests to this URL to interact with the application's client data.

Usage The application provides two main commands:

1)Search Clients by Name: To search for clients by their names, use the following command: curl --request GET http://localhost:3000/clients?search=john -H "Accept: application/json"

The partial name you want to search for.

Example: search_name: Smith This will return a list of clients whose names partially match the search query.

Find Duplicate Clients by Email:

To find duplicate clients based on their email addresses, use the following command:

curl --request GET http://localhost:3000/client/find_duplicates -H "Accept: application/json"

This command will check the dataset for clients with the same email address and display any duplicates found.

Extending Functionality This application has been designed to be easily extensible. Here are some ideas for future features:

Dynamic Field Search:

Allow users to specify which field (e.g., name, email) to search for dynamically instead of always searching by name.

REST API Integration:

Create a REST API version of this application that accepts queries via HTTP requests. To import JSON data, make a POST request to the following endpoint: http://localhost:3000/v1/clients You can use tools like cURL, Postman, or any HTTP client to make this request. Include the JSON data you want to import in the request body.

Scaling the Application:

If you need to handle larger datasets, consider optimizing the search algorithm or using a database to improve performance.
