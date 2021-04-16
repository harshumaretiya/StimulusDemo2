Rails.application.routes.draw do
  resources :employees
  resource :geo_selector, only: [:show], as: :employee_selector
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
