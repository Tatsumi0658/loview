Rails.application.routes.draw do
  get 'posts/edit'
  devise_for :users
  root to: 'questions#index'
  resources :questions, only:[:index, :new, :show, :create]
  resources :accounts,only:[:new, :create, :show, :edit, :update]
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
