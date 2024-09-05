Rails.application.routes.draw do
  get "my_portfolio", to: 'users#my_portfolio'
  root to: 'welcome#index'
  get "search_stock", to: 'stocks#search'
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

  # devise_scope :users do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
