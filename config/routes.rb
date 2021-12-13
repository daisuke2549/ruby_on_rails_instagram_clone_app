Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # ここにpagesコントローラーのhomeアクションのルーティングを追加する
  root 'pages#home'
end
