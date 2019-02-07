Rails.application.routes.draw do



  get "show/top" => "show#top"
  post "show/top" => "show#top_form"
  get "show/name" =>"show#name"
  post "show/name" =>"show#name_form"


  get "/:id/show/top" => "show#top"
  get '/:id/show/q1' => "show#q1"
  get '/:id/show/q2' => "show#q2"
  get '/:id/show/q3' => "show#q3"
  get '/:id/show/q4' => "show#q4"
  get '/:id/show/q5' => "show#q5"
  get '/:id/show/q6' => "show#q6"
  get '/:id/show/q7' => "show#q7"
  get '/:id/show/q8' => "show#q8"
  get '/:id/show/q9' => "show#q9"
  get '/:id/show/q10' => "show#q10"
  post "show/create1" => "show#create1"
  post "show/create2" => "show#create2"
  post "show/create3" => "show#create3"
  post "show/create4" => "show#create4"
  post "show/create5" => "show#create5"
  post "show/create6" => "show#create6"
  post "show/create7" => "show#create7"
  post "show/create8" => "show#create8"
  post "show/create9" => "show#create9"
  post "show/create10" => "show#create10"
  get "/:id/show/result" => "show#result"
  post "show/create" => "show#create"
  get "/:id/show/question" => "show#question"
  post "show/destroy" => "show#destroy"


  get '/:id/post/new1' =>"post#new1"
  get '/:id/post/new2' =>"post#new2"
  get '/:id/post/new3' =>"post#new3"
  get '/:id/post/new4' =>"post#new4"
  get '/:id/post/new5' =>"post#new5"
  get "/:id/post/ready" =>"post#ready"
  post "/:id/post/ready" =>"post#ready_form"
  get "/:id/post/share" =>"post#share"


  post "post/create1" => "post#create1"
  post "post/create2" => "post#create2"
  post "post/create3" => "post#create3"
  post "post/create4" => "post#create4"
  post "post/create5" => "post#create5"
  post "post/destroy" => "post#destroy"

  get "/:id/menu" => "home#menu"
  get '/' => "home#top"



  get 'signup' => "user#signup"
  post "signup" => "user#signup_form"
  get "login" => "user#login"
  post "login" => "user#login_form"
  get "logout" => "user#logout"
  post "logout" => "user#logout"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
