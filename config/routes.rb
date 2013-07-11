Spree::Core::Engine.routes.draw do

  namespace :admin do

    resources :home_page_sliders do
      collection do
        post :update_positions
      end
    end
  end
end
