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
	    post "/educations" => "educations#create"
	    patch "/educations" => "educations#update"
	    delete "/educations" => "educations#destroy"

	    #capstones
	    get "/capstones" => "capstones#index"
		get "/capstones/:id" => "capstones#show"
		patch "/capstones/:id" => "capstones#edit"
		delete "/capstones" => "capstones#destroy"

	end
end

