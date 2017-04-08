Rails.application.routes.draw do


  devise_for :users
  resources :opinions
  resources :cards,  only: [:show] do
    resources :opinions, only: [:create, :show, :update, :index, :new]
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


