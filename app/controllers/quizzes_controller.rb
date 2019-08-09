class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show]
  before_action :authenticate_user!

  def index
    @quizzes = Quiz.all
  end

  def show
    @a = @quiz.questions.map { |q| q }
    @b = @a.map { |e| e.answers.map(&:matter) }
    render 'survey'
  end

  def survey
    @ans = params[:answers].map do |ans|
      Answer.select { |a| (a.id == ans.to_i) && a.check_status == 'correct' }
    end
    @ans.flatten!
    # @test = @ans.first.question.quiz
    current_user.add_result(@ans.first.question.quiz.title => @ans.count)

    respond_to do |format|
       format.html { redirect_to quizzes_path, notice: 'Quiz was successfully passed.' }
       format.json { render :survay }
   end
  end

  private

  def set_quiz
    @quiz = Quiz.find(params[:id])
  end

  def quiz_params
    params.require(:quiz).permit(:title, :desc)
  end
end
