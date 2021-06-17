require_relative 'boot'

require 'rails/all'
require 'json'
require 'rest-client'

$API_OKAY = false

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module QuizProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Run after starting the server, populate the database with json file

    config.after_initialize do
      if (ActiveRecord::Base.connection.table_exists? :questions)
        if (!tryAPI)
          loadJson
          puts "Loaded "  << Question.count << " Questions from JSON"
        else
          $API_OKAY = true
        end
      end
    end

    def tryAPI
      # Attempt to contact quiz api, if fails use json file, else, we'll grab from api later in quiz
      # response = RestClient.get 'https://quizapi.io/api/v1/questions', {params: {apiKey: 'A2bVAvKbgI6tBrCqE4wDprUN2hNwJek2F0F2ocLY', limit: 10}}
      # if (response.code != 200)
      #   return false
      # else
      #   return true
      # end
      return false
    end

    def loadJson
      file = File.read("./quiz.json");
      jsonParse = JSON.parse(file);

      jsonParse.each do |question|
        Question.create(question: question["question"],answers: getAnswersArray(question["answers"]), correct: getCorrectAnswerID(question["correct_answers"]), question_id: question["id"]);
      end
      puts "Loaded "  << Question.count << " Questions from JSON"
    end


    def getAnswersArray(answersArray)
      answersString = ""
      answersString << answersArray["answer_a"] << ",";
      answersString << answersArray["answer_b"] << ",";
      answersString << answersArray["answer_c"] << ",";
      answersString << answersArray["answer_d"];
      return answersString
    end

    def getCorrectAnswerID(correctAnswersArray)
      if (correctAnswersArray["answer_a_correct"] == "true")
        return 0;
      elsif (correctAnswersArray["answer_b_correct"] == "true")
        return 1;
      elsif (correctAnswersArray["answer_c_correct"] == "true")
        return 2;
      elsif (correctAnswersArray["answer_d_correct"] == "true")
        return 3;
      elsif (correctAnswersArray["answer_e_correct"] == "true")
        return 4;
      elsif (correctAnswersArray["answer_f_correct"] == "true")
        return 4;
      end
    end

  end
end



