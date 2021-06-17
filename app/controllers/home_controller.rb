$maxQuestions = 4

class HomeController < ApplicationController
  def index

    if (not params[:reload].nil?)
      reset
      cookies[:currentQuestionID] = nil;
      redirect_back fallback_location: root_path
    end

    # IF GAME OVER
    if (cookies[:currentQuestionCount].to_i >= $maxQuestions)
      # save data
      if (cookies[:saved_data].to_s == "false")
        @correctAnswers = getCorrectAnswers;
        @currentIP = request.remote_ip.to_s;
        History.create(ip_address: @currentIP, questions_correct: @correctAnswers, questions_completed: $maxQuestions);
        cookies[:saved_data] = true;
      end

      @quizComplete = true;
      @recentHistory = getRecentHistory(@currentIP);
    end

    # Set Quiz
    if cookies[:currentQuestionID].nil? or cookies[:currentQuestionID].to_i == 0
      if (not params[:start_quiz].nil?)
        $maxQuestions = params[:max_questions].to_i;
        reset
        redirect_back fallback_location: root_path
      else
        @defineSettings = true;
      end

    else
      @currentQuestion = Question.find(cookies[:currentQuestionID].to_i)

      #  IF GOT AN ANSWER
      if (not params[:choice].nil?)
        @chosenAnswer = params[:choice].to_i;
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
        if (@question.correct == @answersChosen[index+1].to_i)
          @count += 1;
        end
      end
    end
    return @count;
  end

  def getRecentHistory(ipAddress)
    return History.where(ip_address: ipAddress).order("created_at desc").limit(6);
  end

  def reset
    @currentQuestion = getRandomQuestion
    cookies[:currentQuestionID] = @currentQuestion.id
    cookies[:currentQuestionCount] = 0
    cookies[:questionsCompleted] = ""
    cookies[:answers] = ""
    cookies[:saved_data] = false
    @defineSettings = false
    @quizComplete = false
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
      if (index.to_i == questionIndex.to_i)
        return true;
      end
    end

    return false;
  end


end
