class QuestionsController < ApplicationController

  def create
    #Question.create(question_params)
    #Question.create(email: params[:question][:email], body: params[:question][:body] )
    question = Question.new()
    question.email = params[:question][:email]
    question.body = params[:question][:body]
    question.save()

    redirect_to root_path
  end

  private

  def question_params
    params.require(:question).permit(:email, :body)
  end
end
