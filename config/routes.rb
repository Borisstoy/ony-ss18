Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    resources :newsletters
    resources :contacts
    get 'home', to: 'pages#home'
    get 'collections', to: 'pages#collections'
    get 'velvet_underground', to: 'pages#velvet_underground'
    get 'sphere', to: 'pages#sphere'
    get 'origin', to: 'pages#origin'
    get 'legals', to: 'pages#legals'
    get 'contact', to: 'pages#contact'
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
