Rails.application.routes.draw do
  resources :students do
    member do
      get 'activate'
    end
  end
  resources :students, only: [:index, :show, :activate]
end
