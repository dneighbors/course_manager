ActionController::Routing::Routes.draw do |map|
  map.resources :subjects

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
  map.login '/login/', :controller => "user_sessions", :action => "new"
  map.logout '/logout/', :controller => "user_sessions", :action => "destroy"
  map.signup '/signup/', :controller => "users", :action => "new"
end
