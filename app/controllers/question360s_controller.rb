class Question360sController < ApplicationController
  def create
      @question = Question.find(params[:question_id])
      @question360 = @question.question360s.create!(params[:question360])
      redirect_to @question
  end
end
