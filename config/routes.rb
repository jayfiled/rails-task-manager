Rails.application.routes.draw do
  get root to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks/new', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'show'

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  post 'tasks/update', to: 'tasks#update', as: 'update_task'

end
