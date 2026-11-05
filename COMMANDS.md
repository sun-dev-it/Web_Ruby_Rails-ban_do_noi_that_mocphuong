# run the application using rails server
rails server

# run rails tailwindcss
rails tailwindcss:watch

# build and run the application using Docker Compose 
docker compose up --build

# check
echo %RAILS_ENV%
echo %DATABASE_URL%

# create data
bundle exec rails db:create

# migrate data 
bundle exec rails db:migrate

# run seed
bundle exec rails db:seed
