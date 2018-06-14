Rails.application.routes.draw do
 root to: 'book#index'
 get 'book/show/:id', to: 'book#show'
 get 'book/new', to: 'book#new'
 get 'book/create', to: 'book#create'
 get 'book/edit/:id', to: 'book#edit'
 get 'book/update/:id', to: 'book#update'
 get 'book/destroy/:id', to: 'book#destroy'
end
