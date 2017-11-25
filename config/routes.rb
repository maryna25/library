Rails.application.routes.draw do
  get 'welcome/index'
  post 'welcome/first_task', to: 'welcome#first_task'
  post 'welcome/second_task', to: 'welcome#second_task'
  post 'welcome/third_task', to: 'welcome#third_task'
  post 'welcome/task4', to: 'welcome#task4'
  post 'welcome/task5', to: 'welcome#task5'
  post 'welcome/task6', to: 'welcome#task6'
  post 'welcome/task7', to: 'welcome#task7'
  post 'welcome/task8', to: 'welcome#task8'

  root 'welcome#index'

  resources :orders
  resources :magazines
  resources :authors
  resources :books
  resources :librarians
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
