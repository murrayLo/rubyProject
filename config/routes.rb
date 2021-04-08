Rails.application.routes.draw do

  root to: 'home#index' #Specify the root page

  get 'home/index'
  devise_for :users
  resources :tests
  resources :subjects
  resources :courses
  resources :lecturers
  resources :students

  # Routes for Search functionality - NOT WORKING
  # get 'searchStudent', to: 'students#show'
  # get 'searchLecturer', to: 'lecturers#show'
  # get 'searchCourse', to: 'courses#show'
  # get 'searchSubject', to: 'subjects#show'

end
