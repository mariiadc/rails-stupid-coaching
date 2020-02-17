class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if @question == 'I am going to work'
    if @question.last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
