Rails.application.routes.draw do
  root 'landing_page#home'
  resources :products do
    resources :reviews
  end
end
