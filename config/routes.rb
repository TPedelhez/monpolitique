Rails.application.routes.draw do

  resources :cards do
    resources :opinions, only: [ :new, :create, :show ]
  end
  resources :opinions
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

