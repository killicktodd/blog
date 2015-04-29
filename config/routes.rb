Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/edit'

  root "posts#index"
  resources :posts do
  	resources :comments
  end
end