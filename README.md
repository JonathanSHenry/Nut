# README

INSTALL: 

1.  Install rails: 
    
    Please visit http://installrails.com
    
    In order to download and install all the necessary files needed in order to run Ruby on Rails locally. 
    Follow the steps presented on the website based upon the operating system you are working on. If you
    have the option, working on MacOS is preferred due the the ease of installation with homebrew. 
    
    -   Please use Rails 5.2.1 and Ruby 2.5.1

2.  Clone the github repository: https://github.com/JonathanSHenry/allergyeet.git onto your machine. 


COMPILE: 

1.  In order to compile, you will need to run a series of commands in the terminal. First, navigate to your
    local allergyeet folder on the terminal using cd commands. 
    
    Next, please run these commands: 

    -   bundle install --without production
    -   bundle update 

RUN: 

1.  Host the server

    In order to run the website, please run this command  in the terminal: 

    -   rails server

2.  View the website

    Please visit

    http://localhost:3000

    in your preferred web browser. Please follow the help tab on the website in order to learn how to use
    the website. 

TROUBLESHOOTING: 

1.  If you get a database migration error upon attempting to run the server, please exit the server you are        currently running through using ctrl + C. Perform the following terminal command
    
    -   rails db:migrate:reset 

    Restart the server by running

    -   rails server

    in the terminal. 