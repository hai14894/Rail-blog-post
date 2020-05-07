Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/edit'
  devise_for :users
  resources :blogs do
    resources :comments
  end
  root to: 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
