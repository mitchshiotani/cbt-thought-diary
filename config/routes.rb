Rails.application.routes.draw do
  root to: 'diary_entries#index', as: 'root'
  resources :diary_entries, except: :index
end
