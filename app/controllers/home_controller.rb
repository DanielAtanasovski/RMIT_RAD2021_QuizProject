$maxQuestions = 4

class HomeController < ApplicationController
  def index

    if (not params[:reload].nil?)
      reset
    end

    # IF GAME OVER
    if (cookies[:currentQuestionCount].to_i >= $maxQuestions)
      # QUIZ OVER
      @quizComplete = true;
      @correctAnswers = getCorrectAnswers
    end

    # Set Quiz
    if cookies[:currentQuestionID].nil?
      reset
    else
      @currentQuestion = Question.find(cookies[:currentQuestionID].to_i)

      #  IF GOT AN ANSWER
      if (not params[:choice].nil?)
        @chosenAnswer = params[:choice].to_i;
        puts "ChosenAnswer: " + @chosenAnswer.to_s
        cookies[:answers] = cookies[:answers].to_s + "," + @chosenAnswer.to_s;
        cookies[:questionsCompleted] = cookies[:questionsCompleted].to_s + "," + @currentQuestion.question_id.to_s;
        cookies[:currentQuestionCount] = cookies[:currentQuestionCount].to_i + 1

        # IF GAME OVER
        if (cookies[:currentQuestionCount].to_i >= $maxQuestions)
          # QUIZ OVER
          @quizComplete = true;
        else
          # New Question
          @currentQuestion = getRandomQuestion
          cookies[:currentQuestionID] = @currentQuestion.id
        end

        redirect_back fallback_location: root_path
        @chosenAnswer = nil
        params.delete :choice
      end

    end
  end

  def getCorrectAnswers
    @questionsDone = cookies[:questionsCompleted].split(',');
    @answersChosen = cookies[:answers].split(',');
    @count = 0
    @questionsDone.each_with_index do |question, index|
      # @user = User.where(email: AdminUser.pluck(:email))
      @question = Question.where(question_id: question.to_i).first;
      if (not @question.nil?)
        puts @question.question_id.to_s
        puts "Question Answer" + @question.correct.to_s + ", Answer Given: " + @answersChosen[index].to_s
        if (@question.correct == @answersChosen[index+1].to_i)
          @count += 1;
        end
      end
    end
    return @count;
  end

  def reset
    puts "RESET"
    @currentQuestion = getRandomQuestion
    cookies[:currentQuestionID] = @currentQuestion.id
    cookies[:currentQuestionCount] = 0
    cookies[:questionsCompleted] = ""
    cookies[:answers] = ""
    @quizComplete = false
    redirect_back fallback_location: root_path
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
