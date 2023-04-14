Rails.application.routes.draw do
  devise_for :users

  as :user do
    get '/users/sign_in', to: 'devise/sessions#new'
    delete '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
