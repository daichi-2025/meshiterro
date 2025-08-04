Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  get 'homes/about' => "homes#about", as: 'about'
  resources :post_images, only: [:mew, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create]
  end
  resources :users, only: [:show, :edit, :update]
end
