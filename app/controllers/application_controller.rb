class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when User
      #User(一般ユーザ)がログインした時の処理
    when AdminUser
      #AdminUser（管理ユーザ）がログインしたときの処理
      stored_location_for(resource) ||
       if resource.is_a?(AdminUser)
         root_path
       else
         super
       end
    end
  end
end
