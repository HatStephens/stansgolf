Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#show'

  get 'events/ryder_cup', to: 'events#ryder_cup'
  get 'events/knockout', to: 'events#knockout'
  resources :events, only: [:index, :show]
  resources :reports, only: [:index, :show]
  resources :honours, only: [:index]
  get 'honours/roll_of_honour', to: 'honours#roll_of_honour'
  get 'honours/eclectic', to: 'honours#eclectic'
  get 'honours/putting', to: 'honours#putting'
  get 'honours/knockout', to: 'honours#knockout'
  get 'honours/ryder_cup', to: 'honours#ryder_cup'
  resources :scores, only: [:index]
  get 'scores/eclectic', to: 'scores#eclectic'
  get 'scores/putting', to: 'scores#putting'
  get 'scores/handicaps', to: 'scores#handicaps'

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
