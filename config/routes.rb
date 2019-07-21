Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get 'users', to: 'user#showAllUsers'
      get 'users/:id', to: 'user#showDetailUsers'
      post 'users', to: 'user#createNewUsers'
      put 'users/:id', to: 'user#updateUsers'
      delete 'users/:id', to: 'user#deleteUsers'
    end
  end
end
