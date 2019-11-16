Rails.application.routes.draw do
  resources :questions
  resources :question_groups, only: [:show, :new, :create]
  
  root to: 'questions#index'
end
