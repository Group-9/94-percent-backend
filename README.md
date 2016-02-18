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
$ bundle install
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
