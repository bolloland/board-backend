# BOARD HORDE

This application uses a Rails backend framework and a [frontend](https://github.com/bolloland/board-frontend/blob/master/README.md#npm-start) powered by React/Redux

## To Run

* Clone this repo to your directory
* run $ rails db:migrate
* run $ rails db:seed
* Create a .env file in the root directory of your app
* Obtain a Client_ID from [Board Game Atlas](https://api.boardgameatlas.com/api/docs/apps) and add it to the .env file like so:\
```API_KEY = your_api_key```

* run $ rails s

* to reset seed data: run $ rake db:reset

