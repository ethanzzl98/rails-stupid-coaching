class QuestionsController < ApplicationController
  def ask
    @default = "Hello"
  end

  def home
  end

  def answer
    @answer = params[:question]
    reply_to_work = 'Great!'
    reply_to_question = 'Silly question, get dressed and go to work!'
    @reply = 'I don\'t care, get dressed and go to work!'
    if @answer.end_with?('?')
      @reply = reply_to_question
    elsif @answer.downcase == 'i am going to work'
      @reply = reply_to_work
    end
  end
end
