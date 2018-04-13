# sinatra template
A base Sinatra template. You need Ruby 1.9.2 (compatibility).

- Slim
- Sass
- RSpec & Guard
- unicorn
- Mongodb
- heroku

## Usage

- run `bundle install` to install

- run `bundle exec guard` to execute test

- run `bundle exec unicorn -c ./config/unicorn.rb`

- set your environment variable `MONGOHQ_URL` and run `foreman start` to check the execution in heroku.

It's deprecated.