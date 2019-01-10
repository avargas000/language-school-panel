Rails.application.routes.draw do

  resources :courses
  resources :instructors
  resources :cohorts
  resources :students

    root to: 'courses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
