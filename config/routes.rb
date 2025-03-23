Rails.application.routes.draw do
  root to: "homes#top"
  get '/about' => "homes#about", as: :about

  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
end
