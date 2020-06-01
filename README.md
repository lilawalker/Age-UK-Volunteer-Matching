Age UK Volunteer Match Service
===================

This repo is a **Hack for Heroes** app developed by [Ben Gittins](https://github.com/squareben1) |  [Daria Thompson](https://github.com/dariathompson) | [David Stewart](https://github.com/DavidStewartLDN) | Karlo de Guzman | [Kate Haffenden](https://github.com/naeglinghaff) | [Lila Walker](https://github.com/lilawalker) | [Patrick Oliver](https://github.com/poliver24) | [Stephan Ellenberger](https://github.com/stellenberger) | [Tom Ratcliffe](https://github.com/ratcliffetj)

Link to heroku app:

[Getting Started](#getting-started) | [Dependencies](#dependencies) | [Criteria for Building the Project](#criteria-for-building-the-project)

## Getting Started

Ensure you have the following setup on your machine:
- Bundler
- PostgreSQL

`git clone` this repository and `cd` into the directory.

Install dependencies:

```
$ bundle install
```

Create, migrate and seed the database:

```
$ rails db:setup
```

To run the project, start up the server:

```
$ rails server
```

Then navigate to `localhost:3000` in your browser


## Dependencies

This project relies on the following Rails Gems:

- Devise (for user authentication)

## Criteria for Building the Project

#### Domain Model

| Models | Methods | State |
| :--- |:--- | :--- |
| User | sign_up, log_in, log_out  | email, password, volunteer(boolean), name, telephone, location, bio, image |
| Interest | | type |


#### User Stories

```
As a user
So that I can connect with volunteers
I would like to sign up to Age UK Volunteer Matching

As a user
So that I can tell volunteers what I'm interested in
I would like to choose my interests from a selection during the sign up stage

As a user
So that I can match with volunteers
I would like to see a list of volunteers with similar interests

As a user
So that I can choose who to share my contact details with
I would like to select the match whom I want to connect with

As a volunteer
So that I can help out users
I would like to sign up to Age UK Volunteer Matching

As a voluteer
So that I can tell volunteers what I'm interested in
I would like to choose my interests from a selection during the sign up stage

As a volunteer
So that I can connect with matches
I would like to receive a notification containing my match's contact details
```
