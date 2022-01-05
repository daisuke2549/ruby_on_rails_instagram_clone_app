Rails.application.routes.draw do
  devise_for :users
  # controllers: { registrations: 'registrations' } 
  root 'pages#home'
  resources :users, only: %i(show)
  # resourcesで複数行のルーティング設定を一括設定可能
end
