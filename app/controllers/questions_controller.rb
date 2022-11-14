class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    coach_answer(@question)
  end
end

def coach_answer(your_message)
  if your_message.downcase == 'i am going to work right now!'
    @answer = ''
  elsif your_message.end_with?('?')
    @answer = 'Silly question, get dressed and go to work!'
  else
    @answer = "I don't care, get dressed and go to work!"
  end
end
