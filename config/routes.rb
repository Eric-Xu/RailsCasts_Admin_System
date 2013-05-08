AsciiCastsDemo::Application.routes.draw do
  resources :episodes
  resources :tags

  root to: 'episodes#index'
end
