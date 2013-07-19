Spree::Core::Engine.routes.draw do

  resources :pages

  namespace :admin do

    resources :home_page_sliders do
      collection do
        post :update_positions
      end
    end
    
    resources :pages
    
    resource :web_content
  end
end
