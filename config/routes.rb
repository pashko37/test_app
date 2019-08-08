Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :quizzes
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  devise_for :users
  devise_scope :user do
    authenticated :user do
      root 'quizzes#index'
    end
    unauthenticated do
      root 'devise/sessions#new'
    end
  end
end
