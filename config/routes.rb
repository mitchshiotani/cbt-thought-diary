Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home', as: 'root'
  resources :diary_entries
end
