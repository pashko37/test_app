Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :quizzes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  #root to: "home#index"
end
