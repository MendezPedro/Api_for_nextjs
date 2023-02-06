Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do

      namespace :nextjs do
        resources :tutorials, only: [:create] do
          collection do
            get 'data_json'
          end
        end
      

    end
  end
end
