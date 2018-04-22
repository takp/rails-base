Rails.application.routes.draw do
  root 'user/index#index'
  get '/admin', to: 'admin/index#index'
end
