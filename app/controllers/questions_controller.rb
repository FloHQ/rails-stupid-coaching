class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question == 'I am going to work'
      answer = "Great!"
    elsif question[-1] == '?'
      answer = 'Silly question, get dressed and go to work!'
    else
      answer = "I don't care, get dressed and go to work!"
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!
