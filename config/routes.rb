Rails.application.routes.draw do
  root 'job_posts#index'
  resources :job_posts, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
