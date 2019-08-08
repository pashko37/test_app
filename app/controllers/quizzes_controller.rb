class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show]

  def index
    @quizzes = Quiz.all
  end

  def show

  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :desc)
  end
end
