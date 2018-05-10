Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :index, :show, :create]
end
  resources :doses, only: [:destroy]
end

