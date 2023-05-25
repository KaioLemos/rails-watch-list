Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  resources :bookmarks, only: [:destroy]

end

# Prefix Verb   URI Pattern                                       Controller#Action
# lists GET    /lists(.:format)                                  lists#index
#       POST   /lists(.:format)                                  lists#create
# new_list GET    /lists/new(.:format)                              lists#new
# list GET    /lists/:id(.:format)                              lists#show
# new_list_bookmark GET    /lists/:list_id/bookmarks/new(.:format)       bookmarks#new
# list_bookmarks POST   /lists/:list_id/bookmarks(.:format)            bookmarks#create
# movies GET    /movies(.:format)                                 movies#index
#       POST   /movies(.:format)                                 movies#create
# new_movie GET    /movies/new(.:format)                             movies#new
# edit_movie GET    /movies/:id/edit(.:format)                        movies#edit
# movie GET    /movies/:id(.:format)                             movies#show
#       PATCH  /movies/:id(.:format)                             movies#update
#       PUT    /movies/:id(.:format)                             movies#update
#       DELETE /movies/:id(.:format)                             movies#destroy
# bookmark DELETE /bookmarks/:id(.:format)                          bookmarks#destroy
