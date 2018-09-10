Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create]
  get '/students/new' => 'students#new'
  get '/students/:id', to: 'students#show', as: 'student'
  root 'students#new'
end
