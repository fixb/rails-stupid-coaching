class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # raise
    if @question.downcase == 'i am going to work right now!'
      ''
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
