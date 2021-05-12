Rails.application.routes.draw do
  resources :voluntarios
  resources :vacinas
  resources :tipo_de_animals
  resources :setors
  resources :responsavels
  resources :possivel_adocaos
  resources :pessoas
  resources :parceiros
  resources :historico_adocaos
  resources :ficha_medicas
  resources :estoque_racaos
  resources :estoque_farmacinhas
  resources :enderecos
  resources :cartao_de_vacinas
  resources :animals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
