Rails.application.routes.draw do
  namespace :admin do
    resources :employees
    resources :categories
  end
end
