Rails.application.routes.draw do
  get 'comments/create'
  get 'projects/index'
  get 'projects/show'
  post 'projects/new'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :user
  resource :project

  root 'users#show'
end
