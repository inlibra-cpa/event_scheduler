# README

* ... -->
# Event Scheduler and Reminder Application

This application provides a command-line interface for scheduling and being reminded of events. It is built with Ruby on Rails and uses PostgreSQL for data persistence.

## Features

- Schedule events with a title, date, and description.
- View upcoming events and receive reminders.
- API endpoints for event management.
- Command-line interface for direct interaction.

## System Requirements

- Ruby 3.1.2
- Rails 7.0.8
- PostgreSQL 

## Setup Instructions

1. Clone the repository:

git clone <https://github.com/inlibra-cpa/event_scheduler>
cd event_scheduler
Install the required Ruby version using rbenv or rvm.

2. Install dependencies:

bundle install
yarn install --check-files # If using Rails 6 and above

3. Set up the PostgreSQL database:

cp config/database.yml.sample config/database.yml

<!-- Edit the config/database.yml with your database credentials -->

rails db:create db:migrate db:seed


4. Start the Rails server:

rails s

## Contributing
Contributions are welcome! Please follow our contributing guidelines for submitting patches and additions. These include:

Fork the repository.
Create a new feature branch (git checkout -b my-new-feature).
Make your changes and commit them (git commit -am 'Add some feature').
Push to the branch (git push origin my-new-feature).
Create a new Pull Request.
Please write tests for new features and include detailed descriptions in your pull requests.

Ensure that your code adheres to the project's coding standards.

## Testing
To run the test suite, execute the following command:

bundle exec rspec

## Deployment
For deploying this application, you can use Heroku, AWS, or any other service that supports Rails applications.

Remember to set up the environment variables for production database access and any other sensitive configuration.

## License
This project is available under the MIT License. See the LICENSE file for more details.

## Architecture

- **Model**: `Event` model to store event information.
- **View**: JSON views for API endpoints, command-line interface for interaction.
- **Controller**: `EventsController` to handle API requests.

## Data Structure

The application uses a PostgreSQL database with the following structure for the events table:

id: Integer, primary key, automatically generated.
title: String, title of the event.
date: DateTime, scheduled date and time for the event.
description: Text, a detailed description of the event.

## Contact
For any queries or technical support, please contact inlibra@gmail.com.