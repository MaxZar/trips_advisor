Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  resources :restaurants do
    collection do
      get 'best', to: 'restaurants#best'
    end

    member do
      get 'chef', to: 'restaurants#chef'
    end

    resources :reviews, only: [:new, :create, :index]
  end

  resources :reviews, only: [:show, :edit, :update, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
