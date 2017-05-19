Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations'}

  resources :categories, only: [:show]
  namespace :admin do
    resources :categories do
      resources :sub_categories
    end
  end

  root 'static_pages#index'
  get 'contact' => 'static_pages#contact'
  get 'about'   => 'static_pages#about'
  get 'help'    => 'static_pages#help'
end
