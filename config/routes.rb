Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	namespace :api do


  		#students
		get "/students" => "students#index"
		get "/students/:id" => "students#show"
		patch "/students/:id" => "students#edit"
		delete "/students" => "students#destroy"

	    #experiences
	    post "/experiences" => "experiences#create"
	    patch "/experiences/:id" => "experiences#update"
	    delete "/experiences/:id" => "experiences#destroy"


	    #Educations
	    post "/education" => "education#create"
	    patch "/education" => "education#update"
	    delete "/education" => "education#destroy"

	    #capstones
	    get "/capstones" => "capstones#index"
		get "/capstones/:id" => "capstones#show"
		patch "/capstones/:id" => "capstones#edit"
		delete "/capstones" => "capstones#destroy"

	end
end

