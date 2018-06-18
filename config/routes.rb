Rails.application.routes.draw do
  root to: 'pages#home'
  get "/:page" => "static#show"
end
