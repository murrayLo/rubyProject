Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students
  # get 'student', to: 'students#index'
  # get 'show', to: 'students#show'
  # get 'new', to: 'students#new'

  root to: 'students#index' #Specify the root page
end
