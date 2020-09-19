Rails.application.routes.draw do

  resources :answers
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  
  devise_for :users, skip: [:sessions]
  as :user do
    get 'signin', to: 'devise/sessions#new'
    post 'signin', to: 'devise/sessions#create'
    match 'signout', to: 'devise/sessions#destroy', via: Devise.mappings[:user].sign_out_via
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
}

  resources :questions
  resources :answers

end
