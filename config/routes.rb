Rails.application.routes.draw do
  devise_for :employees, class_name: "Admin::Employee"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
