Rails.application.routes.draw do
  root "sessions#new"
  post "/", to: "sessions#create"

  resources :blocks, only: [:index, :new] do
    post :add_course, on: :collection
    # collection do
    #   post :add_course
    # end
  end
end
