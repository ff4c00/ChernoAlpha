Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :blog do
    collection do
      get :test
    end
  end
  root 'blog#index'
end
