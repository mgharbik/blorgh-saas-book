require 'subscribem/constraints/subdomain_required'

Blorgh::Application.routes.draw do
  mount Subscribem::Engine, :at => '/'

  constraints(Subscribem::Constraints::SubdomainRequired) do
    root :to => "posts#index"
    resources :posts, only: [:index, :show] do
      resources :comments
    end

    namespace :api do
      resources :posts do
        resources :comments
      end
    end

    namespace :admin do
      resources :posts
    end
  end
end
