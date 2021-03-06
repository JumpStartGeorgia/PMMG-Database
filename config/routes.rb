BootstrapStarter::Application.routes.draw do

  get "export/missing"
  get "export/all"

  get "missing_precincts/call1"

  get "missing_precincts/call2"

  get "missing_precincts/call3"

  get "missing_precincts/call4"

  get "missing_precincts/call5"

  get "missing_precincts/call6"

  get "summaries/call1"
  get "summaries/call2"
  get "summaries/call3"
  get "summaries/call4"
  get "summaries/call5"
  get "summaries/call6"

  resources :call6s
  resources :call5s
  resources :call4s
  resources :call3s
  resources :call2s
  resources :call1s

  get "pages/home"

	match '/admin', :to => 'admin#index', :as => :admin, :via => :get
	devise_for :users
	namespace :admin do
		resources :users
	end

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

	root :to => 'pages#home'

	match '', :to => redirect("/") # handles /
	match '*path', :to => redirect("/") # handles /not-a-locale/anything

end
