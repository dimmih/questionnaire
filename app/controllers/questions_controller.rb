class QuestionsController < ApplicationController
  before_action :set_question, only: :destroy
  
  def index
    @questions = Question.all
  end

  def destroy
    if @question.destroy
      flash[:success] = 'Question deleted.'
    else
      flash[:error] = 'There was something wrong!'
    end

    redirect_to questions_path 
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end
end
