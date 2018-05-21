Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/notes/new' => 'notes#new'
  
  get '/notes/create' => 'notes#create'
  
  get '/notes/index' => 'notes#index' 
  
  get '/notes/:id' => 'notes#show'
  
  get '/notes/:id/destroy' => 'notes#destroy'
  
  get '/notes/:id/edit' => 'notes#edit'
  
  get '/notes_update' => 'notes#update'
  
  root 'notes#first'
end
