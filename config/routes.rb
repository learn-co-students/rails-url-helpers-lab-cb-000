Rails.application.routes.draw do
  resources :students, only: :index
  # resources :students, only: [:index, :show]

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.

  # think they wanted u to use :as
  get "students/:id", to: "students#show", as: :student
  # pulled out of nowhere.
  get "students/:id/activate" => "students#activate", as: :activate_student

end
