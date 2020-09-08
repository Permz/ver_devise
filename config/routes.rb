Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "questions#show"
  get "/news" => "home#news"
  get "/login" => "home#login"
  get "/mng" => "home#management"
  get 'users/index'
  get 'users/show'
  
  # post "home/guest_sign_in" => "home#new_guest"
  
  devise_for :users
  resources :questions
  resources :users
end
