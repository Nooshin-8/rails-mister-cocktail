Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # A user can see the list of cocktails, GET "cocktails"
  # get '/cocktails', to: 'cocktails#index'


  # A user can see the details of a given cocktail,
  # with the dose needed for each ingredient, GET "cocktails/42"
  # get '/cocktails/:id', to: 'cocktails#show'

  # A user can create a new cocktail,
  # GET "cocktails/new", POST "cocktails"
  # get '/cocktails/new', to: 'cocktails#new'
  # post '/cocktails', to: 'cocktails#create'

  # A user can add a new dose (ingredient/description pair)
  # to an existing cocktail, GET "cocktails/42/doses/new"

  #Checkout simple_form docs about f.association to easily create
  # a select dropdown for our list of ingredients.
  # POST "cocktails/42/doses"

  resources :cocktails, only: [:show, :index, :new, :create] do
    resources :doses, only: [:create]
  end

  root "cocktails#index"
end
