# Development Instructions

## Install Ruby
First you'll want to install Ruby. Any version as long as it's 2.0 or greater should be fine

## Install Gems
First install bundler:
```bash
$ gem install bundler
```

When you've got bundler installed you can install the Gems for the project.

`cd` into the project. After that run:

```bash
$ bundle install --without production
```

## Create the database
```bash
$ bundle exec rake db:migrate
```

## Run the server
At this point you should be able to start the server with
```bash
$ bundle exec ruby app.rb
```
You can access the server at `http://localhost:3000`

## Creating migration files
To create a migration file when changing the database schema run
```bash
$ bundle exec rake db:create_migration NAME=migration_name_here
```
For example if we wanted to make a migration file that creates a questions table we might run
```bash
$ bundle exec rake db:create_migration NAME=create_questions
```

After you create a migration you'll have to run `bundle exec rake db:migrate` again to reflect those changes in the database.

## Running a console
To run a console where you can do things like `Level.all` `Question.first` run
```bash
$ bin/console
```
<kbd>CTRL</kbd>+<kbd>D</kbd> will quit IRB

# Deployment Instructions
## Heroku App Creation
Create an account on [Heroku](https://heroku.com).  
On the Heroku dashboard you will need to create a new application. You will also need to add the "Heroku Postgres" addon for the database.

## Heroku Local Tools Install
You will need to install the [Heroku Toolbelt](https://toolbelt.heroku.com/).  
Once it is installed you will need to login using the following command:
```bash
$ heroku login
```

## Deploying to Heroku
First you want to change directory to the project directory.  
Then you will need to tell `git` about the Heroku app we made.
```bash
$ heroku git:remote -a app-name-here
```
Then you will be able to push to Heroku to deploy the application:
```bash
$ git push heroku master
```
If this is the first time deploying the application you will also need to setup the database using:
```bash
$ heroku run bundle exec rake db:migrate
```
After that you should be able to access the app at `app-name-here.herokuapp.com`
