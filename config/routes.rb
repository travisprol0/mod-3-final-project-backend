Rails.application.routes.draw do
  resources :advanced_items
  resources :recipes
  resources :items
  resources :inventories
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
