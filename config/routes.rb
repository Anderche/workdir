Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do

	  devise_for :users
	  get 'pages/index'

	  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

		root to: "hotels#index"

		resources :hotels
	end
end


