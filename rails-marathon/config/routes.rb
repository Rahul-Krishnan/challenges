Rails.application.routes.draw do
  resources :galleries do
    resources :paintings, only: [:index, :new, :create]
  end

  resources :paintings, only: [:update, :edit, :destroy]
end
