Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#dyptique'
    get 'dyptique', to: 'pages#dyptique'
    get 'velvet_underground', to: 'pages#velvet_underground'
    get 'sphere', to: 'pages#sphere'
    get 'about', to: 'pages#about'
    get 'legal', to: 'pages#legal'
    get 'terms_and_conditions', to: 'pages#terms_and_conditions'
    get 'contact', to: 'pages#contact'
  end

end
