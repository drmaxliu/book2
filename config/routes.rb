Book2::Application.routes.draw do

  resources :lead_readers


  resources :critics


  resources :groups


  root :to => 'pages#index'

  get 'reader_guide' => 'pages#reader_guide'
  get 'bible_intro' => 'pages#bible_intro'
  get 'contact' => 'pages#about'
  get 'faith_statement' => 'pages#faith_statement'

  get 'topics' => 'pages#topics'
  get 'topic_verse' => 'pages#topic_verse'
  get 'book_verse' => 'pages#book_verse'
  get 'top_outline' => 'pages#top_outline'
  get 'test_tabs' => 'pages#test_tabs'

  get "user/resume_reading"

  resources :book_series do
    resources :collections do
      resources :collection_pages
      resources :books do
        resources :book_pages
        resources :chapters do
          resources :verses
          resources :lights do
            resources :comments
          end
        end
      end
    end
  end

  devise_for :users

  resources :users do
    resources :reading_plans
    resources :reading_histories
    resources :reading_notes
  end



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
