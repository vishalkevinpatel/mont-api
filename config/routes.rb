Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "/students/:id" => "students#destroy"

  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  get "/teachers" => "teachers#index"
  get "/teachers/:id" => "teachers#show"
  post "/teachers" => "teachers#create"
  patch "/teachers/:id" => "teachers#update"
  delete "/teachers/:id" => "teachers#destroy"

  get "/messages" => "messages#index"
  get "/messages/:id" => "messages#show"
  post "/messages" => "messages#create"
  patch "/messages/:id" => "messages#update"
  delete "/messages/:id" => "messages#destroy"

  post "/sessions" => "sessions#create"
  post "/sessions_teachers" => "sessions_teachers#create"

  get "/attendances" => "attendances#index"
  get "/attendances/:id" => "attendances#show"
  post "/attendances" => "attendances#create"
  patch "/attendances/:id" => "attendances#update"
  delete "/attendances/:id" => "attendances#destroy"

  # root "users#index"
end
