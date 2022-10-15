README
Introduction
Application Description

Requirements
This code has been run and tested on:

Ruby - 3.0.2p107
Rails - 6.1.4.1
Ruby Gems - Listed in Gemfile
PostgreSQL - 13.3
Nodejs - v16.9.1
Yarn - 1.22.11
External Deps
Docker - Download latest version at https://www.docker.com/products/docker-desktop
Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
Installation
Download this code repository by using git:

git clone (https://github.com/ntrujillo/sec_brs.git)

Tests
An RSpec test suite is available and can be ran using:

rspec spec/

Execute Code
Run the following code in Powershell if using windows or the terminal using Linux/Mac

cd your_github_here

docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest

cd rails_app

Install the app

bundle install && rails webpacker:install && rails db:create && db:migrate

Run the app rails server --binding:0.0.0.0

The application can be seen using a browser and navigating to http://localhost:3000/

Environmental Variables/Files
app requires you to create an account or login to existing account as a user or admin to access functionality. 

Deployment
rails db:migrate'
rails server --binding=0.0.0.0
Access Point: http://127.0.0.1:3000

CI/CD
TBD

Support
Admins looking for support should first look at the application help page. Users looking for help seek out assistance from the customer.
