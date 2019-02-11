Rails.application.routes.draw do
  root "home#top"
  get '/question1' => "posts#q1"
  get '/question2' => "posts#q2"
  get '/question3' => "posts#q3"
  get '/question4' => "posts#q4"
  get '/question5' => "posts#q5"
  post "/update" => "answers#update"
  post "post/destroy" => "answers#destroy"
  get '/:id/question1' => "answers#q1"
  get '/:id/question2' => "answers#q2"
  get '/:id/question3' => "answers#q3"
  get '/:id/question4' => "answers#q4"
  get '/:id/question5' => "answers#q5"
  get "/:id/result" => "answers#result"
  get "keywords/top/:id" => "keywords#top"
  get "keywords/top" => "keywords#top"
  post "keywords/top" => "keywords#form"
  resources :sessions, only: [:create, :new, :destroy]
  resources :keywords, only: [:create, :show, :new]
  resources :answers, only: [:show, :create]
  resources :users, only: [:create, :new, :show]
  resources :posts, only: [:create]
end
