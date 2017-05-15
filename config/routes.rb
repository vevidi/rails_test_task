Rails.application.routes.draw do
  root 'feedback_forms#index'
  resources :feedback_forms
end
