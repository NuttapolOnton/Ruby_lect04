Rails.application.routes.draw do
  get 'main/test', to: "main#test";
  post 'test', to: "main#test_post";
  get 'test_post', to: "main#result"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
