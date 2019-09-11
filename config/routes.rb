Rails.application.routes.draw do
  root to: 'home#index'

  resources :home, only: [:index, :edit, :update] do
    collection do
      post :update_status
      post :add_phone
    end
  end
end
