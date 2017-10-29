Rails.application.routes.draw do

  root to: 'home_about_contact#index'

  get 'home_about_contact/index'

  get 'home_about_contact/about'

  get 'home_about_contact/contact'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
