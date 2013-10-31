Cheese::Application.routes.draw do

  post '/add_game' => 'pages#add_game'

  post '/add_user' => 'pages#add_user'

  post '/add_result' => 'pages#add_result'

  delete '/destroy' => 'pages#destroy'

  root 'pages#home'
end
