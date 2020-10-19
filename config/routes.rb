Rails.application.routes.draw do
  root to: 'conditions#top'
  resources :conditions, only: [:index, :new, :create] do
    collection do
      get :top
    end
  end
end
