class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show]
  before_action :authenticate_user!

  def index
    @quizzes = Quiz.all
  end

  def show
    @a = @quiz.questions.map { |q| q }
    @b = @a.map { |e| e.answers.map(&:matter) }
  end

  def survey
    @q = Quiz.find(params[:quiz_id])
    @ans = params[:answers].map do |ans|
      Answer.select { |a| (a.id == ans.to_i) && a.check_status == 'correct' }
    end
    @ans.flatten!
    if @ans.present?
      current_user.add_result(@q.title => @ans.count)
    else
      current_user.add_result(@q.title => 0)
    end

    redirect_to root_path, notice: 'Quiz was successfully passed.'
   end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :desc)
  end
end
