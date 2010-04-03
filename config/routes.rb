ActionController::Routing::Routes.draw do |map|
  map.resources :usersurveys
  map.resources :messages

  map.resources :topics

  map.resources :forums

  map.resources :groups
  map.resources :my

  map.resources :textanswers
  map.resources :mcanswers
  map.resources :threesixtyas
  map.resources :threesixtytextas
  
  map.resources :threesixties, :has_many => :threesixtyqs
  map.resources :threesixties, :has_many => :threesixtytextqs
  map.resources :surveys, :has_many => :textquestions
  map.resources :surveys, :has_many => :mcquestions
  

  map.resources :mcquestions, :has_many => :mcanswers
  map.resources :textquestions, :has_many => :textanswers
  map.resources :threesixtytextqs, :has_many => :threesixtytextas
  map.resources :threesixtyqs, :has_many => :threesixtyanswers

  map.resources :documents
  
  map.resources :posts, :has_many => :comments

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.account '/my/account', :controller => 'my', :action => 'show'

  map.resources :users
  map.resource :session
  # makes home controller the default when uncommented
  # map.root :controller => "home"
  map.root :controller => "home", :action => "index"  

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
