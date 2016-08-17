Rails.application.routes.draw do
	root 'users#new'
	post 'users' => 'users#create'

	post 'sessions' => 'sessions#create'
	delete '/sessions' => 'sessions#destroy'
	get '/messages' => 'messages#index'

	post '/messages'=> 'messages#create'

	post '/comments' => 'comments#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
