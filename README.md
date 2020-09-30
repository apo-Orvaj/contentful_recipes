# README

Run the following commands to setup the application:

1. Clone the project
2. bundle install
3. rails s

### Steps:
- Start the server & visit the home page http://localhost:3000/
- The home page shows the list view of all the recipes.
- When clicking on a recipe on the list view, the detailed view of recipe is shown

### Test runs
The web application is equipped with RSpec unit tests.

To run tests:
```
rspec 
```


### System dependencies:

- Ruby version 2.3.1
- Rails version 5.1.7
- Postgres
- RSpec
- Bundler version 2.0.1

### Gems used
- gem 'contentful' -> Ruby SDK for the Contentful
- gem 'rubocop' -> Ruby code style analyzer
- gem 'rspec-rails' -> Unit testing framework for Ruby