Rails.application.routes.draw do
  root to: 'toppages#index'

  # ログイン関連のルーティング
  get 'login', to: 'sessions#new'    # ログインページを表示するためのGETリクエスト
  post 'login', to: 'sessions#create' # ログイン処理を行うためのPOSTリクエスト
  get 'logout', to: 'sessions#destroy' # ログアウト処理を行うためのGETリクエスト

  # サインアップ関連のルーティング
  get 'signup', to: 'users#new'  # サインアップページを表示するためのGETリクエスト
  
  resources :users
  
  resources :events
end
