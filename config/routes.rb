Rails.application.routes.draw do
  resources :total_annual_compensations
  devise_for :users
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
