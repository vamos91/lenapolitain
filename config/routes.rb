Rails.application.routes.draw do
  root to: 'pages#home'
  get '/bateau' => 'static#bateau'
  resources :blogs
end
