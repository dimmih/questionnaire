class QuestionGroupsController < ApplicationController
  def index
    @question_groups = QuestionGroup.paginate(page: params[:page], per_page: 9)
  end
  
  def standard
    @question_group = QuestionGroup.friendly.find(params[:id])
    
    render layout: "application", formats: [:pdf] 
  end

  def correct_answers
    @question_group = QuestionGroup.friendly.find(params[:id])

    render layout: "application", formats: [:pdf]
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
      redirect_to question_groups_path
    else
      flash[:error] = @question_group.errors[:base].to_sentence
      redirect_to questions_path
    end
  end

  private

  def question_group_params
    params.require(:question_group).permit(:name, :description ,:field_id, :easy, :medium, :hard)
  end
end
