Rails.application.routes.draw do
  get 'form_handlers/index'

  resource :form_handler

  root 'form_handlers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
