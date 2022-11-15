Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index'

  # Créer un task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'

  # edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # delete
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy

  get '/tasks/:id', to: 'tasks#show', as: :task
end
