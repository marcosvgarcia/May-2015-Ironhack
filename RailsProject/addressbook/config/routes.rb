Rails.application.routes.draw do

    get '/' => 'contacts#home'
    get '/contacts' => 'contacts#index'
  	get '/contacts/:id' => 'contacts#show'
end
