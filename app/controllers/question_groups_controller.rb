class QuestionGroupsController < ApplicationController
  def show
    @question_group = QuestionGroup.find(params[:id])
    
    render formats: :pdf
  end
  
  def new
    @question_group = QuestionGroup.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @question_group = QuestionGroup.new(question_group_params)

    if @question_group.save
      redirect_to question_group_path(@question_group)
    else
      flash[:error] = @question_group.errors[:base].to_sentence
      redirect_to questions_path
    end
  end

  private

  def question_group_params
    params.require(:question_group).permit(:name, :field_id, :easy, :medium, :hard)
  end
end
