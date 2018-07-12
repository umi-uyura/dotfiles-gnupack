#!/bin/sh

heroku plugins:install heroku-accounts
heroku plugins:install heroku-pipelines
heroku plugins:install heroku-config
heroku plugins:install heroku-repo
heroku plugins:install heroku-autocomplete
heroku plugins:install ynab/heroku-fork

# Enable autocomplete
heroku autocomplete
