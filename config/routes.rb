Rails.application.routes.draw do

  get 'labels/show'


    resources :topics do
      resources :posts, except: [:index]
      resources :sponsored_posts, except: [:index]
    end

    resources :users, only: [:new, :create, :show]
   post 'users/confirm' => 'users#confirm'

  resources :sessions, only: [:new, :create, :destroy]

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end


get 'about' => 'welcome#about'

  root to: 'welcome#index'

end
