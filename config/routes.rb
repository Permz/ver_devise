Rails.application.routes.draw do

  resources :answers
  root "home#top"
  get "/" => "home#top"
  get "/about" => "home#about"
  get "/techs" => "home#techs"
  get "/qanda" => "home#qanda"
  get "/news" => "home#news"
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
}

  resources :questions

end
