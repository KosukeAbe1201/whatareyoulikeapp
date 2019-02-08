Rails.application.routes.draw do
  root "home#top"
  get '/question1' => "posts#q1"
  get '/question2' => "posts#q2"
  get '/question3' => "posts#q3"
  get '/question4' => "posts#q4"
  get '/question5' => "posts#q5"
  get '/:id/question1' => "shows#q1"
  get '/:id/question2' => "shows#q2"
  get '/:id/question3' => "shows#q3"
  get '/:id/question4' => "shows#q4"
  get '/:id/question5' => "shows#q5"
  get "/:id/result" => "shows#result"
  post "post/destroy" => "posts#destroy"
  get "/:id/keyword" => "shows#top"
  get "keyword" => "shows#top"
  post "keyword" => "shows#top_form"
  resources :sessions, only: [:create, :new, :destroy]
  resources :keywords, only: [:create, :show, :new]
  resources :answers, only: [:show, :create]
  resources :users, only: [:create, :new, :show]
  resources :posts, only: [:create]
  resources :shows, only: [:create]
end
