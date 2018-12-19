Rails.application.routes.draw do




	mount ComponentOne::Engine => "/component_one"
	mount ComponentTwo::Engine => "/component_two"
	
	root "welcome#main"

end
