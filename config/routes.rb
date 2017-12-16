Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#lookbook'
    get 'sphere', to: 'pages#sphere'
    get 'about', to: 'pages#about'
    get 'contact', to: 'pages#contact'
  end

end
