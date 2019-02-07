Rails.application.routes.draw do
  root "home#top"
  get "/:id/menu" => "home#show"

  resources :user, only: [:create, :new]

  get "login" => "session#new"
  post "login" => "session#create"
  post "logout" => "session#destroy"
  
  get "keyword" => "show#top"
  post "keyword" => "show#top_form"
  get "/:id/keyword" => "show#top"

  get '/:id/q1' => "show#q1"
  get '/:id/q2' => "show#q2"
  get '/:id/q3' => "show#q3"
  get '/:id/q4' => "show#q4"
  get '/:id/q5' => "show#q5"
  post "show/create1" => "show#create1"
  post "show/create2" => "show#create2"
  post "show/create3" => "show#create3"
  post "show/create4" => "show#create4"
  post "show/create5" => "show#create5"
  get "/:id/result" => "show#result"
  resources :show, only: [:create, :destroy]

  get '/:id/post/q1' => "post#q1"
  get '/:id/post/q2' => "post#q2"
  get '/:id/post/q3' => "post#q3"
  get '/:id/post/q4' => "post#q4"
  get '/:id/post/q5' => "post#q5"
  post "post/create1" => "post#create1"
  post "post/create2" => "post#create2"
  post "post/create3" => "post#create3"
  post "post/create4" => "post#create4"
  post "post/create5" => "post#create5"
  post "post/destroy" => "post#destroy"

  get "/:id/ready" => "keyword#new"
  post "/:id/ready" => "keyword#create"
  get "/:id/share" => "keyword#show"

  get "name" => "answer#show"
  post "name" => "answer#create"
end
