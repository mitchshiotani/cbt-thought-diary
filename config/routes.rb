Rails.application.routes.draw do
  devise_for :users
  root to: 'diary_entries#index', as: 'root'
  resources :diary_entries, except: :index
end
