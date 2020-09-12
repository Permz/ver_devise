class HomeController < ApplicationController
  def top
  end
  def about
  end
  def techs
  end
  def qanda
  end
  def news
  end
  def new_guest
    user = User.find_or_create_by(email: "guest@example.com") do |u|
      u.password = SecureRandom.urlsafe_base64
    end
    sign_in user
    redirect_to root_path, notice: "ゲストユーザーとしてログインしました！"
  end
  def management
  end
  def login
  end
  def signin
  end
end
