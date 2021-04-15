Rails.application.routes.draw do
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  end

  

end
