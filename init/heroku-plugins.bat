@echo off

call heroku plugins:install heroku-accounts
call heroku plugins:install heroku-config
call heroku plugins:install heroku-repo
rem heroku plugins:install heroku-autocomplete
call heroku plugins:install heroku-cli-diff
call heroku plugins:install ynab/heroku-fork
call heroku plugins:install @hyperoslo/heroku-billing

rem Enable autocomplete, but Windows not support
rem heroku autocomplete
