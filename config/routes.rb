Rails.application.routes.draw do
  root 'pages#show', page: 'home'

  # Handling them static pages
  get '/features' => 'pages#show', page: 'features', as: 'features'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
