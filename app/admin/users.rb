ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :name, :email, :encrypted_password, :role, :reset_password_token, :reset_password_sent_at, :remember_created_at
  #
  config.sort_order = "created_at_asc" #デフォルトでソート
  config.per_page = 100 #１ページに表示するデータの数

  filter :created_at #データを絞り込みたいときはここに記述

  actions :all, except: [:new]
  index do 
    column "会員No", :id
    column "名前", :name
    column "登録日", :created_at
    column "質問・回答", :role
    /
    column "ステータス" do |user|
      if user.status == 1
        "有料会員"
      else
        "無料会員"
      end
    end
    /
    actions defaults:false #行の右側に詳細、編集、削除ボタンが表示されているのでそれを消す
  end
  
end
