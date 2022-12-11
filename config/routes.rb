Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'services/index'
  get 'services/show'
  get 'services/new'
  get 'services/create'
  get 'services/edit'
  get 'services/update'
  get 'services/destroy'
  get 'registres/index'
  get 'registres/show'
  get 'registres/new'
  get 'registres/create'
  get 'registres/edit'
  get 'registres/update'
  get 'registres/destroy'
  get 'appoints/index'
  get 'appoints/show'
  get 'appoints/new'
  get 'appoints/create'
  get 'appoints/destroy'
  get 'appoints/edit'
  get 'appoints/update'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
