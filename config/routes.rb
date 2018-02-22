Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  get 'store/index'

  resources :products do
  	get :who_bought, on: :member
  end

  # resources :products
  # get 'say/hello'

  # get 'say/goodbye'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
