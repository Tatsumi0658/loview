Rails.application.routes.draw do
  root to: 'questions#index'
  resources :questions, only:[:index, :new, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
