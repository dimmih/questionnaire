class QuestionsController < ApplicationController
  before_action :set_question, only: :destroy
  
  def index
    @questions = Question.includes(:field).order("id DESC").paginate(page: params[:page], per_page: 20)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:success] = 'New question added.'
    else
      flash[:error] = 'There was something wrong!'
    end

    redirect_to questions_path
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      flash[:success] = 'Question updated.'
    else
      flash[:error] = 'There was something wrong!'
    end

    redirect_to questions_path
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

  def question_params
    params.require(:question).permit(:value, :difficulty, :kind, :field_id, answers_attributes: [:id, :value, :correct, :_destroy] )
  end
end
