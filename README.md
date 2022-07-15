A Meetup Web Application
----------------------------------------
### [Ted Staros](https://github.com/tstaros23)

![Ruby](https://img.shields.io/badge/Ruby-v2.7.2-red)
![Rails](https://img.shields.io/badge/Rails-v6.0.0-red)
![Postgres](https://img.shields.io/badge/Postgres-blue)
---

"tstaros_meetup" is a meetup app designed to allow visitors to upload a CSV file. Once the CSV file is uploaded, visitors will see a list of meetup groups along with who the organizers of the group are, they can see each individual meetup group with the users in the group as well as the user's role in the group.

## Schema

<img width="917" alt="Screen Shot 2022-07-14 at 5 55 16 PM" src="https://user-images.githubusercontent.com/81131454/179120115-b4c27202-0011-4644-a239-47665a35353c.png">

## Prerequisites:
- Rails 6.0.0
- Ruby 2.7.2
- PostgreSQL

## Setup

* From the command line, install gems and set up your DB:
    * `bundle install`
    * `rails db:{create,migrate}`
* Run the test suite with `bundle exec rspec`.
* Run your development server with `rails s` to see the app in action.
* After you run your server, type in `http://localhost:3000/groups/` in your web browser
* Use the form to import and upload a CSV file
* Make sure your CSV file headers are formatted: First Name, Last Name, Group Name, Role in Group
* Once the information is uploaded, you will be able to go to the Group Index and Show page to see the meetup group information


## Views

* Group Index View: `http://localhost:3000/groups/`
* Group Show View: `http://localhost:3000/groups/:id`


