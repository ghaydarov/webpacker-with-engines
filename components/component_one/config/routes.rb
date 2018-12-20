ComponentOne::Engine.routes.draw do


	root "welcome#component",  :only_path => true

	resources :articles
end
