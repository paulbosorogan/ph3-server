# Phase 3 Project Server-Side - 'in my reader's opinion' 
This is a book review SPA. The user is able to upload books and review them.

## Requirements to install and run this program.
Access to a terminal.
Internet browser.

# Application instructions
Navigate to the directory from your terminal and git copy the repo from GitHub.
Open the file (code .)
Run the command `buldle install` in the terminal to install all dependencies.

## 
This SPA is meant to work alongside this front-end React application. For information and instructions press [here](https://github.com/paulbosorogan/ph3-client)
Please follow along the instructions from the link provided below in order to have the React App running. 
## 

Please run `rake server` in your terminal to start the server. You may open http://localhost:9292/books in your browser to see the data. 

# Controllers - Models
- book.rb (has_many :reviews assosiation)
- review. rb (belongs_to :book association)

# Controllers - Application Controllers 
- GET
- POST 
- PATCH
- DELETE

# Technologies used
- Ruby
- Active Record
- Sinatra

# Resources
- Curriculum Aid: https://learning.flatironschool.com/courses/5651/assignments/208188?module_item_id=480009
- ActiveRecord migrations: https://learning.flatironschool.com/courses/5651/assignments/208023?module_item_id=479903
- ActiveRecord associatoins: https://guides.rubyonrails.org/association_basics.html
- Faker gem used to seed data: https://github.com/faker-ruby/faker
- Images from https://www.freepik.com/ uploaded on my profile of https://imgur.com
- Youtube videos https://www.youtube.com/watch?v=TH0Amh9fHt4
- Medium blogs https://dev.to/sampurna/creating-responsive-navbar-using-react-bootstrap-5ajg