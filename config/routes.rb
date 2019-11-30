Rails.application.routes.draw do
  resources :questions
  resources :question_groups
  
  root to: 'questions#index'
end
