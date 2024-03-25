Rails.application.routes.draw do
  devise_for :admins
  resources :student_classes
  resources :teachers
  resources :students
  get 'home/index'
  root "home#index"

  devise_for :users, controllers: {
  invitations: 'invitations', # Use your actual controller name here
  registrations: 'users/registrations' # If needed
}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
