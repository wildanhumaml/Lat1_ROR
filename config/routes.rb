Rails.application.routes.draw do
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  get 'store/index'

  resources :products
  get 'say/hello'

  get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
