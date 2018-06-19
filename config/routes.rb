Rails.application.routes.draw do
  root to: 'pages#home'
  get '/bateau' => 'static#bateau'
  get '/ile_aux_fleurs' => 'static#ile_aux_fleurs'
  resources :blogs
end
