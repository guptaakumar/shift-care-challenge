# shift-care-challenge

Client Search Application

This is a minimalist command-line application built with Ruby that allows you to search through a JSON dataset of clients and find duplicates based on their email addresses.

To get started with this application, follow the steps below:

Prerequisites Please install Ruby on your system. Your version is 3.1.0.

Installation Download and Extract the Zip File:

Download the project's zip file from the source provided.

Extract the contents of the zip file to a directory of your choice on your computer.

Navigate to the Project Directory:

Open your terminal or command prompt and navigate to the directory where you extracted the project files.

Running the Application Run the following command:

Usage The application provides two main commands:

1)Search Clients by Name: To search for clients by their names, use the following command: 
ruby ./shift_care.rb find_by_name Smith

The partial name you want to search for.

Example: search_name: Smith This will return a list of clients whose names partially match the search query.

Find Duplicate Clients by Email:

To find duplicate clients based on their email addresses, use the following command:

ruby ./shift_care.rb find_by_email jane

This command will check the dataset for clients with the same email address and display any duplicates found.
