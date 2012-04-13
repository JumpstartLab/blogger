Blogger::Application.routes.draw do
  resources :articles

  resources :comments
end
