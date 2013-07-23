Spree::Core::Engine.routes.draw do

  resources :pages
  resources :sweepstakes
  namespace :admin do

    resources :sweepstakes

    resources :home_page_sliders do
      collection do
        post :update_positions
      end
    end

    resources :pages

    resource :web_content
  end

  namespace :api, :defaults => { :format => 'json' } do
    resources :sweepstakes_entry
  end
end
