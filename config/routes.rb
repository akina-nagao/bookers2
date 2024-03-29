Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  devise_for :users
  root to: "homes#top"
  get 'homes/about' => "homes#about", as: "about"
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
