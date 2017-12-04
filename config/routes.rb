Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/first_task', to: 'welcome#first_task'
  get 'welcome/second_task', to: 'welcome#second_task'
  get 'welcome/third_task', to: 'welcome#third_task'
  get 'welcome/task4', to: 'welcome#task4'
  get 'welcome/task5', to: 'welcome#task5'
  get 'welcome/task6', to: 'welcome#task6'
  get 'welcome/task7', to: 'welcome#task7'
  get 'welcome/task8', to: 'welcome#task8'

  root 'welcome#index'

  resources :orders
  resources :magazines
  resources :authors
  resources :books
  resources :librarians
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
