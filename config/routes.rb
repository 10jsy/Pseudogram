Rails.application.routes.draw do
	devise_for :users, :controllers => { registrations: 'registrations' }

	# resource route for posts controller
	resources :posts

	resources :contacts, only: [:new, :create]

	# posts_controller index action set to root route
	root 'posts#index'

	# route to about page
	get 'about/new'

end
