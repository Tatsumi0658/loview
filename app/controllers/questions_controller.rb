class QuestionsController < ApplicationController
  before_action :set_question, only:[:show]
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def show
  end

  private

  def question_params
    params.require(:question).permit(:user_name, :title, :content)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
