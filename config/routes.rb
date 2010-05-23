ActionController::Routing::Routes.draw do |map|
  
  map.resources :courses
  map.resources :subjects do |subjects|
    subjects.resources :courses
  end

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
  map.login '/login/', :controller => "user_sessions", :action => "new"
  map.logout '/logout/', :controller => "user_sessions", :action => "destroy"
  map.signup '/signup/', :controller => "users", :action => "new"
end
