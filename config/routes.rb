Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}

  namespace :admin do
    resources :categories
  end

  root 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about'   => 'static_pages#about'
  get 'help'    => 'static_pages#help'
end
