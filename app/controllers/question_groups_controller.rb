class QuestionGroupsController < ApplicationController
  def new
    @question_group = QuestionGroup.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @question_group = QuestionGroup.new(question_group_params)

    @question_group.save
    redirect_to questions_path
  end

  private

  def question_group_params
    params.require(:question_group).permit(:name, :field_id, :easy, :medium, :hard)
  end
end
