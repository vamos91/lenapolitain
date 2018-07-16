Rails.application.routes.draw do
  root to: 'pages#home'
  get '/bateau' => 'static#bateau'
  get '/croisiere_kite' => 'static#croisiere_kite'
  get '/ile_aux_fleurs' => 'static#ile_aux_fleurs'
  get '/transatlantique' => 'static#transatlantique'
  get '/mavalise' => 'static#mavalise'
  get '/about' => 'static#about'
  get '/info-secu' => 'static#info-secu'
  get '/alacarte' => 'static#alacarte'
  resources :blogs
  resources :croisieres
  resources :contact_forms
  get 'croisieres/show' => 'croisieres#new'
  resources :reviews
end
