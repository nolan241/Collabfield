Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

	#Change devise to use 'login' url instead of 'users/sign_in'
	devise_scope :user do
		get 'login', to: 'devise/sessions#new'
	end

end


