class FieldsController < ApplicationController
  def new
    @field = Field.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @field = Field.new(field_params)

    if @field.save
      redirect_to questions_path
    else
      flash[:error] = @field.errors[:base].to_sentence
      redirect_to questions_path
    end
  end

  private

  def field_params
    params.require(:field).permit(:name)
  end
end
