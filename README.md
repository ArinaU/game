This is a test game project that implements the following tasks:

There are indicators (“ran 10+ km”, “made 70+% of accurate passes” and so on).
Players perform some indicators in each play, but some do not.

Implements methods that allow:
- note that the player has completed such an indicator in the match
- check whether the player has completed a specific indicator at least 1 time in the previous 5 matches of the team
- select the Top-5 players for a specific indicator in a particular team and for all teams in general

## Getting started

You need to have installed ruby v2.7.0 and rails v6.0.3.

After cloning the repository use
```
bundle install
```
 commands in console.
 
 To run migrations use:
 
```
rails db:create
```
and
```
rails db:migrate
```
commands in console to create database and run migrations.

If you want to run a server, use:

```
rails s
```

To run tests, set the test environment for test:

```
rails db:environment:set RAILS_ENV=test

```

And then run RSPEC:
```
rspec

```




