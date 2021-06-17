$maxQuestions = 4

class HomeController < ApplicationController
  def index

    # Set Quiz
    if cookies[:currentQuestion].nil?
      @currentQuestion = getRandomQuestion
      puts "QUESTION " << @currentQuestion.to_s
      cookies[:currentQuestion] = @currentQuestion.id
      cookies[:questionsCompleted] = ""
    else
      @currentQuestion = Question.find(cookies[:currentQuestion])
    end

    puts "VALUE " << @currentQuestion.to_s

  end


  def getRandomQuestion
    question = Question.offset(rand(Question.count)).first;
    while (questionAlreadyDone(question.question_id))
      question = Question.offset(rand(Question.count)).first;
    end

    return question;
  end


  def questionAlreadyDone(questionIndex)
    if cookies[:questionsCompleted].nil?
      return false;
    end

    doneQuestions = cookies[:questionsCompleted].split(',');
    doneQuestions.each do |index|
      if (index == questionIndex)
        return true;
      end
    end

    return false;
  end


end
