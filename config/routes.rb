AsciiCastsDemo::Application.routes.draw do
  resources :episodes, :tags, :sessions

  match '/login', to: 'sessions#new'
  match '/logout', to: 'sessions#destroy'

  root to: 'episodes#index'
end
