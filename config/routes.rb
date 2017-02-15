Rails.application.routes.draw do
  resources :equipment do
  collection { post :import }
end
  
  devise_for :users
root "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
