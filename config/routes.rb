Rails.application.routes.draw do
  
  resources :gifts, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :donors, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  resources :activities, only: [:new, :create, :edit, :update, :index, :destroy] do
    collection { post :import }
  end
  
  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/reports', to: 'static_pages#reports'
  get    '/import-export', to: 'static_pages#import_export'
  
  get 'import-export/import'
  get 'import-export/inkind'
  get 'import-export/export'
  
  get    'hyper-surf/donors', to: 'hyper_surf#donors'
  get    'hyper-surf/all', to: 'hyper_surf#all'
  
  root 'static_pages#home'
end