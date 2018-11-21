Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get 'best', to: 'restaurants#best'
    end

    member do
      get 'chef', to: 'restaurants#chef'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
