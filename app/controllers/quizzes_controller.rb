class QuizzesController < ApplicationController
  before_action :set_quiz, only: %i[show edit update destroy]

   def index
     @quizzes = Quiz.all
   end

   def show; end

   def new
     @quiz = Quiz.new
   end

   def edit; end

   def create
     @quiz = Quiz.new(quiz_params)

     respond_to do |format|
       if @quiz.save
         format.html { redirect_to @quiz, notice: 'quiz was successfully created.' }
         format.json { render :show, status: :created, location: @quiz }
       else
         format.html { render :new }
         format.json { render json: @quiz.errors, status: :unprocessable_entity }
       end
     end
   end

   def update
     respond_to do |format|
       if @quiz.update(quiz_params)
         format.html { redirect_to @quiz, notice: 'quiz was successfully updated.' }
         format.json { render :show, status: :ok, location: @quiz }
       else
         format.html { render :edit }
         format.json { render json: @quiz.errors, status: :unprocessable_entity }
       end
     end
   end

   def destroy
     @quiz.destroy
     respond_to do |format|
       format.html { redirect_to quizzes_url, notice: 'quiz was successfully destroyed.' }
       format.json { head :no_content }
     end
   end

   private

   def set_quiz
     @quiz = Quiz.find(params[:id])
   end

    def quiz_params
      params.require(:quiz).permit(:title,:desc)
    end

end
