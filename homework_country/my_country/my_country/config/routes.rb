Rails.application.routes.draw do
  get 'movies/index'

  get 'movies/show'

  get 'movies/edit'

  get 'movies/create'

  get 'movies/new'

  get 'movies/update'

  get 'movies/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
