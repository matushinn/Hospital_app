Rails.application.routes.draw do
  resources :articles
  get "login" => "admin#login"
  post "login/create" => "admin#login_create"
  get "content" => "admin#content"
  get "check" => "admin#check"
  get "content/day_disp" => "admin#day_disp"
  get "addsearch" => "admin#addsearch"
  post "search/:id" => "admin#search_create"
  get "search" => "admin#search"
  get "add" => "admin#add"
  post "add/create" => "admin#add_create"
  get "search/result" => "admin#result"

  post "logout" => "admin#logout"


  get "/" => "home#top"
  get "create" => "home#create"
  post "create/id_create" => "home#id_create"
  post "create/date_create" => "home#date_create"
  get "create/date" => "home#date"
  get "create/hour" => "home#hour"

  get "create/:id" => "home#id"
  get "cancel" => "home#cancel"
  post "cancel/cancel_create" => "home#cancel_create"
  get "cancel/id" => "home#cancelId"
  get "cancel/select" => "home#select"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
