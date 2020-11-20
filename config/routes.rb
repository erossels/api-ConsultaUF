Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'ufs/:date', to: 'ufs#response'
  get 'customers/:client', to: 'customers#dashboard'

end
