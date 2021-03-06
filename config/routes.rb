Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup'}, controllers: { registrations: 'user_registrations'}

  root to: 'home_about_contact#index'

  get 'home_about_contact/index'

  get 'home_about_contact/about'

  get 'home_about_contact/contact'

  resources :users
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
