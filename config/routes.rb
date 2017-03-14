Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #students
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  get "/login" => "students#login"
  patch "/students/:id" => "students#edit"
  delete "/students" => "students#destroy"

end
