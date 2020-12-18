Rails.application.routes.draw do

  
  devise_for :users
  root "page#home"

  #Pages
  match "/about", :to => "page#about", :via => :get, :name => "about"
  match "/contact", :to => "page#contact", :via => :get, :name => "contact"

  #Manager

  match "/manager", :to => "manager#dashboard", :via => :get, :name => "dashboard"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
