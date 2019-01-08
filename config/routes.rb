Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/home'
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
