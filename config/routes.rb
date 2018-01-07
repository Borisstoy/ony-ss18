Rails.application.routes.draw do
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

end
