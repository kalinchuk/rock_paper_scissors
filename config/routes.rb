Rails.application.routes.draw do
  root 'throws#new'
  
  resources :throws, only: [:new, :create]
end
