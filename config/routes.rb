BootstrapStarter::Application.routes.draw do
  resources :call6s
  resources :call5s
  resources :call4s
  resources :call3s
  resources :call2s
  resources :call1s
  
  get "pages/home"
  get "pages/summary"

  

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
