Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/home'
  resources :courses
  resources :instructors
  resources :cohort
  resources :students

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
