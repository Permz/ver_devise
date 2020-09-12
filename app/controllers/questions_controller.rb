class QuestionsController < ApplicationController
  # before_action :authenticate_user!, except: [:index]  # 「ログインしていないユーザーをログイン画面に送る」deviseのメソッド
  def new
    @question = Question.new
  end
  def index
    @question = Question.all
  end
  def show
    @question = Question.find_by(params[:id])
    @user = @question.user
  end
  def create
    @question = Question.new(question_params)  # フォームから送られてきたデータ(title,index)をストロングパラメータを経由して@questionに代入
    @question.user_id = current_user.id # user_idの情報はフォームからはきていないので、deviseのメソッドを使って「ログインしている自分のid」を代入
    @question.save
    redirect_to questions_path
  end
  private
    def question_params
      params.require(:question).permit(:title) 
      params.require(:question).permit(:index)# tweetモデルのカラムのみを許可
    end
end
