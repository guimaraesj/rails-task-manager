Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Objectives:
  # As a user, I can list tasks
  # As a user, I can view the details of a task
  # As a user, I can add a new task
  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task
  
  # get '/tasks', to: 'tasks#index'
  # get '/tasks/new', to: 'tasks#new', as: 'new_task' # Este tem que ficar acima do ID para que new não seja assumido como um id.
  # post '/tasks', to: 'tasks#create'
  # get '/tasks/:id', to: 'tasks#show', as: 'task' # this needs to have a prefix so that it can be called
  # get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  # patch '/tasks/:id', to: 'tasks#update'
  # delete '/tasks/:id', to: 'tasks#destroy'

  resources :tasks
end
