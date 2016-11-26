Rails.application.routes.draw do
  resources :cards, only: [:new, :create]

  namespace :api, constraints: {format: 'json'} do
    resources :cards, only: :index
  end
end

