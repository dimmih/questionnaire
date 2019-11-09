class QuestionsController < ApplicationController
  before_action :set_question, only: :destroy
  
  def index
    @questions = Question.order("id DESC")
  end

  def new
    @question = Question.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @question = Question.new(quesiton_params)
    if @question.save
      flash[:success] = 'New question added.'
    else
      flash[:error] = 'There was something wrong!'
    end

    redirect_to questions_path
  end

  def edit
    @question = Question.find(params[:id])

    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(quesiton_params)
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

  def quesiton_params
    params.require(:question).permit(:value, :difficulty, :kind, :field_id)
  end
end
