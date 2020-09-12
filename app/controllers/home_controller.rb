class HomeController < ApplicationController
  def top
  end
  def about
  end
  def techs
  end
  def qanda
    @questions = current_user.questions
  end
  def news
  end
end
