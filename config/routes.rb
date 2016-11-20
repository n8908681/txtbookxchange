Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/new'

  get 'users/new'

  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  post 'addbook' => 'books_controller#addbook' 
  get 'addbook' => 'books#addbook' 
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  resources :users
  resources :books, only: [:create, :destroy]
end
