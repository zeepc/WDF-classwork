Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	resources :dogs
	resources :owners
	# or specify your own routes
	get "/doggytreats", to: "doggytreats#showmytreat"
end
