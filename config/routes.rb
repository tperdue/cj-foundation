Rails.application.routes.draw do


  devise_for :users, skip: [:registrations]
  resources :users, :only => [:index, :show, :edit, :new, :create,:update]





  root 'page#home'

  # Pages
  match '/about', to: 'page#about', via: :get, as: 'about'
  match '/contact', to: 'page#contact', via: :get, as: 'contact'

  # Manager
  match '/manager', to: 'manager#dashboard', via: :get, as: 'dashboard'

  # File Manager
  resources :media_files, path: '/manager/media'

  # HomePage
  resources :home_pages, path: '/manager/home_pages'

  # AboutPage
  resources :about_pages, path: '/manager/about_pages'

  # Site Settings
  resources :site_infos, path: '/manager/site_settings'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
