class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end
  def index
    @question = Question.all
  end
  def show
    @question = Question.find_by(params[:id])
  end
  def create
  end
end
