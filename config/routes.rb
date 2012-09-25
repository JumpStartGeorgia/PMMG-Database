BootstrapStarter::Application.routes.draw do

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

	#--------------------------------
	# all resources should be within the scope block below
	#--------------------------------
	scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

		devise_for :users

		namespace :admin do
			resources :users
		end

    

		root :to => 'call1s#index'
	  match "*path", :to => redirect("/#{I18n.default_locale}") # handles /en/fake/path/whatever
	end

	match '', :to => redirect("/#{I18n.default_locale}") # handles /
	match '*path', :to => redirect("/#{I18n.default_locale}/%{path}") # handles /not-a-locale/anything

end
