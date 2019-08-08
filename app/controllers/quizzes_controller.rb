class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show]

  def index
    @quizzes = Quiz.all
  end

  def show
    @a = @quiz.questions.map { |q| q }
    @b = @a.map { |e| e.answers.map(&:matter) }
  end

  def check_answer

  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :desc)
  end
end
