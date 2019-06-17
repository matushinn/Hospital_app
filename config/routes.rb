Rails.application.routes.draw do
  get "login" => "admin#login"
  post "login/create" => "admin#login_create"
  get "content" => "admin#content"
  get "check" => "admin#check"
  get "content/day_disp" => "admin#day_disp"
  get "addsearch" => "admin#addsearch"
  post "search/search_create" => "admin#search_create"
  get "search" => "admin#search"
  get "add" => "admin#add"
  post "add/create" => "admin#add_create"
  get "search/result" => "admin#result"


  get "/" => "home#top"
  get "create" => "home#create"
  post "create/id_create" => "home#id_create"
  get "create/date" => "home#date"
  get "create/hour" => "home#hour"
  get "create/id" => "home#id"
  get "cancel" => "home#cancel"
  post "cancel/cancel_create" => "home#cancel_create"
  get "cancel/id" => "home#cancelId"
  get "cancel/select" => "home#select"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
