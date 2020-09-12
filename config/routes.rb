Rails.application.routes.draw do
  devise_for :users
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  
end
