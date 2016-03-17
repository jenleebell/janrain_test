Rails.application.routes.draw do
  root 'sessions#main'

  get 'social_callback' => 'sessions#main'
  post 'social_callback' => 'social_callback#social'
end
