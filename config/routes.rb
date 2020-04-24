Rails.application.routes.draw do
  resources :reasons
  root to: 'reasons#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
