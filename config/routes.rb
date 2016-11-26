Rails.application.routes.draw do
  resources :cards, only: [:new, :create, :index, :show] do
    resources :transactions
  end

  namespace :api, constraints: {format: 'json'} do
    resources :cards, only: :index do
      resources :transactions
    end
  end
end

