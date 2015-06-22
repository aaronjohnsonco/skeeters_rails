Rails.application.routes.draw do
  get 'sessions/new'

  resources :users

  resources :candidates

  resources :players

  resources :coaches

  resources :teams

  mount RedactorRails::Engine => '/redactor_rails'
  resources :events

  get 'dashboard' => 'dashboard#index'
  get 'dashboard/posts' => 'dashboard#posts'
  get 'dashboard/events' => 'dashboard#events'
  get 'dashboard/coaches' => 'dashboard#coaches'
  get 'dashboard/players' => 'dashboard#players'
  get 'calendar' => 'pages#calendar'
  get 'tryouts' => 'pages#tryouts'
  get 'sbc-login' => 'sessions#new'
  post 'sbc-login' => 'sessions#create'
  get 'sbc-signup' => 'users#new'
  delete 'logout' => 'sessions#destroy'
  delete 'dashboard/events' => 'events#destroy'

  #get 'pages/home'
  resources :posts




  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#home'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
