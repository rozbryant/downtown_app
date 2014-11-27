Rails.application.routes.draw do
  # Routes for the Service resource:
  # CREATE
  get('/services/new', { :controller => 'services', :action => 'new' })
  get('/create_service', { :controller => 'services', :action => 'create' })

  # READ
  get('/services', { :controller => 'services', :action => 'index' })
  get('/services/:id', { :controller => 'services', :action => 'show' })

  # UPDATE
  get('/services/:id/edit', { :controller => 'services', :action => 'edit' })
  get('/update_service/:id', { :controller => 'services', :action => 'update' })

  # DELETE
  get('/delete_service/:id', { :controller => 'services', :action => 'destroy' })
  #------------------------------

  # Routes for the Space resource:
  # CREATE
  get('/spaces/new', { :controller => 'spaces', :action => 'new' })
  get('/create_space', { :controller => 'spaces', :action => 'create' })

  # READ
  get('/spaces', { :controller => 'spaces', :action => 'index' })
  get('/spaces/:id', { :controller => 'spaces', :action => 'show' })

  # UPDATE
  get('/spaces/:id/edit', { :controller => 'spaces', :action => 'edit' })
  get('/update_space/:id', { :controller => 'spaces', :action => 'update' })

  # DELETE
  get('/delete_space/:id', { :controller => 'spaces', :action => 'destroy' })
  #------------------------------

  # Routes for the Active resource:
  # CREATE
  get('/actives/new', { :controller => 'actives', :action => 'new' })
  get('/create_active', { :controller => 'actives', :action => 'create' })

  # READ
  get('/actives', { :controller => 'actives', :action => 'index' })
  get('/actives/:id', { :controller => 'actives', :action => 'show' })

  # UPDATE
  get('/actives/:id/edit', { :controller => 'actives', :action => 'edit' })
  get('/update_active/:id', { :controller => 'actives', :action => 'update' })

  # DELETE
  get('/delete_active/:id', { :controller => 'actives', :action => 'destroy' })
  #------------------------------

  # Routes for the Assignment resource:
  # CREATE
  get('/assignments/new', { :controller => 'assignments', :action => 'new' })
  get('/create_assignment', { :controller => 'assignments', :action => 'create' })

  # READ
  get('/assignments', { :controller => 'assignments', :action => 'index' })
  get('/assignments/:id', { :controller => 'assignments', :action => 'show' })

  # UPDATE
  get('/assignments/:id/edit', { :controller => 'assignments', :action => 'edit' })
  get('/update_assignment/:id', { :controller => 'assignments', :action => 'update' })

  # DELETE
  get('/delete_assignment/:id', { :controller => 'assignments', :action => 'destroy' })
  #------------------------------

  # Routes for the Area resource:
  # CREATE
  get('/areas/new', { :controller => 'areas', :action => 'new' })
  get('/create_area', { :controller => 'areas', :action => 'create' })

  # READ
  get('/areas', { :controller => 'areas', :action => 'index' })
  get('/areas/:id', { :controller => 'areas', :action => 'show' })

  # UPDATE
  get('/areas/:id/edit', { :controller => 'areas', :action => 'edit' })
  get('/update_area/:id', { :controller => 'areas', :action => 'update' })

  # DELETE
  get('/delete_area/:id', { :controller => 'areas', :action => 'destroy' })
  #------------------------------

  # Routes for the Following resource:
  # CREATE
  get('/followings/new', { :controller => 'followings', :action => 'new' })
  get('/create_following', { :controller => 'followings', :action => 'create' })

  # READ
  get('/followings', { :controller => 'followings', :action => 'index' })
  get('/followings/:id', { :controller => 'followings', :action => 'show' })

  # UPDATE
  get('/followings/:id/edit', { :controller => 'followings', :action => 'edit' })
  get('/update_following/:id', { :controller => 'followings', :action => 'update' })

  # DELETE
  get('/delete_following/:id', { :controller => 'followings', :action => 'destroy' })
  #------------------------------

  # Routes for the Favoriting resource:
  # CREATE
  get('/favoritings/new', { :controller => 'favoritings', :action => 'new' })
  get('/create_favoriting', { :controller => 'favoritings', :action => 'create' })

  # READ
  get('/favoritings', { :controller => 'favoritings', :action => 'index' })
  get('/favoritings/:id', { :controller => 'favoritings', :action => 'show' })

  # UPDATE
  get('/favoritings/:id/edit', { :controller => 'favoritings', :action => 'edit' })
  get('/update_favoriting/:id', { :controller => 'favoritings', :action => 'update' })

  # DELETE
  get('/delete_favoriting/:id', { :controller => 'favoritings', :action => 'destroy' })
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get('/comments/new', { :controller => 'comments', :action => 'new' })
  get('/create_comment', { :controller => 'comments', :action => 'create' })

  # READ
  get('/comments', { :controller => 'comments', :action => 'index' })
  get('/comments/:id', { :controller => 'comments', :action => 'show' })

  # UPDATE
  get('/comments/:id/edit', { :controller => 'comments', :action => 'edit' })
  get('/update_comment/:id', { :controller => 'comments', :action => 'update' })

  # DELETE
  get('/delete_comment/:id', { :controller => 'comments', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Building resource:
  # CREATE
  get('/buildings/new', { :controller => 'buildings', :action => 'new' })
  get('/create_building', { :controller => 'buildings', :action => 'create' })

  # READ
  get('/buildings', { :controller => 'buildings', :action => 'index' })
  get('/buildings/:id', { :controller => 'buildings', :action => 'show' })

  # UPDATE
  get('/buildings/:id/edit', { :controller => 'buildings', :action => 'edit' })
  get('/update_building/:id', { :controller => 'buildings', :action => 'update' })

  # DELETE
  get('/delete_building/:id', { :controller => 'buildings', :action => 'destroy' })
  #------------------------------

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
