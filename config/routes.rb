Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/tasks', to: ''
  # GET '/tasks/:id'
  # GET '/tasks/new'
  # POST '/tasks'
  # GET '/tasks/:id/edit'
  # PATCH '/tasks/:id'
  # DELETE '/tasks/:id'

  resources :tasks
end
