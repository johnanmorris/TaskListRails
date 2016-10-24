Rails.application.routes.draw do
  root 'sessions#login'
  resources :tasks
  patch "tasks/:id/complete", to: 'tasks#complete', as: "complete"

  get '/auth/:provider/callback' => 'sessions#create'
  get '/auth/login', to: 'sessions#login', as: 'login'
  delete '/auth/logout', to: 'sessions#logout', as: 'logout'
end
