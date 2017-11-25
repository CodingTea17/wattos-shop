Rails.application.routes.draw do
  devise_for :users
  root 'landing_page#home'
  resources :products do
    resources :reviews, :except => [:show, :index, :destroy, :edit, :update]
  end
end
