Rails.application.routes.draw do
  resources :questions, only: [:index, :new, :create, :destroy]
  resources :question_groups, only: [:index, :new, :create] do
    member do
      get :standard
      get :correct_answers
    end
  end
  resources :fields, only: [:new, :create]
  
  root to: 'questions#index'
end
