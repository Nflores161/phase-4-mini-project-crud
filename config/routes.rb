Rails.application.routes.draw do

  #gets all spices
  get '/spices', to: 'spices#index'

  #creates a new post to spices
  post '/spices', to: 'spices#create'

  #updates an existing spice
  patch '/spices/:id', to: 'spices#update'

  #deletes a spice
  delete '/spices/:id', to: 'spices#destroy'

end
