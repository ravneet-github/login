Rails.application.routes.draw do

  devise_for :users, :controllers => {:omniauth_callbacks => "omniauth_callbacks"}
  resources :project_lists do
  	resources :project_tasks do
  		member do
  			patch :complete
  		end
      member do
        patch :edit
      end
      member do
        patch :new
      end
  		member do
  			patch :deadline
  		end
  	end
  end
  
  root "project_lists#index"

end
