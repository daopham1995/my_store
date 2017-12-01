Rails.application.routes.draw do
  namespace :admin do
    resources :employees
  end
end
