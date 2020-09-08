Rails.application.routes.draw do
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  get 'questions/index'
  post "home/guest_sign_in" => "home#new_guest"
  
  devise_for :users
end
