Rails.application.routes.draw do
  
  devise_for :users do
  	resources :todos
  end

  root "todos#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

