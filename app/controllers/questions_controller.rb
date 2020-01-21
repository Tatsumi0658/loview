class QuestionsController < ApplicationController
  #before_action :authentication_account, only:[:new, :create]
  before_action :set_question, only:[:show]
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    @question.account_id = current_account.id
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
    params.require(:question).permit(:title, :content)
  end

  def set_question
    @question = Question.find(params[:id])
  end

  def current_account
    @current_account ||= Account.find_by(user_id: current_user.id)
  end
end
