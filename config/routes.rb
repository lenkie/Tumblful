Tumblful::Application.routes.draw do
  resources :image_links
  resources :video_links
  resources :text_posts
  resources :likes, :only => [:create]
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  authenticated :user do
    resources :follows, :only => [:index, :destroy, :create]
    # root :to => 'follows#index', :as => :user_root
  end

  # You can have the root of your site routed with "root"
  root :to => 'home#index'
end
