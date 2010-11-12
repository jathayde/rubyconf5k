Rubyconf5k::Application.routes.draw do
  match '/license' => 'pages#license', :as => :license
  match '/about' => 'pages#about', :as => :about
  match '/location' => 'pages#location', :as => :location
  match '/register' => 'pages#register', :as => :register
  match '/results' => 'pages#results', :as => :results
  match '/donate' => 'pages#donate', :as => :donate
  match '/schedule' => 'pages#schedule', :as => :schedule
  root :to => "pages#index"
  match '/:controller(/:action(/:id))'
end
