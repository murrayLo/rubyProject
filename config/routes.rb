Rails.application.routes.draw do

  devise_for :users

  get 'home/index'
  
  resources :tests
  resources :subjects
  resources :courses
  resources :lecturers
  resources :students
  
  resources :fees do
    collection { post :import }
  end

  root to: 'home#index' #Specify the root page

  # Routes for Search functionality - NOT WORKING
  # get 'searchStudent', to: 'students#show'
  # get 'searchLecturer', to: 'lecturers#show'
  # get 'searchCourse', to: 'courses#show'
  # get 'searchSubject', to: 'subjects#show'

end
