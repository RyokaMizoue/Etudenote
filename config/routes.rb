Rails.application.routes.draw do
  get 'chart_sample/index'
  get 'sales/index'
  devise_for :users
  resources :users, only: [:show]
  resources :relationships, only: [:create, :destroy]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
    resources :users, only: [:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'posts/new' => 'posts#new'
  get 'posts/index' => 'posts#index'
  resources :posts
  post 'posts' => 'posts#create'
  root 'home#index'
  resources :tasks
  patch 'posts/:id' => 'posts#update'
  delete 'posts/:id' => 'posts#destroy'
  get 'posts/:id/edit' => 'posts#edit', as:'edit_posts'
  



end
