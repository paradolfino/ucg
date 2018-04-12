Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'accounts#index'
  get 'accounts/:id' => 'accounts#show', as: 'account'
  get 'accounts/:id' => 'accounts#edit'
  put 'accounts/:id' => 'accounts#update'
end
