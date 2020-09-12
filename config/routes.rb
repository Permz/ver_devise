Rails.application.routes.draw do

  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
}

end
