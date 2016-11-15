Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  get 'sessions/new'

  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get '/chat', to: 'static_pages#chat'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/edit_profile',  to: 'users#edit_profile'
  get  '/edit_education',  to: 'users#edit_education'
  post  '/update_education' => 'users#update_education'
  post  '/add_education' => 'users#add_education'
  post  '/search',  to: 'search#search'
  get  '/search',  to: 'search#search'
  get 'request_tutor',  to: 'user_request#show_tutor'
  post 'request_tutor', to: 'user_request#show_tutor'
  get 'request_student',  to: 'user_request#show_student'
  post 'request_student', to: 'user_request#show_student'

  post 'send_user_request', to: 'user_request#new'

  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]

end
