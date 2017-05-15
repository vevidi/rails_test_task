Rails.application.routes.draw do
  root 'feedback_forms#index'
  resources :feedback_forms
  get 'feedback_form_attachment/:attachment_id', to: 'feedback_forms#feedback_form_attachment'
end
