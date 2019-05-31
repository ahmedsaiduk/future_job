Rails.application.routes.draw do
  defaults format: :json do
    root 'job_posts#index'
    resources :job_posts, only: [:show, :index, :create]
  end
end
