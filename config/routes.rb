Rails.application.routes.draw do
  get 'post_comment/create'
  get 'post_comment/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :post_images,only: [:new,:create,:index,:show,:destroy]do
    resource :favoritte,only: [:create,:destroy]
    resources :post_comments,only: [:create,:destroy]

  end
end
