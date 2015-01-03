YtVideos::Application.routes.draw do
  resources :videos, only: [ :index, :new, :create, :destroy ]
  root to: 'videos#index'
end
