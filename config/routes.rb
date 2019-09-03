Rails.application.routes.draw do
  root 'customers#index'

  get '/customers/black_list', to: 'customers#black_list', as: 'black_list'
end
