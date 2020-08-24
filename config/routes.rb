Rails.application.routes.draw do
 	get '/board', to: 'board#index'
	post '/create', to:'board#create'
	post '/start', to: 'board#start'
	post '/Aclick', to: 'board#Aclick'
	post '/Bclick', to: 'board#Bclick'
	get '/new', to: 'board#new'
	get '/table', to: 'board#table'
	get '/edit', to: 'board#edit'
	post '/update', to: 'board#update'
	post '/up', to: 'board#up'
	post '/down', to: 'board#down'
	post '/thumbssort', to: 'board#thumbssort'
end
