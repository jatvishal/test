Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/second'
  get 'articles/new'
  resources :articles
  root 'welcome#index'
  resources :articles do
  	resources :comments
  end
end
