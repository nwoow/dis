Rails.application.routes.draw do
  resources :cities
  resources :states
  resources :indications
  resources :dose_forms
  resources :dose_forms
  devise_for :users
  get 'static_pages/home'
   resources :additive_frequencies
   resources :alcohol_interactions
   resources :alcohol_interaction_types
   resources :brand_names
   resources :combination_contents
   resources :combination_package_ingredients
   resources :combination_packages
   resources :contraceptive_interactions
   resources :data_sources
   resources :dispensible_combinations
   resources :dispensible_generics
   resources :dose_periods
   resources :doseform_doseunits
   resources :doseunits
   resources :drug_interactions
   resources :food_intakes
   resources :generics
   resources :generic_monographs
   resources :generic_package_ingredients
   resources :generic_packages
   resources :hepatic_impairments
   resources :indication_generic_maps
   resources :ingredients
   resources :lactations
   resources :manufacturers
   resources :nfi_indications
   resources :nfi_pregnancy_categories
   resources :nfi_schedules
   resources :nfi_sub_systems
   resources :nfi_systems
   resources :package_types
   resources :routes
   resources :generic_types
  get 'static_pages/help'
  root 'static_pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
