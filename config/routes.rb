Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#dyptique'
    resources :newsletters
    get 'dyptique', to: 'pages#dyptique'
    get 'velvet_underground', to: 'pages#velvet_underground'
    get 'sphere', to: 'pages#sphere'
    get 'about', to: 'pages#about'
    get 'legals', to: 'pages#legals'
    get 'contact', to: 'pages#contact'
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
