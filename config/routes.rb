Rails.application.routes.draw do

  resources :posts do
    resources :comments, except: [:show, :new, :edit, :update, :destroy]
  end

  root 'posts#index'
end
