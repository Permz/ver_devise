Rails.application.routes.draw do
 
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "questions#show"
  get "/news" => "home#news"
  get "/login" => "users#sign_in"
  get "/mng" => "home#management"
  get "/signup" => "users#sign_up"
  get 'users/index'
  get 'users/show'

  devise_for :users
  resources :questions do
    resources :answers
  end
  resources :users
end
