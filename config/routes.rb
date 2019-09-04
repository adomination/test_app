Rails.application.routes.draw do
  root to: 'home#index'

  resources :home, only: [:index, :edit, :update] do
    get :update_status, on: :member
  end
end
