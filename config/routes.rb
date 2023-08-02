Rails.application.routes.draw do
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "students#index"
  resources :students do
    get "my_action", on: :collection
    
  end 
  resources :blogs do
    get 'get_profile_details', on: :member
    get 'all_profiles', on: :collection
  end
  scope :admin do
    resources :students
  end
end
