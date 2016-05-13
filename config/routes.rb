Rails.application.routes.draw do
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  resources :bail_codes
  resources :cutting_codes
  resources :field_types
  resources :hay_types
  resources :field_acres
  resources :fields

end
