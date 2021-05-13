Rails.application.routes.draw do

  resources :voluntaries
  resources :vaccines
  resources :vaccine_cards
  resources :sectors
  resources :responsibles
  resources :possible_adoptions
  resources :people
  resources :partners
  resources :medicine_stocks
  resources :medical_records
  resources :feed_stocks
  resources :animals
  resources :animal_types
  resources :adoption_histories
  resources :addresses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
