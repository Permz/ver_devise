Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "questions#index"
  get "/news" => "home#news"
  get "/login" => "home#login"
  # post "home/guest_sign_in" => "home#new_guest"
  
  devise_for :users
end
