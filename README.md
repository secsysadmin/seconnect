# README
## SEC-BRS Application
###### README for installation and set-up for the SEC-BRS Web App

## Requirements
This code has been run and tested on:

+ Ruby - 3.0.2p107
+ Rails - 6.1.4.1
+ Ruby Gems - Listed in Gemfile
+ PostgreSQL - 13.3
+ Nodejs - v16.9.1
+ Yarn - 1.22.11
+ External Deps
+ Docker - Download latest version of [docker-desktop](https://www.docker.com/products/docker-desktop)
+ Heroku CLI - Download latest version of [heroku-cli](https://devcenter.heroku.com/articles/heroku-cli)
+ Git - Downloat latest version of [getting-started-installing-git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Installation
Clone this code repository by using git:

```
git clone https://github.com/ntrujillo/sec_brs.git
bundle install
rails webpacker:install
rails g rspec:install
rails db:create
rails db:migrate
```

## Tests
An RSpec test suite is available and can be ran using:

```
rspec spec .
```

## Execute Code
Run the following code in Powershell if using windows or the terminal using Linux/Mac:

```
docker run --rm -it --volume "$(pwd):/sec-brs" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest
```

**Note: Each time the Docker container is restarted, run the following commands:**

```ruby
rails db:reset
rake db:drop:all
rake db:create:all
rake db:migrate
rake db:seed
```

## Run the app locally
The application can be seen using a browser and navigating to http://localhost:3000/ to run locally:

```ruby
rails server --binding:0.0.0.0
```

## Environmental Variables/Files
App requires you to create an account or login to existing account as a user or admin to access functionality. 

## Bootstrap

```
apt update
apt install nodejs
apt install npm
yarn add bootstrap jquery pooper.js
```

## Deployment
The application is linked on Heroku's database, you can check the staging and production apps with the following [Here](https://stage-sec-brs.herokuapp.com/login).

```ruby
rails db:migrate
rails server --binding=0.0.0.0
```

## CI/CD
The main.yml file is where we define our workflow CI/CD these will run all Security Brakeman, Rspec, and Rubocop tests. The pipeline from the sec-brs github is already linked to the Heroku database, all is needed is a push.

Make deployment to Heroku with:

```
git push heroku master
```

To ensure the pipeline is is set up properly, follow the documentation below for extra support:
[Continuous Integration](https://medium.com/scalereal/set-up-ci-cd-for-rails-app-using-github-actions-aws-beanstalk-%EF%B8%8F-1df0e2e3cbb9)
[Continuous Delivery](https://shashanksrivastava.medium.com/use-github-actions-to-automatically-deploy-your-applications-to-heroku-566ff0637ffb)

## Support
Admins looking for support should first look at the application documentation. Users looking for help seek out assistance from the documentation and Admins.

<sup>Thank you!</sup>