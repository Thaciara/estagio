Rails.application.routes.draw do
<<<<<<< HEAD
  resources :produtos
=======
  resources :products
>>>>>>> b075287da67bdac779f7f237526fb4edc7c4d1cb
  resources :clientes

  get 'favoritos' => 'clientes#listar_clientes_favoritos'

#   clientes GET    /clientes(.:format)                   clientes#index
#                    POST   /clientes(.:format)           clientes#create
#        new_cliente GET    /clientes/new(.:format)       clientes#new
#       edit_cliente GET    /clientes/:id/edit(.:format)  clientes#edit
#            cliente GET    /clientes/:id(.:format)       clientes#show
# clientes_favoritos GET    /clientes/favoritos(.:format) clientes#listar_clientes_favoritos
#                    PATCH  /clientes/:id(.:format)       clientes#update
#                    PUT    /clientes/:id(.:format)       clientes#update
#                    DELETE /clientes/:id(.:format)       clientes#destroy

  root to: 'visitors#index'
end
